--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:55:16 04/13/2022
-- Design Name:   
-- Module Name:   C:/Users/lab/Documents/GitHub/UCISW2project/UCISW2_organek/imageGeneratorTB.vhd
-- Project Name:  UCISW2_organek
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: imageGenerator
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
 
ENTITY imageGeneratorTB IS
END imageGeneratorTB;
 
ARCHITECTURE behavior OF imageGeneratorTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT imageGenerator
    PORT(
         Clk : IN  std_logic;
         Note : IN  std_logic_vector(7 downto 0);
         Note_Rdy : IN  std_logic;
         Char_DI : OUT  std_logic_vector(7 downto 0);
         Char_WE : OUT  std_logic;
         Home : OUT  std_logic;
         NewLine : OUT  std_logic;
         Goto00 : OUT  std_logic;
         CursorOn : OUT  std_logic;
         ScrollEn : OUT  std_logic;
         ScrollClear : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Note : std_logic_vector(7 downto 0) := (others => '0');
   signal Note_Rdy : std_logic := '0';

 	--Outputs
   signal Char_DI : std_logic_vector(7 downto 0);
   signal Char_WE : std_logic;
   signal Home : std_logic;
   signal NewLine : std_logic;
   signal Goto00 : std_logic;
   signal CursorOn : std_logic;
   signal ScrollEn : std_logic;
   signal ScrollClear : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: imageGenerator PORT MAP (
          Clk => Clk,
          Note => Note,
          Note_Rdy => Note_Rdy,
          Char_DI => Char_DI,
          Char_WE => Char_WE,
          Home => Home,
          NewLine => NewLine,
          Goto00 => Goto00,
          CursorOn => CursorOn,
          ScrollEn => ScrollEn,
          ScrollClear => ScrollClear
        );

   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 
	Note <= X"51";
	Note_Rdy <= '0', '1' after 500ns, '0' after 510ns;

END;
