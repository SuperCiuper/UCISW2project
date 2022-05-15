<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Start" />
        <signal name="Cmd(3:0)" />
        <signal name="Addr(3:0)" />
        <signal name="DATA(11:0)" />
        <signal name="XLXN_47(7:0)" />
        <signal name="Clk" />
        <signal name="DO_Rdy" />
        <signal name="DO(7:0)" />
        <signal name="F0" />
        <signal name="E0" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52(7:0)" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_49" />
        <signal name="XLXN_67" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="Busy" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="XLXN_72" />
        <port polarity="Output" name="Start" />
        <port polarity="Output" name="Cmd(3:0)" />
        <port polarity="Output" name="Addr(3:0)" />
        <port polarity="Output" name="DATA(11:0)" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="DO_Rdy" />
        <port polarity="Input" name="DO(7:0)" />
        <port polarity="Input" name="F0" />
        <port polarity="Input" name="E0" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <blockdef name="frequencyGenerator">
            <timestamp>2022-5-11T10:55:3</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="PS2ToNote">
            <timestamp>2022-5-4T6:0:16</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
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
        <block symbolname="frequencyGenerator" name="XLXI_2">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_47(7:0)" name="Note(7:0)" />
            <blockpin signalname="Start" name="Start" />
            <blockpin signalname="Cmd(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="Addr(3:0)" name="Addr(3:0)" />
            <blockpin signalname="DATA(11:0)" name="DATA(11:0)" />
        </block>
        <block symbolname="PS2ToNote" name="XLXI_3">
            <blockpin signalname="DO_Rdy" name="DO_Rdy" />
            <blockpin signalname="E0" name="E0" />
            <blockpin signalname="F0" name="F0" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="DO(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_49" name="Note_Rdy" />
            <blockpin signalname="XLXN_47(7:0)" name="Note(7:0)" />
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
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="XLXN_72" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="XLXN_72" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="XLXN_72" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Start">
            <wire x2="2016" y1="624" y2="624" x1="2000" />
            <wire x2="2176" y1="624" y2="624" x1="2016" />
        </branch>
        <branch name="Cmd(3:0)">
            <wire x2="2016" y1="688" y2="688" x1="2000" />
            <wire x2="2176" y1="688" y2="688" x1="2016" />
        </branch>
        <branch name="Addr(3:0)">
            <wire x2="2016" y1="752" y2="752" x1="2000" />
            <wire x2="2176" y1="752" y2="752" x1="2016" />
        </branch>
        <branch name="DATA(11:0)">
            <wire x2="2016" y1="816" y2="816" x1="2000" />
            <wire x2="2176" y1="816" y2="816" x1="2016" />
        </branch>
        <instance x="1616" y="848" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_47(7:0)">
            <wire x2="1520" y1="816" y2="816" x1="1440" />
            <wire x2="1616" y1="816" y2="816" x1="1520" />
            <wire x2="1520" y1="816" y2="2000" x1="1520" />
            <wire x2="1600" y1="2000" y2="2000" x1="1520" />
        </branch>
        <branch name="Clk">
            <wire x2="192" y1="1008" y2="1008" x1="144" />
            <wire x2="192" y1="1008" y2="1216" x1="192" />
            <wire x2="944" y1="1216" y2="1216" x1="192" />
            <wire x2="944" y1="1216" y2="1552" x1="944" />
            <wire x2="1600" y1="1552" y2="1552" x1="944" />
            <wire x2="944" y1="1552" y2="2064" x1="944" />
            <wire x2="2048" y1="2064" y2="2064" x1="944" />
            <wire x2="2176" y1="2064" y2="2064" x1="2048" />
            <wire x2="2048" y1="2064" y2="2128" x1="2048" />
            <wire x2="2176" y1="2128" y2="2128" x1="2048" />
            <wire x2="1488" y1="688" y2="688" x1="944" />
            <wire x2="944" y1="688" y2="720" x1="944" />
            <wire x2="944" y1="720" y2="1008" x1="944" />
            <wire x2="1056" y1="1008" y2="1008" x1="944" />
            <wire x2="944" y1="1008" y2="1216" x1="944" />
            <wire x2="1616" y1="624" y2="624" x1="1488" />
            <wire x2="1488" y1="624" y2="688" x1="1488" />
        </branch>
        <instance x="1056" y="1104" name="XLXI_3" orien="R0">
        </instance>
        <branch name="DO_Rdy">
            <wire x2="832" y1="1008" y2="1008" x1="640" />
            <wire x2="832" y1="816" y2="1008" x1="832" />
            <wire x2="1056" y1="816" y2="816" x1="832" />
        </branch>
        <branch name="DO(7:0)">
            <wire x2="1056" y1="1072" y2="1072" x1="768" />
        </branch>
        <branch name="F0">
            <wire x2="1056" y1="944" y2="944" x1="640" />
        </branch>
        <branch name="E0">
            <wire x2="1056" y1="880" y2="880" x1="640" />
        </branch>
        <instance x="2176" y="2064" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_51">
            <wire x2="2160" y1="1552" y2="1552" x1="1984" />
            <wire x2="2176" y1="1520" y2="1520" x1="2160" />
            <wire x2="2160" y1="1520" y2="1552" x1="2160" />
        </branch>
        <branch name="XLXN_52(7:0)">
            <wire x2="2064" y1="2000" y2="2000" x1="1984" />
            <wire x2="2064" y1="1456" y2="2000" x1="2064" />
            <wire x2="2176" y1="1456" y2="1456" x1="2064" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="2176" y1="1616" y2="1616" x1="1984" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="2176" y1="1680" y2="1680" x1="1984" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="2176" y1="1744" y2="1744" x1="1984" />
        </branch>
        <branch name="XLXN_56">
            <wire x2="2160" y1="1808" y2="1808" x1="1984" />
            <wire x2="2160" y1="1808" y2="1840" x1="2160" />
            <wire x2="2176" y1="1840" y2="1840" x1="2160" />
        </branch>
        <branch name="XLXN_57">
            <wire x2="2160" y1="1872" y2="1872" x1="1984" />
            <wire x2="2160" y1="1872" y2="1904" x1="2160" />
            <wire x2="2176" y1="1904" y2="1904" x1="2160" />
        </branch>
        <instance x="1600" y="2032" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_49">
            <wire x2="1456" y1="1136" y2="1136" x1="1440" />
            <wire x2="1456" y1="1136" y2="1776" x1="1456" />
            <wire x2="1600" y1="1776" y2="1776" x1="1456" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="2080" y1="1936" y2="1936" x1="1984" />
            <wire x2="2080" y1="1936" y2="1968" x1="2080" />
            <wire x2="2176" y1="1968" y2="1968" x1="2080" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2640" y1="1456" y2="1456" x1="2608" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="2640" y1="1520" y2="1520" x1="2608" />
        </branch>
        <branch name="Busy">
            <wire x2="2640" y1="1712" y2="1712" x1="2608" />
        </branch>
        <instance x="2800" y="1776" name="XLXI_7" orien="R0" />
        <instance x="2800" y="1888" name="XLXI_8" orien="R0" />
        <branch name="VGA_R">
            <wire x2="3056" y1="1616" y2="1616" x1="3024" />
        </branch>
        <branch name="VGA_G">
            <wire x2="3056" y1="1744" y2="1744" x1="3024" />
        </branch>
        <branch name="VGA_B">
            <wire x2="3056" y1="1856" y2="1856" x1="3024" />
        </branch>
        <instance x="2800" y="1648" name="XLXI_9" orien="R0" />
        <branch name="XLXN_72">
            <wire x2="2704" y1="1584" y2="1584" x1="2608" />
            <wire x2="2704" y1="1584" y2="1616" x1="2704" />
            <wire x2="2752" y1="1616" y2="1616" x1="2704" />
            <wire x2="2800" y1="1616" y2="1616" x1="2752" />
            <wire x2="2752" y1="1616" y2="1744" x1="2752" />
            <wire x2="2800" y1="1744" y2="1744" x1="2752" />
            <wire x2="2752" y1="1744" y2="1856" x1="2752" />
            <wire x2="2800" y1="1856" y2="1856" x1="2752" />
        </branch>
        <iomarker fontsize="28" x="2640" y="1456" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="2640" y="1520" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="3056" y="1616" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="3056" y="1744" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="3056" y="1856" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="640" y="880" name="E0" orien="R180" />
        <iomarker fontsize="28" x="640" y="944" name="F0" orien="R180" />
        <iomarker fontsize="28" x="640" y="1008" name="DO_Rdy" orien="R180" />
        <iomarker fontsize="28" x="768" y="1072" name="DO(7:0)" orien="R180" />
        <iomarker fontsize="28" x="144" y="1008" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="2176" y="624" name="Start" orien="R0" />
        <iomarker fontsize="28" x="2176" y="688" name="Cmd(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2176" y="752" name="Addr(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2176" y="816" name="DATA(11:0)" orien="R0" />
    </sheet>
</drawing>