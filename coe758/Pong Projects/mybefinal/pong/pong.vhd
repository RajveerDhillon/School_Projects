----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:10:28 11/22/2019 
-- Design Name: 
-- Module Name:    pingpong - Behavioral 
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

entity pingpong is
port (
			 clk : in  STD_LOGIC;
          H : out  STD_LOGIC;
          V : out  STD_LOGIC;
          DAC_CLK : out  STD_LOGIC;
          Bout : out  STD_LOGIC_VECTOR (7 downto 0);
          Gout : out  STD_LOGIC_VECTOR (7 downto 0);
          Rout : out  STD_LOGIC_VECTOR (7 downto 0);
          SW : in  STD_LOGIC_VECTOR (3 downto 0)
);
end pingpong;

architecture Behavioral of pingpong is

--Core Signals
signal control0 : STD_LOGIC_VECTOR(35 downto 0);
signal ila_data : std_logic_vector(21 downto 0);
signal trig0 : std_logic_vector(7 downto 0);

signal hsync_temp, vsync_temp : std_logic;
--signal hcount_temp, vcount_temp : std_logic_vector(9 downto 0);

--Horizontal and Vertical Counters
signal hcounter : integer range 0 to 799;
signal vcounter : integer range 0 to 524;
--signal hcount : integer range 0 to 799;
--signal vcount : integer range 0 to 524;
--Pixel Clock and Refresh Clock
signal pixel_clk : std_logic; 
signal refresh_clk : std_logic;
signal refresh_cntr : integer := 0;
--R, G and B signals
signal R, G, B : std_logic_vector (7 downto 0);

--Variables declaring the boundaries of the field.
--The field can be thought of as a concatenation
--of six rectangles

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

--Center field white
signal c_border_x1: integer := 300;
signal c_border_x2: integer := 340;
signal c_border_y1: integer := 220;
signal c_border_y2: integer := 260;

--Center field green
signal cc_border_x1: integer := 305;
signal cc_border_x2: integer := 335;
signal cc_border_y1: integer := 225;
signal cc_border_y2: integer := 255;

--Paddle dimensions for the red paddle
signal r_paddle_x1	: integer := 590;
signal r_paddle_x2	: integer := 605;
signal r_paddle_y1	: integer := 200;
signal r_paddle_y2	: integer := 275;
signal r_paddle_x_inc: integer := 0;
signal r_paddle_y_inc: integer := 0;

--Paddle dimensions for the blue paddle
signal b_paddle_x1	: integer := 35;
signal b_paddle_x2	: integer := 50;
signal b_paddle_y1	: integer := 200;
signal b_paddle_y2	: integer := 275;
signal b_paddle_x_inc: integer := 0;
signal b_paddle_y_inc: integer := 0;

--Dimensions for the ball
signal ball_x1			: integer := 310;
signal ball_x2			: integer := 325;
signal ball_y1			: integer := 230;
signal ball_y2			: integer := 245;

--Goal lines for the red and blue sides
signal r_goal_x		: integer := 620;
signal b_goal_x		: integer := 20;
signal goal_y1			: integer := 160;
signal goal_y2			: integer := 320;

--Flags for score detection and reset
signal score			: std_logic;
signal reset			: std_logic;

--These Are to tell the ball to move left or right, depending if a boudnary is reached.
signal ball_x_inc		: std_logic;
signal ball_y_inc		: std_logic;
--SPEEEEEDDDD
signal speed			: integer := 0; 

component DAC
Port (
	clk : in std_logic;
	DClk : out std_logic
);
end component;

component Sync
Port (
	pclk : in std_logic;
	hcounter, vcounter : out integer);
end component;
	
component VGAcontroller
Port (
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
end component;

component refresh 
Port (
	pixclk : in std_logic;
	refreshcount: out integer;
	refreshclk : out std_logic);
end component;

component icon
PORT (
  CONTROL0 : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0));
end component;

component ila
  PORT (
    CONTROL : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0);
    CLK : IN STD_LOGIC;
    DATA : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    TRIG0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0));

end component;

begin

icon_instance : icon
  port map (
    CONTROL0 => control0);
	 
ila_instance : ila
  port map (
    CONTROL => control0,
    CLK => clk,
    DATA => ila_data,
    TRIG0 => trig0);

DACCLK : DAC
PORT MAP (
	clk => clk,
	DClk => pixel_clk
	);
	
DAC_CLK <= pixel_clk;

Sinc : Sync
PORT MAP (
	pclk => pixel_clk,
	hcounter => hcounter,
	vcounter => vcounter
	);
	
--	H <= '0' when hcounter <= 96 else '1';
--	V <= '0' when vcounter <= 2 else '1';

hsync_temp <= '0' when hcounter <= 96 else '1';
vsync_temp <= '0' when vcounter <= 2 else '1';
	
H <= hsync_temp;
v <= vsync_temp;
	
process 
begin
--
---- Active image region values are calculated as follows:
---- Beginning of active region = sync pulse + back porch - 1
---- End of active region = end of line - front porch - 1
--
----// For H-sync:
---- Beginning of active region = 96 + 48 - 1 = 143
---- End of active region = 800 - 16 - 1 = 783
--
----// For V-sync:
---- Beginning of active region = 2 + 33 - 1 = 34
---- End of active region = 525 - 10 - 1  = 514
--
	if(hcounter >= 143 and hcounter <= 783 and vcounter >= 34 and vcounter <= 514) then
		Rout <= R;
		Gout <= G;
		Bout <= B;

	else
		Rout <= (others => '0');
		Gout <= (others => '0');
		Bout <= (others => '0');
	end if;
end process;

rfshclk : refresh
PORT MAP (
	pixclk => pixel_clk,
	refreshcount => refresh_cntr,
	refreshclk => refresh_clk
	);
	
process(refresh_clk)
	begin
		if refresh_clk'event and refresh_clk = '1' then
--Wall collision detection
			
--Ball has hit object on the left, send ball to positive x direction
			if (ball_x1 <= top_border_x2 and (ball_y1 >= top_border_y4 and ball_y2<= top_border_y6)) then
--Ball hits top-left boundary
				ball_x_inc <= '1';
				speed <= speed + 1;
			elsif(ball_x1 <= b_border_x2 and (ball_y1 >= b_border_y5 and ball_y2<= b_border_y6)) then
--Ball hits bottom-left boundary
				ball_x_inc <= '1';
				speed <= speed + 1;
				
--Ball has hit object on the right, send ball to negative x direction
			elsif (ball_x2 >= top_border_x5 and (ball_y2 >= top_border_y4 and ball_y1<= top_border_y6)) then
--Ball hits top-right boundary
				ball_x_inc <= '0';
				speed <= speed + 1;
			elsif (ball_x2 >= b_border_x5 and (ball_y2 >= b_border_y1 and ball_y1<= b_border_y6)) then
--Ball hits bottom-right boundary
				ball_x_inc <= '0';
				speed <= speed + 1;
			end if;
			
--Ball and paddle collision detection
			if (ball_x1 <= b_paddle_x2 and (ball_y1 >= b_paddle_y1 and ball_y2 <= b_paddle_y2)) then
--Ball has collided with blue paddle (left); send ball in the positive x direction
					ball_x_inc <= '1';
					speed <= speed + 1;
			elsif (ball_x2 >= r_paddle_x1 and (ball_y1 >= r_paddle_y1 and ball_y2 <= r_paddle_y2)) then
--Ball has collided with red paddle (right); send ball in the positive x direction
				ball_x_inc <= '0';
				speed <= speed + 1;				
			end if;
			
			if (ball_y1 <= top_border_y4) then
--Ball has hit top boundary; send ball in negative y direction
				ball_y_inc <= '0';
				speed <= speed + 1;
			elsif (ball_y2 >= b_border_y3) then
--Ball has hit bottom boundary; send ball in positive y direction
				ball_y_inc <= '1';
				speed <= speed + 1;
			end if;
			
--Goal collision detection
			if (ball_x1 < b_goal_x and ball_y1 >= goal_y1 and ball_y2 <= goal_y2) then
--Ball reaches left goal line; red paddle scores
				score <= '1';
				speed <= 0;
			elsif (ball_x2 > r_goal_x and ball_y1 >= goal_y1 and ball_y2 <= goal_y2) then
--Ball reaches right goal line; blue paddle scores
				score <= '1';
				speed <= 0;
			else
--Otherwise, if none of the conditions have been met, there is no scoring
				score <= '0';
			end if;
			
			if (ball_x1 <= 0) then
--Ball has reached end of screen (left); reset ball location
				ball_x1 <= 310;
				ball_x2 <= 325;
				ball_y1 <= 230;
				ball_y2 <= 245;
				ball_x_inc <= '1';
				ball_y_inc <= '1';
			elsif (ball_x2 >= 640) then
--Ball has reached end of screen (right); reset ball location
				ball_x1 <= 310;
				ball_x2 <= 325;
				ball_y1 <= 230;
				ball_y2 <= 245;
				ball_x_inc <= '0';
				ball_y_inc <= '1';
			else
--Ball movement
--				if (speed > 7) then
--					speed <= 7;
--				end if;
				if (ball_x_inc = '1') then
--Move ball in positive x direction
					ball_x1 <= ball_x1 + 3;
					ball_x2 <= ball_x2 + 3;
				else
--Move ball in negative x direction
					ball_x1 <= ball_x1 - 3;
					ball_x2 <= ball_x2 - 3;
					
				 end if;
				if ( ball_y_inc = '1') then
--Move ball in positive y direction
					ball_y1 <= ball_y1 - 3;
					ball_y2 <= ball_y2 - 3;
				else
--Move ball in negative y direction
					ball_y1 <= ball_y1 + 3;
					ball_y2 <= ball_y2 + 3;
				end if;			
			end if;			
		end if;
end process;

--Paddle movement and collision detection
process(refresh_clk)
	begin
	
		if refresh_clk'event and refresh_clk = '1' then
			if (SW(1) = '1') then
--Move red paddle up
				if (r_paddle_y1 > top_border_y4) then
					r_paddle_y1 <= r_paddle_y1 - 6;
					r_paddle_y2 <= r_paddle_y2 - 6;
				end if;
			elsif(SW(0) = '1') then
--Move red paddle down
				if (r_paddle_y2 < b_border_y3) then
					r_paddle_y1 <= r_paddle_y1 + 6;
					r_paddle_y2 <= r_paddle_y2 + 6;
				end if;
			end if;	
			if (SW(3) = '1') then
--Move blue paddle up
				if (b_paddle_y1 > top_border_y4) then
					b_paddle_y1 <= b_paddle_y1 - 6;
					b_paddle_y2 <= b_paddle_y2 - 6;		
				end if;			
			elsif(SW(2) = '1') then
--Move blue paddle down
				if (b_paddle_y2 < b_border_y3) then
					b_paddle_y1 <= b_paddle_y1 + 6;
					b_paddle_y2 <= b_paddle_y2 + 6;				
				end if;
			end if;		
		end if;
end process;
	
VGACon : VGAcontroller
PORT MAP (
	hcounter => hcounter,
	vcounter => vcounter,
	r_paddle_x1 => r_paddle_x1,
	r_paddle_x2 => r_paddle_x2,
	r_paddle_y1 => r_paddle_y1,
	r_paddle_y2 => r_paddle_y2,
	b_paddle_x1 => b_paddle_x1,
	b_paddle_x2 => b_paddle_x2,
	b_paddle_y2 => b_paddle_y2,
	b_paddle_y1 => b_paddle_y1,
	ball_x1 => ball_x1, 
	ball_x2 => ball_x2,
	ball_y1 => ball_y1,
	ball_y2 => ball_y2,
	score => score,
	R_out => R,
	G_out => G,
	B_out => B
);

--hcount_temp <= to_unsigned(hcounter, hcount_temp);
--vcount_temp <= 

ila_data(9 downto 0) <= std_logic_vector(to_unsigned(hcounter, 10));
ila_data(19 downto 10) <= std_logic_vector(to_unsigned(vcounter, 10));
ila_data(20) <= hsync_temp;
ila_data(21) <= vsync_temp;
end Behavioral;

