<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="rst" />
        <signal name="Start" />
        <signal name="XLXN_4(63:0)" />
        <signal name="flash" />
        <signal name="Hexs(31:0)" />
        <signal name="point(7:0)" />
        <signal name="LES(7:0)" />
        <signal name="seg_clk" />
        <signal name="seg_sout" />
        <signal name="SEG_PEN" />
        <signal name="seg_clrn" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="Start" />
        <port polarity="Input" name="flash" />
        <port polarity="Input" name="Hexs(31:0)" />
        <port polarity="Input" name="point(7:0)" />
        <port polarity="Input" name="LES(7:0)" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Output" name="seg_sout" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="seg_clrn" />
        <blockdef name="HexTo8SEG">
            <timestamp>2019-10-17T7:10:38</timestamp>
            <rect width="224" x="32" y="-212" height="212" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-128" y2="-128" style="linewidth:W" x1="32" />
            <line x2="288" y1="-160" y2="-160" style="linewidth:W" x1="256" />
            <line x2="32" y1="-176" y2="-176" x1="0" />
        </blockdef>
        <blockdef name="P2S">
            <timestamp>2019-10-17T7:10:38</timestamp>
            <rect width="208" x="16" y="-212" height="212" />
            <line x2="224" y1="-32" y2="-32" x1="240" />
            <line x2="224" y1="-128" y2="-128" x1="240" />
            <line x2="0" y1="-128" y2="-128" x1="16" />
            <line x2="0" y1="-80" y2="-80" x1="16" />
            <line x2="224" y1="-80" y2="-80" x1="240" />
            <line x2="0" y1="-176" y2="-176" x1="16" />
            <line x2="224" y1="-176" y2="-176" x1="240" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="16" />
        </blockdef>
        <block symbolname="HexTo8SEG" name="M2">
            <blockpin signalname="LES(7:0)" name="LES(7:0)" />
            <blockpin signalname="point(7:0)" name="points(7:0)" />
            <blockpin signalname="Hexs(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="XLXN_4(63:0)" name="SEG_TXT(63:0)" />
            <blockpin signalname="flash" name="flash" />
        </block>
        <block symbolname="P2S" name="M4">
            <blockpin signalname="seg_clrn" name="s_clrn" />
            <blockpin signalname="seg_sout" name="sout" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SEG_PEN" name="EN" />
            <blockpin signalname="Start" name="Serial" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="seg_clk" name="s_clk" />
            <blockpin signalname="XLXN_4(63:0)" name="P_Data(63:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="928" y="1360" name="M2" orien="R0">
        </instance>
        <instance x="1344" y="1024" name="M4" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="1344" y1="848" y2="848" x1="544" />
        </branch>
        <branch name="rst">
            <wire x2="1344" y1="896" y2="896" x1="544" />
        </branch>
        <branch name="Start">
            <wire x2="1344" y1="944" y2="944" x1="544" />
        </branch>
        <branch name="XLXN_4(63:0)">
            <wire x2="1280" y1="1200" y2="1200" x1="1216" />
            <wire x2="1280" y1="992" y2="1200" x1="1280" />
            <wire x2="1344" y1="992" y2="992" x1="1280" />
        </branch>
        <branch name="flash">
            <wire x2="928" y1="1184" y2="1184" x1="560" />
        </branch>
        <branch name="Hexs(31:0)">
            <wire x2="928" y1="1232" y2="1232" x1="560" />
        </branch>
        <branch name="point(7:0)">
            <wire x2="928" y1="1280" y2="1280" x1="560" />
        </branch>
        <branch name="LES(7:0)">
            <wire x2="928" y1="1328" y2="1328" x1="560" />
        </branch>
        <branch name="seg_clk">
            <wire x2="1808" y1="848" y2="848" x1="1584" />
        </branch>
        <branch name="seg_sout">
            <wire x2="1824" y1="896" y2="896" x1="1584" />
        </branch>
        <branch name="SEG_PEN">
            <wire x2="1840" y1="944" y2="944" x1="1584" />
        </branch>
        <branch name="seg_clrn">
            <wire x2="1840" y1="992" y2="992" x1="1584" />
        </branch>
        <iomarker fontsize="52" x="544" y="848" name="clk" orien="R180" />
        <iomarker fontsize="52" x="544" y="896" name="rst" orien="R180" />
        <iomarker fontsize="52" x="544" y="944" name="Start" orien="R180" />
        <iomarker fontsize="52" x="560" y="1184" name="flash" orien="R180" />
        <iomarker fontsize="52" x="560" y="1232" name="Hexs(31:0)" orien="R180" />
        <iomarker fontsize="52" x="560" y="1280" name="point(7:0)" orien="R180" />
        <iomarker fontsize="52" x="560" y="1328" name="LES(7:0)" orien="R180" />
        <iomarker fontsize="52" x="1808" y="848" name="seg_clk" orien="R0" />
        <iomarker fontsize="48" x="1824" y="896" name="seg_sout" orien="R0" />
        <iomarker fontsize="56" x="1840" y="992" name="seg_clrn" orien="R0" />
        <iomarker fontsize="48" x="1840" y="944" name="SEG_PEN" orien="R0" />
    </sheet>
</drawing>