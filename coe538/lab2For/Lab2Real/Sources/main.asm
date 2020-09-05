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


            ORG   $4000


Entry:
_Startup:

;            LDAA  #$FF               ; ACCA = $FF
;            STAA  DDRH               ; Config. Port H. for Output
;            STAA  PERT               ; Enabl. pull-up res. of Port T
;            
;Loop:       LDAA  PTT                ; Read Port T
;            STAA  PTH                ; Display SW1 on LED1 connected to Port H
;            BRA   Loop               ; Loop



            
;            BSET  DDRP,  %11111111   ; Configure Port P for output (LED2 cntrl)
;            BSET  DDRE,  %00010000   ; Configure pin PE4 for output (enable bit)
;            BCLR  PORTE, %00010000   ; Enable keypad
;            
;Loop:       LDAA  PTS                ; Read a key code into AccA
;            LSRA                     ; Shift right AccA
;            LSRA                     ;     -"-
;            LSRA                     ;     -"-
;            LSRA                     ;     -"- 
;            STAA  PTP                ; Output AccA content to LED2
;            BRA   Loop               ; Loop



            
;            BSET  DDRP,  %11111111   ; Config. Port P for Output
;            LDAA        #%10000000   ; Prepare to drive PP7 high
;            
;MainLoop:   STAA  PTP                ; Drive PP7
;            LDX   #$1FFF             ; Initialize the loop counter
;Delay       DEX                      ; Decrement the loop counter
;            BNE   Delay              ; if not done, continue to loop
;            EORA  #%10000000         ; Toggle the MSB of AccA
;            BRA   MainLoop           ; Go to MainLoop
           

;***************************************************************
;*                 Interrupt Vectors                          *
;**************************************************************
            ORG   $FFFE
            DC.W  Entry           ; Reset Vector
