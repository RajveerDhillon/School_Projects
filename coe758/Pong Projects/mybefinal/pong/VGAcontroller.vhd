----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:28:42 11/22/2019 
-- Design Name: 
-- Module Name:    VGAcontroller - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VGAcontroller is
port (
	--refclk: in std_logic;
	hcounter, vcounter : in integer;
	r_paddle_x1, r_paddle_x2, r_paddle_y1, r_paddle_y2: in integer;
	b_paddle_x1, b_paddle_x2, b_paddle_y2, b_paddle_y1: in integer;
	ball_x1, ball_x2, ball_y1, ball_y2: in integer;
	score	: in std_logic;
	R_out : out std_logic_vector(7 downto 0);
	G_out : out std_logic_vector(7 downto 0);
	B_out : out std_logic_vector(7 downto 0)
	
);
end VGAcontroller;

architecture Behavioral of VGAcontroller is

--signal R_out : std_logic_vector(7 downto 0);
--signal G_out : std_logic_vector(7 downto 0);
--signal B_out : std_logic_vector(7 downto 0);
--signal hcount, vcount : integer;
--Vertical bar 1
signal top_border_x1: integer := 0;
signal top_border_x2: integer := 30;
signal top_border_y1: integer := 10;
signal top_border_y2: integer := 160;

--Horizontal bar 1
signal top_border_x3: integer := 0;
signal top_border_x4: integer := 640;
signal top_border_y3: integer := 0;
signal top_border_y4: integer := 30;

--Vertical bar 2 
signal top_border_x5: integer := 610;
signal top_border_x6: integer := 640;
signal top_border_y5: integer := 0;
signal top_border_y6: integer := 160;

--Vertical bar 3
signal b_border_x1  : integer := 0;
signal b_border_x2  : integer := 30;
signal b_border_y1  : integer := 320;
signal b_border_y2  : integer := 480;

--Horizontal bar 2
signal b_border_x3  : integer := 0;
signal b_border_x4  : integer := 640;
signal b_border_y3  : integer := 450;
signal b_border_y4  : integer := 480;

--Vertical bar 4 
signal b_border_x5  : integer := 610;
signal b_border_x6  : integer := 640;
signal b_border_y5  : integer := 320;
signal b_border_y6  : integer := 480;

--Mid-field line
signal m_line_x1	  : integer := 318;
signal m_line_x2	  : integer := 322;
signal m_line_y1	  : integer := 30;
signal m_line_y2	  : integer := 450;
begin

process(hcounter, vcounter)

	variable x: integer range 0 to 639;
	variable y: integer range 0 to 479;
begin

--To isolate the active region, we subtract the number of cycles it takes 
--for H-sync and V-sync to reach their respective active regions and place
--the values into x and y coordinates.This helps to intuitively determine 
--the placement of objects on the physical screen
	x := hcounter - 143;
	y := vcounter - 34;

--Every pixel that isn't an object on the screen is set to display green
	R_out <= "00000000";
	G_out <= "11111111";
	B_out <= "00000000";
	
----Displaying the ball 
	if (x > ball_x1 and x < ball_x2 and y > ball_y1 and y < ball_y2) then
			--Changing the ball colour to red when either side has scored
		if (score = '1') then
			R_out <= "11111111";
			G_out <= "00000000";
			B_out <= "00000000";
		else
			R_out <= "11111111";
			G_out <= "11111111";
			B_out <= "00000000";
		end if;
--Displaying the boundaries of the field	
	elsif ( (x > top_border_x1 and x < top_border_x2 and y > top_border_y1 and y < top_border_y2) or (x > top_border_x3 and x < top_border_x4 and y > top_border_y3 and y < top_border_y4) or (x > top_border_x5 and x < top_border_x6 and y > top_border_y5 and y < top_border_y6) or (x > b_border_x1 and x < b_border_x2 and y > b_border_y1 and y < b_border_y2) or (x > b_border_x3 and x < b_border_x4 and y > b_border_y3 and y < b_border_y4) or (x > b_border_x5 and x < b_border_x6 and y > b_border_y5 and y < b_border_y6)) then
		R_out <= "11111111"; 
		G_out <= "11111111";
		B_out <= "11111111";
		
	elsif (x > m_line_x1 and x < m_line_x2 and y > m_line_y1 and y < m_line_y2) then
		R_out <= "11111111";
		G_out <= "11111111";
		B_out <= "11111111";		


--Displaying the paddles
--Red paddle
	elsif (x > r_paddle_x1 and x < r_paddle_x2 and y > r_paddle_y1 and y < r_paddle_y2) then
		R_out <= "11111111";
		G_out <= "00000000";
		B_out <= "11111111";
--Blue paddle
	elsif (x > b_paddle_x1 and x <b_paddle_x2 and y > b_paddle_y1 and y < b_paddle_y2) then
		R_out <= "00000000";
		G_out <= "00000000";
		B_out <= "11111111";
	end if;
	
end process;

end Behavioral;

