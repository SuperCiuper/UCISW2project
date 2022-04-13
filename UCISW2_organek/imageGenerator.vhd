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
           Goto00 : out  STD_LOGIC;
           CursorOn : out  STD_LOGIC;
           ScrollEn : out  STD_LOGIC;
           ScrollClear : out  STD_LOGIC);
end imageGenerator;

architecture Behavioral of imageGenerator is
	signal noteChanged : STD_LOGIC := '1';
	variable notesCorrect : integer := 0;
	variable notesWrong : integer := 0;
	type arrayOfChars is array (0 to 3) of std_logic_vector (7 downto 0);
	variable musicToPlay : arrayOfChars := ( X"51", X"57", X"45", X"52" );
	
begin
		
	frequencyProcess : process(Note_Rdy)
	begin
		
		if rising_edge(Note_Rdy) then-- nowa nutka, sprawdzić czy poprawna
			if Note = musicToPlay(notesCorrect) then
				notesCorrect <= notesCorrect + 1;
			else
				notesWrong <= notesWrong + 1;
			end if;
		end if;
		
		previousNote <= Note;
	end process;
	
	counterFrequency : process( Clk )
	begin
	
		if rising_edge(Note_Rdy) then --refresh screen
			wait until rising_edge(Clk); -- wait for next signal
			Char_WE <= '0';
			NewLine <= '1';
			wait until rising_edge(Clk); -- wait for next signal
			Char_WE <= '1';
			NewLine <= '0';
			
			musicToPlayLoop : for q in 0 to musicToPlay'length - 1 loop --prints music to play
				Char_DI <= musicToPlay(q);
				wait until rising_edge(Clk); -- wait for next signal
				Char_DI <= "00000000";
				wait until rising_edge(Clk); -- wait for next signal

			end loop musicToPlayLoop;
		
			Char_WE <= '0';
			NewLine <= '1';
			wait until rising_edge(Clk); -- wait for next signal
			Char_WE <= '1';
			NewLine <= '0';
			
			-- tutaj wypisanie wyniku, ale to w przyszłości
			
			Char_WE <= '0';
			NewLine <= '1';
			wait until rising_edge(Clk); -- wait for next signal
			Char_WE <= '1';
			NewLine <= '0';
			
			musicPlayedLoop : for q in 0 to notesCorrect - 1 loop --prints music to play
				Char_DI <= musicToPlay(q);
				wait until rising_edge(Clk); -- wait for next signal
				Char_DI <= "00000000";
				wait until rising_edge(Clk); -- wait for next signal

			end loop musicPlayedLoop;
			
			Char_WE <= '0';
			Goto00 <= '1';
			wait until rising_edge(Clk); -- wait for next signal
			Goto00 <= '0';
		end if;
		
	end process;

	CursonOn <= '1'; --for debug purposes
	ScrollEn <= '0';
	
end Behavioral;







