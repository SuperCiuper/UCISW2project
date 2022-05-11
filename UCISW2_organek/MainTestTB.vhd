-- Vhdl test bench created from schematic /home/superciuper/Documents/UCISW2project/UCISW2_organek/MainTest.sch - Wed May 11 14:47:54 2022
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
ENTITY MainTest_MainTest_sch_tb IS
END MainTest_MainTest_sch_tb;
ARCHITECTURE behavioral OF MainTest_MainTest_sch_tb IS 

   COMPONENT MainTest
   PORT( SPI_MOSI	:	OUT	STD_LOGIC; 
          SPI_MISO	:	OUT	STD_LOGIC; 
          SPI_SCK	:	OUT	STD_LOGIC; 
          DAC_CS	:	OUT	STD_LOGIC; 
          DAC_CLR	:	OUT	STD_LOGIC; 
          SPI_SS_B	:	OUT	STD_LOGIC; 
          AMP_CS	:	OUT	STD_LOGIC; 
          AD_CONV	:	OUT	STD_LOGIC; 
          SF_CE0	:	OUT	STD_LOGIC; 
          FPGA_INIT_B	:	OUT	STD_LOGIC; 
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

   SIGNAL SPI_MOSI	:	STD_LOGIC;
   SIGNAL SPI_MISO	:	STD_LOGIC;
   SIGNAL SPI_SCK	:	STD_LOGIC;
   SIGNAL DAC_CS	:	STD_LOGIC;
   SIGNAL DAC_CLR	:	STD_LOGIC;
   SIGNAL SPI_SS_B	:	STD_LOGIC;
   SIGNAL AMP_CS	:	STD_LOGIC;
   SIGNAL AD_CONV	:	STD_LOGIC;
   SIGNAL SF_CE0	:	STD_LOGIC;
   SIGNAL FPGA_INIT_B	:	STD_LOGIC;
   SIGNAL Clk	:	STD_LOGIC := '0';
   SIGNAL DO_Rdy	:	STD_LOGIC;
   SIGNAL DO	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL F0	:	STD_LOGIC;
   SIGNAL E0	:	STD_LOGIC;
   SIGNAL VGA_HS	:	STD_LOGIC;
   SIGNAL VGA_VS	:	STD_LOGIC;
   SIGNAL VGA_R	:	STD_LOGIC;
   SIGNAL VGA_G	:	STD_LOGIC;
   SIGNAL VGA_B	:	STD_LOGIC;

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

   UUT: MainTest PORT MAP(
		SPI_MOSI => SPI_MOSI, 
		SPI_MISO => SPI_MISO, 
		SPI_SCK => SPI_SCK, 
		DAC_CS => DAC_CS, 
		DAC_CLR => DAC_CLR, 
		SPI_SS_B => SPI_SS_B, 
		AMP_CS => AMP_CS, 
		AD_CONV => AD_CONV, 
		SF_CE0 => SF_CE0, 
		FPGA_INIT_B => FPGA_INIT_B, 
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
	------------------------------------------------------------------
   -- Instance of the VGA scanner
   ------------------------------------------------------------------
   I_Scanner: VGAscan
      generic map(
         pxBorder => 3,
         FileName => "/home/superciuper/Documents/UCISW2project/Frame" )    -- VGAtxt48x20 works in 800x600/72Hz mode => VGA generics can be left with their defaults
      port map(
         VS => VGA_VS,
         HS => VGA_HS,
         R => VGA_R,
         G => VGA_G,
         B => VGA_B );

   -- Clock wave
   Clk <= not Clk after Clk_Period / 2;
	
	E0 <= '0';
	F0 <= '0', '1' after 29000000ns, '0' after 29000010ns;
	DO_Rdy <= '0', '1' after 15000000ns, '0' after 29000000ns, '1' after 30000000ns;
	DO <= "00000000", X"2C" after 15000000ns, X"24" after 30000000ns;
	
-- *** End Test Bench - User Defined Section ***

END;
