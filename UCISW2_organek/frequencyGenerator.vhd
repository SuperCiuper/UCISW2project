----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:49:10 03/10/2022 
-- Design Name: 
-- Module Name:    frequencyGenerator - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity frequencyGenerator is
    Port ( Note : in  STD_LOGIC_VECTOR (3 downto 0);
			  Start : out  STD_LOGIC;
           Cmd : out  STD_LOGIC_VECTOR (3 downto 0); -- "0011"
           Addr : out  STD_LOGIC_VECTOR (3 downto 0);
           DATA : out  STD_LOGIC_VECTOR (11 downto 0); -- 4 f-irst bits
           Clk : in  STD_LOGIC);
end frequencyGenerator;

architecture Behavioral of frequencyGenerator is
	signal frequency : integer;
	signal counterTicks : UNSIGNED (11 downto 0) := "000000000000"; -- counts ticks between new operations
	signal counterSchodki : UNSIGNED (3 downto 0) := "0000"; -- counts schodki
	
	begin

	Addr <= "1111";
	Cmd <= "0011";
		
	frequencyProcess : process(Note, frequency)
	begin

		case Note is 
			when "0001" => frequency <= 2987;
			when others => frequency <= 0;
		end case; 
		
	end process;

	counterFrequency : process( Clk )
	begin
	
		if(rising_edge(Clk)) then
			if STD_LOGIC_VECTOR(counterTicks) = frequency and counterSchodki = "1111" then -- powrót do stanu początkowego, (dół ząbka)
				counterTicks <= "000000000000";
				counterSchodki <= "0000";
				Start <= '1';
				
			elsif STD_LOGIC_VECTOR(counterTicks) = frequency then -- minął jeden "okres", więc zwiększamy schodek o 1
				counterTicks <= "000000000000";
				counterSchodki <= counterSchodki + 1;
				Start <= '1';
				
			else
				counterTicks <= counterTicks + 1;
				Start <= '0';
				
			end if;
		end if;
		
		DATA <= STD_LOGIC_VECTOR (counterSchodki)&"00000000";
		
	end process;
	
end Behavioral;
