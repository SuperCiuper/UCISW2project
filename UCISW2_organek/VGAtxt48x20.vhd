library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
--use UNISIM.VPKG.ALL;

entity VGAtxt48x20 is
  port (
    VGA_HS : out STD_LOGIC; 
    Home : in STD_LOGIC := 'X'; 
    CursorOn : in STD_LOGIC := 'X'; 
    Busy : out STD_LOGIC; 
    VGA_VS : out STD_LOGIC; 
    Char_WE : in STD_LOGIC := 'X'; 
    Goto00 : in STD_LOGIC := 'X'; 
    Clk_Sys : in STD_LOGIC := 'X'; 
    NewLine : in STD_LOGIC := 'X'; 
    ScrollEn : in STD_LOGIC := 'X'; 
    VGA_RGB : out STD_LOGIC; 
    ScrollClear : in STD_LOGIC := 'X'; 
    Clk_50MHz : in STD_LOGIC := 'X'; 
    Char_DI : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end VGAtxt48x20;

architecture STRUCTURE of VGAtxt48x20 is
  signal I_CursorCnt_ColCnt_or0000_67 : STD_LOGIC; 
  signal I_CursorCnt_ColCnt_or0001 : STD_LOGIC; 
  signal I_CursorCnt_LastLine5111_69 : STD_LOGIC; 
  signal I_CursorCnt_LastLine524_70 : STD_LOGIC; 
  signal I_CursorCnt_LastLine549_71 : STD_LOGIC; 
  signal I_CursorCnt_LastLine555_72 : STD_LOGIC; 
  signal I_CursorCnt_LastLine580_73 : STD_LOGIC; 
  signal I_CursorCnt_LineCnt_mux0001_2_123_82 : STD_LOGIC; 
  signal I_CursorCnt_LineCnt_mux0001_2_150_83 : STD_LOGIC; 
  signal I_CursorCnt_LineCnt_not0001 : STD_LOGIC; 
  signal I_CursorCnt_LineCnt_not00011 : STD_LOGIC; 
  signal I_CursorCnt_LineCnt_not000111_88 : STD_LOGIC; 
  signal I_CursorCnt_Mcount_ColCnt_xor_4_1 : STD_LOGIC; 
  signal I_CursorCnt_Mcount_ColCnt_xor_4_11_90 : STD_LOGIC; 
  signal I_CursorCnt_N10 : STD_LOGIC; 
  signal I_CursorCnt_N21 : STD_LOGIC; 
  signal I_CursorCnt_N5 : STD_LOGIC; 
  signal I_CursorCnt_N6 : STD_LOGIC; 
  signal I_CursorCnt_N7 : STD_LOGIC; 
  signal I_CursorCnt_NextState : STD_LOGIC; 
  signal I_CursorCnt_RAM_WE_Out : STD_LOGIC; 
  signal I_CursorCnt_Result_0_1 : STD_LOGIC; 
  signal I_CursorCnt_Result_1_1 : STD_LOGIC; 
  signal I_CursorCnt_Result_2_1 : STD_LOGIC; 
  signal I_CursorCnt_Result_3_1 : STD_LOGIC; 
  signal I_CursorCnt_Result_4_1 : STD_LOGIC; 
  signal I_CursorCnt_Result_4_11_108 : STD_LOGIC; 
  signal I_CursorCnt_Result_4_12_109 : STD_LOGIC; 
  signal I_CursorCnt_ScrollStart : STD_LOGIC; 
  signal I_ModeCtrl_HActive_118 : STD_LOGIC; 
  signal I_ModeCtrl_HActive_and0000 : STD_LOGIC; 
  signal I_ModeCtrl_HActive_mux0000 : STD_LOGIC; 
  signal I_ModeCtrl_HActive_mux000012_121 : STD_LOGIC; 
  signal I_ModeCtrl_HActive_mux000017_122 : STD_LOGIC; 
  signal NlwRenamedSig_OI_I_ModeCtrl_HSync : STD_LOGIC; 
  signal I_ModeCtrl_HSync_and0000_124 : STD_LOGIC; 
  signal I_ModeCtrl_HSync_mux0000 : STD_LOGIC; 
  signal I_ModeCtrl_HSync_mux000024_126 : STD_LOGIC; 
  signal I_ModeCtrl_HSync_mux00007_127 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntX_cy_1_rt_130 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntX_cy_2_rt_132 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntX_cy_3_rt_134 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntX_cy_4_rt_136 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntX_cy_5_rt_138 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntX_cy_6_rt_140 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntX_cy_7_rt_142 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntX_cy_8_rt_144 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntX_cy_9_rt_146 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntX_xor_10_rt_148 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntY_cy_1_rt_151 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntY_cy_2_rt_153 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntY_cy_3_rt_155 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntY_cy_4_rt_157 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntY_cy_5_rt_159 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntY_cy_6_rt_161 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntY_cy_7_rt_163 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntY_cy_8_rt_165 : STD_LOGIC; 
  signal I_ModeCtrl_Mcount_cntY_xor_9_rt_167 : STD_LOGIC; 
  signal I_ModeCtrl_N5 : STD_LOGIC; 
  signal I_ModeCtrl_N6 : STD_LOGIC; 
  signal I_ModeCtrl_N9 : STD_LOGIC; 
  signal I_ModeCtrl_Result_0_1 : STD_LOGIC; 
  signal I_ModeCtrl_Result_0_2 : STD_LOGIC; 
  signal I_ModeCtrl_Result_0_3 : STD_LOGIC; 
  signal I_ModeCtrl_Result_1_1 : STD_LOGIC; 
  signal I_ModeCtrl_Result_1_2 : STD_LOGIC; 
  signal I_ModeCtrl_Result_1_3 : STD_LOGIC; 
  signal I_ModeCtrl_Result_2_1 : STD_LOGIC; 
  signal I_ModeCtrl_Result_2_2 : STD_LOGIC; 
  signal I_ModeCtrl_Result_2_3 : STD_LOGIC; 
  signal I_ModeCtrl_Result_3_1_185 : STD_LOGIC; 
  signal I_ModeCtrl_Result_3_2 : STD_LOGIC; 
  signal I_ModeCtrl_Result_3_3 : STD_LOGIC; 
  signal I_ModeCtrl_Result_4_1_189 : STD_LOGIC; 
  signal I_ModeCtrl_Result_4_2_190 : STD_LOGIC; 
  signal I_ModeCtrl_Result_4_3 : STD_LOGIC; 
  signal I_ModeCtrl_Result_4_31_192 : STD_LOGIC; 
  signal I_ModeCtrl_Result_4_32_193 : STD_LOGIC; 
  signal I_ModeCtrl_Result_4_4 : STD_LOGIC; 
  signal I_ModeCtrl_Result_4_5 : STD_LOGIC; 
  signal I_ModeCtrl_Result_5_1 : STD_LOGIC; 
  signal I_ModeCtrl_Result_6_1 : STD_LOGIC; 
  signal I_ModeCtrl_Result_7_1 : STD_LOGIC; 
  signal I_ModeCtrl_Result_8_1 : STD_LOGIC; 
  signal I_ModeCtrl_Result_9_1 : STD_LOGIC; 
  signal I_ModeCtrl_VActive_206 : STD_LOGIC; 
  signal I_ModeCtrl_VActive_and0000 : STD_LOGIC; 
  signal I_ModeCtrl_VActive_mux0000 : STD_LOGIC; 
  signal I_ModeCtrl_VActive_mux000015 : STD_LOGIC; 
  signal I_ModeCtrl_VActive_mux0000151_210 : STD_LOGIC; 
  signal I_ModeCtrl_VActive_mux000053 : STD_LOGIC; 
  signal I_ModeCtrl_VActive_mux0000531_212 : STD_LOGIC; 
  signal NlwRenamedSig_OI_I_ModeCtrl_VSync : STD_LOGIC; 
  signal I_ModeCtrl_VSync_cmp_eq0000 : STD_LOGIC; 
  signal I_ModeCtrl_VSync_mux0000 : STD_LOGIC; 
  signal I_ModeCtrl_VSync_mux000012_216 : STD_LOGIC; 
  signal I_ModeCtrl_VSync_mux000016_217 : STD_LOGIC; 
  signal I_ModeCtrl_VSync_mux000037_218 : STD_LOGIC; 
  signal I_ModeCtrl_VSync_mux00004_219 : STD_LOGIC; 
  signal I_ModeCtrl_VSync_mux000054_220 : STD_LOGIC; 
  signal I_ModeCtrl_VSync_mux000062_221 : STD_LOGIC; 
  signal I_ModeCtrl_VSync_mux000066_222 : STD_LOGIC; 
  signal I_ModeCtrl_cntMod30_and0000 : STD_LOGIC; 
  signal I_ModeCtrl_cntMod30_cmp_eq0000 : STD_LOGIC; 
  signal I_ModeCtrl_cntMod30_cmp_eq00001_230 : STD_LOGIC; 
  signal I_ModeCtrl_iLineNo_and0000 : STD_LOGIC; 
  signal I_ModeCtrl_iLineNo_not0001 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal NewChar : STD_LOGIC; 
  signal XLXI_113_CursorActive_and0001 : STD_LOGIC; 
  signal XLXI_113_CursorActive_cmp_eq0000 : STD_LOGIC; 
  signal XLXI_115_XLXI_147_O_331 : STD_LOGIC; 
  signal XLXI_115_XLXI_147_Q_332 : STD_LOGIC; 
  signal XLXI_115_XLXI_148_Mshreg_O_333 : STD_LOGIC; 
  signal XLXI_115_XLXI_148_O_334 : STD_LOGIC; 
  signal XLXI_115_XLXI_149_Mshreg_O_335 : STD_LOGIC; 
  signal XLXI_115_XLXI_149_O_336 : STD_LOGIC; 
  signal XLXI_115_XLXI_150_Mshreg_O_337 : STD_LOGIC; 
  signal XLXI_115_XLXI_150_O_338 : STD_LOGIC; 
  signal XLXI_115_XLXI_151_O_339 : STD_LOGIC; 
  signal XLXI_115_XLXI_151_Q_340 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_10_rt_368 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_11_rt_370 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_12_rt_372 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_13_rt_374 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_14_rt_376 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_15_rt_378 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_16_rt_380 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_17_rt_382 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_18_rt_384 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_19_rt_386 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_1_rt_388 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_20_rt_390 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_21_rt_392 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_22_rt_394 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_23_rt_396 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_2_rt_398 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_3_rt_400 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_4_rt_402 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_5_rt_404 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_6_rt_406 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_7_rt_408 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_8_rt_410 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy_9_rt_412 : STD_LOGIC; 
  signal XLXI_115_XLXI_152_Mcount_Cnt_xor_24_rt_414 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_ActiveX_415 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_ActiveX_and0000_416 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_ActiveX_and00001111_417 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_ActiveX_and00001120_418 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_ActiveX_and0000117_419 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_ActiveX_cmp_eq0000_420 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_DetectX_and0000_norst : STD_LOGIC; 
  signal XLXI_115_XLXI_155_DetectX_cmp_eq0000_inv_422 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_DetectY : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom0000 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom00001_425 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom000011_426 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom000012_427 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom000013_428 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom00001_f5_429 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom00001_f51 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom00001_f6_431 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom00002_432 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom000021_433 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom000022_434 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom000023_435 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom00002_f5_436 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom00002_f51 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom00002_f6_438 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom00003_439 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom000031_440 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom000032_441 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom00003_f5_442 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom00003_f51 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom00003_f6_444 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom00004_445 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom000041_446 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom000042_447 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom00004_f5_448 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom00004_f51 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom00004_f6_450 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom0000_f5_451 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom0000_f51 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Mrom_iPixOut_rom0000_f6_453 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_PixOut_454 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Result_0_1 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Result_1_1 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Result_2_1 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_Result_3_bdd0 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_StartX : STD_LOGIC; 
  signal XLXI_115_XLXI_155_StartY : STD_LOGIC; 
  signal XLXI_115_XLXI_155_StartY121_467 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_iPixOut : STD_LOGIC; 
  signal XLXI_115_XLXI_155_iPixOut11_478 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_iPixOut56_479 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_prevDetectX_480 : STD_LOGIC; 
  signal XLXI_115_XLXI_155_prevDetectY_481 : STD_LOGIC; 
  signal XLXI_115_XLXN_678 : STD_LOGIC; 
  signal XLXI_115_XLXN_724 : STD_LOGIC; 
  signal XLXI_115_XLXN_727 : STD_LOGIC; 
  signal XLXI_115_XLXN_762 : STD_LOGIC; 
  signal XLXI_147_En_486 : STD_LOGIC; 
  signal XLXN_687 : STD_LOGIC; 
  signal XLXN_699 : STD_LOGIC; 
  signal XLXN_795 : STD_LOGIC; 
  signal XLXN_817 : STD_LOGIC; 
  signal XLXN_898 : STD_LOGIC; 
  signal XLXI_115_XLXI_1_M67 : STD_LOGIC; 
  signal XLXI_115_XLXI_1_M47 : STD_LOGIC; 
  signal XLXI_115_XLXI_1_M45 : STD_LOGIC; 
  signal XLXI_115_XLXI_1_M23 : STD_LOGIC; 
  signal XLXI_115_XLXI_1_M03 : STD_LOGIC; 
  signal XLXI_115_XLXI_1_M01 : STD_LOGIC; 
  signal XLXI_115_XLXI_1_I_M67_M1 : STD_LOGIC; 
  signal XLXI_115_XLXI_1_I_M67_M0 : STD_LOGIC; 
  signal XLXI_115_XLXI_1_I_M45_M1 : STD_LOGIC; 
  signal XLXI_115_XLXI_1_I_M45_M0 : STD_LOGIC; 
  signal XLXI_115_XLXI_1_I_M23_M1 : STD_LOGIC; 
  signal XLXI_115_XLXI_1_I_M23_M0 : STD_LOGIC; 
  signal XLXI_115_XLXI_1_I_M01_M1 : STD_LOGIC; 
  signal XLXI_115_XLXI_1_I_M01_M0 : STD_LOGIC; 
  signal NLW_XLXI_147_Mrom_DO_rom0000_DOP_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_3_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_3_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_3_DOB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_3_DOB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_3_DOB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_3_DOB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_3_DOB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_3_DOB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_3_DOB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_3_DOB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_3_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal I_CursorCnt_ColCnt : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal I_CursorCnt_LineCnt : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal I_CursorCnt_LineCnt_mux0001 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal I_CursorCnt_Result : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal I_CursorCnt_ScrollBase : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal NlwRenamedSig_OI_I_CursorCnt_State : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal I_ModeCtrl_Mcount_cntX_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal I_ModeCtrl_Mcount_cntX_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal I_ModeCtrl_Mcount_cntY_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal I_ModeCtrl_Mcount_cntY_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal I_ModeCtrl_Result : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal I_ModeCtrl_cntMod30 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal I_ModeCtrl_cntX : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal I_ModeCtrl_cntY : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal I_ModeCtrl_iLineNo : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal Rd_A : STD_LOGIC_VECTOR ( 10 downto 6 ); 
  signal XLXI_113_Mcompar_CursorActive_cmp_eq0000_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal XLXI_115_Result : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal XLXI_115_XLXI_152_Cnt : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal XLXI_115_XLXI_152_Mcount_Cnt_cy : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal XLXI_115_XLXI_152_Mcount_Cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_115_XLXI_155_Result : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal XLXI_115_XLXI_155_cntCol : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal XLXI_115_XLXI_155_cntLine : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal XLXI_5_Madd_Rd_Address_10_6_add0000_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_5_Madd_Rd_Address_10_6_add0000_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal XLXN_698 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXN_899 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXN_900 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
begin
  VGA_HS <= NlwRenamedSig_OI_I_ModeCtrl_HSync;
  Busy <= NlwRenamedSig_OI_I_CursorCnt_State(0);
  VGA_VS <= NlwRenamedSig_OI_I_ModeCtrl_VSync;
  VGA_RGB <= XLXI_115_XLXI_155_PixOut_454;
  XLXI_147_En : FD
    port map (
      C => Clk_50MHz,
      D => NewChar,
      Q => XLXI_147_En_486
    );
  XLXI_5_Madd_Rd_Address_10_6_add0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => I_ModeCtrl_iLineNo(0),
      I1 => I_CursorCnt_ScrollBase(0),
      O => XLXI_5_Madd_Rd_Address_10_6_add0000_lut(0)
    );
  XLXI_5_Madd_Rd_Address_10_6_add0000_cy_0_Q : MUXCY
    port map (
      CI => XLXN_898,
      DI => I_ModeCtrl_iLineNo(0),
      S => XLXI_5_Madd_Rd_Address_10_6_add0000_lut(0),
      O => XLXI_5_Madd_Rd_Address_10_6_add0000_cy(0)
    );
  XLXI_5_Madd_Rd_Address_10_6_add0000_xor_0_Q : XORCY
    port map (
      CI => XLXN_898,
      LI => XLXI_5_Madd_Rd_Address_10_6_add0000_lut(0),
      O => Rd_A(6)
    );
  XLXI_5_Madd_Rd_Address_10_6_add0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => I_ModeCtrl_iLineNo(1),
      I1 => I_CursorCnt_ScrollBase(1),
      O => XLXI_5_Madd_Rd_Address_10_6_add0000_lut(1)
    );
  XLXI_5_Madd_Rd_Address_10_6_add0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_5_Madd_Rd_Address_10_6_add0000_cy(0),
      DI => I_ModeCtrl_iLineNo(1),
      S => XLXI_5_Madd_Rd_Address_10_6_add0000_lut(1),
      O => XLXI_5_Madd_Rd_Address_10_6_add0000_cy(1)
    );
  XLXI_5_Madd_Rd_Address_10_6_add0000_xor_1_Q : XORCY
    port map (
      CI => XLXI_5_Madd_Rd_Address_10_6_add0000_cy(0),
      LI => XLXI_5_Madd_Rd_Address_10_6_add0000_lut(1),
      O => Rd_A(7)
    );
  XLXI_5_Madd_Rd_Address_10_6_add0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => I_ModeCtrl_iLineNo(2),
      I1 => I_CursorCnt_ScrollBase(2),
      O => XLXI_5_Madd_Rd_Address_10_6_add0000_lut(2)
    );
  XLXI_5_Madd_Rd_Address_10_6_add0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_5_Madd_Rd_Address_10_6_add0000_cy(1),
      DI => I_ModeCtrl_iLineNo(2),
      S => XLXI_5_Madd_Rd_Address_10_6_add0000_lut(2),
      O => XLXI_5_Madd_Rd_Address_10_6_add0000_cy(2)
    );
  XLXI_5_Madd_Rd_Address_10_6_add0000_xor_2_Q : XORCY
    port map (
      CI => XLXI_5_Madd_Rd_Address_10_6_add0000_cy(1),
      LI => XLXI_5_Madd_Rd_Address_10_6_add0000_lut(2),
      O => Rd_A(8)
    );
  XLXI_5_Madd_Rd_Address_10_6_add0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => I_ModeCtrl_iLineNo(3),
      I1 => I_CursorCnt_ScrollBase(3),
      O => XLXI_5_Madd_Rd_Address_10_6_add0000_lut(3)
    );
  XLXI_5_Madd_Rd_Address_10_6_add0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_5_Madd_Rd_Address_10_6_add0000_cy(2),
      DI => I_ModeCtrl_iLineNo(3),
      S => XLXI_5_Madd_Rd_Address_10_6_add0000_lut(3),
      O => XLXI_5_Madd_Rd_Address_10_6_add0000_cy(3)
    );
  XLXI_5_Madd_Rd_Address_10_6_add0000_xor_3_Q : XORCY
    port map (
      CI => XLXI_5_Madd_Rd_Address_10_6_add0000_cy(2),
      LI => XLXI_5_Madd_Rd_Address_10_6_add0000_lut(3),
      O => Rd_A(9)
    );
  XLXI_5_Madd_Rd_Address_10_6_add0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => I_ModeCtrl_iLineNo(4),
      I1 => I_CursorCnt_ScrollBase(4),
      O => XLXI_5_Madd_Rd_Address_10_6_add0000_lut(4)
    );
  XLXI_5_Madd_Rd_Address_10_6_add0000_xor_4_Q : XORCY
    port map (
      CI => XLXI_5_Madd_Rd_Address_10_6_add0000_cy(3),
      LI => XLXI_5_Madd_Rd_Address_10_6_add0000_lut(4),
      O => Rd_A(10)
    );
  XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => I_ModeCtrl_cntX(4),
      I1 => I_CursorCnt_ColCnt(0),
      I2 => I_ModeCtrl_cntX(5),
      I3 => I_CursorCnt_ColCnt(1),
      O => XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut(0)
    );
  XLXI_113_Mcompar_CursorActive_cmp_eq0000_cy_0_Q : MUXCY
    port map (
      CI => XLXN_687,
      DI => XLXN_898,
      S => XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut(0),
      O => XLXI_113_Mcompar_CursorActive_cmp_eq0000_cy(0)
    );
  XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => I_ModeCtrl_cntX(6),
      I1 => I_CursorCnt_ColCnt(2),
      I2 => I_ModeCtrl_cntX(7),
      I3 => I_CursorCnt_ColCnt(3),
      O => XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut(1)
    );
  XLXI_113_Mcompar_CursorActive_cmp_eq0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_113_Mcompar_CursorActive_cmp_eq0000_cy(0),
      DI => XLXN_898,
      S => XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut(1),
      O => XLXI_113_Mcompar_CursorActive_cmp_eq0000_cy(1)
    );
  XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => I_ModeCtrl_cntX(8),
      I1 => I_CursorCnt_ColCnt(4),
      I2 => I_ModeCtrl_cntX(9),
      I3 => I_CursorCnt_ColCnt(5),
      O => XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut(2)
    );
  XLXI_113_Mcompar_CursorActive_cmp_eq0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_113_Mcompar_CursorActive_cmp_eq0000_cy(1),
      DI => XLXN_898,
      S => XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut(2),
      O => XLXI_113_Mcompar_CursorActive_cmp_eq0000_cy(2)
    );
  XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => Rd_A(6),
      I1 => I_CursorCnt_LineCnt(0),
      I2 => Rd_A(7),
      I3 => I_CursorCnt_LineCnt(1),
      O => XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut(3)
    );
  XLXI_113_Mcompar_CursorActive_cmp_eq0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_113_Mcompar_CursorActive_cmp_eq0000_cy(2),
      DI => XLXN_898,
      S => XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut(3),
      O => XLXI_113_Mcompar_CursorActive_cmp_eq0000_cy(3)
    );
  XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut_4_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => Rd_A(8),
      I1 => I_CursorCnt_LineCnt(2),
      I2 => Rd_A(9),
      I3 => I_CursorCnt_LineCnt(3),
      O => XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut(4)
    );
  XLXI_113_Mcompar_CursorActive_cmp_eq0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_113_Mcompar_CursorActive_cmp_eq0000_cy(3),
      DI => XLXN_898,
      S => XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut(4),
      O => XLXI_113_Mcompar_CursorActive_cmp_eq0000_cy(4)
    );
  XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Rd_A(10),
      I1 => I_CursorCnt_LineCnt(4),
      O => XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut(5)
    );
  XLXI_113_Mcompar_CursorActive_cmp_eq0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_113_Mcompar_CursorActive_cmp_eq0000_cy(4),
      DI => XLXN_898,
      S => XLXI_113_Mcompar_CursorActive_cmp_eq0000_lut(5),
      O => XLXI_113_CursorActive_cmp_eq0000
    );
  XLXI_93 : VCC
    port map (
      P => XLXN_687
    );
  XLXI_119 : OR2
    port map (
      I0 => NlwRenamedSig_OI_I_ModeCtrl_HSync,
      I1 => NewChar,
      O => XLXN_817
    );
  XLXI_141 : GND
    port map (
      G => XLXN_898
    );
  I_CursorCnt_ScrollBase_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_Sys,
      CE => I_CursorCnt_ScrollStart,
      D => I_CursorCnt_Result_4_1,
      Q => I_CursorCnt_ScrollBase(4)
    );
  I_CursorCnt_ScrollBase_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_Sys,
      CE => I_CursorCnt_ScrollStart,
      D => I_CursorCnt_Result_3_1,
      Q => I_CursorCnt_ScrollBase(3)
    );
  I_CursorCnt_ScrollBase_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_Sys,
      CE => I_CursorCnt_ScrollStart,
      D => I_CursorCnt_Result_2_1,
      Q => I_CursorCnt_ScrollBase(2)
    );
  I_CursorCnt_ScrollBase_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_Sys,
      CE => I_CursorCnt_ScrollStart,
      D => I_CursorCnt_Result_1_1,
      Q => I_CursorCnt_ScrollBase(1)
    );
  I_CursorCnt_ScrollBase_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_Sys,
      CE => I_CursorCnt_ScrollStart,
      D => I_CursorCnt_Result_0_1,
      Q => I_CursorCnt_ScrollBase(0)
    );
  I_CursorCnt_ColCnt_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_Sys,
      CE => I_CursorCnt_ColCnt_or0001,
      D => I_CursorCnt_Result(5),
      R => I_CursorCnt_ColCnt_or0000_67,
      Q => I_CursorCnt_ColCnt(5)
    );
  I_CursorCnt_ColCnt_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_Sys,
      CE => I_CursorCnt_ColCnt_or0001,
      D => I_CursorCnt_Result(4),
      R => I_CursorCnt_ColCnt_or0000_67,
      Q => I_CursorCnt_ColCnt(4)
    );
  I_CursorCnt_ColCnt_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_Sys,
      CE => I_CursorCnt_ColCnt_or0001,
      D => I_CursorCnt_Result(3),
      R => I_CursorCnt_ColCnt_or0000_67,
      Q => I_CursorCnt_ColCnt(3)
    );
  I_CursorCnt_ColCnt_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_Sys,
      CE => I_CursorCnt_ColCnt_or0001,
      D => I_CursorCnt_Result(2),
      R => I_CursorCnt_ColCnt_or0000_67,
      Q => I_CursorCnt_ColCnt(2)
    );
  I_CursorCnt_ColCnt_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_Sys,
      CE => I_CursorCnt_ColCnt_or0001,
      D => I_CursorCnt_Result(1),
      R => I_CursorCnt_ColCnt_or0000_67,
      Q => I_CursorCnt_ColCnt(1)
    );
  I_CursorCnt_ColCnt_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_Sys,
      CE => I_CursorCnt_ColCnt_or0001,
      D => I_CursorCnt_Result(0),
      R => I_CursorCnt_ColCnt_or0000_67,
      Q => I_CursorCnt_ColCnt(0)
    );
  I_CursorCnt_LineCnt_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_Sys,
      CE => I_CursorCnt_LineCnt_not0001,
      D => I_CursorCnt_LineCnt_mux0001(4),
      Q => I_CursorCnt_LineCnt(4)
    );
  I_CursorCnt_LineCnt_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_Sys,
      CE => I_CursorCnt_LineCnt_not0001,
      D => I_CursorCnt_LineCnt_mux0001(3),
      Q => I_CursorCnt_LineCnt(3)
    );
  I_CursorCnt_LineCnt_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_Sys,
      CE => I_CursorCnt_LineCnt_not0001,
      D => I_CursorCnt_LineCnt_mux0001(2),
      Q => I_CursorCnt_LineCnt(2)
    );
  I_CursorCnt_LineCnt_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_Sys,
      CE => I_CursorCnt_LineCnt_not0001,
      D => I_CursorCnt_LineCnt_mux0001(1),
      Q => I_CursorCnt_LineCnt(1)
    );
  I_CursorCnt_LineCnt_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_Sys,
      CE => I_CursorCnt_LineCnt_not0001,
      D => I_CursorCnt_LineCnt_mux0001(0),
      Q => I_CursorCnt_LineCnt(0)
    );
  I_CursorCnt_State_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_Sys,
      D => I_CursorCnt_NextState,
      R => Goto00,
      Q => NlwRenamedSig_OI_I_CursorCnt_State(0)
    );
  I_ModeCtrl_Mcount_cntY_xor_9_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntY_cy(8),
      LI => I_ModeCtrl_Mcount_cntY_xor_9_rt_167,
      O => I_ModeCtrl_Result_9_1
    );
  I_ModeCtrl_Mcount_cntY_xor_8_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntY_cy(7),
      LI => I_ModeCtrl_Mcount_cntY_cy_8_rt_165,
      O => I_ModeCtrl_Result_8_1
    );
  I_ModeCtrl_Mcount_cntY_cy_8_Q : MUXCY
    port map (
      CI => I_ModeCtrl_Mcount_cntY_cy(7),
      DI => XLXN_898,
      S => I_ModeCtrl_Mcount_cntY_cy_8_rt_165,
      O => I_ModeCtrl_Mcount_cntY_cy(8)
    );
  I_ModeCtrl_Mcount_cntY_xor_7_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntY_cy(6),
      LI => I_ModeCtrl_Mcount_cntY_cy_7_rt_163,
      O => I_ModeCtrl_Result_7_1
    );
  I_ModeCtrl_Mcount_cntY_cy_7_Q : MUXCY
    port map (
      CI => I_ModeCtrl_Mcount_cntY_cy(6),
      DI => XLXN_898,
      S => I_ModeCtrl_Mcount_cntY_cy_7_rt_163,
      O => I_ModeCtrl_Mcount_cntY_cy(7)
    );
  I_ModeCtrl_Mcount_cntY_xor_6_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntY_cy(5),
      LI => I_ModeCtrl_Mcount_cntY_cy_6_rt_161,
      O => I_ModeCtrl_Result_6_1
    );
  I_ModeCtrl_Mcount_cntY_cy_6_Q : MUXCY
    port map (
      CI => I_ModeCtrl_Mcount_cntY_cy(5),
      DI => XLXN_898,
      S => I_ModeCtrl_Mcount_cntY_cy_6_rt_161,
      O => I_ModeCtrl_Mcount_cntY_cy(6)
    );
  I_ModeCtrl_Mcount_cntY_xor_5_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntY_cy(4),
      LI => I_ModeCtrl_Mcount_cntY_cy_5_rt_159,
      O => I_ModeCtrl_Result_5_1
    );
  I_ModeCtrl_Mcount_cntY_cy_5_Q : MUXCY
    port map (
      CI => I_ModeCtrl_Mcount_cntY_cy(4),
      DI => XLXN_898,
      S => I_ModeCtrl_Mcount_cntY_cy_5_rt_159,
      O => I_ModeCtrl_Mcount_cntY_cy(5)
    );
  I_ModeCtrl_Mcount_cntY_xor_4_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntY_cy(3),
      LI => I_ModeCtrl_Mcount_cntY_cy_4_rt_157,
      O => I_ModeCtrl_Result_4_2_190
    );
  I_ModeCtrl_Mcount_cntY_cy_4_Q : MUXCY
    port map (
      CI => I_ModeCtrl_Mcount_cntY_cy(3),
      DI => XLXN_898,
      S => I_ModeCtrl_Mcount_cntY_cy_4_rt_157,
      O => I_ModeCtrl_Mcount_cntY_cy(4)
    );
  I_ModeCtrl_Mcount_cntY_xor_3_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntY_cy(2),
      LI => I_ModeCtrl_Mcount_cntY_cy_3_rt_155,
      O => I_ModeCtrl_Result_3_2
    );
  I_ModeCtrl_Mcount_cntY_cy_3_Q : MUXCY
    port map (
      CI => I_ModeCtrl_Mcount_cntY_cy(2),
      DI => XLXN_898,
      S => I_ModeCtrl_Mcount_cntY_cy_3_rt_155,
      O => I_ModeCtrl_Mcount_cntY_cy(3)
    );
  I_ModeCtrl_Mcount_cntY_xor_2_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntY_cy(1),
      LI => I_ModeCtrl_Mcount_cntY_cy_2_rt_153,
      O => I_ModeCtrl_Result_2_2
    );
  I_ModeCtrl_Mcount_cntY_cy_2_Q : MUXCY
    port map (
      CI => I_ModeCtrl_Mcount_cntY_cy(1),
      DI => XLXN_898,
      S => I_ModeCtrl_Mcount_cntY_cy_2_rt_153,
      O => I_ModeCtrl_Mcount_cntY_cy(2)
    );
  I_ModeCtrl_Mcount_cntY_xor_1_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntY_cy(0),
      LI => I_ModeCtrl_Mcount_cntY_cy_1_rt_151,
      O => I_ModeCtrl_Result_1_2
    );
  I_ModeCtrl_Mcount_cntY_cy_1_Q : MUXCY
    port map (
      CI => I_ModeCtrl_Mcount_cntY_cy(0),
      DI => XLXN_898,
      S => I_ModeCtrl_Mcount_cntY_cy_1_rt_151,
      O => I_ModeCtrl_Mcount_cntY_cy(1)
    );
  I_ModeCtrl_Mcount_cntY_xor_0_Q : XORCY
    port map (
      CI => XLXN_898,
      LI => I_ModeCtrl_Mcount_cntY_lut(0),
      O => I_ModeCtrl_Result_0_2
    );
  I_ModeCtrl_Mcount_cntY_cy_0_Q : MUXCY
    port map (
      CI => XLXN_898,
      DI => XLXN_687,
      S => I_ModeCtrl_Mcount_cntY_lut(0),
      O => I_ModeCtrl_Mcount_cntY_cy(0)
    );
  I_ModeCtrl_Mcount_cntX_xor_10_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(9),
      LI => I_ModeCtrl_Mcount_cntX_xor_10_rt_148,
      O => I_ModeCtrl_Result(10)
    );
  I_ModeCtrl_Mcount_cntX_xor_9_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(8),
      LI => I_ModeCtrl_Mcount_cntX_cy_9_rt_146,
      O => I_ModeCtrl_Result(9)
    );
  I_ModeCtrl_Mcount_cntX_cy_9_Q : MUXCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(8),
      DI => XLXN_898,
      S => I_ModeCtrl_Mcount_cntX_cy_9_rt_146,
      O => I_ModeCtrl_Mcount_cntX_cy(9)
    );
  I_ModeCtrl_Mcount_cntX_xor_8_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(7),
      LI => I_ModeCtrl_Mcount_cntX_cy_8_rt_144,
      O => I_ModeCtrl_Result(8)
    );
  I_ModeCtrl_Mcount_cntX_cy_8_Q : MUXCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(7),
      DI => XLXN_898,
      S => I_ModeCtrl_Mcount_cntX_cy_8_rt_144,
      O => I_ModeCtrl_Mcount_cntX_cy(8)
    );
  I_ModeCtrl_Mcount_cntX_xor_7_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(6),
      LI => I_ModeCtrl_Mcount_cntX_cy_7_rt_142,
      O => I_ModeCtrl_Result(7)
    );
  I_ModeCtrl_Mcount_cntX_cy_7_Q : MUXCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(6),
      DI => XLXN_898,
      S => I_ModeCtrl_Mcount_cntX_cy_7_rt_142,
      O => I_ModeCtrl_Mcount_cntX_cy(7)
    );
  I_ModeCtrl_Mcount_cntX_xor_6_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(5),
      LI => I_ModeCtrl_Mcount_cntX_cy_6_rt_140,
      O => I_ModeCtrl_Result(6)
    );
  I_ModeCtrl_Mcount_cntX_cy_6_Q : MUXCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(5),
      DI => XLXN_898,
      S => I_ModeCtrl_Mcount_cntX_cy_6_rt_140,
      O => I_ModeCtrl_Mcount_cntX_cy(6)
    );
  I_ModeCtrl_Mcount_cntX_xor_5_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(4),
      LI => I_ModeCtrl_Mcount_cntX_cy_5_rt_138,
      O => I_ModeCtrl_Result(5)
    );
  I_ModeCtrl_Mcount_cntX_cy_5_Q : MUXCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(4),
      DI => XLXN_898,
      S => I_ModeCtrl_Mcount_cntX_cy_5_rt_138,
      O => I_ModeCtrl_Mcount_cntX_cy(5)
    );
  I_ModeCtrl_Mcount_cntX_xor_4_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(3),
      LI => I_ModeCtrl_Mcount_cntX_cy_4_rt_136,
      O => I_ModeCtrl_Result_4_1_189
    );
  I_ModeCtrl_Mcount_cntX_cy_4_Q : MUXCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(3),
      DI => XLXN_898,
      S => I_ModeCtrl_Mcount_cntX_cy_4_rt_136,
      O => I_ModeCtrl_Mcount_cntX_cy(4)
    );
  I_ModeCtrl_Mcount_cntX_xor_3_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(2),
      LI => I_ModeCtrl_Mcount_cntX_cy_3_rt_134,
      O => I_ModeCtrl_Result_3_1_185
    );
  I_ModeCtrl_Mcount_cntX_cy_3_Q : MUXCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(2),
      DI => XLXN_898,
      S => I_ModeCtrl_Mcount_cntX_cy_3_rt_134,
      O => I_ModeCtrl_Mcount_cntX_cy(3)
    );
  I_ModeCtrl_Mcount_cntX_xor_2_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(1),
      LI => I_ModeCtrl_Mcount_cntX_cy_2_rt_132,
      O => I_ModeCtrl_Result_2_1
    );
  I_ModeCtrl_Mcount_cntX_cy_2_Q : MUXCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(1),
      DI => XLXN_898,
      S => I_ModeCtrl_Mcount_cntX_cy_2_rt_132,
      O => I_ModeCtrl_Mcount_cntX_cy(2)
    );
  I_ModeCtrl_Mcount_cntX_xor_1_Q : XORCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(0),
      LI => I_ModeCtrl_Mcount_cntX_cy_1_rt_130,
      O => I_ModeCtrl_Result_1_1
    );
  I_ModeCtrl_Mcount_cntX_cy_1_Q : MUXCY
    port map (
      CI => I_ModeCtrl_Mcount_cntX_cy(0),
      DI => XLXN_898,
      S => I_ModeCtrl_Mcount_cntX_cy_1_rt_130,
      O => I_ModeCtrl_Mcount_cntX_cy(1)
    );
  I_ModeCtrl_Mcount_cntX_xor_0_Q : XORCY
    port map (
      CI => XLXN_898,
      LI => I_ModeCtrl_Mcount_cntX_lut(0),
      O => I_ModeCtrl_Result_0_1
    );
  I_ModeCtrl_Mcount_cntX_cy_0_Q : MUXCY
    port map (
      CI => XLXN_898,
      DI => XLXN_687,
      S => I_ModeCtrl_Mcount_cntX_lut(0),
      O => I_ModeCtrl_Mcount_cntX_cy(0)
    );
  I_ModeCtrl_cntMod30_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_VSync_cmp_eq0000,
      D => I_ModeCtrl_Result_4_3,
      R => I_ModeCtrl_cntMod30_and0000,
      Q => I_ModeCtrl_cntMod30(4)
    );
  I_ModeCtrl_cntMod30_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_VSync_cmp_eq0000,
      D => I_ModeCtrl_Result_3_3,
      R => I_ModeCtrl_cntMod30_and0000,
      Q => I_ModeCtrl_cntMod30(3)
    );
  I_ModeCtrl_cntMod30_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_VSync_cmp_eq0000,
      D => I_ModeCtrl_Result_2_3,
      R => I_ModeCtrl_cntMod30_and0000,
      Q => I_ModeCtrl_cntMod30(2)
    );
  I_ModeCtrl_cntMod30_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_VSync_cmp_eq0000,
      D => I_ModeCtrl_Result_1_3,
      R => I_ModeCtrl_cntMod30_and0000,
      Q => I_ModeCtrl_cntMod30(1)
    );
  I_ModeCtrl_cntMod30_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_VSync_cmp_eq0000,
      D => I_ModeCtrl_Result_0_3,
      R => I_ModeCtrl_cntMod30_and0000,
      Q => I_ModeCtrl_cntMod30(0)
    );
  I_ModeCtrl_cntY_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_VSync_cmp_eq0000,
      D => I_ModeCtrl_Result_9_1,
      R => I_ModeCtrl_iLineNo_and0000,
      Q => I_ModeCtrl_cntY(9)
    );
  I_ModeCtrl_cntY_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_VSync_cmp_eq0000,
      D => I_ModeCtrl_Result_8_1,
      R => I_ModeCtrl_iLineNo_and0000,
      Q => I_ModeCtrl_cntY(8)
    );
  I_ModeCtrl_cntY_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_VSync_cmp_eq0000,
      D => I_ModeCtrl_Result_7_1,
      R => I_ModeCtrl_iLineNo_and0000,
      Q => I_ModeCtrl_cntY(7)
    );
  I_ModeCtrl_cntY_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_VSync_cmp_eq0000,
      D => I_ModeCtrl_Result_6_1,
      R => I_ModeCtrl_iLineNo_and0000,
      Q => I_ModeCtrl_cntY(6)
    );
  I_ModeCtrl_cntY_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_VSync_cmp_eq0000,
      D => I_ModeCtrl_Result_5_1,
      R => I_ModeCtrl_iLineNo_and0000,
      Q => I_ModeCtrl_cntY(5)
    );
  I_ModeCtrl_cntY_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_VSync_cmp_eq0000,
      D => I_ModeCtrl_Result_4_2_190,
      R => I_ModeCtrl_iLineNo_and0000,
      Q => I_ModeCtrl_cntY(4)
    );
  I_ModeCtrl_cntY_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_VSync_cmp_eq0000,
      D => I_ModeCtrl_Result_3_2,
      R => I_ModeCtrl_iLineNo_and0000,
      Q => I_ModeCtrl_cntY(3)
    );
  I_ModeCtrl_cntY_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_VSync_cmp_eq0000,
      D => I_ModeCtrl_Result_2_2,
      R => I_ModeCtrl_iLineNo_and0000,
      Q => I_ModeCtrl_cntY(2)
    );
  I_ModeCtrl_cntY_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_VSync_cmp_eq0000,
      D => I_ModeCtrl_Result_1_2,
      R => I_ModeCtrl_iLineNo_and0000,
      Q => I_ModeCtrl_cntY(1)
    );
  I_ModeCtrl_cntY_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_VSync_cmp_eq0000,
      D => I_ModeCtrl_Result_0_2,
      R => I_ModeCtrl_iLineNo_and0000,
      Q => I_ModeCtrl_cntY(0)
    );
  I_ModeCtrl_cntX_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => I_ModeCtrl_Result(10),
      R => I_ModeCtrl_VSync_cmp_eq0000,
      Q => I_ModeCtrl_cntX(10)
    );
  I_ModeCtrl_cntX_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => I_ModeCtrl_Result(9),
      R => I_ModeCtrl_VSync_cmp_eq0000,
      Q => I_ModeCtrl_cntX(9)
    );
  I_ModeCtrl_cntX_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => I_ModeCtrl_Result(8),
      R => I_ModeCtrl_VSync_cmp_eq0000,
      Q => I_ModeCtrl_cntX(8)
    );
  I_ModeCtrl_cntX_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => I_ModeCtrl_Result(7),
      R => I_ModeCtrl_VSync_cmp_eq0000,
      Q => I_ModeCtrl_cntX(7)
    );
  I_ModeCtrl_cntX_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => I_ModeCtrl_Result(6),
      R => I_ModeCtrl_VSync_cmp_eq0000,
      Q => I_ModeCtrl_cntX(6)
    );
  I_ModeCtrl_cntX_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => I_ModeCtrl_Result(5),
      R => I_ModeCtrl_VSync_cmp_eq0000,
      Q => I_ModeCtrl_cntX(5)
    );
  I_ModeCtrl_cntX_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => I_ModeCtrl_Result_4_1_189,
      R => I_ModeCtrl_VSync_cmp_eq0000,
      Q => I_ModeCtrl_cntX(4)
    );
  I_ModeCtrl_cntX_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => I_ModeCtrl_Result_3_1_185,
      R => I_ModeCtrl_VSync_cmp_eq0000,
      Q => I_ModeCtrl_cntX(3)
    );
  I_ModeCtrl_cntX_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => I_ModeCtrl_Result_2_1,
      R => I_ModeCtrl_VSync_cmp_eq0000,
      Q => I_ModeCtrl_cntX(2)
    );
  I_ModeCtrl_cntX_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => I_ModeCtrl_Result_1_1,
      R => I_ModeCtrl_VSync_cmp_eq0000,
      Q => I_ModeCtrl_cntX(1)
    );
  I_ModeCtrl_cntX_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => I_ModeCtrl_Result_0_1,
      R => I_ModeCtrl_VSync_cmp_eq0000,
      Q => I_ModeCtrl_cntX(0)
    );
  I_ModeCtrl_iLineNo_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_iLineNo_not0001,
      D => I_ModeCtrl_Result(4),
      R => I_ModeCtrl_iLineNo_and0000,
      Q => I_ModeCtrl_iLineNo(4)
    );
  I_ModeCtrl_iLineNo_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_iLineNo_not0001,
      D => I_ModeCtrl_Result(3),
      R => I_ModeCtrl_iLineNo_and0000,
      Q => I_ModeCtrl_iLineNo(3)
    );
  I_ModeCtrl_iLineNo_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_iLineNo_not0001,
      D => I_ModeCtrl_Result(2),
      R => I_ModeCtrl_iLineNo_and0000,
      Q => I_ModeCtrl_iLineNo(2)
    );
  I_ModeCtrl_iLineNo_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_iLineNo_not0001,
      D => I_ModeCtrl_Result(1),
      R => I_ModeCtrl_iLineNo_and0000,
      Q => I_ModeCtrl_iLineNo(1)
    );
  I_ModeCtrl_iLineNo_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_iLineNo_not0001,
      D => I_ModeCtrl_Result(0),
      R => I_ModeCtrl_iLineNo_and0000,
      Q => I_ModeCtrl_iLineNo(0)
    );
  I_ModeCtrl_HSync : FD
    port map (
      C => Clk_50MHz,
      D => I_ModeCtrl_HSync_mux0000,
      Q => NlwRenamedSig_OI_I_ModeCtrl_HSync
    );
  I_ModeCtrl_VActive : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_VSync_cmp_eq0000,
      D => I_ModeCtrl_VActive_mux0000,
      Q => I_ModeCtrl_VActive_206
    );
  I_ModeCtrl_HActive : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => Clk_50MHz,
      D => I_ModeCtrl_HActive_mux0000,
      Q => I_ModeCtrl_HActive_118
    );
  I_ModeCtrl_VSync : FDE
    port map (
      C => Clk_50MHz,
      CE => I_ModeCtrl_VSync_cmp_eq0000,
      D => I_ModeCtrl_VSync_mux0000,
      Q => NlwRenamedSig_OI_I_ModeCtrl_VSync
    );
  XLXI_115_XLXI_155_ActiveX : FDSE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => XLXI_115_XLXI_155_ActiveX_cmp_eq0000_420,
      D => XLXN_898,
      S => XLXI_115_XLXI_155_ActiveX_and0000_416,
      Q => XLXI_115_XLXI_155_ActiveX_415
    );
  XLXI_115_XLXI_155_prevDetectY : FDE
    port map (
      C => Clk_50MHz,
      CE => XLXI_115_XLXI_155_StartX,
      D => XLXI_115_XLXI_155_DetectY,
      Q => XLXI_115_XLXI_155_prevDetectY_481
    );
  XLXI_115_XLXI_155_prevDetectX : FDR
    port map (
      C => Clk_50MHz,
      D => XLXI_115_XLXI_155_DetectX_and0000_norst,
      R => XLXI_115_XLXI_155_DetectX_cmp_eq0000_inv_422,
      Q => XLXI_115_XLXI_155_prevDetectX_480
    );
  XLXI_115_XLXI_155_PixOut : FD
    port map (
      C => Clk_50MHz,
      D => XLXI_115_XLXI_155_iPixOut,
      Q => XLXI_115_XLXI_155_PixOut_454
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom00001 : LUT4
    generic map(
      INIT => X"1254"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(1),
      I1 => XLXI_115_XLXI_155_cntCol(2),
      I2 => XLXI_115_XLXI_155_cntCol(0),
      I3 => XLXI_115_XLXI_155_cntCol(3),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom0000
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom0000_f5 : MUXF5
    port map (
      I0 => XLXI_115_XLXI_155_Mrom_iPixOut_rom0000,
      I1 => XLXN_898,
      S => XLXI_115_XLXI_155_cntCol(4),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom0000_f5_451
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom00002 : LUT4
    generic map(
      INIT => X"6E7E"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(3),
      I1 => XLXI_115_XLXI_155_cntCol(0),
      I2 => XLXI_115_XLXI_155_cntCol(1),
      I3 => XLXI_115_XLXI_155_cntCol(2),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom00001_425
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom00003 : LUT4
    generic map(
      INIT => X"2B92"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(1),
      I1 => XLXI_115_XLXI_155_cntCol(2),
      I2 => XLXI_115_XLXI_155_cntCol(3),
      I3 => XLXI_115_XLXI_155_cntCol(0),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom00002_432
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom0000_f5_0 : MUXF5
    port map (
      I0 => XLXI_115_XLXI_155_Mrom_iPixOut_rom00002_432,
      I1 => XLXI_115_XLXI_155_Mrom_iPixOut_rom00001_425,
      S => XLXI_115_XLXI_155_cntCol(4),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom0000_f51
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom0000_f6 : MUXF6
    port map (
      I0 => XLXI_115_XLXI_155_Mrom_iPixOut_rom0000_f51,
      I1 => XLXI_115_XLXI_155_Mrom_iPixOut_rom0000_f5_451,
      S => XLXI_115_XLXI_155_cntCol(5),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom0000_f6_453
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom000011 : LUT4
    generic map(
      INIT => X"2612"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(0),
      I1 => XLXI_115_XLXI_155_cntCol(2),
      I2 => XLXI_115_XLXI_155_cntCol(3),
      I3 => XLXI_115_XLXI_155_cntCol(1),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom000011_426
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom00001_f5 : MUXF5
    port map (
      I0 => XLXI_115_XLXI_155_Mrom_iPixOut_rom000011_426,
      I1 => XLXN_898,
      S => XLXI_115_XLXI_155_cntCol(4),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom00001_f5_429
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom000012 : LUT4
    generic map(
      INIT => X"8849"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(0),
      I1 => XLXI_115_XLXI_155_cntCol(2),
      I2 => XLXI_115_XLXI_155_cntCol(3),
      I3 => XLXI_115_XLXI_155_cntCol(1),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom000012_427
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom000013 : LUT4
    generic map(
      INIT => X"4484"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(0),
      I1 => XLXI_115_XLXI_155_cntCol(1),
      I2 => XLXI_115_XLXI_155_cntCol(3),
      I3 => XLXI_115_XLXI_155_cntCol(2),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom000013_428
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom00001_f5_0 : MUXF5
    port map (
      I0 => XLXI_115_XLXI_155_Mrom_iPixOut_rom000013_428,
      I1 => XLXI_115_XLXI_155_Mrom_iPixOut_rom000012_427,
      S => XLXI_115_XLXI_155_cntCol(4),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom00001_f51
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom00001_f6 : MUXF6
    port map (
      I0 => XLXI_115_XLXI_155_Mrom_iPixOut_rom00001_f51,
      I1 => XLXI_115_XLXI_155_Mrom_iPixOut_rom00001_f5_429,
      S => XLXI_115_XLXI_155_cntCol(5),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom00001_f6_431
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom000021 : LUT4
    generic map(
      INIT => X"0648"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(0),
      I1 => XLXI_115_XLXI_155_cntCol(1),
      I2 => XLXI_115_XLXI_155_cntCol(2),
      I3 => XLXI_115_XLXI_155_cntCol(3),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom000021_433
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom00002_f5 : MUXF5
    port map (
      I0 => XLXI_115_XLXI_155_Mrom_iPixOut_rom000021_433,
      I1 => XLXN_898,
      S => XLXI_115_XLXI_155_cntCol(4),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom00002_f5_436
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom000022 : LUT4
    generic map(
      INIT => X"3E9D"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(2),
      I1 => XLXI_115_XLXI_155_cntCol(3),
      I2 => XLXI_115_XLXI_155_cntCol(1),
      I3 => XLXI_115_XLXI_155_cntCol(0),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom000022_434
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom000023 : LUT4
    generic map(
      INIT => X"4984"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(0),
      I1 => XLXI_115_XLXI_155_cntCol(1),
      I2 => XLXI_115_XLXI_155_cntCol(2),
      I3 => XLXI_115_XLXI_155_cntCol(3),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom000023_435
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom00002_f5_0 : MUXF5
    port map (
      I0 => XLXI_115_XLXI_155_Mrom_iPixOut_rom000023_435,
      I1 => XLXI_115_XLXI_155_Mrom_iPixOut_rom000022_434,
      S => XLXI_115_XLXI_155_cntCol(4),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom00002_f51
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom00002_f6 : MUXF6
    port map (
      I0 => XLXI_115_XLXI_155_Mrom_iPixOut_rom00002_f51,
      I1 => XLXI_115_XLXI_155_Mrom_iPixOut_rom00002_f5_436,
      S => XLXI_115_XLXI_155_cntCol(5),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom00002_f6_438
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom000031 : LUT4
    generic map(
      INIT => X"0948"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(0),
      I1 => XLXI_115_XLXI_155_cntCol(1),
      I2 => XLXI_115_XLXI_155_cntCol(2),
      I3 => XLXI_115_XLXI_155_cntCol(3),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom00003_439
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom00003_f5 : MUXF5
    port map (
      I0 => XLXI_115_XLXI_155_Mrom_iPixOut_rom00003_439,
      I1 => XLXN_898,
      S => XLXI_115_XLXI_155_cntCol(4),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom00003_f5_442
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom000032 : LUT4
    generic map(
      INIT => X"6261"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(0),
      I1 => XLXI_115_XLXI_155_cntCol(3),
      I2 => XLXI_115_XLXI_155_cntCol(2),
      I3 => XLXI_115_XLXI_155_cntCol(1),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom000031_440
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom000033 : LUT4
    generic map(
      INIT => X"6121"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(0),
      I1 => XLXI_115_XLXI_155_cntCol(2),
      I2 => XLXI_115_XLXI_155_cntCol(3),
      I3 => XLXI_115_XLXI_155_cntCol(1),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom000032_441
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom00003_f5_0 : MUXF5
    port map (
      I0 => XLXI_115_XLXI_155_Mrom_iPixOut_rom000032_441,
      I1 => XLXI_115_XLXI_155_Mrom_iPixOut_rom000031_440,
      S => XLXI_115_XLXI_155_cntCol(4),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom00003_f51
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom00003_f6 : MUXF6
    port map (
      I0 => XLXI_115_XLXI_155_Mrom_iPixOut_rom00003_f51,
      I1 => XLXI_115_XLXI_155_Mrom_iPixOut_rom00003_f5_442,
      S => XLXI_115_XLXI_155_cntCol(5),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom00003_f6_444
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom00004 : LUT4
    generic map(
      INIT => X"1424"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(1),
      I1 => XLXI_115_XLXI_155_cntCol(2),
      I2 => XLXI_115_XLXI_155_cntCol(3),
      I3 => XLXI_115_XLXI_155_cntCol(0),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom00004_445
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom00004_f5 : MUXF5
    port map (
      I0 => XLXI_115_XLXI_155_Mrom_iPixOut_rom00004_445,
      I1 => XLXN_898,
      S => XLXI_115_XLXI_155_cntCol(4),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom00004_f5_448
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom000041 : LUT4
    generic map(
      INIT => X"9F72"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(1),
      I1 => XLXI_115_XLXI_155_cntCol(2),
      I2 => XLXI_115_XLXI_155_cntCol(3),
      I3 => XLXI_115_XLXI_155_cntCol(0),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom000041_446
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom000042 : LUT4
    generic map(
      INIT => X"3192"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(0),
      I1 => XLXI_115_XLXI_155_cntCol(1),
      I2 => XLXI_115_XLXI_155_cntCol(2),
      I3 => XLXI_115_XLXI_155_cntCol(3),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom000042_447
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom00004_f5_0 : MUXF5
    port map (
      I0 => XLXI_115_XLXI_155_Mrom_iPixOut_rom000042_447,
      I1 => XLXI_115_XLXI_155_Mrom_iPixOut_rom000041_446,
      S => XLXI_115_XLXI_155_cntCol(4),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom00004_f51
    );
  XLXI_115_XLXI_155_Mrom_iPixOut_rom00004_f6 : MUXF6
    port map (
      I0 => XLXI_115_XLXI_155_Mrom_iPixOut_rom00004_f51,
      I1 => XLXI_115_XLXI_155_Mrom_iPixOut_rom00004_f5_448,
      S => XLXI_115_XLXI_155_cntCol(5),
      O => XLXI_115_XLXI_155_Mrom_iPixOut_rom00004_f6_450
    );
  XLXI_115_XLXI_155_cntLine_0 : FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => Clk_50MHz,
      CE => XLXI_115_XLXI_155_ActiveX_cmp_eq0000_420,
      D => XLXI_115_XLXI_155_Result(0),
      R => XLXI_115_XLXI_155_StartY,
      Q => XLXI_115_XLXI_155_cntLine(0)
    );
  XLXI_115_XLXI_155_cntLine_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => XLXI_115_XLXI_155_ActiveX_cmp_eq0000_420,
      D => XLXI_115_XLXI_155_Result(1),
      R => XLXI_115_XLXI_155_StartY,
      Q => XLXI_115_XLXI_155_cntLine(1)
    );
  XLXI_115_XLXI_155_cntLine_2 : FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => Clk_50MHz,
      CE => XLXI_115_XLXI_155_ActiveX_cmp_eq0000_420,
      D => XLXI_115_XLXI_155_Result(2),
      R => XLXI_115_XLXI_155_StartY,
      Q => XLXI_115_XLXI_155_cntLine(2)
    );
  XLXI_115_XLXI_155_cntCol_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => XLXI_115_XLXI_155_ActiveX_415,
      D => XLXI_115_XLXI_155_Result_0_1,
      R => XLXI_115_XLXI_155_StartX,
      Q => XLXI_115_XLXI_155_cntCol(0)
    );
  XLXI_115_XLXI_155_cntCol_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => XLXI_115_XLXI_155_ActiveX_415,
      D => XLXI_115_XLXI_155_Result_1_1,
      R => XLXI_115_XLXI_155_StartX,
      Q => XLXI_115_XLXI_155_cntCol(1)
    );
  XLXI_115_XLXI_155_cntCol_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => XLXI_115_XLXI_155_ActiveX_415,
      D => XLXI_115_XLXI_155_Result_2_1,
      R => XLXI_115_XLXI_155_StartX,
      Q => XLXI_115_XLXI_155_cntCol(2)
    );
  XLXI_115_XLXI_155_cntCol_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => XLXI_115_XLXI_155_ActiveX_415,
      D => XLXI_115_XLXI_155_Result(3),
      R => XLXI_115_XLXI_155_StartX,
      Q => XLXI_115_XLXI_155_cntCol(3)
    );
  XLXI_115_XLXI_155_cntCol_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => XLXI_115_XLXI_155_ActiveX_415,
      D => XLXI_115_XLXI_155_Result(4),
      R => XLXI_115_XLXI_155_StartX,
      Q => XLXI_115_XLXI_155_cntCol(4)
    );
  XLXI_115_XLXI_155_cntCol_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      CE => XLXI_115_XLXI_155_ActiveX_415,
      D => XLXI_115_XLXI_155_Result(5),
      R => XLXI_115_XLXI_155_StartX,
      Q => XLXI_115_XLXI_155_cntCol(5)
    );
  XLXI_115_XLXI_154 : AND2
    port map (
      I0 => XLXI_115_XLXI_151_O_339,
      I1 => XLXI_115_XLXN_727,
      O => XLXI_115_XLXN_762
    );
  XLXI_115_XLXI_141 : XOR2
    port map (
      I0 => XLXI_115_XLXN_724,
      I1 => XLXI_115_XLXN_678,
      O => XLXI_115_XLXN_727
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_24_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(23),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_xor_24_rt_414,
      O => XLXI_115_Result(24)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_23_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(22),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_23_rt_396,
      O => XLXI_115_Result(23)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_23_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(22),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_23_rt_396,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(23)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_22_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(21),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_22_rt_394,
      O => XLXI_115_Result(22)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_22_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(21),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_22_rt_394,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(22)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_21_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(20),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_21_rt_392,
      O => XLXI_115_Result(21)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_21_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(20),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_21_rt_392,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(21)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_20_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(19),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_20_rt_390,
      O => XLXI_115_Result(20)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_20_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(19),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_20_rt_390,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(20)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_19_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(18),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_19_rt_386,
      O => XLXI_115_Result(19)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_19_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(18),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_19_rt_386,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(19)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_18_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(17),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_18_rt_384,
      O => XLXI_115_Result(18)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_18_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(17),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_18_rt_384,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(18)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_17_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(16),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_17_rt_382,
      O => XLXI_115_Result(17)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_17_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(16),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_17_rt_382,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(17)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_16_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(15),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_16_rt_380,
      O => XLXI_115_Result(16)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_16_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(15),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_16_rt_380,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(16)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_15_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(14),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_15_rt_378,
      O => XLXI_115_Result(15)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_15_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(14),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_15_rt_378,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(15)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_14_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(13),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_14_rt_376,
      O => XLXI_115_Result(14)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_14_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(13),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_14_rt_376,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(14)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_13_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(12),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_13_rt_374,
      O => XLXI_115_Result(13)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_13_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(12),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_13_rt_374,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(13)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_12_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(11),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_12_rt_372,
      O => XLXI_115_Result(12)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_12_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(11),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_12_rt_372,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(12)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_11_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(10),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_11_rt_370,
      O => XLXI_115_Result(11)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_11_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(10),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_11_rt_370,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(11)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_10_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(9),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_10_rt_368,
      O => XLXI_115_Result(10)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_10_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(9),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_10_rt_368,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(10)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_9_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(8),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_9_rt_412,
      O => XLXI_115_Result(9)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_9_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(8),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_9_rt_412,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(9)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_8_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(7),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_8_rt_410,
      O => XLXI_115_Result(8)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_8_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(7),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_8_rt_410,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(8)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_7_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(6),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_7_rt_408,
      O => XLXI_115_Result(7)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_7_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(6),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_7_rt_408,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(7)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_6_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(5),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_6_rt_406,
      O => XLXI_115_Result(6)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_6_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(5),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_6_rt_406,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(6)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_5_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(4),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_5_rt_404,
      O => XLXI_115_Result(5)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_5_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(4),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_5_rt_404,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(5)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_4_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(3),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_4_rt_402,
      O => XLXI_115_Result(4)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_4_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(3),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_4_rt_402,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(4)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_3_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(2),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_3_rt_400,
      O => XLXI_115_Result(3)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_3_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(2),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_3_rt_400,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(3)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_2_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(1),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_2_rt_398,
      O => XLXI_115_Result(2)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_2_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(1),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_2_rt_398,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(2)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_1_Q : XORCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(0),
      LI => XLXI_115_XLXI_152_Mcount_Cnt_cy_1_rt_388,
      O => XLXI_115_Result(1)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_1_Q : MUXCY
    port map (
      CI => XLXI_115_XLXI_152_Mcount_Cnt_cy(0),
      DI => XLXN_898,
      S => XLXI_115_XLXI_152_Mcount_Cnt_cy_1_rt_388,
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(1)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_0_Q : XORCY
    port map (
      CI => XLXN_898,
      LI => XLXI_115_XLXI_152_Mcount_Cnt_lut(0),
      O => XLXI_115_Result(0)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_0_Q : MUXCY
    port map (
      CI => XLXN_898,
      DI => XLXN_687,
      S => XLXI_115_XLXI_152_Mcount_Cnt_lut(0),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy(0)
    );
  XLXI_115_XLXI_152_Cnt_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(24),
      Q => XLXI_115_XLXI_152_Cnt(24)
    );
  XLXI_115_XLXI_152_Cnt_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(23),
      Q => XLXI_115_XLXI_152_Cnt(23)
    );
  XLXI_115_XLXI_152_Cnt_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(22),
      Q => XLXI_115_XLXI_152_Cnt(22)
    );
  XLXI_115_XLXI_152_Cnt_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(21),
      Q => XLXI_115_XLXI_152_Cnt(21)
    );
  XLXI_115_XLXI_152_Cnt_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(20),
      Q => XLXI_115_XLXI_152_Cnt(20)
    );
  XLXI_115_XLXI_152_Cnt_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(19),
      Q => XLXI_115_XLXI_152_Cnt(19)
    );
  XLXI_115_XLXI_152_Cnt_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(18),
      Q => XLXI_115_XLXI_152_Cnt(18)
    );
  XLXI_115_XLXI_152_Cnt_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(17),
      Q => XLXI_115_XLXI_152_Cnt(17)
    );
  XLXI_115_XLXI_152_Cnt_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(16),
      Q => XLXI_115_XLXI_152_Cnt(16)
    );
  XLXI_115_XLXI_152_Cnt_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(15),
      Q => XLXI_115_XLXI_152_Cnt(15)
    );
  XLXI_115_XLXI_152_Cnt_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(14),
      Q => XLXI_115_XLXI_152_Cnt(14)
    );
  XLXI_115_XLXI_152_Cnt_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(13),
      Q => XLXI_115_XLXI_152_Cnt(13)
    );
  XLXI_115_XLXI_152_Cnt_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(12),
      Q => XLXI_115_XLXI_152_Cnt(12)
    );
  XLXI_115_XLXI_152_Cnt_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(11),
      Q => XLXI_115_XLXI_152_Cnt(11)
    );
  XLXI_115_XLXI_152_Cnt_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(10),
      Q => XLXI_115_XLXI_152_Cnt(10)
    );
  XLXI_115_XLXI_152_Cnt_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(9),
      Q => XLXI_115_XLXI_152_Cnt(9)
    );
  XLXI_115_XLXI_152_Cnt_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(8),
      Q => XLXI_115_XLXI_152_Cnt(8)
    );
  XLXI_115_XLXI_152_Cnt_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(7),
      Q => XLXI_115_XLXI_152_Cnt(7)
    );
  XLXI_115_XLXI_152_Cnt_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(6),
      Q => XLXI_115_XLXI_152_Cnt(6)
    );
  XLXI_115_XLXI_152_Cnt_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(5),
      Q => XLXI_115_XLXI_152_Cnt(5)
    );
  XLXI_115_XLXI_152_Cnt_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(4),
      Q => XLXI_115_XLXI_152_Cnt(4)
    );
  XLXI_115_XLXI_152_Cnt_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(3),
      Q => XLXI_115_XLXI_152_Cnt(3)
    );
  XLXI_115_XLXI_152_Cnt_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(2),
      Q => XLXI_115_XLXI_152_Cnt(2)
    );
  XLXI_115_XLXI_152_Cnt_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(1),
      Q => XLXI_115_XLXI_152_Cnt(1)
    );
  XLXI_115_XLXI_152_Cnt_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz,
      D => XLXI_115_Result(0),
      Q => XLXI_115_XLXI_152_Cnt(0)
    );
  XLXI_115_XLXI_147_O : FD
    port map (
      C => Clk_50MHz,
      D => XLXI_115_XLXI_147_Q_332,
      Q => XLXI_115_XLXI_147_O_331
    );
  XLXI_115_XLXI_151_Q : FD
    port map (
      C => Clk_50MHz,
      D => XLXN_795,
      Q => XLXI_115_XLXI_151_Q_340
    );
  XLXI_115_XLXI_151_O : FD
    port map (
      C => Clk_50MHz,
      D => XLXI_115_XLXI_151_Q_340,
      Q => XLXI_115_XLXI_151_O_339
    );
  I_CursorCnt_RAM_DI_Out_7_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_I_CursorCnt_State(0),
      I1 => Char_DI(7),
      O => XLXN_698(7)
    );
  I_CursorCnt_RAM_DI_Out_6_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_I_CursorCnt_State(0),
      I1 => Char_DI(6),
      O => XLXN_698(6)
    );
  I_CursorCnt_RAM_DI_Out_5_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_I_CursorCnt_State(0),
      I1 => Char_DI(5),
      O => XLXN_698(5)
    );
  I_CursorCnt_RAM_DI_Out_4_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_I_CursorCnt_State(0),
      I1 => Char_DI(4),
      O => XLXN_698(4)
    );
  I_CursorCnt_RAM_DI_Out_3_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_I_CursorCnt_State(0),
      I1 => Char_DI(3),
      O => XLXN_698(3)
    );
  I_CursorCnt_RAM_DI_Out_2_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_I_CursorCnt_State(0),
      I1 => Char_DI(2),
      O => XLXN_698(2)
    );
  I_CursorCnt_RAM_DI_Out_1_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_I_CursorCnt_State(0),
      I1 => Char_DI(1),
      O => XLXN_698(1)
    );
  I_CursorCnt_RAM_DI_Out_0_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_I_CursorCnt_State(0),
      I1 => Char_DI(0),
      O => XLXN_698(0)
    );
  I_ModeCtrl_Active1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_ModeCtrl_HActive_118,
      I1 => I_ModeCtrl_VActive_206,
      O => XLXN_795
    );
  XLXI_115_XLXI_155_Mcount_cntLine_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntLine(1),
      I1 => XLXI_115_XLXI_155_cntLine(0),
      O => XLXI_115_XLXI_155_Result(1)
    );
  XLXI_115_XLXI_155_Mcount_cntCol_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(1),
      I1 => XLXI_115_XLXI_155_cntCol(0),
      O => XLXI_115_XLXI_155_Result_1_1
    );
  I_ModeCtrl_Mcount_iLineNo_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => I_ModeCtrl_iLineNo(1),
      I1 => I_ModeCtrl_iLineNo(0),
      O => I_ModeCtrl_Result(1)
    );
  I_ModeCtrl_Mcount_cntMod30_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => I_ModeCtrl_cntMod30(1),
      I1 => I_ModeCtrl_cntMod30(0),
      O => I_ModeCtrl_Result_1_3
    );
  I_CursorCnt_Mcount_ScrollBase_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => I_CursorCnt_ScrollBase(1),
      I1 => I_CursorCnt_ScrollBase(0),
      O => I_CursorCnt_Result_1_1
    );
  I_CursorCnt_Mcount_ColCnt_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => I_CursorCnt_ColCnt(1),
      I1 => I_CursorCnt_ColCnt(0),
      O => I_CursorCnt_Result(1)
    );
  XLXI_115_XLXI_155_Mcount_cntLine_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntLine(2),
      I1 => XLXI_115_XLXI_155_cntLine(1),
      I2 => XLXI_115_XLXI_155_cntLine(0),
      O => XLXI_115_XLXI_155_Result(2)
    );
  XLXI_115_XLXI_155_Mcount_cntCol_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(2),
      I1 => XLXI_115_XLXI_155_cntCol(1),
      I2 => XLXI_115_XLXI_155_cntCol(0),
      O => XLXI_115_XLXI_155_Result_2_1
    );
  I_ModeCtrl_Mcount_iLineNo_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => I_ModeCtrl_iLineNo(2),
      I1 => I_ModeCtrl_iLineNo(1),
      I2 => I_ModeCtrl_iLineNo(0),
      O => I_ModeCtrl_Result(2)
    );
  I_ModeCtrl_Mcount_cntMod30_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => I_ModeCtrl_cntMod30(2),
      I1 => I_ModeCtrl_cntMod30(1),
      I2 => I_ModeCtrl_cntMod30(0),
      O => I_ModeCtrl_Result_2_3
    );
  I_CursorCnt_Mcount_ScrollBase_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => I_CursorCnt_ScrollBase(2),
      I1 => I_CursorCnt_ScrollBase(1),
      I2 => I_CursorCnt_ScrollBase(0),
      O => I_CursorCnt_Result_2_1
    );
  I_CursorCnt_Mcount_ColCnt_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => I_CursorCnt_ColCnt(2),
      I1 => I_CursorCnt_ColCnt(1),
      I2 => I_CursorCnt_ColCnt(0),
      O => I_CursorCnt_Result(2)
    );
  I_ModeCtrl_Result_3_31 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => I_ModeCtrl_cntMod30(3),
      I1 => I_ModeCtrl_cntMod30(2),
      I2 => I_ModeCtrl_cntMod30(1),
      I3 => I_ModeCtrl_cntMod30(0),
      O => I_ModeCtrl_Result_3_3
    );
  I_ModeCtrl_Result_3_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => I_ModeCtrl_iLineNo(3),
      I1 => I_ModeCtrl_iLineNo(2),
      I2 => I_ModeCtrl_iLineNo(1),
      I3 => I_ModeCtrl_iLineNo(0),
      O => I_ModeCtrl_Result(3)
    );
  I_CursorCnt_Result_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => I_CursorCnt_ScrollBase(3),
      I1 => I_CursorCnt_ScrollBase(2),
      I2 => I_CursorCnt_ScrollBase(1),
      I3 => I_CursorCnt_ScrollBase(0),
      O => I_CursorCnt_Result_3_1
    );
  I_CursorCnt_Mcount_ColCnt_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => I_CursorCnt_ColCnt(3),
      I1 => I_CursorCnt_ColCnt(1),
      I2 => I_CursorCnt_ColCnt(0),
      I3 => I_CursorCnt_ColCnt(2),
      O => I_CursorCnt_Result(3)
    );
  XLXI_115_XLXI_155_ActiveX_cmp_eq0000_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(0),
      I1 => XLXI_115_XLXI_155_cntCol(5),
      I2 => XLXI_115_XLXI_155_cntCol(4),
      O => N1
    );
  XLXI_115_XLXI_155_ActiveX_cmp_eq0000 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(3),
      I1 => XLXI_115_XLXI_155_cntCol(2),
      I2 => XLXI_115_XLXI_155_cntCol(1),
      I3 => N1,
      O => XLXI_115_XLXI_155_ActiveX_cmp_eq0000_420
    );
  XLXI_115_XLXI_155_Result_3_11 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(2),
      I1 => XLXI_115_XLXI_155_cntCol(1),
      I2 => XLXI_115_XLXI_155_cntCol(0),
      O => XLXI_115_XLXI_155_Result_3_bdd0
    );
  XLXI_115_XLXI_155_Result_4_1 : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(4),
      I1 => XLXI_115_XLXI_155_cntCol(3),
      I2 => XLXI_115_XLXI_155_Result_3_bdd0,
      O => XLXI_115_XLXI_155_Result(4)
    );
  I_CursorCnt_Mcount_ColCnt_xor_5_12 : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => I_CursorCnt_ColCnt(5),
      I1 => I_CursorCnt_ColCnt(4),
      I2 => I_CursorCnt_N10,
      O => I_CursorCnt_Result(5)
    );
  XLXI_115_XLXI_155_Result_5_1 : LUT4
    generic map(
      INIT => X"CC6C"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(3),
      I1 => XLXI_115_XLXI_155_cntCol(5),
      I2 => XLXI_115_XLXI_155_cntCol(4),
      I3 => XLXI_115_XLXI_155_Result_3_bdd0,
      O => XLXI_115_XLXI_155_Result(5)
    );
  XLXI_115_XLXI_155_DetectX_cmp_eq0000_inv_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => I_ModeCtrl_cntX(5),
      I1 => I_ModeCtrl_cntX(4),
      I2 => I_ModeCtrl_cntX(8),
      O => N7
    );
  XLXI_115_XLXI_155_DetectX_cmp_eq0000_inv : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => I_ModeCtrl_cntX(9),
      I1 => I_ModeCtrl_cntX(7),
      I2 => I_ModeCtrl_cntX(6),
      I3 => N7,
      O => XLXI_115_XLXI_155_DetectX_cmp_eq0000_inv_422
    );
  I_CursorCnt_ColCnt_or00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => NlwRenamedSig_OI_I_CursorCnt_State(0),
      I1 => Char_WE,
      O => I_CursorCnt_ColCnt_or0001
    );
  I_ModeCtrl_NewChar_and0000_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => I_ModeCtrl_VActive_206,
      I1 => I_ModeCtrl_HActive_118,
      I2 => I_ModeCtrl_cntX(0),
      O => N15
    );
  I_ModeCtrl_NewChar_and0000 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => I_ModeCtrl_cntX(3),
      I1 => I_ModeCtrl_cntX(2),
      I2 => I_ModeCtrl_cntX(1),
      I3 => N15,
      O => NewChar
    );
  I_ModeCtrl_HSync_and0000_SW0 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => I_ModeCtrl_cntX(9),
      I1 => I_ModeCtrl_cntX(3),
      I2 => I_ModeCtrl_cntX(10),
      I3 => I_ModeCtrl_cntX(8),
      O => N17
    );
  I_ModeCtrl_HSync_and0000 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => I_ModeCtrl_cntX(6),
      I1 => I_ModeCtrl_cntX(5),
      I2 => I_ModeCtrl_cntX(4),
      I3 => N17,
      O => I_ModeCtrl_HSync_and0000_124
    );
  I_ModeCtrl_HSync_mux00007 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => I_ModeCtrl_cntX(7),
      I1 => I_ModeCtrl_cntX(1),
      I2 => I_ModeCtrl_cntX(2),
      I3 => I_ModeCtrl_cntX(0),
      O => I_ModeCtrl_HSync_mux00007_127
    );
  I_ModeCtrl_HSync_mux000032 : LUT4
    generic map(
      INIT => X"EAE2"
    )
    port map (
      I0 => NlwRenamedSig_OI_I_ModeCtrl_HSync,
      I1 => I_ModeCtrl_HSync_and0000_124,
      I2 => I_ModeCtrl_HSync_mux000024_126,
      I3 => I_ModeCtrl_HSync_mux00007_127,
      O => I_ModeCtrl_HSync_mux0000
    );
  I_ModeCtrl_VActive_mux000068 : LUT4
    generic map(
      INIT => X"EAE2"
    )
    port map (
      I0 => I_ModeCtrl_VActive_206,
      I1 => I_ModeCtrl_VActive_and0000,
      I2 => I_ModeCtrl_VActive_mux000053,
      I3 => I_ModeCtrl_VActive_mux000015,
      O => I_ModeCtrl_VActive_mux0000
    );
  I_ModeCtrl_VSync_mux00004 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => I_ModeCtrl_cntY(0),
      I1 => I_ModeCtrl_cntY(2),
      I2 => I_ModeCtrl_cntY(3),
      I3 => I_ModeCtrl_cntY(4),
      O => I_ModeCtrl_VSync_mux00004_219
    );
  I_ModeCtrl_VSync_mux000012 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => I_ModeCtrl_cntY(1),
      I1 => I_ModeCtrl_cntY(6),
      I2 => I_ModeCtrl_cntY(8),
      I3 => I_ModeCtrl_cntY(5),
      O => I_ModeCtrl_VSync_mux000012_216
    );
  I_ModeCtrl_VSync_mux000016 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => I_ModeCtrl_cntY(7),
      I1 => I_ModeCtrl_cntY(9),
      O => I_ModeCtrl_VSync_mux000016_217
    );
  I_ModeCtrl_VSync_mux000037 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => NlwRenamedSig_OI_I_ModeCtrl_VSync,
      I1 => I_ModeCtrl_VSync_mux00004_219,
      I2 => I_ModeCtrl_VSync_mux000012_216,
      I3 => I_ModeCtrl_VSync_mux000016_217,
      O => I_ModeCtrl_VSync_mux000037_218
    );
  I_ModeCtrl_VSync_mux000054 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => I_ModeCtrl_cntY(8),
      I1 => I_ModeCtrl_cntY(3),
      I2 => I_ModeCtrl_cntY(9),
      I3 => I_ModeCtrl_cntY(2),
      O => I_ModeCtrl_VSync_mux000054_220
    );
  I_ModeCtrl_VSync_mux000062 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => I_ModeCtrl_cntY(7),
      I1 => I_ModeCtrl_cntY(5),
      I2 => I_ModeCtrl_cntY(6),
      I3 => I_ModeCtrl_cntY(4),
      O => I_ModeCtrl_VSync_mux000062_221
    );
  I_ModeCtrl_VSync_mux000066 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => I_ModeCtrl_cntY(0),
      I1 => I_ModeCtrl_cntY(1),
      O => I_ModeCtrl_VSync_mux000066_222
    );
  I_ModeCtrl_iLineNo_cmp_eq00002 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => I_ModeCtrl_cntY(0),
      I1 => I_ModeCtrl_cntY(8),
      I2 => I_ModeCtrl_cntY(4),
      I3 => N19,
      O => I_ModeCtrl_VActive_and0000
    );
  I_ModeCtrl_iLineNo_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => I_ModeCtrl_cntY(3),
      I1 => I_ModeCtrl_cntY(2),
      I2 => I_ModeCtrl_cntY(7),
      I3 => N21,
      O => I_ModeCtrl_N6
    );
  I_ModeCtrl_HActive_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => I_ModeCtrl_N9,
      I1 => I_ModeCtrl_cntX(3),
      I2 => I_ModeCtrl_cntX(8),
      O => I_ModeCtrl_HActive_and0000
    );
  I_CursorCnt_LineCnt_mux0001_3_11 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => I_CursorCnt_LineCnt(0),
      I1 => I_CursorCnt_LineCnt(1),
      I2 => I_CursorCnt_LineCnt(2),
      O => I_CursorCnt_N21
    );
  I_ModeCtrl_HActive_mux000012 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => I_ModeCtrl_cntX(4),
      I1 => I_ModeCtrl_cntX(5),
      I2 => I_ModeCtrl_cntX(6),
      I3 => I_ModeCtrl_cntX(10),
      O => I_ModeCtrl_HActive_mux000012_121
    );
  I_ModeCtrl_HActive_mux000051 : LUT4
    generic map(
      INIT => X"EAE2"
    )
    port map (
      I0 => I_ModeCtrl_HActive_118,
      I1 => I_ModeCtrl_HActive_and0000,
      I2 => I_ModeCtrl_N5,
      I3 => I_ModeCtrl_HActive_mux000017_122,
      O => I_ModeCtrl_HActive_mux0000
    );
  XLXI_115_XLXI_152_Blink1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_115_XLXI_147_O_331,
      I1 => XLXI_115_XLXI_152_Cnt(24),
      O => XLXI_115_XLXN_678
    );
  XLXI_115_XLXI_155_StartY111 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => I_ModeCtrl_cntX(3),
      I1 => I_ModeCtrl_cntX(2),
      I2 => I_ModeCtrl_cntX(1),
      O => XLXI_115_XLXI_155_DetectX_and0000_norst
    );
  I_ModeCtrl_VSync_cmp_eq000021 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => I_ModeCtrl_cntX(2),
      I1 => I_ModeCtrl_cntX(1),
      I2 => I_ModeCtrl_cntX(0),
      O => I_ModeCtrl_N9
    );
  I_ModeCtrl_iLineNo_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_ModeCtrl_cntMod30_cmp_eq0000,
      I1 => I_ModeCtrl_VSync_cmp_eq0000,
      O => I_ModeCtrl_iLineNo_not0001
    );
  I_ModeCtrl_iLineNo_and00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => I_ModeCtrl_N6,
      I1 => I_ModeCtrl_VActive_and0000,
      I2 => I_ModeCtrl_VSync_cmp_eq0000,
      O => I_ModeCtrl_iLineNo_and0000
    );
  I_ModeCtrl_cntMod30_and00001 : LUT4
    generic map(
      INIT => X"F800"
    )
    port map (
      I0 => I_ModeCtrl_N6,
      I1 => I_ModeCtrl_VActive_and0000,
      I2 => I_ModeCtrl_cntMod30_cmp_eq0000,
      I3 => I_ModeCtrl_VSync_cmp_eq0000,
      O => I_ModeCtrl_cntMod30_and0000
    );
  I_ModeCtrl_VSync_cmp_eq00002 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => I_ModeCtrl_cntX(3),
      I1 => I_ModeCtrl_cntX(8),
      I2 => I_ModeCtrl_N9,
      I3 => I_ModeCtrl_N5,
      O => I_ModeCtrl_VSync_cmp_eq0000
    );
  I_ModeCtrl_VSync_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => I_ModeCtrl_cntX(6),
      I1 => I_ModeCtrl_cntX(5),
      I2 => I_ModeCtrl_cntX(4),
      I3 => N29,
      O => I_ModeCtrl_N5
    );
  XLXI_115_XLXI_155_ActiveX_and00001120 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => I_ModeCtrl_cntMod30(1),
      I1 => I_ModeCtrl_iLineNo(3),
      I2 => XLXI_115_XLXI_155_ActiveX_and00001111_417,
      I3 => I_ModeCtrl_cntMod30(2),
      O => XLXI_115_XLXI_155_ActiveX_and00001120_418
    );
  XLXI_113_CursorActive_and0001_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => I_ModeCtrl_cntMod30(4),
      I1 => CursorOn,
      O => N31
    );
  I_CursorCnt_NextState_0_mux000021 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => I_CursorCnt_ColCnt(5),
      I1 => I_CursorCnt_ColCnt(4),
      I2 => N61,
      O => I_CursorCnt_N7
    );
  I_CursorCnt_LineCnt_mux0001_0_1 : LUT3
    generic map(
      INIT => X"A3"
    )
    port map (
      I0 => I_CursorCnt_ScrollBase(0),
      I1 => I_CursorCnt_LineCnt(0),
      I2 => N63,
      O => I_CursorCnt_LineCnt_mux0001(0)
    );
  I_CursorCnt_NextState_0_mux00001 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => NlwRenamedSig_OI_I_CursorCnt_State(0),
      I1 => I_CursorCnt_N7,
      I2 => ScrollClear,
      I3 => I_CursorCnt_ScrollStart,
      O => I_CursorCnt_NextState
    );
  I_CursorCnt_LineCnt_mux0001_3_1 : LUT4
    generic map(
      INIT => X"AAC3"
    )
    port map (
      I0 => I_CursorCnt_ScrollBase(3),
      I1 => I_CursorCnt_LineCnt(3),
      I2 => I_CursorCnt_N21,
      I3 => I_CursorCnt_N6,
      O => I_CursorCnt_LineCnt_mux0001(3)
    );
  I_CursorCnt_LineCnt_mux0001_1_1 : LUT4
    generic map(
      INIT => X"AA3C"
    )
    port map (
      I0 => I_CursorCnt_ScrollBase(1),
      I1 => I_CursorCnt_LineCnt(1),
      I2 => I_CursorCnt_LineCnt(0),
      I3 => I_CursorCnt_N6,
      O => I_CursorCnt_LineCnt_mux0001(1)
    );
  I_CursorCnt_LineCnt_mux0001_4_Q : LUT4
    generic map(
      INIT => X"AA3C"
    )
    port map (
      I0 => I_CursorCnt_ScrollBase(4),
      I1 => I_CursorCnt_LineCnt(4),
      I2 => N33,
      I3 => I_CursorCnt_N6,
      O => I_CursorCnt_LineCnt_mux0001(4)
    );
  I_CursorCnt_LineCnt_mux0001_2_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => I_CursorCnt_LineCnt(1),
      I1 => I_CursorCnt_LineCnt(0),
      O => N35
    );
  I_CursorCnt_LineCnt_mux0001_2_Q : LUT4
    generic map(
      INIT => X"AAC3"
    )
    port map (
      I0 => I_CursorCnt_ScrollBase(2),
      I1 => I_CursorCnt_LineCnt(2),
      I2 => N35,
      I3 => I_CursorCnt_N6,
      O => I_CursorCnt_LineCnt_mux0001(2)
    );
  I_CursorCnt_LastLine52 : LUT4
    generic map(
      INIT => X"2064"
    )
    port map (
      I0 => I_CursorCnt_LineCnt(2),
      I1 => I_CursorCnt_ScrollBase(2),
      I2 => N37,
      I3 => N38,
      O => I_CursorCnt_N5
    );
  I_CursorCnt_LastLine5111 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => I_CursorCnt_LineCnt(0),
      I1 => I_CursorCnt_ScrollBase(0),
      O => I_CursorCnt_LastLine5111_69
    );
  XLXI_115_XLXI_155_iPixOut103 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => XLXI_115_XLXI_155_ActiveX_415,
      I1 => XLXI_115_XLXI_155_iPixOut11_478,
      I2 => XLXI_115_XLXI_155_iPixOut56_479,
      I3 => XLXI_115_XLXN_762,
      O => XLXI_115_XLXI_155_iPixOut
    );
  XLXI_115_XLXI_147_Q : FDR
    port map (
      C => Clk_50MHz,
      D => XLXI_113_CursorActive_and0001,
      R => N31,
      Q => XLXI_115_XLXI_147_Q_332
    );
  XLXI_113_CursorActive_and00011 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => XLXI_113_CursorActive_cmp_eq0000,
      I1 => I_ModeCtrl_cntMod30(2),
      I2 => I_ModeCtrl_cntMod30(3),
      O => XLXI_113_CursorActive_and0001
    );
  I_ModeCtrl_Mcount_cntY_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntY(8),
      O => I_ModeCtrl_Mcount_cntY_cy_8_rt_165
    );
  I_ModeCtrl_Mcount_cntY_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntY(7),
      O => I_ModeCtrl_Mcount_cntY_cy_7_rt_163
    );
  I_ModeCtrl_Mcount_cntY_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntY(6),
      O => I_ModeCtrl_Mcount_cntY_cy_6_rt_161
    );
  I_ModeCtrl_Mcount_cntY_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntY(5),
      O => I_ModeCtrl_Mcount_cntY_cy_5_rt_159
    );
  I_ModeCtrl_Mcount_cntY_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntY(4),
      O => I_ModeCtrl_Mcount_cntY_cy_4_rt_157
    );
  I_ModeCtrl_Mcount_cntY_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntY(3),
      O => I_ModeCtrl_Mcount_cntY_cy_3_rt_155
    );
  I_ModeCtrl_Mcount_cntY_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntY(2),
      O => I_ModeCtrl_Mcount_cntY_cy_2_rt_153
    );
  I_ModeCtrl_Mcount_cntY_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntY(1),
      O => I_ModeCtrl_Mcount_cntY_cy_1_rt_151
    );
  I_ModeCtrl_Mcount_cntX_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntX(9),
      O => I_ModeCtrl_Mcount_cntX_cy_9_rt_146
    );
  I_ModeCtrl_Mcount_cntX_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntX(8),
      O => I_ModeCtrl_Mcount_cntX_cy_8_rt_144
    );
  I_ModeCtrl_Mcount_cntX_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntX(7),
      O => I_ModeCtrl_Mcount_cntX_cy_7_rt_142
    );
  I_ModeCtrl_Mcount_cntX_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntX(6),
      O => I_ModeCtrl_Mcount_cntX_cy_6_rt_140
    );
  I_ModeCtrl_Mcount_cntX_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntX(5),
      O => I_ModeCtrl_Mcount_cntX_cy_5_rt_138
    );
  I_ModeCtrl_Mcount_cntX_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntX(4),
      O => I_ModeCtrl_Mcount_cntX_cy_4_rt_136
    );
  I_ModeCtrl_Mcount_cntX_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntX(3),
      O => I_ModeCtrl_Mcount_cntX_cy_3_rt_134
    );
  I_ModeCtrl_Mcount_cntX_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntX(2),
      O => I_ModeCtrl_Mcount_cntX_cy_2_rt_132
    );
  I_ModeCtrl_Mcount_cntX_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntX(1),
      O => I_ModeCtrl_Mcount_cntX_cy_1_rt_130
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(23),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_23_rt_396
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(22),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_22_rt_394
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(21),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_21_rt_392
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(20),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_20_rt_390
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(19),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_19_rt_386
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(18),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_18_rt_384
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(17),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_17_rt_382
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(16),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_16_rt_380
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(15),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_15_rt_378
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(14),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_14_rt_376
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(13),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_13_rt_374
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(12),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_12_rt_372
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(11),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_11_rt_370
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(10),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_10_rt_368
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(9),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_9_rt_412
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(8),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_8_rt_410
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(7),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_7_rt_408
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(6),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_6_rt_406
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(5),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_5_rt_404
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(4),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_4_rt_402
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(3),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_3_rt_400
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(2),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_2_rt_398
    );
  XLXI_115_XLXI_152_Mcount_Cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(1),
      O => XLXI_115_XLXI_152_Mcount_Cnt_cy_1_rt_388
    );
  I_ModeCtrl_Mcount_cntY_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntY(9),
      O => I_ModeCtrl_Mcount_cntY_xor_9_rt_167
    );
  I_ModeCtrl_Mcount_cntX_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_ModeCtrl_cntX(10),
      O => I_ModeCtrl_Mcount_cntX_xor_10_rt_148
    );
  XLXI_115_XLXI_152_Mcount_Cnt_xor_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_115_XLXI_152_Cnt(24),
      O => XLXI_115_XLXI_152_Mcount_Cnt_xor_24_rt_414
    );
  I_CursorCnt_LastLine52_SW1 : LUT4
    generic map(
      INIT => X"F69F"
    )
    port map (
      I0 => I_CursorCnt_ScrollBase(4),
      I1 => I_CursorCnt_LineCnt(4),
      I2 => I_CursorCnt_LineCnt(3),
      I3 => I_CursorCnt_ScrollBase(3),
      O => N38
    );
  I_CursorCnt_LastLine555_SW0 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => I_CursorCnt_ScrollBase(3),
      I1 => I_CursorCnt_LineCnt(3),
      I2 => I_CursorCnt_ScrollBase(2),
      I3 => I_CursorCnt_LineCnt(2),
      O => N40
    );
  I_CursorCnt_LastLine555 : LUT4
    generic map(
      INIT => X"6000"
    )
    port map (
      I0 => I_CursorCnt_LineCnt(4),
      I1 => I_CursorCnt_ScrollBase(4),
      I2 => N40,
      I3 => I_CursorCnt_LastLine549_71,
      O => I_CursorCnt_LastLine555_72
    );
  I_ModeCtrl_VSync_mux000086 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => I_ModeCtrl_VSync_mux000054_220,
      I1 => I_ModeCtrl_VSync_mux000062_221,
      I2 => I_ModeCtrl_VSync_mux000066_222,
      I3 => I_ModeCtrl_VSync_mux000037_218,
      O => I_ModeCtrl_VSync_mux0000
    );
  I_ModeCtrl_HActive_mux000017 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => I_ModeCtrl_cntX(7),
      I1 => I_ModeCtrl_cntX(9),
      I2 => I_ModeCtrl_HActive_mux000012_121,
      O => I_ModeCtrl_HActive_mux000017_122
    );
  I_CursorCnt_LastLine580 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => I_CursorCnt_LastLine555_72,
      I1 => I_CursorCnt_LineCnt(0),
      I2 => I_CursorCnt_ScrollBase(0),
      I3 => N44,
      O => I_CursorCnt_LastLine580_73
    );
  I_CursorCnt_LineCnt_mux0001_2_150_SW0 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => Char_WE,
      I1 => I_CursorCnt_LineCnt_mux0001_2_123_82,
      I2 => I_CursorCnt_ColCnt(4),
      I3 => I_CursorCnt_ColCnt(1),
      O => N46
    );
  I_CursorCnt_LineCnt_mux0001_2_150 : LUT4
    generic map(
      INIT => X"FF75"
    )
    port map (
      I0 => ScrollEn,
      I1 => NewLine,
      I2 => N46,
      I3 => NlwRenamedSig_OI_I_CursorCnt_State(0),
      O => I_CursorCnt_LineCnt_mux0001_2_150_83
    );
  XLXI_115_XLXI_155_StartY2 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_115_XLXI_155_prevDetectY_481,
      I1 => XLXI_115_XLXI_155_ActiveX_and0000117_419,
      I2 => XLXI_115_XLXI_155_ActiveX_and00001120_418,
      I3 => XLXI_115_XLXI_155_StartX,
      O => XLXI_115_XLXI_155_StartY
    );
  XLXI_115_XLXI_155_DetectY_and00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_115_XLXI_155_StartX,
      I1 => N60,
      I2 => XLXI_115_XLXI_155_ActiveX_and00001120_418,
      O => XLXI_115_XLXI_155_DetectY
    );
  I_ModeCtrl_HSync_mux000024 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => I_ModeCtrl_cntX(7),
      I1 => I_ModeCtrl_cntX(2),
      I2 => I_ModeCtrl_cntX(1),
      I3 => I_ModeCtrl_cntX(0),
      O => I_ModeCtrl_HSync_mux000024_126
    );
  I_CursorCnt_LineCnt_mux0001_4_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I_CursorCnt_LineCnt(0),
      I1 => I_CursorCnt_LineCnt(1),
      I2 => I_CursorCnt_LineCnt(2),
      I3 => I_CursorCnt_LineCnt(3),
      O => N33
    );
  XLXI_115_XLXI_155_Result_3_2 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntCol(3),
      I1 => XLXI_115_XLXI_155_cntCol(2),
      I2 => XLXI_115_XLXI_155_cntCol(1),
      I3 => XLXI_115_XLXI_155_cntCol(0),
      O => XLXI_115_XLXI_155_Result(3)
    );
  XLXI_115_XLXI_155_ActiveX_and0000 : LUT4
    generic map(
      INIT => X"FB00"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntLine(1),
      I1 => XLXI_115_XLXI_155_cntLine(0),
      I2 => N48,
      I3 => XLXI_115_XLXI_155_StartX,
      O => XLXI_115_XLXI_155_ActiveX_and0000_416
    );
  XLXI_115_XLXI_155_StartY123_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => XLXI_115_XLXI_155_prevDetectX_480,
      I1 => I_ModeCtrl_cntX(5),
      I2 => I_ModeCtrl_cntX(8),
      I3 => XLXI_115_XLXI_155_StartY121_467,
      O => N52
    );
  XLXI_115_XLXI_155_StartY123 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => I_ModeCtrl_cntX(1),
      I1 => I_ModeCtrl_cntX(3),
      I2 => I_ModeCtrl_cntX(2),
      I3 => N52,
      O => XLXI_115_XLXI_155_StartX
    );
  I_CursorCnt_ColCnt_or0000 : LUT4
    generic map(
      INIT => X"BFAE"
    )
    port map (
      I0 => Goto00,
      I1 => NlwRenamedSig_OI_I_CursorCnt_State(0),
      I2 => I_CursorCnt_N7,
      I3 => N54,
      O => I_CursorCnt_ColCnt_or0000_67
    );
  I_CursorCnt_NextState_0_mux000031_SW0 : LUT4
    generic map(
      INIT => X"DDDF"
    )
    port map (
      I0 => ScrollEn,
      I1 => NlwRenamedSig_OI_I_CursorCnt_State(0),
      I2 => N62,
      I3 => I_CursorCnt_LastLine580_73,
      O => N56
    );
  I_CursorCnt_NextState_0_mux000031 : LUT4
    generic map(
      INIT => X"00CE"
    )
    port map (
      I0 => Char_WE,
      I1 => NewLine,
      I2 => I_CursorCnt_N7,
      I3 => N56,
      O => I_CursorCnt_ScrollStart
    );
  I_ModeCtrl_Mcount_cntY_lut_0_INV_0 : INV
    port map (
      I => I_ModeCtrl_cntY(0),
      O => I_ModeCtrl_Mcount_cntY_lut(0)
    );
  I_ModeCtrl_Mcount_cntX_lut_0_INV_0 : INV
    port map (
      I => I_ModeCtrl_cntX(0),
      O => I_ModeCtrl_Mcount_cntX_lut(0)
    );
  XLXI_115_XLXI_152_Mcount_Cnt_lut_0_INV_0 : INV
    port map (
      I => XLXI_115_XLXI_152_Cnt(0),
      O => XLXI_115_XLXI_152_Mcount_Cnt_lut(0)
    );
  XLXI_115_XLXI_155_Mcount_cntLine_xor_0_11_INV_0 : INV
    port map (
      I => XLXI_115_XLXI_155_cntLine(0),
      O => XLXI_115_XLXI_155_Result(0)
    );
  XLXI_115_XLXI_155_Mcount_cntCol_xor_0_11_INV_0 : INV
    port map (
      I => XLXI_115_XLXI_155_cntCol(0),
      O => XLXI_115_XLXI_155_Result_0_1
    );
  I_ModeCtrl_Mcount_iLineNo_xor_0_11_INV_0 : INV
    port map (
      I => I_ModeCtrl_iLineNo(0),
      O => I_ModeCtrl_Result(0)
    );
  I_ModeCtrl_Mcount_cntMod30_xor_0_11_INV_0 : INV
    port map (
      I => I_ModeCtrl_cntMod30(0),
      O => I_ModeCtrl_Result_0_3
    );
  I_CursorCnt_Mcount_ScrollBase_xor_0_11_INV_0 : INV
    port map (
      I => I_CursorCnt_ScrollBase(0),
      O => I_CursorCnt_Result_0_1
    );
  I_CursorCnt_Mcount_ColCnt_xor_0_11_INV_0 : INV
    port map (
      I => I_CursorCnt_ColCnt(0),
      O => I_CursorCnt_Result(0)
    );
  XLXI_115_XLXI_155_iPixOut56 : MUXF5
    port map (
      I0 => N58,
      I1 => N59,
      S => XLXI_115_XLXI_155_cntLine(1),
      O => XLXI_115_XLXI_155_iPixOut56_479
    );
  XLXI_115_XLXI_155_iPixOut56_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntLine(0),
      I1 => XLXI_115_XLXI_155_Mrom_iPixOut_rom0000_f6_453,
      I2 => XLXI_115_XLXI_155_cntLine(2),
      I3 => XLXI_115_XLXI_155_Mrom_iPixOut_rom00001_f6_431,
      O => N58
    );
  XLXI_115_XLXI_155_iPixOut56_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => XLXI_115_XLXI_155_cntLine(0),
      I1 => XLXI_115_XLXI_155_Mrom_iPixOut_rom00002_f6_438,
      I2 => XLXI_115_XLXI_155_cntLine(2),
      I3 => XLXI_115_XLXI_155_Mrom_iPixOut_rom00003_f6_444,
      O => N59
    );
  XLXI_147_Mrom_DO_rom0000 : RAMB16_S9
    generic map(
      WRITE_MODE => "WRITE_FIRST",
      INIT_3E => X"0000000030080808080608080808300000000000000808080808080808080000",
      INIT_00 => X"0808080808080808080F00000000000000000000000000000000000000000000",
      INIT_01 => X"080808080808080808F8000000000000000000000000000000FF000000000000",
      INIT_02 => X"000000000000000000F80808080808080000000000000000000F080808080808",
      INIT_03 => X"0808080808080808080F08080808080808080808080808080808080808080808",
      INIT_04 => X"080808080808080808FF000000000000080808080808080808F8080808080808",
      INIT_05 => X"080808080808080808FF080808080808000000000000000000FF080808080808",
      INIT_06 => X"FFFFFFFFFFFFFFFF00000000000000000000000000000000FFFFFFFFFFFFFFFF",
      INIT_07 => X"0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8",
      INIT_08 => X"00000000003C00201008040810200000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"0000004040203C52524A4A3C0402020000000000003C00040810201008040000",
      INIT_0A => X"0000000000003E0008083E080800000000000000000000000000182424180000",
      INIT_0B => X"000000000000482412091224480000000000000000000808003E000808000000",
      INIT_0C => X"000000000000004C32004C320000000000000000000009122448241209000000",
      INIT_0D => X"000000000022222222221C000000000000000000001C22222222220000000000",
      INIT_0E => X"0000000000000010207E2010000000000000000000000008047E040800000000",
      INIT_0F => X"0000000000081C2A080808080808000000000000000808080808082A1C080000",
      INIT_10 => X"0000000000080800080808080808000000000000000000000000000000000000",
      INIT_11 => X"000000000014147F14147F141400000000000000000000000000002424240000",
      INIT_12 => X"000000000002452512082452512000000000000008083E49093E48493E080800",
      INIT_13 => X"0000000000000000000000080808000000000000003D42454838444438000000",
      INIT_14 => X"0000000010080804040404040808100000000000040808101010101008080400",
      INIT_15 => X"0000000000000008083E0808000000000000000000000024187E182400000000",
      INIT_16 => X"0000000000000000003E00000000000000000010081818000000000000000000",
      INIT_17 => X"0000000020201010080804040202000000000000001818000000000000000000",
      INIT_18 => X"00000000003E0808080808083808000000000000003C4262725A4E46423C0000",
      INIT_19 => X"00000000003C4202021C0202423C000000000000007E4040403C0202423C0000",
      INIT_1A => X"00000000003C420202027C40407E000000000000000404047E4424140C040000",
      INIT_1B => X"000000000010101008080404427E000000000000003C424242427C40403C0000",
      INIT_1C => X"00000000003C02023E424242423C000000000000003C4242423C4242423C0000",
      INIT_1D => X"0000001008181800001818000000000000000000001818000018180000000000",
      INIT_1E => X"00000000000000003E003E000000000000000000000004081020100804000000",
      INIT_1F => X"000000000008080008080402221C000000000000000020100804081020000000",
      INIT_20 => X"00000000004242427E424242423C000000000000001F204A555549221C000000",
      INIT_21 => X"00000000001E214040404040211E000000000000007C4242427C4242427C0000",
      INIT_22 => X"00000000007E4040407C4040407E000000000000007C424141414141427C0000",
      INIT_23 => X"00000000001E214147404040211E00000000000000404040407C4040407E0000",
      INIT_24 => X"00000000003E080808080808083E00000000000000414141417F414141410000",
      INIT_25 => X"00000000004244485060504844420000000000000038440404040404041E0000",
      INIT_26 => X"0000000000414141414149556341000000000000007E40404040404040400000",
      INIT_27 => X"00000000001C224141414141221C000000000000004141414345495161410000",
      INIT_28 => X"00000003041C224141414141221C00000000000000404040407C4242427C0000",
      INIT_29 => X"00000000003E4101013E4040413E00000000000000424448507C4242427C0000",
      INIT_2A => X"00000000003E41414141414141410000000000000008080808080808087F0000",
      INIT_2B => X"0000000000364949494941414141000000000000000814224141414141410000",
      INIT_2C => X"0000000000080808080814224141000000000000004141221408142241410000",
      INIT_2D => X"000000001C1010101010101010101C0000000000007F402010080402017F0000",
      INIT_2E => X"000000001C0404040404040404041C0000000000020204040808101020200000",
      INIT_2F => X"000000007E000000000000000000000000000000000000000000002214080000",
      INIT_30 => X"00000000003E42423E023C000000000000000000000000000000000408100000",
      INIT_31 => X"00000000003C424040423C000000000000000000007C424242427C4040400000",
      INIT_32 => X"00000000003C42407E423C000000000000000000003E424242423E0202020000",
      INIT_33 => X"00003C02023E424242423E0000000000000000000010101010103C10100E0000",
      INIT_34 => X"00000000003E08080808380008080000000000000042424242427C4040400000",
      INIT_35 => X"00000000004244487048444040400000000038040404040404041C0004040000",
      INIT_36 => X"0000000000494949494976000000000000000000000C10101010101010100000",
      INIT_37 => X"00000000003C424242423C0000000000000000000042424242427C0000000000",
      INIT_38 => X"00000202023E424242423E000000000000004040407C424242427C0000000000",
      INIT_39 => X"00000000003C420C30423C0000000000000000000040404040403C0000000000",
      INIT_3A => X"00000000003E4242424242000000000000000000000C10101010103C10100000",
      INIT_3B => X"0000000000364949494141000000000000000000000814222222220000000000",
      INIT_3C => X"00003C02023E4242424242000000000000000000004224181824420000000000",
      INIT_3D => X"0000000006080808083008080808060000000000007E201008047E0000000000",
      INIT_3F => X"00000000007E424242424242427E00000000000000000000004C320000000000"
    )
    port map (
      CLK => Clk_50MHz,
      EN => XLXI_147_En_486,
      SSR => XLXN_898,
      WE => XLXN_898,
      ADDR(10) => XLXN_900(6),
      ADDR(9) => XLXN_900(5),
      ADDR(8) => XLXN_900(4),
      ADDR(7) => XLXN_900(3),
      ADDR(6) => XLXN_900(2),
      ADDR(5) => XLXN_900(1),
      ADDR(4) => XLXN_900(0),
      ADDR(3) => I_ModeCtrl_cntMod30(4),
      ADDR(2) => I_ModeCtrl_cntMod30(3),
      ADDR(1) => I_ModeCtrl_cntMod30(2),
      ADDR(0) => I_ModeCtrl_cntMod30(1),
      DI(7) => XLXN_898,
      DI(6) => XLXN_898,
      DI(5) => XLXN_898,
      DI(4) => XLXN_898,
      DI(3) => XLXN_898,
      DI(2) => XLXN_898,
      DI(1) => XLXN_898,
      DI(0) => XLXN_898,
      DIP(0) => XLXN_898,
      DO(7) => XLXN_899(7),
      DO(6) => XLXN_899(6),
      DO(5) => XLXN_899(5),
      DO(4) => XLXN_899(4),
      DO(3) => XLXN_899(3),
      DO(2) => XLXN_899(2),
      DO(1) => XLXN_899(1),
      DO(0) => XLXN_899(0),
      DOP(0) => NLW_XLXI_147_Mrom_DO_rom0000_DOP_0_UNCONNECTED
    );
  XLXI_3 : RAMB16_S9_S9
    generic map(
      SRVAL_A => X"000",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"3730303200534A00000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      SIM_COLLISION_CHECK => "ALL",
      INIT_A => X"000",
      INIT_B => X"000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      SRVAL_B => X"000"
    )
    port map (
      CLKA => Clk_50MHz,
      CLKB => Clk_Sys,
      ENA => XLXN_817,
      ENB => XLXN_687,
      SSRA => NlwRenamedSig_OI_I_ModeCtrl_HSync,
      SSRB => XLXN_898,
      WEA => XLXN_898,
      WEB => XLXN_699,
      ADDRA(10) => Rd_A(10),
      ADDRA(9) => Rd_A(9),
      ADDRA(8) => Rd_A(8),
      ADDRA(7) => Rd_A(7),
      ADDRA(6) => Rd_A(6),
      ADDRA(5) => I_ModeCtrl_cntX(9),
      ADDRA(4) => I_ModeCtrl_cntX(8),
      ADDRA(3) => I_ModeCtrl_cntX(7),
      ADDRA(2) => I_ModeCtrl_cntX(6),
      ADDRA(1) => I_ModeCtrl_cntX(5),
      ADDRA(0) => I_ModeCtrl_cntX(4),
      ADDRB(10) => I_CursorCnt_LineCnt(4),
      ADDRB(9) => I_CursorCnt_LineCnt(3),
      ADDRB(8) => I_CursorCnt_LineCnt(2),
      ADDRB(7) => I_CursorCnt_LineCnt(1),
      ADDRB(6) => I_CursorCnt_LineCnt(0),
      ADDRB(5) => I_CursorCnt_ColCnt(5),
      ADDRB(4) => I_CursorCnt_ColCnt(4),
      ADDRB(3) => I_CursorCnt_ColCnt(3),
      ADDRB(2) => I_CursorCnt_ColCnt(2),
      ADDRB(1) => I_CursorCnt_ColCnt(1),
      ADDRB(0) => I_CursorCnt_ColCnt(0),
      DIA(7) => XLXN_898,
      DIA(6) => XLXN_898,
      DIA(5) => XLXN_898,
      DIA(4) => XLXN_898,
      DIA(3) => XLXN_898,
      DIA(2) => XLXN_898,
      DIA(1) => XLXN_898,
      DIA(0) => XLXN_898,
      DIB(7) => XLXN_698(7),
      DIB(6) => XLXN_698(6),
      DIB(5) => XLXN_698(5),
      DIB(4) => XLXN_698(4),
      DIB(3) => XLXN_698(3),
      DIB(2) => XLXN_698(2),
      DIB(1) => XLXN_698(1),
      DIB(0) => XLXN_698(0),
      DIPA(0) => XLXN_898,
      DIPB(0) => XLXN_898,
      DOA(7) => NLW_XLXI_3_DOA_7_UNCONNECTED,
      DOA(6) => XLXN_900(6),
      DOA(5) => XLXN_900(5),
      DOA(4) => XLXN_900(4),
      DOA(3) => XLXN_900(3),
      DOA(2) => XLXN_900(2),
      DOA(1) => XLXN_900(1),
      DOA(0) => XLXN_900(0),
      DOPA(0) => NLW_XLXI_3_DOPA_0_UNCONNECTED,
      DOB(7) => NLW_XLXI_3_DOB_7_UNCONNECTED,
      DOB(6) => NLW_XLXI_3_DOB_6_UNCONNECTED,
      DOB(5) => NLW_XLXI_3_DOB_5_UNCONNECTED,
      DOB(4) => NLW_XLXI_3_DOB_4_UNCONNECTED,
      DOB(3) => NLW_XLXI_3_DOB_3_UNCONNECTED,
      DOB(2) => NLW_XLXI_3_DOB_2_UNCONNECTED,
      DOB(1) => NLW_XLXI_3_DOB_1_UNCONNECTED,
      DOB(0) => NLW_XLXI_3_DOB_0_UNCONNECTED,
      DOPB(0) => NLW_XLXI_3_DOPB_0_UNCONNECTED
    );
  I_CursorCnt_RAM_WE_Out1 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => Char_WE,
      I1 => Home,
      I2 => Goto00,
      I3 => NlwRenamedSig_OI_I_CursorCnt_State(0),
      O => I_CursorCnt_RAM_WE_Out
    );
  I_CursorCnt_RAM_WE_Out_f5 : MUXF5
    port map (
      I0 => I_CursorCnt_RAM_WE_Out,
      I1 => NlwRenamedSig_OI_I_CursorCnt_State(0),
      S => NewLine,
      O => XLXN_699
    );
  I_ModeCtrl_Result_4_31 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => I_ModeCtrl_cntMod30(3),
      I1 => I_ModeCtrl_cntMod30(2),
      I2 => I_ModeCtrl_cntMod30(1),
      I3 => I_ModeCtrl_cntMod30(0),
      O => I_ModeCtrl_Result_4_31_192
    );
  I_ModeCtrl_Result_4_32 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I_ModeCtrl_cntMod30(2),
      I1 => I_ModeCtrl_cntMod30(1),
      I2 => I_ModeCtrl_cntMod30(0),
      I3 => I_ModeCtrl_cntMod30(3),
      O => I_ModeCtrl_Result_4_32_193
    );
  I_ModeCtrl_Result_4_3_f5 : MUXF5
    port map (
      I0 => I_ModeCtrl_Result_4_32_193,
      I1 => I_ModeCtrl_Result_4_31_192,
      S => I_ModeCtrl_cntMod30(4),
      O => I_ModeCtrl_Result_4_3
    );
  I_ModeCtrl_Result_4_1 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => I_ModeCtrl_iLineNo(0),
      I1 => I_ModeCtrl_iLineNo(1),
      I2 => I_ModeCtrl_iLineNo(2),
      I3 => I_ModeCtrl_iLineNo(3),
      O => I_ModeCtrl_Result_4_4
    );
  I_ModeCtrl_Result_4_2 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I_ModeCtrl_iLineNo(1),
      I1 => I_ModeCtrl_iLineNo(0),
      I2 => I_ModeCtrl_iLineNo(2),
      I3 => I_ModeCtrl_iLineNo(3),
      O => I_ModeCtrl_Result_4_5
    );
  I_ModeCtrl_Result_4_f5 : MUXF5
    port map (
      I0 => I_ModeCtrl_Result_4_5,
      I1 => I_ModeCtrl_Result_4_4,
      S => I_ModeCtrl_iLineNo(4),
      O => I_ModeCtrl_Result(4)
    );
  I_CursorCnt_Result_4_11 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => I_CursorCnt_ScrollBase(3),
      I1 => I_CursorCnt_ScrollBase(2),
      I2 => I_CursorCnt_ScrollBase(1),
      I3 => I_CursorCnt_ScrollBase(0),
      O => I_CursorCnt_Result_4_11_108
    );
  I_CursorCnt_Result_4_12 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I_CursorCnt_ScrollBase(2),
      I1 => I_CursorCnt_ScrollBase(1),
      I2 => I_CursorCnt_ScrollBase(0),
      I3 => I_CursorCnt_ScrollBase(3),
      O => I_CursorCnt_Result_4_12_109
    );
  I_CursorCnt_Result_4_1_f5 : MUXF5
    port map (
      I0 => I_CursorCnt_Result_4_12_109,
      I1 => I_CursorCnt_Result_4_11_108,
      S => I_CursorCnt_ScrollBase(4),
      O => I_CursorCnt_Result_4_1
    );
  I_ModeCtrl_VActive_mux0000151 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => I_ModeCtrl_cntY(2),
      I1 => I_ModeCtrl_cntY(6),
      I2 => I_ModeCtrl_cntY(1),
      I3 => I_ModeCtrl_cntY(3),
      O => I_ModeCtrl_VActive_mux0000151_210
    );
  I_ModeCtrl_VActive_mux000015_f5 : MUXF5
    port map (
      I0 => I_ModeCtrl_VActive_mux0000151_210,
      I1 => XLXN_687,
      S => I_ModeCtrl_cntY(7),
      O => I_ModeCtrl_VActive_mux000015
    );
  I_ModeCtrl_VActive_mux0000531 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => I_ModeCtrl_cntY(3),
      I1 => I_ModeCtrl_cntY(1),
      I2 => I_ModeCtrl_cntY(2),
      I3 => I_ModeCtrl_cntY(6),
      O => I_ModeCtrl_VActive_mux0000531_212
    );
  I_ModeCtrl_VActive_mux000053_f5 : MUXF5
    port map (
      I0 => XLXN_898,
      I1 => I_ModeCtrl_VActive_mux0000531_212,
      S => I_ModeCtrl_cntY(7),
      O => I_ModeCtrl_VActive_mux000053
    );
  I_ModeCtrl_cntMod30_cmp_eq00001 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => I_ModeCtrl_cntMod30(1),
      I1 => I_ModeCtrl_cntMod30(0),
      I2 => I_ModeCtrl_cntMod30(2),
      I3 => I_ModeCtrl_cntMod30(3),
      O => I_ModeCtrl_cntMod30_cmp_eq00001_230
    );
  I_ModeCtrl_cntMod30_cmp_eq0000_f5 : MUXF5
    port map (
      I0 => XLXN_898,
      I1 => I_ModeCtrl_cntMod30_cmp_eq00001_230,
      S => I_ModeCtrl_cntMod30(4),
      O => I_ModeCtrl_cntMod30_cmp_eq0000
    );
  I_CursorCnt_LineCnt_not000111 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => NlwRenamedSig_OI_I_CursorCnt_State(0),
      I1 => Goto00,
      O => I_CursorCnt_LineCnt_not00011
    );
  I_CursorCnt_LineCnt_not000112 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => Char_WE,
      I1 => NlwRenamedSig_OI_I_CursorCnt_State(0),
      I2 => I_CursorCnt_N7,
      I3 => Goto00,
      O => I_CursorCnt_LineCnt_not000111_88
    );
  I_CursorCnt_LineCnt_not00011_f5 : MUXF5
    port map (
      I0 => I_CursorCnt_LineCnt_not000111_88,
      I1 => I_CursorCnt_LineCnt_not00011,
      S => NewLine,
      O => I_CursorCnt_LineCnt_not0001
    );
  I_CursorCnt_Mcount_ColCnt_xor_4_11 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => I_CursorCnt_ColCnt(0),
      I1 => I_CursorCnt_ColCnt(1),
      I2 => I_CursorCnt_ColCnt(2),
      I3 => I_CursorCnt_ColCnt(3),
      O => I_CursorCnt_Mcount_ColCnt_xor_4_1
    );
  I_CursorCnt_Mcount_ColCnt_xor_4_12 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I_CursorCnt_ColCnt(1),
      I1 => I_CursorCnt_ColCnt(0),
      I2 => I_CursorCnt_ColCnt(2),
      I3 => I_CursorCnt_ColCnt(3),
      O => I_CursorCnt_Mcount_ColCnt_xor_4_11_90
    );
  I_CursorCnt_Mcount_ColCnt_xor_4_1_f5 : MUXF5
    port map (
      I0 => I_CursorCnt_Mcount_ColCnt_xor_4_11_90,
      I1 => I_CursorCnt_Mcount_ColCnt_xor_4_1,
      S => I_CursorCnt_ColCnt(4),
      O => I_CursorCnt_Result(4)
    );
  I_ModeCtrl_iLineNo_cmp_eq00002_SW0 : LUT2_L
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => I_ModeCtrl_cntY(9),
      I1 => I_ModeCtrl_cntY(5),
      LO => N19
    );
  I_ModeCtrl_iLineNo_cmp_eq00001_SW0 : LUT2_L
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => I_ModeCtrl_cntY(6),
      I1 => I_ModeCtrl_cntY(1),
      LO => N21
    );
  XLXI_115_XLXI_155_StartY121 : LUT4_L
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => I_ModeCtrl_cntX(4),
      I1 => I_ModeCtrl_cntX(6),
      I2 => I_ModeCtrl_cntX(7),
      I3 => I_ModeCtrl_cntX(9),
      LO => XLXI_115_XLXI_155_StartY121_467
    );
  I_ModeCtrl_VSync_cmp_eq00001_SW0 : LUT3_L
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => I_ModeCtrl_cntX(10),
      I1 => I_ModeCtrl_cntX(9),
      I2 => I_ModeCtrl_cntX(7),
      LO => N29
    );
  XLXI_115_XLXI_155_ActiveX_and0000117 : LUT4_D
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => I_ModeCtrl_iLineNo(2),
      I1 => I_ModeCtrl_cntMod30(4),
      I2 => I_ModeCtrl_iLineNo(4),
      I3 => I_ModeCtrl_iLineNo(0),
      LO => N60,
      O => XLXI_115_XLXI_155_ActiveX_and0000117_419
    );
  XLXI_115_XLXI_155_ActiveX_and00001111 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_ModeCtrl_cntMod30(3),
      I1 => I_ModeCtrl_iLineNo(1),
      LO => XLXI_115_XLXI_155_ActiveX_and00001111_417
    );
  I_CursorCnt_Mcount_ColCnt_xor_5_111 : LUT4_D
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => I_CursorCnt_ColCnt(3),
      I1 => I_CursorCnt_ColCnt(2),
      I2 => I_CursorCnt_ColCnt(1),
      I3 => I_CursorCnt_ColCnt(0),
      LO => N61,
      O => I_CursorCnt_N10
    );
  I_CursorCnt_LastLine524 : LUT4_D
    generic map(
      INIT => X"9000"
    )
    port map (
      I0 => I_CursorCnt_ScrollBase(1),
      I1 => I_CursorCnt_LineCnt(1),
      I2 => I_CursorCnt_LastLine5111_69,
      I3 => I_CursorCnt_N5,
      LO => N62,
      O => I_CursorCnt_LastLine524_70
    );
  I_CursorCnt_LastLine549 : LUT2_L
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => I_CursorCnt_ScrollBase(1),
      I1 => I_CursorCnt_LineCnt(1),
      LO => I_CursorCnt_LastLine549_71
    );
  I_CursorCnt_LineCnt_mux0001_2_123 : LUT4_L
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => I_CursorCnt_ColCnt(0),
      I1 => I_CursorCnt_ColCnt(2),
      I2 => I_CursorCnt_ColCnt(3),
      I3 => I_CursorCnt_ColCnt(5),
      LO => I_CursorCnt_LineCnt_mux0001_2_123_82
    );
  I_CursorCnt_LastLine52_SW0 : LUT4_L
    generic map(
      INIT => X"4812"
    )
    port map (
      I0 => I_CursorCnt_ScrollBase(4),
      I1 => I_CursorCnt_ScrollBase(3),
      I2 => I_CursorCnt_LineCnt(4),
      I3 => I_CursorCnt_LineCnt(3),
      LO => N37
    );
  I_CursorCnt_LineCnt_mux0001_2_179 : LUT4_D
    generic map(
      INIT => X"FAEA"
    )
    port map (
      I0 => Goto00,
      I1 => I_CursorCnt_LastLine524_70,
      I2 => I_CursorCnt_LineCnt_mux0001_2_150_83,
      I3 => I_CursorCnt_LastLine580_73,
      LO => N63,
      O => I_CursorCnt_N6
    );
  XLXI_115_XLXI_155_iPixOut11 : LUT4_L
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => XLXI_115_XLXI_155_Mrom_iPixOut_rom00004_f6_450,
      I1 => XLXI_115_XLXI_155_cntLine(0),
      I2 => XLXI_115_XLXI_155_cntLine(2),
      I3 => XLXI_115_XLXI_155_cntLine(1),
      LO => XLXI_115_XLXI_155_iPixOut11_478
    );
  I_CursorCnt_LastLine580_SW0 : LUT3_L
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => I_CursorCnt_LineCnt(1),
      I1 => I_CursorCnt_ScrollBase(1),
      I2 => I_CursorCnt_N5,
      LO => N44
    );
  XLXI_115_XLXI_155_ActiveX_and0000_SW1 : LUT4_L
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => XLXI_115_XLXI_155_prevDetectY_481,
      I1 => XLXI_115_XLXI_155_ActiveX_and0000117_419,
      I2 => XLXI_115_XLXI_155_ActiveX_and00001120_418,
      I3 => XLXI_115_XLXI_155_cntLine(2),
      LO => N48
    );
  I_CursorCnt_ColCnt_or0000_SW1 : LUT4_L
    generic map(
      INIT => X"FAFE"
    )
    port map (
      I0 => NewLine,
      I1 => Char_WE,
      I2 => Home,
      I3 => I_CursorCnt_N7,
      LO => N54
    );
  XLXI_115_XLXI_150_Mshreg_O : SRL16
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => XLXN_898,
      A1 => XLXN_898,
      A2 => XLXN_898,
      A3 => XLXN_898,
      CLK => Clk_50MHz,
      D => I_ModeCtrl_cntX(3),
      Q => XLXI_115_XLXI_150_Mshreg_O_337
    );
  XLXI_115_XLXI_150_O : FD
    port map (
      C => Clk_50MHz,
      D => XLXI_115_XLXI_150_Mshreg_O_337,
      Q => XLXI_115_XLXI_150_O_338
    );
  XLXI_115_XLXI_148_Mshreg_O : SRL16
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => XLXN_898,
      A1 => XLXN_898,
      A2 => XLXN_898,
      A3 => XLXN_898,
      CLK => Clk_50MHz,
      D => I_ModeCtrl_cntX(1),
      Q => XLXI_115_XLXI_148_Mshreg_O_333
    );
  XLXI_115_XLXI_148_O : FD
    port map (
      C => Clk_50MHz,
      D => XLXI_115_XLXI_148_Mshreg_O_333,
      Q => XLXI_115_XLXI_148_O_334
    );
  XLXI_115_XLXI_149_Mshreg_O : SRL16
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => XLXN_898,
      A1 => XLXN_898,
      A2 => XLXN_898,
      A3 => XLXN_898,
      CLK => Clk_50MHz,
      D => I_ModeCtrl_cntX(2),
      Q => XLXI_115_XLXI_149_Mshreg_O_335
    );
  XLXI_115_XLXI_149_O : FD
    port map (
      C => Clk_50MHz,
      D => XLXI_115_XLXI_149_Mshreg_O_335,
      Q => XLXI_115_XLXI_149_O_336
    );
  XLXI_115_XLXI_1_I_O : MUXF6
    port map (
      I0 => XLXI_115_XLXI_1_M03,
      I1 => XLXI_115_XLXI_1_M47,
      S => XLXI_115_XLXI_150_O_338,
      O => XLXI_115_XLXN_724
    );
  XLXI_115_XLXI_1_I_M47 : MUXF5_L
    port map (
      I0 => XLXI_115_XLXI_1_M45,
      I1 => XLXI_115_XLXI_1_M67,
      S => XLXI_115_XLXI_149_O_336,
      LO => XLXI_115_XLXI_1_M47
    );
  XLXI_115_XLXI_1_I_M03 : MUXF5_L
    port map (
      I0 => XLXI_115_XLXI_1_M01,
      I1 => XLXI_115_XLXI_1_M23,
      S => XLXI_115_XLXI_149_O_336,
      LO => XLXI_115_XLXI_1_M03
    );
  XLXI_115_XLXI_1_I_M67_I_36_38 : OR2
    port map (
      I0 => XLXI_115_XLXI_1_I_M67_M1,
      I1 => XLXI_115_XLXI_1_I_M67_M0,
      O => XLXI_115_XLXI_1_M67
    );
  XLXI_115_XLXI_1_I_M67_I_36_31 : AND3B1
    port map (
      I0 => XLXI_115_XLXI_148_O_334,
      I1 => XLXN_687,
      I2 => XLXN_899(1),
      O => XLXI_115_XLXI_1_I_M67_M0
    );
  XLXI_115_XLXI_1_I_M67_I_36_30 : AND3
    port map (
      I0 => XLXN_899(0),
      I1 => XLXN_687,
      I2 => XLXI_115_XLXI_148_O_334,
      O => XLXI_115_XLXI_1_I_M67_M1
    );
  XLXI_115_XLXI_1_I_M45_I_36_38 : OR2
    port map (
      I0 => XLXI_115_XLXI_1_I_M45_M1,
      I1 => XLXI_115_XLXI_1_I_M45_M0,
      O => XLXI_115_XLXI_1_M45
    );
  XLXI_115_XLXI_1_I_M45_I_36_31 : AND3B1
    port map (
      I0 => XLXI_115_XLXI_148_O_334,
      I1 => XLXN_687,
      I2 => XLXN_899(3),
      O => XLXI_115_XLXI_1_I_M45_M0
    );
  XLXI_115_XLXI_1_I_M45_I_36_30 : AND3
    port map (
      I0 => XLXN_899(2),
      I1 => XLXN_687,
      I2 => XLXI_115_XLXI_148_O_334,
      O => XLXI_115_XLXI_1_I_M45_M1
    );
  XLXI_115_XLXI_1_I_M23_I_36_38 : OR2
    port map (
      I0 => XLXI_115_XLXI_1_I_M23_M1,
      I1 => XLXI_115_XLXI_1_I_M23_M0,
      O => XLXI_115_XLXI_1_M23
    );
  XLXI_115_XLXI_1_I_M23_I_36_31 : AND3B1
    port map (
      I0 => XLXI_115_XLXI_148_O_334,
      I1 => XLXN_687,
      I2 => XLXN_899(5),
      O => XLXI_115_XLXI_1_I_M23_M0
    );
  XLXI_115_XLXI_1_I_M23_I_36_30 : AND3
    port map (
      I0 => XLXN_899(4),
      I1 => XLXN_687,
      I2 => XLXI_115_XLXI_148_O_334,
      O => XLXI_115_XLXI_1_I_M23_M1
    );
  XLXI_115_XLXI_1_I_M01_I_36_38 : OR2
    port map (
      I0 => XLXI_115_XLXI_1_I_M01_M1,
      I1 => XLXI_115_XLXI_1_I_M01_M0,
      O => XLXI_115_XLXI_1_M01
    );
  XLXI_115_XLXI_1_I_M01_I_36_31 : AND3B1
    port map (
      I0 => XLXI_115_XLXI_148_O_334,
      I1 => XLXN_687,
      I2 => XLXN_899(7),
      O => XLXI_115_XLXI_1_I_M01_M0
    );
  XLXI_115_XLXI_1_I_M01_I_36_30 : AND3
    port map (
      I0 => XLXN_899(6),
      I1 => XLXN_687,
      I2 => XLXI_115_XLXI_148_O_334,
      O => XLXI_115_XLXI_1_I_M01_M1
    );

end STRUCTURE;

