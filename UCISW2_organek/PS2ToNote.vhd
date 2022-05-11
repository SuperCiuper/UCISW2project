library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PS2ToNote is
    Port ( DO : in  STD_LOGIC_VECTOR (7 downto 0);
           DO_Rdy : in  STD_LOGIC;
           E0 : in  STD_LOGIC;
           F0 : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Note : out  STD_LOGIC_VECTOR (7 downto 0);
			  Note_Rdy : out STD_LOGIC );
end PS2ToNote;

architecture Behavioral of PS2ToNote is
	signal previousDO : STD_LOGIC_VECTOR (7 downto 0) := X"00";
	
begin

	NoteReader : process(DO, Clk)
	begin
		if rising_edge(Clk) then
			Note_Rdy <= '0';
			if DO_Rdy  = '1' then
				if (E0 = '0' and F0 = '0') then
					if DO /= previousDO then
						Note_Rdy <= '1';
					end if;
					
					case DO is							  -- klawisz dźwięk
						when X"15" => Note <= X"51"; -- Q 		 c
						when X"1E" => Note <= X"32"; -- 2 		 cis
						when X"1D" => Note <= X"57"; -- W 		 d
						when X"26" => Note <= X"33"; -- 3 		 dis
						when X"24" => Note <= X"45"; -- E 		 e
						when X"2D" => Note <= X"52"; -- R		 f
						when X"2E" => Note <= X"35"; -- 5		 fis
						when X"2C" => Note <= X"54"; -- T		 g
						when X"36" => Note <= X"36"; -- 6		 gis
						when X"35" => Note <= X"59"; -- Y		 a
						when X"3D" => Note <= X"37"; -- 7		 ais
						when X"3C" => Note <= x"55"; -- U		 b
						when X"43" => Note <= X"49"; -- I		 c
						when others => Note <= X"00"; 
					end case;
				elsif (E0 = '0' and F0 = '1') then
					Note <= X"00";
					Note_Rdy <= '0';
				end if;
			end if;
		end if; 
		
	end process;

   previousDO <= DO when rising_edge(Clk);

end Behavioral;

