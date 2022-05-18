<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_47(7:0)" />
        <signal name="XLXN_49" />
        <signal name="F0" />
        <signal name="E0" />
        <signal name="DO_Rdy" />
        <signal name="DO(7:0)" />
        <signal name="Clk" />
        <signal name="Start" />
        <signal name="Cmd(3:0)" />
        <signal name="Addr(3:0)" />
        <signal name="DATA(11:0)" />
        <signal name="XLXN_85" />
        <signal name="XLXN_101(7:0)" />
        <signal name="XLXN_102" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52(7:0)" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_67" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="Busy" />
        <signal name="XLXN_72" />
        <signal name="XLXN_118(7:0)" />
        <signal name="XLXN_119" />
        <signal name="XLXN_120" />
        <signal name="XLXN_121" />
        <signal name="XLXN_122" />
        <signal name="XLXN_127" />
        <signal name="XLXN_131" />
        <signal name="XLXN_135" />
        <signal name="XLXN_139" />
        <signal name="VGA_B" />
        <signal name="VGA_G" />
        <signal name="VGA_R" />
        <port polarity="Input" name="F0" />
        <port polarity="Input" name="E0" />
        <port polarity="Input" name="DO_Rdy" />
        <port polarity="Input" name="DO(7:0)" />
        <port polarity="Input" name="Clk" />
        <port polarity="Output" name="Start" />
        <port polarity="Output" name="Cmd(3:0)" />
        <port polarity="Output" name="Addr(3:0)" />
        <port polarity="Output" name="DATA(11:0)" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_R" />
        <blockdef name="VGAtxt48x20">
            <timestamp>2022-4-12T20:35:48</timestamp>
            <rect width="304" x="64" y="-640" height="728" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
        </blockdef>
        <blockdef name="imageGenerator">
            <timestamp>2022-5-12T14:41:50</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="PS2ToNote">
            <timestamp>2022-5-17T11:27:21</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="256" x="64" y="-320" height="384" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="frequencyGenerator">
            <timestamp>2022-5-17T11:31:7</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <block symbolname="PS2ToNote" name="XLXI_11">
            <blockpin signalname="DO_Rdy" name="DO_Rdy" />
            <blockpin signalname="E0" name="E0" />
            <blockpin signalname="F0" name="F0" />
            <blockpin signalname="XLXN_49" name="Note_Rdy" />
            <blockpin signalname="XLXN_47(7:0)" name="Note(7:0)" />
            <blockpin signalname="DO(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk" name="Clk" />
        </block>
        <block symbolname="frequencyGenerator" name="XLXI_12">
            <blockpin signalname="Start" name="Start" />
            <blockpin signalname="Cmd(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="Addr(3:0)" name="Addr(3:0)" />
            <blockpin signalname="DATA(11:0)" name="DATA(11:0)" />
            <blockpin signalname="XLXN_47(7:0)" name="Note(7:0)" />
            <blockpin signalname="Clk" name="Clk" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_5">
            <blockpin signalname="XLXN_52(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_53" name="Home" />
            <blockpin signalname="XLXN_54" name="NewLine" />
            <blockpin signalname="XLXN_55" name="Goto00" />
            <blockpin signalname="Clk" name="Clk_Sys" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="XLXN_56" name="CursorOn" />
            <blockpin signalname="XLXN_57" name="ScrollEn" />
            <blockpin signalname="XLXN_67" name="ScrollClear" />
            <blockpin signalname="Busy" name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_72" name="VGA_RGB" />
            <blockpin signalname="XLXN_51" name="Char_WE" />
        </block>
        <block symbolname="imageGenerator" name="XLXI_6">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_49" name="Note_Rdy" />
            <blockpin signalname="XLXN_47(7:0)" name="Note(7:0)" />
            <blockpin signalname="XLXN_51" name="Char_WE" />
            <blockpin signalname="XLXN_53" name="Home" />
            <blockpin signalname="XLXN_54" name="NewLine" />
            <blockpin signalname="XLXN_55" name="Goto00" />
            <blockpin signalname="XLXN_56" name="CursorOn" />
            <blockpin signalname="XLXN_57" name="ScrollEn" />
            <blockpin signalname="XLXN_67" name="ScrollClear" />
            <blockpin signalname="XLXN_52(7:0)" name="Char_DI(7:0)" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="XLXN_72" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="XLXN_72" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="XLXN_72" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_47(7:0)">
            <wire x2="960" y1="288" y2="288" x1="928" />
            <wire x2="1024" y1="288" y2="288" x1="960" />
            <wire x2="960" y1="288" y2="1184" x1="960" />
            <wire x2="1040" y1="1184" y2="1184" x1="960" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="928" y1="608" y2="960" x1="928" />
            <wire x2="1040" y1="960" y2="960" x1="928" />
        </branch>
        <branch name="F0">
            <wire x2="544" y1="416" y2="416" x1="480" />
        </branch>
        <branch name="E0">
            <wire x2="544" y1="352" y2="352" x1="480" />
        </branch>
        <branch name="DO_Rdy">
            <wire x2="544" y1="288" y2="288" x1="480" />
        </branch>
        <instance x="544" y="576" name="XLXI_11" orien="R0">
        </instance>
        <branch name="DO(7:0)">
            <wire x2="544" y1="480" y2="480" x1="480" />
        </branch>
        <branch name="Clk">
            <wire x2="512" y1="544" y2="544" x1="480" />
            <wire x2="512" y1="544" y2="736" x1="512" />
            <wire x2="992" y1="736" y2="736" x1="512" />
            <wire x2="1040" y1="736" y2="736" x1="992" />
            <wire x2="992" y1="736" y2="1280" x1="992" />
            <wire x2="1584" y1="1280" y2="1280" x1="992" />
            <wire x2="1584" y1="1280" y2="1312" x1="1584" />
            <wire x2="1616" y1="1312" y2="1312" x1="1584" />
            <wire x2="544" y1="544" y2="544" x1="512" />
            <wire x2="1024" y1="480" y2="480" x1="992" />
            <wire x2="992" y1="480" y2="736" x1="992" />
            <wire x2="1616" y1="1248" y2="1248" x1="1584" />
            <wire x2="1584" y1="1248" y2="1280" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="480" y="480" name="DO(7:0)" orien="R180" />
        <iomarker fontsize="28" x="480" y="416" name="F0" orien="R180" />
        <iomarker fontsize="28" x="480" y="352" name="E0" orien="R180" />
        <iomarker fontsize="28" x="480" y="288" name="DO_Rdy" orien="R180" />
        <instance x="1024" y="512" name="XLXI_12" orien="R0">
        </instance>
        <branch name="Start">
            <wire x2="1584" y1="288" y2="288" x1="1408" />
        </branch>
        <branch name="Cmd(3:0)">
            <wire x2="1584" y1="352" y2="352" x1="1408" />
        </branch>
        <branch name="Addr(3:0)">
            <wire x2="1584" y1="416" y2="416" x1="1408" />
        </branch>
        <branch name="DATA(11:0)">
            <wire x2="1584" y1="480" y2="480" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1584" y="288" name="Start" orien="R0" />
        <iomarker fontsize="28" x="1584" y="352" name="Cmd(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1584" y="416" name="Addr(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1584" y="480" name="DATA(11:0)" orien="R0" />
        <instance x="1616" y="1248" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_51">
            <wire x2="1600" y1="736" y2="736" x1="1424" />
            <wire x2="1616" y1="704" y2="704" x1="1600" />
            <wire x2="1600" y1="704" y2="736" x1="1600" />
        </branch>
        <branch name="XLXN_52(7:0)">
            <wire x2="1504" y1="1184" y2="1184" x1="1424" />
            <wire x2="1504" y1="640" y2="1184" x1="1504" />
            <wire x2="1616" y1="640" y2="640" x1="1504" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="1616" y1="800" y2="800" x1="1424" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="1616" y1="864" y2="864" x1="1424" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="1616" y1="928" y2="928" x1="1424" />
        </branch>
        <branch name="XLXN_56">
            <wire x2="1600" y1="992" y2="992" x1="1424" />
            <wire x2="1600" y1="992" y2="1024" x1="1600" />
            <wire x2="1616" y1="1024" y2="1024" x1="1600" />
        </branch>
        <branch name="XLXN_57">
            <wire x2="1600" y1="1056" y2="1056" x1="1424" />
            <wire x2="1600" y1="1056" y2="1088" x1="1600" />
            <wire x2="1616" y1="1088" y2="1088" x1="1600" />
        </branch>
        <instance x="1040" y="1216" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_67">
            <wire x2="1520" y1="1120" y2="1120" x1="1424" />
            <wire x2="1520" y1="1120" y2="1152" x1="1520" />
            <wire x2="1616" y1="1152" y2="1152" x1="1520" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2080" y1="640" y2="640" x1="2048" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="2080" y1="704" y2="704" x1="2048" />
        </branch>
        <branch name="Busy">
            <wire x2="2080" y1="896" y2="896" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2080" y="640" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="2080" y="704" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="480" y="544" name="Clk" orien="R180" />
        <branch name="XLXN_72">
            <wire x2="2064" y1="768" y2="768" x1="2048" />
            <wire x2="2112" y1="768" y2="768" x1="2064" />
            <wire x2="2112" y1="768" y2="896" x1="2112" />
            <wire x2="2112" y1="896" y2="1008" x1="2112" />
            <wire x2="2160" y1="1008" y2="1008" x1="2112" />
            <wire x2="2160" y1="896" y2="896" x1="2112" />
            <wire x2="2160" y1="768" y2="768" x1="2112" />
        </branch>
        <instance x="2160" y="800" name="XLXI_9" orien="R0" />
        <iomarker fontsize="28" x="2416" y="768" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="2416" y="1008" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="2416" y="896" name="VGA_G" orien="R0" />
        <instance x="2160" y="1040" name="XLXI_8" orien="R0" />
        <instance x="2160" y="928" name="XLXI_7" orien="R0" />
        <branch name="VGA_B">
            <wire x2="2416" y1="1008" y2="1008" x1="2384" />
        </branch>
        <branch name="VGA_G">
            <wire x2="2416" y1="896" y2="896" x1="2384" />
        </branch>
        <branch name="VGA_R">
            <wire x2="2400" y1="768" y2="768" x1="2384" />
            <wire x2="2416" y1="768" y2="768" x1="2400" />
        </branch>
    </sheet>
</drawing>