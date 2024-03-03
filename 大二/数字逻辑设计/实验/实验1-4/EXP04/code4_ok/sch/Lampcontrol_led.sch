<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="F" />
        <signal name="S3NS1NS2" />
        <signal name="S2NS1NS3" />
        <signal name="S1S2S3" />
        <signal name="S1NS2NS3" />
        <signal name="NS1" />
        <signal name="S3" />
        <signal name="S2" />
        <signal name="NS3" />
        <signal name="NS2" />
        <signal name="S1" />
        <signal name="Buzzer" />
        <signal name="LED(6:0)" />
        <signal name="LED(6)" />
        <signal name="LED(5)" />
        <signal name="LED(4)" />
        <signal name="LED(3)" />
        <signal name="LED(2)" />
        <signal name="LED(1)" />
        <signal name="LED(0)" />
        <port polarity="Output" name="F" />
        <port polarity="Input" name="S3" />
        <port polarity="Input" name="S2" />
        <port polarity="Input" name="S1" />
        <port polarity="Output" name="Buzzer" />
        <port polarity="Output" name="LED(6:0)" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <block symbolname="vcc" name="VCC_B">
            <blockpin signalname="Buzzer" name="P" />
        </block>
        <block symbolname="vcc" name="VCC_6">
            <blockpin signalname="LED(6)" name="P" />
        </block>
        <block symbolname="vcc" name="VCC_5">
            <blockpin signalname="LED(5)" name="P" />
        </block>
        <block symbolname="vcc" name="VCC_4">
            <blockpin signalname="LED(4)" name="P" />
        </block>
        <block symbolname="vcc" name="VCC_3">
            <blockpin signalname="LED(3)" name="P" />
        </block>
        <block symbolname="vcc" name="VCC_2">
            <blockpin signalname="LED(2)" name="P" />
        </block>
        <block symbolname="vcc" name="VCC_1">
            <blockpin signalname="LED(1)" name="P" />
        </block>
        <block symbolname="vcc" name="VCC_0">
            <blockpin signalname="LED(0)" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2016" y="1104" name="OR4_1" orien="R0" />
        <instance x="752" y="1344" name="INV_3" orien="R0" />
        <instance x="752" y="848" name="INV_2" orien="R0" />
        <instance x="752" y="352" name="INV_1" orien="R0" />
        <instance x="1504" y="1248" name="AND3_3" orien="R0" />
        <instance x="1520" y="1696" name="AND3_4" orien="R0" />
        <instance x="1488" y="816" name="AND3_2" orien="R0" />
        <instance x="1472" y="384" name="AND3_1" orien="R0" />
        <branch name="F">
            <wire x2="2304" y1="944" y2="944" x1="2272" />
        </branch>
        <branch name="S3NS1NS2">
            <wire x2="1792" y1="1120" y2="1120" x1="1760" />
            <wire x2="2016" y1="976" y2="976" x1="1792" />
            <wire x2="1792" y1="976" y2="1120" x1="1792" />
        </branch>
        <branch name="S2NS1NS3">
            <wire x2="1776" y1="688" y2="688" x1="1744" />
            <wire x2="1776" y1="688" y2="912" x1="1776" />
            <wire x2="2016" y1="912" y2="912" x1="1776" />
        </branch>
        <branch name="S1S2S3">
            <wire x2="2016" y1="1568" y2="1568" x1="1776" />
            <wire x2="2016" y1="1040" y2="1568" x1="2016" />
        </branch>
        <branch name="S1NS2NS3">
            <wire x2="2016" y1="256" y2="256" x1="1728" />
            <wire x2="2016" y1="256" y2="848" x1="2016" />
        </branch>
        <branch name="NS1">
            <wire x2="1232" y1="320" y2="320" x1="976" />
            <wire x2="1232" y1="320" y2="624" x1="1232" />
            <wire x2="1488" y1="624" y2="624" x1="1232" />
            <wire x2="1232" y1="624" y2="1056" x1="1232" />
            <wire x2="1504" y1="1056" y2="1056" x1="1232" />
        </branch>
        <branch name="S3">
            <wire x2="736" y1="1312" y2="1312" x1="416" />
            <wire x2="752" y1="1312" y2="1312" x1="736" />
            <wire x2="736" y1="1312" y2="1504" x1="736" />
            <wire x2="1520" y1="1504" y2="1504" x1="736" />
            <wire x2="736" y1="1216" y2="1312" x1="736" />
            <wire x2="1504" y1="1216" y2="1216" x1="736" />
            <wire x2="1504" y1="1184" y2="1216" x1="1504" />
        </branch>
        <branch name="S2">
            <wire x2="656" y1="816" y2="816" x1="416" />
            <wire x2="752" y1="816" y2="816" x1="656" />
            <wire x2="656" y1="816" y2="1568" x1="656" />
            <wire x2="1520" y1="1568" y2="1568" x1="656" />
            <wire x2="656" y1="688" y2="816" x1="656" />
            <wire x2="1488" y1="688" y2="688" x1="656" />
        </branch>
        <branch name="NS3">
            <wire x2="1328" y1="1312" y2="1312" x1="976" />
            <wire x2="1472" y1="320" y2="320" x1="1328" />
            <wire x2="1328" y1="320" y2="752" x1="1328" />
            <wire x2="1328" y1="752" y2="1312" x1="1328" />
            <wire x2="1488" y1="752" y2="752" x1="1328" />
        </branch>
        <branch name="NS2">
            <wire x2="1120" y1="816" y2="816" x1="976" />
            <wire x2="1120" y1="816" y2="1120" x1="1120" />
            <wire x2="1504" y1="1120" y2="1120" x1="1120" />
            <wire x2="1120" y1="256" y2="816" x1="1120" />
            <wire x2="1472" y1="256" y2="256" x1="1120" />
        </branch>
        <branch name="S1">
            <wire x2="544" y1="320" y2="320" x1="384" />
            <wire x2="752" y1="320" y2="320" x1="544" />
            <wire x2="544" y1="320" y2="1632" x1="544" />
            <wire x2="1520" y1="1632" y2="1632" x1="544" />
            <wire x2="544" y1="192" y2="320" x1="544" />
            <wire x2="1472" y1="192" y2="192" x1="544" />
        </branch>
        <iomarker fontsize="28" x="416" y="1312" name="S3" orien="R180" />
        <iomarker fontsize="28" x="416" y="816" name="S2" orien="R180" />
        <iomarker fontsize="28" x="384" y="320" name="S1" orien="R180" />
        <instance x="592" y="1840" name="VCC_B" orien="R0" />
        <branch name="Buzzer">
            <wire x2="656" y1="1840" y2="1856" x1="656" />
            <wire x2="1872" y1="1856" y2="1856" x1="656" />
        </branch>
        <iomarker fontsize="28" x="1872" y="1856" name="Buzzer" orien="R0" />
        <instance x="576" y="2048" name="VCC_6" orien="R0" />
        <instance x="688" y="2048" name="VCC_5" orien="R0" />
        <instance x="784" y="2048" name="VCC_4" orien="R0" />
        <instance x="880" y="2048" name="VCC_3" orien="R0" />
        <instance x="976" y="2048" name="VCC_2" orien="R0" />
        <instance x="1072" y="2048" name="VCC_1" orien="R0" />
        <instance x="1184" y="2048" name="VCC_0" orien="R0" />
        <branch name="LED(6:0)">
            <wire x2="608" y1="2400" y2="2400" x1="464" />
            <wire x2="736" y1="2400" y2="2400" x1="608" />
            <wire x2="848" y1="2400" y2="2400" x1="736" />
            <wire x2="960" y1="2400" y2="2400" x1="848" />
            <wire x2="1056" y1="2400" y2="2400" x1="960" />
            <wire x2="1152" y1="2400" y2="2400" x1="1056" />
            <wire x2="1264" y1="2400" y2="2400" x1="1152" />
            <wire x2="1856" y1="2400" y2="2400" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1856" y="2400" name="LED(6:0)" orien="R0" />
        <bustap x2="608" y1="2400" y2="2304" x1="608" />
        <bustap x2="736" y1="2400" y2="2304" x1="736" />
        <bustap x2="848" y1="2400" y2="2304" x1="848" />
        <bustap x2="960" y1="2400" y2="2304" x1="960" />
        <bustap x2="1056" y1="2400" y2="2304" x1="1056" />
        <bustap x2="1152" y1="2400" y2="2304" x1="1152" />
        <bustap x2="1264" y1="2400" y2="2304" x1="1264" />
        <branch name="LED(6)">
            <wire x2="608" y1="2176" y2="2304" x1="608" />
            <wire x2="640" y1="2176" y2="2176" x1="608" />
            <wire x2="640" y1="2048" y2="2176" x1="640" />
        </branch>
        <branch name="LED(5)">
            <wire x2="736" y1="2176" y2="2304" x1="736" />
            <wire x2="752" y1="2176" y2="2176" x1="736" />
            <wire x2="752" y1="2048" y2="2176" x1="752" />
        </branch>
        <branch name="LED(4)">
            <wire x2="848" y1="2048" y2="2304" x1="848" />
        </branch>
        <branch name="LED(3)">
            <wire x2="944" y1="2048" y2="2176" x1="944" />
            <wire x2="960" y1="2176" y2="2176" x1="944" />
            <wire x2="960" y1="2176" y2="2304" x1="960" />
        </branch>
        <branch name="LED(2)">
            <wire x2="1040" y1="2048" y2="2176" x1="1040" />
            <wire x2="1056" y1="2176" y2="2176" x1="1040" />
            <wire x2="1056" y1="2176" y2="2304" x1="1056" />
        </branch>
        <branch name="LED(1)">
            <wire x2="1136" y1="2048" y2="2176" x1="1136" />
            <wire x2="1152" y1="2176" y2="2176" x1="1136" />
            <wire x2="1152" y1="2176" y2="2304" x1="1152" />
        </branch>
        <branch name="LED(0)">
            <wire x2="1248" y1="2048" y2="2176" x1="1248" />
            <wire x2="1264" y1="2176" y2="2176" x1="1248" />
            <wire x2="1264" y1="2176" y2="2304" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="2304" y="944" name="F" orien="R0" />
    </sheet>
</drawing>