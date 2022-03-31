--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:28:16 03/31/2022
-- Design Name:   
-- Module Name:   /home/superciuper/Documents/UCISW2project/UCISW2_organek/PS2TpNoteTB.vhd
-- Project Name:  UCISW2_organek
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PS2ToNote
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY PS2TpNoteTB IS
END PS2TpNoteTB;
 
ARCHITECTURE behavior OF PS2TpNoteTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PS2ToNote
    PORT(
         DO : IN  std_logic_vector(7 downto 0);
         DO_Rdy : IN  std_logic;
         E0 : IN  std_logic;
         F0 : IN  std_logic;
         Clk : IN  std_logic;
         Note : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DO : std_logic_vector(7 downto 0) := (others => '0');
   signal DO_Rdy : std_logic := '0';
   signal E0 : std_logic := '0';
   signal F0 : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Note : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 20 ns; --50MHz
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PS2ToNote PORT MAP (
          DO => DO,
          DO_Rdy => DO_Rdy,
          E0 => E0,
          F0 => F0,
          Clk => Clk,
          Note => Note
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
      wait for Clk_period*10; -- 220ns
		Do_Rdy <= '1';
		E0 <= '1';
		F0 <= '1';
		
		wait for Clk_period;
		Do_Rdy <= '0';
		E0 <= '0';
		F0 <= '0';
		
      wait;
   end process;

	DO <= "wartości klawisza", "wartości klawisza" after 220ns, "wartości klawisza" after 440ns;
END;
