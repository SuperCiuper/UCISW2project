-- Vhdl test bench created from schematic C:\Users\lab\Documents\GitHub\UCISW2project\UCISW2_organek\MainComponent.sch - Thu May 12 17:06:59 2022
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY MainComponent_MainComponent_sch_tb IS
END MainComponent_MainComponent_sch_tb;
ARCHITECTURE behavioral OF MainComponent_MainComponent_sch_tb IS 

   COMPONENT MainComponent
   PORT( Start	:	OUT	STD_LOGIC; 
          Cmd	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          Addr	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          DATA	:	OUT	STD_LOGIC_VECTOR (11 DOWNTO 0); 
          Clk	:	IN	STD_LOGIC; 
          DO_Rdy	:	IN	STD_LOGIC; 
          DO	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          F0	:	IN	STD_LOGIC; 
          E0	:	IN	STD_LOGIC; 
          VGA_HS	:	OUT	STD_LOGIC; 
          VGA_VS	:	OUT	STD_LOGIC; 
          VGA_R	:	OUT	STD_LOGIC; 
          VGA_G	:	OUT	STD_LOGIC; 
          VGA_B	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL Start	:	STD_LOGIC;
   SIGNAL Cmd	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL Addr	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL DATA	:	STD_LOGIC_VECTOR (11 DOWNTO 0);
   SIGNAL Clk	:	STD_LOGIC := '0';
   SIGNAL DO_Rdy	:	STD_LOGIC := '0';
   SIGNAL DO	:	STD_LOGIC_VECTOR (7 DOWNTO 0) := "00000000";
   SIGNAL F0	:	STD_LOGIC := '0';
   SIGNAL E0	:	STD_LOGIC;
   SIGNAL VGA_HS	:	STD_LOGIC;
   SIGNAL VGA_VS	:	STD_LOGIC;
   SIGNAL VGA_R	:	STD_LOGIC;
   SIGNAL VGA_G	:	STD_LOGIC;
   SIGNAL VGA_B	:	STD_LOGIC;

	type arrayOfChars is array (0 to 9) of std_logic_vector (7 downto 0);
	signal musicToPlay : arrayOfChars 	:= (X"2C", X"24", X"24", X"24", X"2D", X"1D", X"1D", X"2D", X"2C", X"24"); --, X"15" );
	-- should be 1:0, 2:0, 3:0
	signal q : integer := 0;

	CONSTANT Clk_Period : DELAY_LENGTH := 20 ns;
   
   -- The VGAscan component
   COMPONENT VGAscan
       Generic ( -- Output file (frame number & ".bmp" will be appended)
                 FileName   : string := "D:/Frame";
                 -- VGA mode params (defaults are for 800x600@72Hz or VGAtxt48x20)
                 pxWidth    : integer := 800;         -- visible pixels: width
                 pxHeight   : integer := 600;         -- visible pixels: height
                 pxHSfrontP : integer := 56;          -- HSync front porch
                 lnVSfrontP : integer := 37;          -- VSync front porch
                 pxTotal    : integer := 1040;        -- total horiz. pixels (visible & invisible)
                 lnTotal    : integer := 666;         -- total vert. lines (visible & invisible)
                 mhzPixelClk: real    := 50.000;      -- pixel clock
                 activeHS   : std_logic := '1';       -- HSync polarity
                 activeVS   : std_logic := '1';       -- VSync polarity
                 -- Aux params
                 pxBorder   : integer := 3            -- bitmap border around the visible area
               );
       Port ( VS, HS : in  STD_LOGIC;
              R, G, B : in  STD_LOGIC);
   END COMPONENT;
	
BEGIN

   UUT: MainComponent PORT MAP(
		Start => Start, 
		Cmd => Cmd, 
		Addr => Addr, 
		DATA => DATA, 
		Clk => Clk, 
		DO_Rdy => DO_Rdy, 
		DO => DO, 
		F0 => F0, 
		E0 => E0, 
		VGA_HS => VGA_HS, 
		VGA_VS => VGA_VS, 
		VGA_R => VGA_R, 
		VGA_G => VGA_G, 
		VGA_B => VGA_B
   );

-- *** Test Bench - User Defined Section ***
   I_Scanner: VGAscan
      generic map(
         pxBorder => 3,
         FileName => "/home/daria/Documents/" )    -- VGAtxt48x20 works in 800x600/72Hz mode => VGA generics can be left with their defaults
      port map(
         VS => VGA_VS,
         HS => VGA_HS,
         R => VGA_R,
         G => VGA_G,
         B => VGA_B );

   -- Clock wave
   Clk <= not Clk after Clk_Period / 2;
	
	E0 <= '0';
	--F0 <= '0', '1' after 15000040ns, '0' after 15000060ns, '1' after 30000040ns, '0' after 30000060ns, '1' after 45000040ns, '0' after 45000060ns;
	--DO_Rdy <= '0', '1' after 15000000ns, '0' after 15000020ns, '1' after 15000040ns, '0' after 15000060ns, '1' after 30000000ns, '0' after 30000020ns, '1' after 45000000ns, '0' after 45000020ns, '1' after 45000040ns, '0' after 45000060ns;

	constantChanges : process
	begin
		while q < (musicToPlay'length + 20) loop
			wait for 15000000ns;
			if q < musicToPlay'length then
				DO <= musicToPlay(q);
				q <= q + 1;
				DO_Rdy <= '1';
			end if;
			wait for 20ns;
			DO <= X"00";
			F0 <= '1';
			wait for 20ns;
			DO_Rdy <= '0';
			F0 <= '0';
		end loop;
	end process;
	
-- *** End Test Bench - User Defined Section ***

END;
