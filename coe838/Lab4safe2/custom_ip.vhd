----------------------------- 
--   Custom_ip.vhd
--   Lab 4 
--   COE838 Systems-on-Chip Design 
----------------------------- 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY custom_ip IS 
			PORT( CLOCK_50, HPS_DDR3_RZQ,HPS_ENET_RX_CLK, HPS_ENET_RX_DV : IN STD_LOGIC;
					HPS_DDR3_ADDR 							: OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
					HPS_DDR3_BA                    	: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
					HPS_DDR3_CS_N                          		: OUT STD_LOGIC;
					HPS_DDR3_CK_P, HPS_DDR3_CK_N, HPS_DDR3_CKE  	: OUT STD_LOGIC;
					HPS_USB_DIR, HPS_USB_NXT, HPS_USB_CLKOUT     : IN STD_LOGIC;
					HPS_ENET_RX_DATA              	: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
					HPS_SD_DATA, HPS_DDR3_DQS_N  		: INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
					HPS_DDR3_DQS_P                	: INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
					HPS_ENET_MDIO                          		: INOUT STD_LOGIC;
					HPS_USB_DATA                           		: INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
					HPS_DDR3_DQ                    	: INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
					HPS_SD_CMD                    	: INOUT STD_LOGIC;
					HPS_ENET_TX_DATA, HPS_DDR3_DM 	: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
					HPS_DDR3_ODT, HPS_DDR3_RAS_N, HPS_DDR3_RESET_N   		: OUT STD_LOGIC;
					HPS_DDR3_CAS_N, HPS_DDR3_WE_N                           			: OUT STD_LOGIC;
					HPS_ENET_MDC, HPS_ENET_TX_EN                            			: OUT STD_LOGIC;
					HPS_USB_STP, HPS_SD_CLK, HPS_ENET_GTX_CLK             		: OUT STD_LOGIC);
END ENTITY custom_ip;

ARCHITECTURE Behaviour of custom_ip IS
     component soc_system is
		 port(clk_clk                            : in    std_logic                     := 'X';
				hps_0_h2f_reset_reset_n            : out   std_logic;
				hps_io_hps_io_emac1_inst_TX_CLK    : out   std_logic;
				hps_io_hps_io_emac1_inst_TXD0      : out   std_logic;
				hps_io_hps_io_emac1_inst_TXD1      : out   std_logic;
				hps_io_hps_io_emac1_inst_TXD2      : out   std_logic;
				hps_io_hps_io_emac1_inst_TXD3      : out   std_logic;
				hps_io_hps_io_emac1_inst_RXD0      : in    std_logic                     := 'X';
				hps_io_hps_io_emac1_inst_MDIO      : inout std_logic                     := 'X';
				hps_io_hps_io_emac1_inst_MDC       : out   std_logic;
				hps_io_hps_io_emac1_inst_RX_CTL    : in    std_logic                     := 'X';
				hps_io_hps_io_emac1_inst_TX_CTL    : out   std_logic;
				hps_io_hps_io_emac1_inst_RX_CLK    : in    std_logic                     := 'X';
				hps_io_hps_io_emac1_inst_RXD1      : in    std_logic                     := 'X';
				hps_io_hps_io_emac1_inst_RXD2      : in    std_logic                     := 'X';
				hps_io_hps_io_emac1_inst_RXD3      : in    std_logic                     := 'X';
				hps_io_hps_io_sdio_inst_CMD        : inout std_logic                     := 'X';
				hps_io_hps_io_sdio_inst_D0         : inout std_logic                     := 'X';
				hps_io_hps_io_sdio_inst_D1         : inout std_logic                     := 'X';
				hps_io_hps_io_sdio_inst_CLK        : out   std_logic;
				hps_io_hps_io_sdio_inst_D2         : inout std_logic                     := 'X';
				hps_io_hps_io_sdio_inst_D3         : inout std_logic                     := 'X';
				hps_io_hps_io_usb1_inst_D0         : inout std_logic                     := 'X';
				hps_io_hps_io_usb1_inst_D1         : inout std_logic                     := 'X';
				hps_io_hps_io_usb1_inst_D2         : inout std_logic                     := 'X';
				hps_io_hps_io_usb1_inst_D3         : inout std_logic                     := 'X';
				hps_io_hps_io_usb1_inst_D4         : inout std_logic                     := 'X';
				hps_io_hps_io_usb1_inst_D5         : inout std_logic                     := 'X';
				hps_io_hps_io_usb1_inst_D6         : inout std_logic                     := 'X';
				hps_io_hps_io_usb1_inst_D7         : inout std_logic                     := 'X';
				hps_io_hps_io_usb1_inst_CLK        : in    std_logic                     := 'X';
				hps_io_hps_io_usb1_inst_STP        : out   std_logic;
				hps_io_hps_io_usb1_inst_DIR        : in    std_logic                     := 'X';
				hps_io_hps_io_usb1_inst_NXT        : in    std_logic                     := 'X';
				memory_mem_a                       : out   std_logic_vector(14 downto 0);
				memory_mem_ba                      : out   std_logic_vector(2 downto 0);
				memory_mem_ck                      : out   std_logic;
				memory_mem_ck_n                    : out   std_logic;
				memory_mem_cke                     : out   std_logic;
				memory_mem_cs_n                    : out   std_logic;
				memory_mem_ras_n                   : out   std_logic;
				memory_mem_cas_n                   : out   std_logic;
				memory_mem_we_n                    : out   std_logic;
				memory_mem_reset_n                 : out   std_logic;
				memory_mem_dq                      : inout std_logic_vector(31 downto 0) := (others => 'X');
				memory_mem_dqs                     : inout std_logic_vector(3 downto 0)  := (others => 'X');
				memory_mem_dqs_n                   : inout std_logic_vector(3 downto 0)  := (others => 'X');
				memory_mem_odt                     : out   std_logic;
				memory_mem_dm                      : out   std_logic_vector(3 downto 0);
				memory_oct_rzqin                   : in    std_logic                     := 'X';
				reset_reset_n                      : in    std_logic                     := 'X';
            mult_control_0_mult_control_m_start : out   std_logic_vector(31 downto 0);
				mult_control_0_mult_control_m_reset : out   std_logic_vector(31 downto 0);
            mult_control_0_mult_control_m_done  : in    std_logic_vector(31 downto 0) := (others => 'X');
				mult_data_0_mult_data_m_in1         : out   std_logic_vector(31 downto 0);             
			   mult_data_0_mult_data_m_in2         : out   std_logic_vector(31 downto 0);                   
            mult_data_0_mult_data_m_result      : in    std_logic_vector(31 downto 0) := (others => 'X');
				add_control_0_add_control_a_start : out   std_logic_vector(15 downto 0);
				add_control_0_add_control_a_reset : out   std_logic_vector(15 downto 0);
            add_control_0_add_control_a_done  : in    std_logic_vector(15 downto 0) := (others => 'X');
				add_data_0_add_data_a_in1           : out   std_logic_vector(15 downto 0);
				add_data_0_add_data_a_in2          : out   std_logic_vector(15 downto 0);
				add_data_0_add_data_a_result      : in    std_logic_vector(15 downto 0) := (others => 'X')
);
end COMPONENT soc_system; 


COMPONENT  mult_unit 
			PORT( clk, reset, enable            : IN STD_LOGIC;
			mult_a, mult_b                         : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			mult_done                      : OUT STD_LOGIC;
			mult_result                    : OUT STD_LOGIC_VECTOR(31 DOWNTO 0):= (others => '0'));
END COMPONENT;

COMPONENT add_unit
			PORT(clk, reset, enable			: IN STD_LOGIC;
			add_a, add_b					: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			add_done						: OUT STD_LOGIC;
			add_result						: OUT STD_LOGIC_VECTOR(15 DOWNTO 0):= (others => '0'));
END COMPONENT;

SIGNAL reset_reset_n, done : STD_LOGIC ;
SIGNAL mult_input_reset : STD_LOGIC_VECTOR(31 DOWNTO 0);  
SIGNAL mult_output_result, mult_input_start : STD_LOGIC_VECTOR(31 DOWNTO 0); 
SIGNAL in1, in2 : STD_LOGIC_VECTOR(31 DOWNTO 0); 

SIGNAL done2 : STD_LOGIC ;
SIGNAL add_input_reset : STD_LOGIC_VECTOR(15 DOWNTO 0);  
SIGNAL add_output_result, add_input_start : STD_LOGIC_VECTOR(15 DOWNTO 0); 
SIGNAL ain1, ain2 : STD_LOGIC_VECTOR(15 DOWNTO 0); 

BEGIN
     u0 : component soc_system 
			port map (             
				 clk_clk                            => CLOCK_50,
             reset_reset_n                      => '1',
             memory_mem_a                       => HPS_DDR3_ADDR,
             memory_mem_ba                      => HPS_DDR3_BA,
             memory_mem_ck                      => HPS_DDR3_CK_P,
             memory_mem_ck_n                    => HPS_DDR3_CK_N,
             memory_mem_cke                     => HPS_DDR3_CKE,
             memory_mem_cs_n                    => HPS_DDR3_CS_N,
             memory_mem_ras_n                   => HPS_DDR3_RAS_N,
             memory_mem_cas_n                   => HPS_DDR3_CAS_N,
             memory_mem_we_n                    => HPS_DDR3_WE_N, 
				 memory_mem_reset_n                 => HPS_DDR3_RESET_N,
             memory_mem_dq                      => HPS_DDR3_DQ,     
				 memory_mem_dqs                     => HPS_DDR3_DQS_P,  
				 memory_mem_dqs_n                   => HPS_DDR3_DQS_N,  
				 memory_mem_odt                     => HPS_DDR3_ODT,    
				 memory_mem_dm                      => HPS_DDR3_DM,     
				 memory_oct_rzqin                   => HPS_DDR3_RZQ,    
				 hps_io_hps_io_emac1_inst_TX_CLK    => HPS_ENET_GTX_CLK,   
				 hps_io_hps_io_emac1_inst_TXD0      => HPS_ENET_TX_DATA(0),
             hps_io_hps_io_emac1_inst_TXD1      => HPS_ENET_TX_DATA(1), 
				 hps_io_hps_io_emac1_inst_TXD2      => HPS_ENET_TX_DATA(2), 
				 hps_io_hps_io_emac1_inst_TXD3      => HPS_ENET_TX_DATA(3), 
				 hps_io_hps_io_emac1_inst_RXD0      => HPS_ENET_RX_DATA(0), 
				 hps_io_hps_io_emac1_inst_MDIO      => HPS_ENET_MDIO,       
				 hps_io_hps_io_emac1_inst_MDC       => HPS_ENET_MDC,      
				 hps_io_hps_io_emac1_inst_RX_CTL    => HPS_ENET_RX_DV,    
				 hps_io_hps_io_emac1_inst_TX_CTL    => HPS_ENET_TX_EN,    
				 hps_io_hps_io_emac1_inst_RX_CLK    => HPS_ENET_RX_CLK,   
				 hps_io_hps_io_emac1_inst_RXD1      => HPS_ENET_RX_DATA(1),    
				 hps_io_hps_io_emac1_inst_RXD2      => HPS_ENET_RX_DATA(2),    
				 hps_io_hps_io_emac1_inst_RXD3      => HPS_ENET_RX_DATA(3),    
				 hps_io_hps_io_sdio_inst_CMD        => HPS_SD_CMD,        
				 hps_io_hps_io_sdio_inst_D0         => HPS_SD_DATA(0),    
				 hps_io_hps_io_sdio_inst_D1         => HPS_SD_DATA(1),      
				 hps_io_hps_io_sdio_inst_CLK        => HPS_SD_CLK,          
				 hps_io_hps_io_sdio_inst_D2         => HPS_SD_DATA(2),     
				 hps_io_hps_io_sdio_inst_D3         => HPS_SD_DATA(3),     
				 hps_io_hps_io_usb1_inst_D0         => HPS_USB_DATA(0),    
				 hps_io_hps_io_usb1_inst_D1         => HPS_USB_DATA(1),    
				 hps_io_hps_io_usb1_inst_D2         => HPS_USB_DATA(2),    
				 hps_io_hps_io_usb1_inst_D3         => HPS_USB_DATA(3),    
				 hps_io_hps_io_usb1_inst_D4         => HPS_USB_DATA(4),    
				 hps_io_hps_io_usb1_inst_D5         => HPS_USB_DATA(5),    
				 hps_io_hps_io_usb1_inst_D6         => HPS_USB_DATA(6),    
				 hps_io_hps_io_usb1_inst_D7         => HPS_USB_DATA(7),    
				 hps_io_hps_io_usb1_inst_CLK        => HPS_USB_CLKOUT,     
				 hps_io_hps_io_usb1_inst_STP        => HPS_USB_STP,        
				 hps_io_hps_io_usb1_inst_DIR        => HPS_USB_DIR,        
				 hps_io_hps_io_usb1_inst_NXT        => HPS_USB_NXT, 
				 hps_0_h2f_reset_reset_n            => reset_reset_n,  
				 mult_data_0_mult_data_m_result     => mult_output_result,     
				 mult_control_0_mult_control_m_done => "0000000000000000000000000000000" & done,
				 mult_data_0_mult_data_m_in1        => in1,
				 mult_data_0_mult_data_m_in2        => in2,
             mult_control_0_mult_control_m_start  => mult_input_start,
             mult_control_0_mult_control_m_reset  => mult_input_reset, 
				 add_data_0_add_data_a_result     => add_output_result,     
				 add_control_0_add_control_a_done => "000000000000000" & done2,
				 add_data_0_add_data_a_in1        => ain1,
				 add_data_0_add_data_a_in2        => ain2,
             add_control_0_add_control_a_start  => add_input_start,
             add_control_0_add_control_a_reset  => add_input_reset 
         ); 
						
			m0 : mult_unit 
			PORT MAP( 
				clk => CLOCK_50, reset => mult_input_reset(0), enable => mult_input_start(0), 
				mult_a => in1(15 DOWNTO 0), mult_b => in2(15 DOWNTO 0),
				mult_done => done, mult_result => mult_output_result);
			
			a0 : add_unit 
			PORT MAP( 
				clk => CLOCK_50, reset => add_input_reset(0), enable => add_input_start(0), 
				add_a => ain1(15 DOWNTO 0), add_b => ain2(15 DOWNTO 0),
				add_done => done2, add_result => add_output_result);
						
END Behaviour;