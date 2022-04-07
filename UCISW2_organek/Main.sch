<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2(3:0)" />
        <signal name="XLXN_3(3:0)" />
        <signal name="XLXN_4(11:0)" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_MISO" />
        <signal name="SPI_SCK" />
        <signal name="DAC_CS" />
        <signal name="DAC_CLR" />
        <signal name="SPI_SS_B" />
        <signal name="AMP_CS" />
        <signal name="AD_CONV" />
        <signal name="SF_CE0" />
        <signal name="FPGA_INIT_B" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41(7:0)" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47(3:0)" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="Clk" />
        <signal name="PS2_Data" />
        <signal name="PS2_Clk" />
        <signal name="XLXN_60(7:0)" />
        <signal name="XLXN_61" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Output" name="SPI_MISO" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="SF_CE0" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="PS2_Clk" />
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
        <blockdef name="PS2_Kbd">
            <timestamp>2022-4-7T14:44:11</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="PS2ToNote">
            <timestamp>2022-4-7T15:38:29</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <block symbolname="DACWrite" name="XLXI_1">
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_1" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_2(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_4(11:0)" name="DATA(11:0)" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
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
            <blockpin signalname="XLXN_47(3:0)" name="Note(3:0)" />
            <blockpin signalname="XLXN_1" name="Start" />
            <blockpin signalname="XLXN_2(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_4(11:0)" name="DATA(11:0)" />
        </block>
        <block symbolname="PS2ToNote" name="XLXI_4">
            <blockpin signalname="XLXN_42" name="DO_Rdy" />
            <blockpin signalname="XLXN_43" name="E0" />
            <blockpin signalname="XLXN_44" name="F0" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_41(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_47(3:0)" name="Note(3:0)" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_3">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="XLXN_43" name="E0" />
            <blockpin signalname="XLXN_44" name="F0" />
            <blockpin signalname="XLXN_42" name="DO_Rdy" />
            <blockpin signalname="XLXN_41(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk" name="Clk_Sys" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2144" y="1472" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="2144" y1="928" y2="928" x1="1968" />
        </branch>
        <branch name="XLXN_2(3:0)">
            <wire x2="2144" y1="992" y2="992" x1="1968" />
        </branch>
        <branch name="XLXN_3(3:0)">
            <wire x2="2144" y1="1056" y2="1056" x1="1968" />
        </branch>
        <branch name="XLXN_4(11:0)">
            <wire x2="2144" y1="1120" y2="1120" x1="1968" />
        </branch>
        <instance x="1584" y="1152" name="XLXI_2" orien="R0">
        </instance>
        <branch name="SPI_MOSI">
            <wire x2="2624" y1="928" y2="928" x1="2592" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="2624" y1="992" y2="992" x1="2592" />
        </branch>
        <branch name="SPI_SCK">
            <wire x2="2624" y1="1056" y2="1056" x1="2592" />
        </branch>
        <branch name="DAC_CS">
            <wire x2="2624" y1="1120" y2="1120" x1="2592" />
        </branch>
        <branch name="DAC_CLR">
            <wire x2="2624" y1="1184" y2="1184" x1="2592" />
        </branch>
        <branch name="SPI_SS_B">
            <wire x2="2624" y1="1248" y2="1248" x1="2592" />
        </branch>
        <branch name="AMP_CS">
            <wire x2="2624" y1="1312" y2="1312" x1="2592" />
        </branch>
        <branch name="AD_CONV">
            <wire x2="2624" y1="1376" y2="1376" x1="2592" />
        </branch>
        <branch name="SF_CE0">
            <wire x2="2624" y1="1440" y2="1440" x1="2592" />
        </branch>
        <branch name="FPGA_INIT_B">
            <wire x2="2624" y1="1504" y2="1504" x1="2592" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="2624" y1="1568" y2="1568" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2624" y="928" name="SPI_MOSI" orien="R0" />
        <iomarker fontsize="28" x="2624" y="1056" name="SPI_SCK" orien="R0" />
        <iomarker fontsize="28" x="2624" y="1184" name="DAC_CLR" orien="R0" />
        <iomarker fontsize="28" x="2624" y="1248" name="SPI_SS_B" orien="R0" />
        <iomarker fontsize="28" x="2624" y="1312" name="AMP_CS" orien="R0" />
        <iomarker fontsize="28" x="2624" y="1376" name="AD_CONV" orien="R0" />
        <iomarker fontsize="28" x="2624" y="1440" name="SF_CE0" orien="R0" />
        <iomarker fontsize="28" x="2624" y="1504" name="FPGA_INIT_B" orien="R0" />
        <iomarker fontsize="28" x="2624" y="992" name="SPI_MISO" orien="R0" />
        <iomarker fontsize="28" x="2624" y="1120" name="DAC_CS" orien="R0" />
        <branch name="XLXN_41(7:0)">
            <wire x2="736" y1="1120" y2="1120" x1="608" />
            <wire x2="736" y1="1120" y2="1376" x1="736" />
            <wire x2="1024" y1="1376" y2="1376" x1="736" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="1024" y1="1184" y2="1184" x1="608" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="1024" y1="1248" y2="1248" x1="608" />
        </branch>
        <branch name="XLXN_47(3:0)">
            <wire x2="1584" y1="1120" y2="1120" x1="1408" />
        </branch>
        <branch name="Clk">
            <wire x2="160" y1="1312" y2="1312" x1="112" />
            <wire x2="160" y1="1312" y2="1520" x1="160" />
            <wire x2="912" y1="1520" y2="1520" x1="160" />
            <wire x2="224" y1="1312" y2="1312" x1="160" />
            <wire x2="224" y1="1248" y2="1248" x1="160" />
            <wire x2="160" y1="1248" y2="1312" x1="160" />
            <wire x2="1456" y1="992" y2="992" x1="912" />
            <wire x2="1456" y1="992" y2="1632" x1="1456" />
            <wire x2="2064" y1="1632" y2="1632" x1="1456" />
            <wire x2="2144" y1="1632" y2="1632" x1="2064" />
            <wire x2="912" y1="992" y2="1024" x1="912" />
            <wire x2="912" y1="1024" y2="1312" x1="912" />
            <wire x2="1024" y1="1312" y2="1312" x1="912" />
            <wire x2="912" y1="1024" y2="1520" x1="912" />
            <wire x2="1584" y1="928" y2="928" x1="1456" />
            <wire x2="1456" y1="928" y2="992" x1="1456" />
            <wire x2="2064" y1="1568" y2="1632" x1="2064" />
            <wire x2="2144" y1="1568" y2="1568" x1="2064" />
        </branch>
        <instance x="1024" y="1408" name="XLXI_4" orien="R0">
        </instance>
        <instance x="224" y="1344" name="XLXI_3" orien="R0">
        </instance>
        <branch name="PS2_Data">
            <wire x2="224" y1="1184" y2="1184" x1="192" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="224" y1="1120" y2="1120" x1="192" />
        </branch>
        <iomarker fontsize="28" x="112" y="1312" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="192" y="1184" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="192" y="1120" name="PS2_Clk" orien="R180" />
        <branch name="XLXN_42">
            <wire x2="800" y1="1312" y2="1312" x1="608" />
            <wire x2="800" y1="1120" y2="1312" x1="800" />
            <wire x2="1008" y1="1120" y2="1120" x1="800" />
            <wire x2="1024" y1="1120" y2="1120" x1="1008" />
        </branch>
    </sheet>
</drawing>