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
			  Note : in  STD_LOGIC_VECTOR (3 downto 0);
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
	signal previousNote : STD_LOGIC_VECTOR (3 downto 0) := "0000";
	signal noteChanged : STD_LOGIC := '1';
	variable notesCorrect : integer := 0;
	variable notesWrong : integer := 0;
	type arrayOfChars is array (0 to 3) of std_logic_vector (7 downto 0);
	variable musicToPlay : arrayOfChars := ( "01000011", "01000011", "01000011", "01000011" );
	
begin
		
	frequencyProcess : process(Note, Char_DI)
	begin
		case Note is 
			when "0001" => Char_DI <= "00000000"; -- reprezentacja nuty za pomocą ascii
			when "0010" => Char_DI <= "00000000"; -- reprezentacja nuty za pomocą ascii
			when "0011" => Char_DI <= "00000000"; -- reprezentacja nuty za pomocą ascii
			when "0100" => Char_DI <= "00000000"; -- reprezentacja nuty za pomocą ascii
			when "0101" => Char_DI <= "00000000"; -- reprezentacja nuty za pomocą ascii
			when "0110" => Char_DI <= "00000000"; -- reprezentacja nuty za pomocą ascii
			when "0111" => Char_DI <= "00000000"; -- reprezentacja nuty za pomocą ascii
			when "1000" => Char_DI <= "00000000"; -- reprezentacja nuty za pomocą ascii
			when "1001" => Char_DI <= "00000000"; -- reprezentacja nuty za pomocą ascii
			when "1010" => Char_DI <= "00000000"; -- reprezentacja nuty za pomocą ascii
			when "1011" => Char_DI <= "00000000"; -- reprezentacja nuty za pomocą ascii
			when "1100" => Char_DI <= "00000000"; -- reprezentacja nuty za pomocą ascii
			when "1101" => Char_DI <= "00000000"; -- reprezentacja nuty za pomocą ascii
			when others => Char_DI <= "00000000"; -- reprezentacja nuty za pomocą ascii
		end case; 
		
		if Note = previousNote then
			noteChanged <= '0';
		else -- nowa nutka, sprawdzić czy poprawna
			noteChanged <= '1';
			if Char_DI = musicToPlay(notesCorrect) then
				notesCorrect <= notesCorrect + 1;
			else
				notesWrong <= notesWrong + 1;
			end if;
		end if;
		
		previousNote <= Note;
	end process;
	
	counterFrequency : process( Clk )
	begin
	
		if nodeChanged = '1' then --refresh screen
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
			-- wait until rising_edge(Clk); -- wait for next signal
			Char_WE <= '1';
			NewLine <= '0';
			
			-- tutaj wypisanie wyniku, ale to w przyszłości
			
			Char_WE <= '0';
			NewLine <= '1';
			wait until rising_edge(Clk); -- wait for next signal
			Char_WE <= '1';
			NewLine <= '0';
			
			musicToPlayLoop : for q in 0 to notesCorrect loop --prints music to play
				Char_DI <= musicToPlay(q);
				wait until rising_edge(Clk); -- wait for next signal
				Char_DI <= "00000000";
				wait until rising_edge(Clk); -- wait for next signal

			end loop musicToPlayLoop;
			
			Char_WE <= '0';
			Goto00 <= '1';
			wait until rising_edge(Clk); -- wait for next signal
			Goto00 <= '0';
		end if;
		
	end process;

	CursonOn <= '1'; --for debug purposes
	ScrollEn <= '0';
	
end Behavioral;







