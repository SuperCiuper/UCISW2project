<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_8" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_20" />
        <signal name="XLXN_27" />
        <signal name="XLXN_1" />
        <signal name="XLXN_2(3:0)" />
        <signal name="XLXN_3(3:0)" />
        <signal name="XLXN_4(11:0)" />
        <signal name="XLXN_45" />
        <signal name="Clk" />
        <signal name="Note(3:0)" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_MISO" />
        <signal name="SPI_SCK" />
        <signal name="DAS_CS" />
        <signal name="DAC_CLR" />
        <signal name="SPI_SS_B" />
        <signal name="AMP_CS" />
        <signal name="AD_CONV" />
        <signal name="SF_CE0" />
        <signal name="FPGA_INIT_B" />
        <signal name="XLXN_40" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="Note(3:0)" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Output" name="SPI_MISO" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="DAS_CS" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="SF_CE0" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <blockdef name="DACWrite">
            <timestamp>2022-3-16T10:37:55</timestamp>
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="384" y1="-480" y2="-480" x1="448" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="320" x="64" y="-576" height="760" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
        </blockdef>
        <blockdef name="frequencyGenerator">
            <timestamp>2022-3-16T10:40:42</timestamp>
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
        <block symbolname="DACWrite" name="XLXI_1">
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_1" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_2(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_4(11:0)" name="DATA(11:0)" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="DAS_CS" name="DAC_CS" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin signalname="XLXN_40" name="Busy" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="Clk" name="Clk_Sys" />
        </block>
        <block symbolname="frequencyGenerator" name="XLXI_2">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="Note(3:0)" name="Note(3:0)" />
            <blockpin signalname="XLXN_1" name="Start" />
            <blockpin signalname="XLXN_2(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_4(11:0)" name="DATA(11:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1216" y="1232" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1056" y1="688" y2="688" x1="1040" />
            <wire x2="1216" y1="688" y2="688" x1="1056" />
        </branch>
        <branch name="XLXN_2(3:0)">
            <wire x2="1056" y1="752" y2="752" x1="1040" />
            <wire x2="1216" y1="752" y2="752" x1="1056" />
        </branch>
        <branch name="XLXN_3(3:0)">
            <wire x2="1056" y1="816" y2="816" x1="1040" />
            <wire x2="1216" y1="816" y2="816" x1="1056" />
        </branch>
        <branch name="XLXN_4(11:0)">
            <wire x2="1056" y1="880" y2="880" x1="1040" />
            <wire x2="1216" y1="880" y2="880" x1="1056" />
        </branch>
        <instance x="656" y="912" name="XLXI_2" orien="R0">
        </instance>
        <branch name="Clk">
            <wire x2="528" y1="688" y2="688" x1="480" />
            <wire x2="528" y1="688" y2="1392" x1="528" />
            <wire x2="1136" y1="1392" y2="1392" x1="528" />
            <wire x2="1216" y1="1392" y2="1392" x1="1136" />
            <wire x2="656" y1="688" y2="688" x1="528" />
            <wire x2="1216" y1="1328" y2="1328" x1="1136" />
            <wire x2="1136" y1="1328" y2="1392" x1="1136" />
        </branch>
        <branch name="Note(3:0)">
            <wire x2="640" y1="880" y2="880" x1="480" />
            <wire x2="656" y1="880" y2="880" x1="640" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="1680" y1="688" y2="688" x1="1664" />
            <wire x2="1696" y1="688" y2="688" x1="1680" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="1680" y1="752" y2="752" x1="1664" />
            <wire x2="1696" y1="752" y2="752" x1="1680" />
        </branch>
        <branch name="SPI_SCK">
            <wire x2="1680" y1="816" y2="816" x1="1664" />
            <wire x2="1696" y1="816" y2="816" x1="1680" />
        </branch>
        <branch name="DAS_CS">
            <wire x2="1680" y1="880" y2="880" x1="1664" />
            <wire x2="1696" y1="880" y2="880" x1="1680" />
        </branch>
        <branch name="DAC_CLR">
            <wire x2="1680" y1="944" y2="944" x1="1664" />
            <wire x2="1696" y1="944" y2="944" x1="1680" />
        </branch>
        <branch name="SPI_SS_B">
            <wire x2="1680" y1="1008" y2="1008" x1="1664" />
            <wire x2="1696" y1="1008" y2="1008" x1="1680" />
        </branch>
        <branch name="AMP_CS">
            <wire x2="1680" y1="1072" y2="1072" x1="1664" />
            <wire x2="1696" y1="1072" y2="1072" x1="1680" />
        </branch>
        <branch name="AD_CONV">
            <wire x2="1680" y1="1136" y2="1136" x1="1664" />
            <wire x2="1696" y1="1136" y2="1136" x1="1680" />
        </branch>
        <branch name="SF_CE0">
            <wire x2="1680" y1="1200" y2="1200" x1="1664" />
            <wire x2="1696" y1="1200" y2="1200" x1="1680" />
        </branch>
        <branch name="FPGA_INIT_B">
            <wire x2="1680" y1="1264" y2="1264" x1="1664" />
            <wire x2="1696" y1="1264" y2="1264" x1="1680" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="1680" y1="1328" y2="1328" x1="1664" />
            <wire x2="1696" y1="1328" y2="1328" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="480" y="688" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="480" y="880" name="Note(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1696" y="688" name="SPI_MOSI" orien="R0" />
        <iomarker fontsize="28" x="1696" y="816" name="SPI_SCK" orien="R0" />
        <iomarker fontsize="28" x="1696" y="880" name="DAS_CS" orien="R0" />
        <iomarker fontsize="28" x="1696" y="944" name="DAC_CLR" orien="R0" />
        <iomarker fontsize="28" x="1696" y="1008" name="SPI_SS_B" orien="R0" />
        <iomarker fontsize="28" x="1696" y="1072" name="AMP_CS" orien="R0" />
        <iomarker fontsize="28" x="1696" y="1136" name="AD_CONV" orien="R0" />
        <iomarker fontsize="28" x="1696" y="1200" name="SF_CE0" orien="R0" />
        <iomarker fontsize="28" x="1696" y="1264" name="FPGA_INIT_B" orien="R0" />
        <iomarker fontsize="28" x="1696" y="752" name="SPI_MISO" orien="R0" />
    </sheet>
</drawing>