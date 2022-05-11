
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
	type arrayOfChars is array (0 to 14) of std_logic_vector (7 downto 0);
	type arrayOfChars7 is array (0 to 6) of std_logic_vector (7 downto 0);
	type arrayOfChars10 is array (0 to 9) of std_logic_vector (7 downto 0);
	signal musicToPlay : arrayOfChars 	:= (X"54", X"00", X"45", X"00", X"45", X"00", X"52", X"00", X"57", X"00", X"57", X"00", X"54", X"00", X"45"); --, X"15" );
	signal correctSign : arrayOfChars10	:= (X"00", X"43", X"4F", X"52", X"52", X"45", X"43", X"54", X"3A", X"00");
	signal wrongSign : arrayOfChars7 := (X"00", X"57", X"52", X"4F", X"4E", X"47", X"00");
	signal width : integer := 0;
	signal height : integer := 0;
	signal t_state : integer := 0;
	type resultArray is array (0 to 2) of integer;
	signal resultCorrect : resultArray := (0, 0, 0);
	signal resultWrong : resultArray := (0, 0, 0);
	
	--signal numberMultiplier : integer := 100;
	--signal XD : integer := 1;
	--signal divident : integer := 0;
	--signal restOfNumber : integer := 0;
	
	function  divide  (a : integer; b : integer) return integer is
		variable var : integer := a;
		variable count : integer := 0;
		variable q : integer := 0;
		
		begin
			for q in 127 downto 0 loop
				if (var >= b) then 
					var := var - b;
					count := count + 1;
				else
					return count;
				end if;
			end loop;
		
	end divide;

	
begin
		
	checkCorrectNoteProcess : process(Note_Rdy)
	begin
		
		if rising_edge(Note_Rdy) then-- nowa nutka, sprawdzić czy poprawna
			if (musicToPlay'length <= notesCorrect * 2) then
				resultCorrect(2) <= 0;
				resultCorrect(1) <= 0;
				resultCorrect(0) <= 0;
				notesCorrect <= 0;
				resultWrong(2) <= 0;
				resultWrong(1) <= 0;
				resultWrong(0) <= 0;
				notesWrong <= 0;
				
			elsif Note = musicToPlay(notesCorrect * 2) then
				notesCorrect <= notesCorrect + 1;
				resultCorrect(2) <= resultCorrect(2) + 1;
				
				if(resultCorrect(2) = 10) then
					resultCorrect(2) <= 0;
					resultCorrect(1) <= resultCorrect(1) + 1;
				
					if(resultCorrect(1) = 10) then
						resultCorrect(1) <= 0;
						resultCorrect(0) <= resultCorrect(0) + 1;
						
						if(resultCorrect(0) = 10) then
							resultCorrect(2) <= 0;
							resultCorrect(1) <= 0;
							resultCorrect(0) <= 0;
							notesCorrect <= 0;
							
						end if;
					end if;
				end if;
				
			else
				notesWrong <= notesWrong + 1;
				
				resultWrong(2) <= resultWrong(2) + 1;
				
				if(resultWrong(2) = 10) then
					resultWrong(2) <= 0;
					resultWrong(1) <= resultWrong(1) + 1;
				
					if(resultWrong(1) = 10) then
						resultWrong(1) <= 0;
						resultWrong(0) <= resultWrong(0) + 1;
						
						if(resultWrong(0) = 10) then
							resultWrong(2) <= 0;
							resultWrong(1) <= 0;
							resultWrong(0) <= 0;
							notesWrong <= 0;
							
						end if;
					end if;
				end if;
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
								
								if(width = correctSign'length + 3 + wrongSign'length + 3) then --23 max length
									height <= height + 1;
									NewLine <= '1';
									width <= 0;
									char_WE <= '0';
								elsif(width < correctSign'length) then
									Char_DI <= correctSign(width);
									width <= width + 1;
								elsif(width < correctSign'length + 3) then --print wynik
									Char_DI <= X"2A";
									width <= width + 1;
								elsif(width < correctSign'length + 3 + wrongSign'length) then
									Char_DI <= wrongSign(width - (correctSign'length + 3));
									width <= width + 1;
								else --print wynik
									Char_DI <= X"2A";
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
								
								if(width = correctSign'length + 3 + wrongSign'length + 3) then --23 max length
									height <= height + 1;
									NewLine <= '1';
									width <= 0;
									char_WE <= '0';
								elsif(width < correctSign'length) then
									Char_DI <= correctSign(width);
									width <= width + 1;
								elsif(width < correctSign'length + 3) then --print wynik
									--if (width = correctSign'length) then
									--	restOfNumber <= 0;
									--	numberMultiplier <= 100;
									--else
									--	numberMultiplier <= numberMultiplier / 10;
									--end if;
									--XD <= divide(notesCorrect, numberMultiplier); --we have to do i the shitty way cuz VHDL
									--Char_DI <= std_logic_vector(to_unsigned((48 + (notesCorrect / numberMultiplier - notesCorrect / (numberMultiplier * 10))), 8)); -- 48 is 0 in ASCII
									--divident <= 0;
									
									--while (((divident * numberMultiplier) + restOfNumber) <= notesCorrect) loop
									--	divident <= divident + 1;
									--end loop;
									--divident <= divident - 1;
									--restOfNumber <= restOfNumber + divident;
									--Char_DI <= std_logic_vector(to_unsigned((48 + divident), 8)); -- 48 is 0 in ASCII
									
									Char_DI <= std_logic_vector(to_unsigned(48 + (resultCorrect(width - correctSign'length)), 8)); -- 48 is 0 in ASCII
									width <= width + 1;
								elsif(width < correctSign'length + 3 + wrongSign'length) then
									Char_DI <= wrongSign(width - (correctSign'length + 3));
									width <= width + 1;
								else --print wynik
									Char_DI <= std_logic_vector(to_unsigned(48 + (resultWrong(width - (correctSign'length + 3 + wrongSign'length))), 8)); -- 48 is 0 in ASCII
									width <= width + 1;
								end if;
									
							when 5 =>
								if(width = (notesCorrect * 2)) then
									height <= height + 1;

								else
									Char_DI <= musicToPlay(width);
									width <= width + 1;
									Char_WE <= '1';
								end if;
								
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





