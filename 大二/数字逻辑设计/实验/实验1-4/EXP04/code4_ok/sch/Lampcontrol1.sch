<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_10" />
        <signal name="F" />
        <signal name="XLXN_15" />
        <signal name="S3NS1NS2" />
        <signal name="S2NS1NS3" />
        <signal name="S1S2S3" />
        <signal name="S1NS2NS3" />
        <signal name="NS1" />
        <signal name="S3" />
        <signal name="S2" />
        <signal name="XLXN_23" />
        <signal name="NS3" />
        <signal name="NS2" />
        <signal name="S1" />
        <port polarity="Output" name="F" />
        <port polarity="Input" name="S3" />
        <port polarity="Input" name="S2" />
        <port polarity="Input" name="S1" />
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="or4" name="OR4_1">
            <blockpin signalname="S1S2S3" name="I0" />
            <blockpin signalname="S3NS1NS2" name="I1" />
            <blockpin signalname="S2NS1NS3" name="I2" />
            <blockpin signalname="S1NS2NS3" name="I3" />
            <blockpin signalname="F" name="O" />
        </block>
        <block symbolname="inv" name="INV_3">
            <blockpin signalname="S3" name="I" />
            <blockpin signalname="NS3" name="O" />
        </block>
        <block symbolname="inv" name="INV_2">
            <blockpin signalname="S2" name="I" />
            <blockpin signalname="NS2" name="O" />
        </block>
        <block symbolname="inv" name="INV_1">
            <blockpin signalname="S1" name="I" />
            <blockpin signalname="NS1" name="O" />
        </block>
        <block symbolname="and3" name="AND3_3">
            <blockpin signalname="S3" name="I0" />
            <blockpin signalname="NS2" name="I1" />
            <blockpin signalname="NS1" name="I2" />
            <blockpin signalname="S3NS1NS2" name="O" />
        </block>
        <block symbolname="and3" name="AND3_4">
            <blockpin signalname="S1" name="I0" />
            <blockpin signalname="S2" name="I1" />
            <blockpin signalname="S3" name="I2" />
            <blockpin signalname="S1S2S3" name="O" />
        </block>
        <block symbolname="and3" name="AND3_2">
            <blockpin signalname="NS3" name="I0" />
            <blockpin signalname="S2" name="I1" />
            <blockpin signalname="NS1" name="I2" />
            <blockpin signalname="S2NS1NS3" name="O" />
        </block>
        <block symbolname="and3" name="AND3_1">
            <blockpin signalname="NS3" name="I0" />
            <blockpin signalname="NS2" name="I1" />
            <blockpin signalname="S1" name="I2" />
            <blockpin signalname="S1NS2NS3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2256" y="1312" name="OR4_1" orien="R0" />
        <instance x="992" y="1552" name="INV_3" orien="R0" />
        <instance x="992" y="1056" name="INV_2" orien="R0" />
        <instance x="992" y="560" name="INV_1" orien="R0" />
        <instance x="1744" y="1456" name="AND3_3" orien="R0" />
        <instance x="1760" y="1904" name="AND3_4" orien="R0" />
        <instance x="1728" y="1024" name="AND3_2" orien="R0" />
        <instance x="1712" y="592" name="AND3_1" orien="R0" />
        <branch name="F">
            <wire x2="2544" y1="1152" y2="1152" x1="2512" />
        </branch>
        <branch name="S3NS1NS2">
            <wire x2="2032" y1="1328" y2="1328" x1="2000" />
            <wire x2="2256" y1="1184" y2="1184" x1="2032" />
            <wire x2="2032" y1="1184" y2="1328" x1="2032" />
        </branch>
        <branch name="S2NS1NS3">
            <wire x2="2016" y1="896" y2="896" x1="1984" />
            <wire x2="2016" y1="896" y2="1120" x1="2016" />
            <wire x2="2256" y1="1120" y2="1120" x1="2016" />
        </branch>
        <branch name="S1S2S3">
            <wire x2="2256" y1="1776" y2="1776" x1="2016" />
            <wire x2="2256" y1="1248" y2="1776" x1="2256" />
        </branch>
        <branch name="S1NS2NS3">
            <wire x2="2256" y1="464" y2="464" x1="1968" />
            <wire x2="2256" y1="464" y2="1056" x1="2256" />
        </branch>
        <branch name="NS1">
            <wire x2="1472" y1="528" y2="528" x1="1216" />
            <wire x2="1472" y1="528" y2="832" x1="1472" />
            <wire x2="1728" y1="832" y2="832" x1="1472" />
            <wire x2="1472" y1="832" y2="1264" x1="1472" />
            <wire x2="1744" y1="1264" y2="1264" x1="1472" />
        </branch>
        <branch name="S3">
            <wire x2="976" y1="1520" y2="1520" x1="656" />
            <wire x2="992" y1="1520" y2="1520" x1="976" />
            <wire x2="976" y1="1520" y2="1712" x1="976" />
            <wire x2="1760" y1="1712" y2="1712" x1="976" />
            <wire x2="976" y1="1424" y2="1520" x1="976" />
            <wire x2="1744" y1="1424" y2="1424" x1="976" />
            <wire x2="1744" y1="1392" y2="1424" x1="1744" />
        </branch>
        <branch name="S2">
            <wire x2="896" y1="1024" y2="1024" x1="656" />
            <wire x2="992" y1="1024" y2="1024" x1="896" />
            <wire x2="896" y1="1024" y2="1776" x1="896" />
            <wire x2="1760" y1="1776" y2="1776" x1="896" />
            <wire x2="896" y1="896" y2="1024" x1="896" />
            <wire x2="1728" y1="896" y2="896" x1="896" />
        </branch>
        <branch name="NS3">
            <wire x2="1568" y1="1520" y2="1520" x1="1216" />
            <wire x2="1712" y1="528" y2="528" x1="1568" />
            <wire x2="1568" y1="528" y2="960" x1="1568" />
            <wire x2="1568" y1="960" y2="1520" x1="1568" />
            <wire x2="1728" y1="960" y2="960" x1="1568" />
        </branch>
        <branch name="NS2">
            <wire x2="1360" y1="1024" y2="1024" x1="1216" />
            <wire x2="1360" y1="1024" y2="1328" x1="1360" />
            <wire x2="1744" y1="1328" y2="1328" x1="1360" />
            <wire x2="1360" y1="464" y2="1024" x1="1360" />
            <wire x2="1712" y1="464" y2="464" x1="1360" />
        </branch>
        <branch name="S1">
            <wire x2="784" y1="528" y2="528" x1="624" />
            <wire x2="992" y1="528" y2="528" x1="784" />
            <wire x2="784" y1="528" y2="1840" x1="784" />
            <wire x2="1760" y1="1840" y2="1840" x1="784" />
            <wire x2="784" y1="400" y2="528" x1="784" />
            <wire x2="1712" y1="400" y2="400" x1="784" />
        </branch>
        <iomarker fontsize="28" x="656" y="1520" name="S3" orien="R180" />
        <iomarker fontsize="28" x="656" y="1024" name="S2" orien="R180" />
        <iomarker fontsize="28" x="624" y="528" name="S1" orien="R180" />
        <iomarker fontsize="28" x="2544" y="1152" name="F" orien="R0" />
    </sheet>
</drawing>