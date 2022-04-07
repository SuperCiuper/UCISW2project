--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Main.vhf
-- /___/   /\     Timestamp : 04/07/2022 17:44:26
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/UCISW2project-main/UCISW2_organek/Main.vhf -w C:/Users/lab/Desktop/UCISW2project-main/UCISW2_organek/Main.sch
--Design Name: Main
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

entity Main is
   port ( Clk         : in    std_logic; 
          PS2_Clk     : in    std_logic; 
          PS2_Data    : in    std_logic; 
          AD_CONV     : out   std_logic; 
          AMP_CS      : out   std_logic; 
          DAC_CLR     : out   std_logic; 
          DAC_CS      : out   std_logic; 
          FPGA_INIT_B : out   std_logic; 
          SF_CE0      : out   std_logic; 
          SPI_MISO    : out   std_logic; 
          SPI_MOSI    : out   std_logic; 
          SPI_SCK     : out   std_logic; 
          SPI_SS_B    : out   std_logic);
end Main;

architecture BEHAVIORAL of Main is
   signal XLXN_1                  : std_logic;
   signal XLXN_2                  : std_logic_vector (3 downto 0);
   signal XLXN_3                  : std_logic_vector (3 downto 0);
   signal XLXN_4                  : std_logic_vector (11 downto 0);
   signal XLXN_40                 : std_logic;
   signal XLXN_41                 : std_logic_vector (7 downto 0);
   signal XLXN_42                 : std_logic;
   signal XLXN_43                 : std_logic;
   signal XLXN_44                 : std_logic;
   signal XLXN_47                 : std_logic_vector (3 downto 0);
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
             Note  : in    std_logic_vector (3 downto 0); 
             Start : out   std_logic; 
             Cmd   : out   std_logic_vector (3 downto 0); 
             Addr  : out   std_logic_vector (3 downto 0); 
             DATA  : out   std_logic_vector (11 downto 0));
   end component;
   
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component PS2ToNote
      port ( DO_Rdy : in    std_logic; 
             E0     : in    std_logic; 
             F0     : in    std_logic; 
             Clk    : in    std_logic; 
             DO     : in    std_logic_vector (7 downto 0); 
             Note   : out   std_logic_vector (3 downto 0));
   end component;
   
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
                Busy=>XLXN_40,
                DAC_CLR=>DAC_CLR,
                DAC_CS=>DAC_CS,
                FPGA_INIT_B=>FPGA_INIT_B,
                SF_CE0=>SF_CE0,
                SPI_MOSI=>SPI_MOSI,
                SPI_SCK=>SPI_SCK,
                SPI_SS_B=>SPI_SS_B);
   
   XLXI_2 : frequencyGenerator
      port map (Clk=>Clk,
                Note(3 downto 0)=>XLXN_47(3 downto 0),
                Addr(3 downto 0)=>XLXN_3(3 downto 0),
                Cmd(3 downto 0)=>XLXN_2(3 downto 0),
                DATA(11 downto 0)=>XLXN_4(11 downto 0),
                Start=>XLXN_1);
   
   XLXI_3 : PS2_Kbd
      port map (Clk_Sys=>Clk,
                Clk_50MHz=>Clk,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_41(7 downto 0),
                DO_Rdy=>XLXN_42,
                E0=>XLXN_43,
                F0=>XLXN_44);
   
   XLXI_4 : PS2ToNote
      port map (Clk=>Clk,
                DO(7 downto 0)=>XLXN_41(7 downto 0),
                DO_Rdy=>XLXN_42,
                E0=>XLXN_43,
                F0=>XLXN_44,
                Note(3 downto 0)=>XLXN_47(3 downto 0));
   
end BEHAVIORAL;


