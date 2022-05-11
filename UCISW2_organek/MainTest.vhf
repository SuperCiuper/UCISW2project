--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : MainTest.vhf
-- /___/   /\     Timestamp : 05/11/2022 14:51:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/superciuper/Documents/UCISW2project/UCISW2_organek/MainTest.vhf -w /home/superciuper/Documents/UCISW2project/UCISW2_organek/MainTest.sch
--Design Name: MainTest
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity MainTest is
   port ( Clk         : in    std_logic; 
          DO          : in    std_logic_vector (7 downto 0); 
          DO_Rdy      : in    std_logic; 
          E0          : in    std_logic; 
          F0          : in    std_logic; 
          AD_CONV     : out   std_logic; 
          AMP_CS      : out   std_logic; 
          DAC_CLR     : out   std_logic; 
          DAC_CS      : out   std_logic; 
          FPGA_INIT_B : out   std_logic; 
          SF_CE0      : out   std_logic; 
          SPI_MISO    : out   std_logic; 
          SPI_MOSI    : out   std_logic; 
          SPI_SCK     : out   std_logic; 
          SPI_SS_B    : out   std_logic; 
          VGA_B       : out   std_logic; 
          VGA_G       : out   std_logic; 
          VGA_HS      : out   std_logic; 
          VGA_R       : out   std_logic; 
          VGA_VS      : out   std_logic);
end MainTest;

architecture BEHAVIORAL of MainTest is
   attribute BOX_TYPE   : string ;
   signal Busy                    : std_logic;
   signal XLXN_1                  : std_logic;
   signal XLXN_2                  : std_logic_vector (3 downto 0);
   signal XLXN_3                  : std_logic_vector (3 downto 0);
   signal XLXN_4                  : std_logic_vector (11 downto 0);
   signal XLXN_15                 : std_logic;
   signal XLXN_47                 : std_logic_vector (7 downto 0);
   signal XLXN_49                 : std_logic;
   signal XLXN_51                 : std_logic;
   signal XLXN_52                 : std_logic_vector (7 downto 0);
   signal XLXN_53                 : std_logic;
   signal XLXN_54                 : std_logic;
   signal XLXN_55                 : std_logic;
   signal XLXN_56                 : std_logic;
   signal XLXN_57                 : std_logic;
   signal XLXN_67                 : std_logic;
   signal XLXN_72                 : std_logic;
   signal SPI_MISO_DUMMY          : std_logic;
   signal XLXI_1_Reset_openSignal : std_logic;
   component DACWrite
      port ( Reset       : in    std_logic; 
             Start       : in    std_logic; 
             SPI_MISO    : in    std_logic; 
             Cmd         : in    std_logic_vector (3 downto 0); 
             Addr        : in    std_logic_vector (3 downto 0); 
             DATA        : in    std_logic_vector (11 downto 0); 
             DAC_CLR     : out   std_logic; 
             DAC_CS      : out   std_logic; 
             SPI_MOSI    : out   std_logic; 
             SPI_SCK     : out   std_logic; 
             SPI_SS_B    : out   std_logic; 
             AMP_CS      : out   std_logic; 
             AD_CONV     : out   std_logic; 
             SF_CE0      : out   std_logic; 
             FPGA_INIT_B : out   std_logic; 
             Busy        : out   std_logic; 
             Clk_50MHz   : in    std_logic; 
             Clk_Sys     : in    std_logic);
   end component;
   
   component frequencyGenerator
      port ( Clk   : in    std_logic; 
             Note  : in    std_logic_vector (7 downto 0); 
             Start : out   std_logic; 
             Cmd   : out   std_logic_vector (3 downto 0); 
             Addr  : out   std_logic_vector (3 downto 0); 
             DATA  : out   std_logic_vector (11 downto 0));
   end component;
   
   component PS2ToNote
      port ( DO_Rdy   : in    std_logic; 
             E0       : in    std_logic; 
             F0       : in    std_logic; 
             Clk      : in    std_logic; 
             DO       : in    std_logic_vector (7 downto 0); 
             Note_Rdy : out   std_logic; 
             Note     : out   std_logic_vector (7 downto 0));
   end component;
   
   component VGAtxt48x20
      port ( Char_DI     : in    std_logic_vector (7 downto 0); 
             Home        : in    std_logic; 
             NewLine     : in    std_logic; 
             Goto00      : in    std_logic; 
             Clk_Sys     : in    std_logic; 
             Clk_50MHz   : in    std_logic; 
             CursorOn    : in    std_logic; 
             ScrollEn    : in    std_logic; 
             ScrollClear : in    std_logic; 
             Busy        : out   std_logic; 
             VGA_HS      : out   std_logic; 
             VGA_VS      : out   std_logic; 
             VGA_RGB     : out   std_logic; 
             Char_WE     : in    std_logic);
   end component;
   
   component imageGenerator
      port ( Clk         : in    std_logic; 
             Note_Rdy    : in    std_logic; 
             Note        : in    std_logic_vector (7 downto 0); 
             Char_WE     : out   std_logic; 
             Home        : out   std_logic; 
             NewLine     : out   std_logic; 
             Goto00      : out   std_logic; 
             CursorOn    : out   std_logic; 
             ScrollEn    : out   std_logic; 
             ScrollClear : out   std_logic; 
             Char_DI     : out   std_logic_vector (7 downto 0));
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   SPI_MISO <= SPI_MISO_DUMMY;
   XLXI_1 : DACWrite
      port map (Addr(3 downto 0)=>XLXN_3(3 downto 0),
                Clk_Sys=>Clk,
                Clk_50MHz=>Clk,
                Cmd(3 downto 0)=>XLXN_2(3 downto 0),
                DATA(11 downto 0)=>XLXN_4(11 downto 0),
                Reset=>XLXI_1_Reset_openSignal,
                SPI_MISO=>SPI_MISO_DUMMY,
                Start=>XLXN_1,
                AD_CONV=>AD_CONV,
                AMP_CS=>AMP_CS,
                Busy=>XLXN_15,
                DAC_CLR=>DAC_CLR,
                DAC_CS=>DAC_CS,
                FPGA_INIT_B=>FPGA_INIT_B,
                SF_CE0=>SF_CE0,
                SPI_MOSI=>SPI_MOSI,
                SPI_SCK=>SPI_SCK,
                SPI_SS_B=>SPI_SS_B);
   
   XLXI_2 : frequencyGenerator
      port map (Clk=>Clk,
                Note(7 downto 0)=>XLXN_47(7 downto 0),
                Addr(3 downto 0)=>XLXN_3(3 downto 0),
                Cmd(3 downto 0)=>XLXN_2(3 downto 0),
                DATA(11 downto 0)=>XLXN_4(11 downto 0),
                Start=>XLXN_1);
   
   XLXI_3 : PS2ToNote
      port map (Clk=>Clk,
                DO(7 downto 0)=>DO(7 downto 0),
                DO_Rdy=>DO_Rdy,
                E0=>E0,
                F0=>F0,
                Note(7 downto 0)=>XLXN_47(7 downto 0),
                Note_Rdy=>XLXN_49);
   
   XLXI_5 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_52(7 downto 0),
                Char_WE=>XLXN_51,
                Clk_Sys=>Clk,
                Clk_50MHz=>Clk,
                CursorOn=>XLXN_56,
                Goto00=>XLXN_55,
                Home=>XLXN_53,
                NewLine=>XLXN_54,
                ScrollClear=>XLXN_67,
                ScrollEn=>XLXN_57,
                Busy=>Busy,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_72,
                VGA_VS=>VGA_VS);
   
   XLXI_6 : imageGenerator
      port map (Clk=>Clk,
                Note(7 downto 0)=>XLXN_47(7 downto 0),
                Note_Rdy=>XLXN_49,
                Char_DI(7 downto 0)=>XLXN_52(7 downto 0),
                Char_WE=>XLXN_51,
                CursorOn=>XLXN_56,
                Goto00=>XLXN_55,
                Home=>XLXN_53,
                NewLine=>XLXN_54,
                ScrollClear=>XLXN_67,
                ScrollEn=>XLXN_57);
   
   XLXI_7 : BUF
      port map (I=>XLXN_72,
                O=>VGA_G);
   
   XLXI_8 : BUF
      port map (I=>XLXN_72,
                O=>VGA_B);
   
   XLXI_9 : BUF
      port map (I=>XLXN_72,
                O=>VGA_R);
   
end BEHAVIORAL;


