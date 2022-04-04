----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:14:35 03/31/2022 
-- Design Name: 
-- Module Name:    PS2ToNote - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PS2ToNote is
    Port ( DO : in  STD_LOGIC_VECTOR (7 downto 0);
           DO_Rdy : in  STD_LOGIC;
           E0 : in  STD_LOGIC;
           F0 : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Note : out  STD_LOGIC_VECTOR (3 downto 0));
end PS2ToNote;

architecture Behavioral of PS2ToNote is

begin
		
	NoteReader : process(DO, Clk)
	begin

		if(rising_edge(Clk) and DO_Rdy = '1') then
			if (E0 = '0' and F0 = '0') then
				case DO is
					when X"15" => Note <= "0001"; -- Q
					when X"1E" => Note <= "0010"; -- 2
					when X"1D" => Note <= "0011"; -- W
					when X"26" => Note <= "0100"; -- 3
					when X"24" => Note <= "0101"; -- E
					when X"25" => Note <= "0110"; -- 4
					when X"2D" => Note <= "0111"; -- R
					when X"2E" => Note <= "1000"; -- 5
					when X"2C" => Note <= "1001"; -- T
					when X"36" => Note <= "1010"; -- 6
					when X"25" => Note <= "1011"; -- Y
					when X"3D" => Note <= "1100"; -- 7
					when X"3C" => Note <= "1101"; -- U
					when others => Note <= "0000";
				end case;
			end if;
		end if; 
		
	end process;

end Behavioral;

