----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:40:28 04/12/2022 
-- Design Name: 
-- Module Name:    imageGenerator - Behavioral 
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

entity imageGenerator is
    Port ( Clk : in STD_LOGIC;
			  Note : in  STD_LOGIC_VECTOR (7 downto 0);
			  Note_Rdy : in STD_LOGIC;
           Char_DI : out  STD_LOGIC_VECTOR (7 downto 0);
           Char_WE : out  STD_LOGIC;
           Home : out  STD_LOGIC;
           NewLine : out  STD_LOGIC;
           Goto00 : out  STD_LOGIC := '0';
           CursorOn : out  STD_LOGIC;
           ScrollEn : out  STD_LOGIC;
           ScrollClear : out  STD_LOGIC);
end imageGenerator;

architecture Behavioral of imageGenerator is
	signal noteChanged : STD_LOGIC := '1';
	signal notesCorrect : integer := 0;
	signal notesWrong : integer := 0;
	type arrayOfChars is array (0 to 7) of std_logic_vector (7 downto 0);
	signal musicToPlay : arrayOfChars := ( X"51", X"00", X"57", X"00", X"45", X"00", X"52", X"00" );
	signal width : integer := 0;
	signal height : integer := 0;
 
begin
		
	checkCorrectNoteProcess : process(Note_Rdy)
	begin
		
		if rising_edge(Note_Rdy) then-- nowa nutka, sprawdzić czy poprawna
			if Note = musicToPlay(notesCorrect) then
				notesCorrect <= notesCorrect + 1;
			else
				notesWrong <= notesWrong + 1;
			end if;
		end if;
	end process checkCorrectNoteProcess;
	
	displayProcess : process (Clk)
	begin
		if rising_edge(Clk) then
			case height is
				when 0 => -- empty line
					Goto00 <= '0';
					Char_WE <= '0';
					NewLine <= '1';
					height <= height + 1;
					width <= 0;

				when 1 =>
					Char_WE <= '1';
					NewLine <= '0';
					if(width = musicToPlay'length) then
						height <= height + 1;
					else
						Char_DI <= musicToPlay(width);
						width <= width + 1;
					end if;
					
				when 2 => -- empty line
					Char_WE <= '0';
					NewLine <= '1';
					height <= height + 1;
					width <= 0;
					
				when 3 => -- counter
					height <= height + 1;
					
				when 4 => -- empty line
					Char_WE <= '0';
					NewLine <= '1';
					height <= height + 1;
					width <= 0;

				when 5 =>
					Char_WE <= '1';
					NewLine <= '0';
					if(width = (notesCorrect * 2)) then
						height <= height + 1;
					else
						Char_DI <= musicToPlay(width);
						width <= width + 1;
					end if;
					
				when 6 => 
					Char_WE <= '0';
					Goto00 <= '1';
					height <= 0;
					
				when others => height <= 0;
			end case;
			
		end if;
		
	end process displayProcess;

	CursorOn <= '0'; --for debug purposes
	ScrollEn <= '0';
	Home <= '0';
	ScrollClear <= '0';
end Behavioral;





