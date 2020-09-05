 ;*****************************************************************

;* This stationery serves as the framework for a                 *

;* user application (single file, absolute assembly application) *

;* For a more comprehensive program that                         *

;* demonstrates the more advanced functionality of this          *

;* processor, please see the demonstration applications          *

;* located in the examples subdirectory of the                   *

;* Freescale CodeWarrior for the HC12 Program directory          *

;*****************************************************************



; export symbols

            XDEF Entry, _Startup            ; export 'Entry' symbol

            ABSENTRY Entry        ; for absolute assembly: mark this as application entry point







; Include derivative-specific definitions 

		INCLUDE 'derivative.inc' 



;***********************************************************

;* Display battery voltage and bumper states               *

;***********************************************************



;Definitions

LCD_DAT       EQU     PORTB  ;LCD data port, bits - PB7, ...., PB0
                             ;LCD control port, bits - PE7(RS),PE4(E)
LCD_CNTR      EQU     PTJ    ;LCD E signal pin
                             ;LCD PS-signal
LCD_E         EQU     $80

LCD_RS        EQU     $40





; Variable/data selection

              ORG     $3850

              

TEN_THOUS     RMB     1      ;10,000 digit
                                                         
THOUSANDS     RMB     1      ;1,000 digit

HUNDREDS      RMB     1      ;100 digit

TENS          RMB     1      ;10 digit

UNITS         RMB     1      ;1 digit         

NO_BLANK      RMB     1      ;used in 'leading zero' blanking by BCD2ASC

BCD_SPARE     RMB     2     

;TEMP          RMB     1


; Code section



              ORG     $4000

Entry:

_Startup:     

              LDS     #$4000  ;initialize pointer stack

              JSR     initAD  ;initialize ATD converter

              JSR     initLCD ;initialize LCD 

              JSR     clrLCD  ;clear LCD and home cursor

              LDX     #msg1   ;display message one

              JSR     putsLCD 

              LDAA    #$C0    ;move cursor to the second row

              JSR     cmd2LCD  

              LDX     #msg2   ;display message two

              JSR     putsLCD 

                        
lbl           MOVB    #$90,ATDCTL5  

              BRCLR   ATDSTAT0,$80,*

              
              
              ;MOVB    #$84,TEMP 
              
              LDAA    $0099      ; load the ch4 result into AccA

              LDAB    #39

              MUL

              ADDD    #600

              

              JSR     int2BCD

              JSR     BCD2ACS

              

              LDAA    #$8C

              JSR     cmd2LCD

              

              LDAA    TEN_THOUS

              JSR     putcLCD

              

              LDAA    THOUSANDS

              JSR     putcLCD

              LDAA    #'.' 
              JSR     putcLCD

              LDAA    HUNDREDS

              JSR     putcLCD
              
              
              LDAA    #'V'
              
              JSR     putcLCD

 

              LDAA    #$CA

              JSR     cmd2LCD

              

              BRCLR   PORTAD0, %00000100, bowON

              LDAA    #'0'                      
              BRA     bowOFF

bowON         LDAA    #'B'

bowOFF        JSR     putcLCD 

              

              LDAA    #' '



              BRCLR   PORTAD0, %00001000, sternON

              LDAA    #'0'						 

              BRA     sternOFF

sternON       LDAA    #'S'

sternOFF      JSR     putcLCD



              JMP     lbl

              

msg1          dc.b    "Battery volt ", 0

msg2          dc.b    "Sw status ", 0



; Subroutine section



;*******************************************************************



;*



;Initialization of the LCD: 4-bit data width, 2-line display,



;*



;*



;turn on display, cursor and blinking off. Shift cursor right.



;*



;*******************************************************************



initLCD       BSET    DDRB,%11110000    ; configure pins PS7,PS6,PS5,PS4 for output



              BSET    DDRJ,%11000000    ; configure pins PE7,PE4 for output



              LDY     #2000             ; wait for LCD to be ready



              JSR     del_50us          ;-"-

               

              LDAA    #$28              ; set 4-bit data, 2-line display

      

              JSR     cmd2LCD           ;-"-

          

              LDAA    #$0C              ; display on, cursor off, blinking off

                      

              JSR     cmd2LCD           ;-"-



              LDAA    #$06              ; move cursor right after entering a character



              JSR     cmd2LCD           ; -"-



              RTS



;*******************************************************************



;*



;Clear display and home cursor



;*



;*******************************************************************



clrLCD        LDAA    #$01               ; clear cursor and return to home position



              JSR     cmd2LCD            ;-"-



              LDY     #40                ; wait until "clear cursor" command is complete



              JSR     del_50us           ;-"-

                      

              RTS



   



;*******************************************************************



;*



;([Y] x 50us)-delay subroutine. E-clk=41,67ns.



;*



;*******************************************************************



del_50us:     PSHX                     ;2 E-clk



eloop:        LDX     #70                ;2 E-clk -



iloop:        PSHA                     ;2 E-clk  |



              PULA                     ;3 E-clk  |



              PSHA                     ;2 E-clk  |



                                     ;2 E-clk  | 50us



              PULA                     ;3 E-clk  |



              NOP                      ;1 E-clk  |



              NOP                      ;1 E-clk  |



              DBNE    X,iloop            ;3 E-clk -



              DBNE    Y,eloop            ;3 E-clk



              PULX                     ;3 E-clk



              RTS                      ;5 E-clk



;*******************************************************************



;*



;This function sends a command in accumulator A to the LCD



;*



;*******************************************************************



cmd2LCD:      BCLR    LCD_CNTR,LCD_RS     ; select the LCD Instruction Register (IR)



              JSR     dataMov             ; send data to IR



              RTS



;*******************************************************************



;*



;This function outputs a NULL-terminated string pointed to by X



;*



;*******************************************************************



putsLCD       LDAA    1,X+                ; get one character from the string



              BEQ     donePS              ; reach NULL character?



              JSR     putcLCD

                      

              BRA     putsLCD



donePS        RTS



;*******************************************************************



;*



;This function outputs the character in accumulator in A to LCD



;*



;*******************************************************************



putcLCD       BSET    LCD_CNTR,LCD_RS      ; select the LCD Data register (DR)



              JSR     dataMov              ; send data to DR



              RTS



;*******************************************************************



;*



;This function sends data to the LCD IR or DR depening on RS



;*



;*******************************************************************



dataMov       BSET    LCD_CNTR,LCD_E       ; pull the LCD E-sigal high



              STAA    LCD_DAT              ; send the upper 4 bits of data to LCD



              BCLR    LCD_CNTR,LCD_E       ; pull the LCD E-signal low to complete the write oper.



              LSLA                       ; match the lower 4 bits with the LCD data pins



              LSLA                       ;-"-



              LSLA                       ;-"-



              LSLA                       ;-"-



              BSET    LCD_CNTR,LCD_E       ; pull the LCD E signal high



              STAA    LCD_DAT              ; send the lower 4 bits of data to LCD



              BCLR    LCD_CNTR,LCD_E       ; pull the LCD E-signal low to complete the write oper.



              LDY     #1                   ; adding this delay will complete the internal

                      

              JSR     del_50us             ; operation for most instructions



              RTS



;*******************************************************

;*  Turn BCD Into ASCII                                *

;*******************************************************              

 

              

BCD2ACS       LDAA    #0 

              STAA    NO_BLANK

              

C_TTHOU       LDAA    TEN_THOUS

              ORAA    NO_BLANK

              BNE     NOT_BLANK1

              

ISBLANK1      LDAA    #' '

              STAA    TEN_THOUS

              BRA     C_THOU

              

NOT_BLANK1    LDAA    TEN_THOUS

              ORAA    #$30

              STAA    TEN_THOUS

              LDAA    #$1

              STAA    NO_BLANK

              

C_THOU        LDAA    THOUSANDS

              ORAA    NO_BLANK

              BNE     NOT_BLANK2

              

ISBLANK2      LDAA    #' '

              STAA    THOUSANDS

              BRA     C_HUNS

              

NOT_BLANK2    LDAA    THOUSANDS

              ORAA    #$30

              STAA    THOUSANDS

              LDAA    #$1                                                                        

              STAA    NO_BLANK

              

C_HUNS        LDAA    HUNDREDS

              ORAA    NO_BLANK

              BNE     NOT_BLANK3

              

ISBLANK3      LDAA    #' '

              STAA    HUNDREDS

              BRA     C_TENS

              

NOT_BLANK3    LDAA    HUNDREDS

              ORAA    #$30

              STAA    HUNDREDS

              LDAA    #$1

              STAA    NO_BLANK

              

C_TENS        LDAA    TENS

              ORAA    NO_BLANK

              BNE     NOT_BLANK4

              

ISBLANK4      LDAA    #' '

              STAA    TENS

              BRA     C_UNITS

              

NOT_BLANK4    LDAA    TENS

              ORAA    #$30

              STAA    TENS

              

C_UNITS       LDAA    UNITS

              ORAA    #$30

              STAA    UNITS

              

              RTS              

            

;*************************************************                    

;Binary to BCD Conversion Routine                                                                 

;*************************************************              



int2BCD       XGDX

              LDAA    #0

              STAA    TEN_THOUS

              STAA    THOUSANDS

              STAA    HUNDREDS

              STAA    TENS

              STAA    UNITS

              STAA    BCD_SPARE

              STAA    BCD_SPARE+1

              

              CPX     #0

              BEQ     CON_EXIT

              

              XGDX

              LDX     #10

              IDIV

              STAB    UNITS

              CPX     #0

              BEQ     CON_EXIT

              

              XGDX

              LDX     #10

              IDIV

              STAB    TENS

              CPX     #0

              BEQ     CON_EXIT

              

              XGDX

              LDX     #10

              IDIV

              STAB    HUNDREDS

              CPX     #0

              BEQ     CON_EXIT

              

              XGDX    

              LDX     #10

              IDIV    

              STAB    THOUSANDS

              CPX     #0

              BEQ     CON_EXIT

              

              XGDX    

              LDX     #10

              IDIV

              STAB    TEN_THOUS

              

CON_EXIT      RTS

                             

              

              

              





initAD        MOVB     #$C0,ATDCTL2

              JSR      del_50us

              MOVB     #$00,ATDCTL3

              MOVB     #$85,ATDCTL4

              BSET     ATDDIEN, $0C

              RTS    

              

              

              

              



;**************************************************************

;*                 Interrupt Vectors                          *

;**************************************************************

            ORG   $FFFE

            DC.W  Entry           ; Reset Vector