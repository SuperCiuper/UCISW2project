library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

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
	signal notesCorrect : integer := 0;
	signal notesWrong : integer := 0;
	type arrayOfChars is array (0 to 7) of std_logic_vector (7 downto 0);
	type arrayOfChars7 is array (0 to 6) of std_logic_vector (7 downto 0);
	type arrayOfChars5 is array (0 to 4) of std_logic_vector (7 downto 0);
	signal musicToPlay : arrayOfChars 	:= (X"54", X"45", X"45", X"52", X"57", X"57", X"54", X"45"); --, X"15" );
	signal correctSign : arrayOfChars7	:= (X"43", X"4F", X"52", X"52", X"45", X"43", X"54");
	signal wrongSign : arrayOfChars5 	 	:= (X"57", X"52", X"4F", X"4E", X"47");
	signal width : integer := 0;
	signal height : integer := 0;
	signal t_state : integer := 0;
	
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
				Goto00 <= '0';
				Char_WE <= '0';
				NewLine <= '0';
				case t_state is
					when 0 =>
						case height is
							when 0|2|4 => -- empty line
								NewLine <= '1';
								height <= height + 1;
								width <= 0;

							when 1 =>
								if(width = musicToPlay'length) then
									height <= height + 1;
									NewLine <= '1';
								else
									Char_DI <= musicToPlay(width);
									width <= width + 1;
									Char_WE <= '1';
								end if;
								
							when 3 => -- counter
								Char_WE <= '1';
								if(width = 16) then --23 max length
									height <= height + 1;
									NewLine <= '1';
									width <= 0;
									char_WE <= '0';
								elsif(width < 7) then
									Char_DI <= correctSign(width);
									width <= width + 1;
								elsif(width < 9) then --print wynik
									Char_DI <= "00000000";
									width <= width + 1;
								elsif(width < 14) then
									Char_DI <= wrongSign(width - 9);
									width <= width + 1;
								else --print wynik
									Char_DI <= "00000000";
									width <= width + 1;
								end if;
								
							when others => 
								Goto00 <= '1';
								height <= 0;
								t_state <= 1;
						end case;
					when 1 =>
						if(Note_rdy = '1') then
							t_state <= 2;
						end if;
					when 2 =>
						case height is
							when 0|2|4 => -- empty line
								NewLine <= '1';
								height <= height + 1;
								width <= 0;

							when 1 =>
								if(width = musicToPlay'length) then
									height <= height + 1;
									NewLine <= '1';
								else
									Char_DI <= musicToPlay(width);
									width <= width + 1;
									Char_WE <= '1';
								end if;
								
							when 3 => -- counter
								Char_WE <= '1';

								if(width = 16) then --23 max length
									height <= height + 1;
									NewLine <= '1';
									char_WE <= '0';
								elsif(width < 7) then
									Char_DI <= correctSign(width);
									width <= width + 1;
								elsif(width < 9) then --print wynik
									Char_DI <= "00000000";
									width <= width + 1;
								elsif(width < 14) then
									Char_DI <= wrongSign(width - 9);
									width <= width + 1;
								else --print wynik
									Char_DI <= "00000000";
									width <= width + 1;
								end if;
									
							when 5 =>
								--if(width = (notesCorrect * 2)) then
									
								--else
								Char_DI <= Note;
								width <= width + 1;
								Char_WE <= '1';
								height <= height + 1;
								--end if;
								
							when others => 
								Goto00 <= '1';
								height <= 0;
								t_state <= 1;
								
						end case;
						
					when others =>
						if(Note_rdy = '1') then
							t_state <= 2;
						end if;
				end case;
			end if;
			
		end process displayProcess;

	CursorOn <= '0'; --for debug purposes
	ScrollEn <= '0';
	Home <= '0';
	ScrollClear <= '1';
	
end Behavioral;





