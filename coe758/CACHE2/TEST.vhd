--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:04:26 10/31/2015
-- Design Name:   
-- Module Name:   /media/0AE8-77F0/Ryerson EE Account/COE758/CacheProject/CacheControllerProject/CACHE2/TEST.vhd
-- Project Name:  CACHE2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CacheController
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TEST IS
END TEST;
 
ARCHITECTURE behavior OF TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CacheController
    PORT(
         clk : IN  std_logic;
         ADDR : OUT  std_logic_vector(15 downto 0);
         DOUT : OUT  std_logic_vector(7 downto 0);
         STATES: OUT STD_LOGIC_VECTOR(3 downto 0);
			WR_RD : OUT  std_logic;
         MSTRB : OUT  std_logic;
         RDY : OUT  std_logic;
			CS		:OUT STD_LOGIC
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal ADDR : std_logic_vector(15 downto 0);
   signal DOUT : std_logic_vector(7 downto 0);
   signal WR_RD : std_logic;
	SIGNAL STATES: STD_LOGIC_VECTOR(3 downto 0);
   signal MSTRB : std_logic;
   signal RDY : std_logic;
	signal CS	:Std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CacheController PORT MAP (
          clk => clk,
          ADDR => ADDR,
          DOUT => DOUT,
          WR_RD => WR_RD,
			 STATES=>STATES,
          MSTRB => MSTRB,
          RDY => RDY,
			 CS	=> CS
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     

      -- insert stimulus here 

      wait;
   end process;

END;
