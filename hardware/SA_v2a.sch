<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="no" active="no"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="fp8" color="7" fill="1" visible="yes" active="yes"/>
<layer number="109" name="fp9" color="7" fill="1" visible="yes" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="IDFDebug" color="7" fill="1" visible="yes" active="yes"/>
<layer number="114" name="Badge_Outline" color="7" fill="1" visible="yes" active="yes"/>
<layer number="115" name="ReferenceISLANDS" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="130" name="130bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="145" name="DrillLegend_01-16" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="6" fill="1" visible="no" active="no"/>
<layer number="154" name="FabDoc2" color="2" fill="1" visible="no" active="no"/>
<layer number="155" name="FabDoc3" color="7" fill="15" visible="no" active="no"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="Eagle3D_PG1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="232" name="Eagle3D_PG2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="233" name="Eagle3D_PG3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="255robobuzz" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="msp430">
<packages>
<package name="RGZ48_4P1X4P1">
<smd name="1" x="-3.4798" y="2.7432" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="2" x="-3.4798" y="2.2606" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="3" x="-3.4798" y="1.7526" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="4" x="-3.4798" y="1.2446" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="5" x="-3.4798" y="0.762" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="6" x="-3.4798" y="0.254" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="7" x="-3.4798" y="-0.254" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="8" x="-3.4798" y="-0.762" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="9" x="-3.4798" y="-1.2446" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="10" x="-3.4798" y="-1.7526" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="11" x="-3.4798" y="-2.2606" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="12" x="-3.4798" y="-2.7432" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="13" x="-2.7432" y="-3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="14" x="-2.2606" y="-3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="15" x="-1.7526" y="-3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="16" x="-1.2446" y="-3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="17" x="-0.762" y="-3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="18" x="-0.254" y="-3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="19" x="0.254" y="-3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="20" x="0.762" y="-3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="21" x="1.2446" y="-3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="22" x="1.7526" y="-3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="23" x="2.2606" y="-3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="24" x="2.7432" y="-3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="25" x="3.4798" y="-2.7432" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="26" x="3.4798" y="-2.2606" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="27" x="3.4798" y="-1.7526" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="28" x="3.4798" y="-1.2446" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="29" x="3.4798" y="-0.762" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="30" x="3.4798" y="-0.254" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="31" x="3.4798" y="0.254" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="32" x="3.4798" y="0.762" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="33" x="3.4798" y="1.2446" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="34" x="3.4798" y="1.7526" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="35" x="3.4798" y="2.2606" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="36" x="3.4798" y="2.7432" dx="0.2794" dy="0.8382" layer="1" rot="R270"/>
<smd name="37" x="2.7432" y="3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="38" x="2.2606" y="3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="39" x="1.7526" y="3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="40" x="1.2446" y="3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="41" x="0.762" y="3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="42" x="0.254" y="3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="43" x="-0.254" y="3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="44" x="-0.762" y="3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="45" x="-1.2446" y="3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="46" x="-1.7526" y="3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="47" x="-2.2606" y="3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="48" x="-2.7432" y="3.4798" dx="0.2794" dy="0.8382" layer="1" rot="R180"/>
<smd name="49" x="0" y="0" dx="4.0894" dy="4.0894" layer="1"/>
<wire x1="-2.9718" y1="3.8354" x2="-3.8354" y2="3.8354" width="0.1524" layer="51"/>
<wire x1="3.8354" y1="2.9718" x2="3.8354" y2="3.8354" width="0.1524" layer="51"/>
<wire x1="2.9718" y1="-3.8354" x2="3.8354" y2="-3.8354" width="0.1524" layer="51"/>
<wire x1="-3.8354" y1="-2.9718" x2="-3.8354" y2="-3.8354" width="0.1524" layer="51"/>
<wire x1="-3.8354" y1="-3.8354" x2="-2.9718" y2="-3.8354" width="0.1524" layer="51"/>
<wire x1="3.8354" y1="-3.8354" x2="3.8354" y2="-2.9718" width="0.1524" layer="51"/>
<wire x1="3.8354" y1="3.8354" x2="2.9718" y2="3.8354" width="0.1524" layer="51"/>
<wire x1="-3.8354" y1="3.8354" x2="-3.8354" y2="2.9718" width="0.1524" layer="51"/>
<wire x1="-4.4196" y1="-1.5494" x2="-4.4196" y2="-1.9304" width="0.1524" layer="51"/>
<wire x1="-4.4196" y1="-1.9304" x2="-4.1656" y2="-1.9304" width="0.1524" layer="51"/>
<wire x1="-4.1656" y1="-1.9304" x2="-4.1656" y2="-1.5494" width="0.1524" layer="51"/>
<wire x1="-4.1656" y1="-1.5494" x2="-4.4196" y2="-1.5494" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="-4.1656" x2="0.5588" y2="-4.4196" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="-4.4196" x2="0.9398" y2="-4.4196" width="0.1524" layer="51"/>
<wire x1="0.9398" y1="-4.4196" x2="0.9398" y2="-4.1656" width="0.1524" layer="51"/>
<wire x1="0.9398" y1="-4.1656" x2="0.5588" y2="-4.1656" width="0.1524" layer="51"/>
<wire x1="4.4196" y1="-0.0508" x2="4.4196" y2="-0.4318" width="0.1524" layer="51"/>
<wire x1="4.4196" y1="-0.4318" x2="4.1656" y2="-0.4318" width="0.1524" layer="51"/>
<wire x1="4.1656" y1="-0.4318" x2="4.1656" y2="-0.0508" width="0.1524" layer="51"/>
<wire x1="4.1656" y1="-0.0508" x2="4.4196" y2="-0.0508" width="0.1524" layer="51"/>
<wire x1="1.0668" y1="4.1656" x2="1.0668" y2="4.4196" width="0.1524" layer="51"/>
<wire x1="1.0668" y1="4.4196" x2="1.4478" y2="4.4196" width="0.1524" layer="51"/>
<wire x1="1.4478" y1="4.4196" x2="1.4478" y2="4.1656" width="0.1524" layer="51"/>
<wire x1="1.4478" y1="4.1656" x2="1.0668" y2="4.1656" width="0.1524" layer="51"/>
<wire x1="-3.8862" y1="2.8702" x2="-3.8862" y2="2.6416" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="2.6416" x2="-3.0734" y2="2.6416" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="2.6416" x2="-3.0734" y2="2.8702" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="2.8702" x2="-3.8862" y2="2.8702" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="2.3622" x2="-3.8862" y2="2.1336" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="2.1336" x2="-3.0734" y2="2.1336" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="2.1336" x2="-3.0734" y2="2.3622" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="2.3622" x2="-3.8862" y2="2.3622" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="1.8542" x2="-3.8862" y2="1.6256" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="1.6256" x2="-3.0734" y2="1.6256" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="1.6256" x2="-3.0734" y2="1.8542" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="1.8542" x2="-3.8862" y2="1.8542" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="1.3716" x2="-3.8862" y2="1.143" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="1.143" x2="-3.0734" y2="1.143" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="1.143" x2="-3.0734" y2="1.3716" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="1.3716" x2="-3.8862" y2="1.3716" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="0.8636" x2="-3.8862" y2="0.635" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="0.635" x2="-3.0734" y2="0.635" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="0.635" x2="-3.0734" y2="0.8636" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="0.8636" x2="-3.8862" y2="0.8636" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="0.3556" x2="-3.8862" y2="0.127" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="0.127" x2="-3.0734" y2="0.127" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="0.127" x2="-3.0734" y2="0.3556" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="0.3556" x2="-3.8862" y2="0.3556" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="-0.127" x2="-3.8862" y2="-0.3556" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="-0.3556" x2="-3.0734" y2="-0.3556" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="-0.3556" x2="-3.0734" y2="-0.127" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="-0.127" x2="-3.8862" y2="-0.127" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="-0.635" x2="-3.8862" y2="-0.8636" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="-0.8636" x2="-3.0734" y2="-0.8636" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="-0.8636" x2="-3.0734" y2="-0.635" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="-0.635" x2="-3.8862" y2="-0.635" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="-1.143" x2="-3.8862" y2="-1.3716" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="-1.3716" x2="-3.0734" y2="-1.3716" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="-1.3716" x2="-3.0734" y2="-1.143" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="-1.143" x2="-3.8862" y2="-1.143" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="-1.6256" x2="-3.8862" y2="-1.8542" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="-1.8542" x2="-3.0734" y2="-1.8542" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="-1.8542" x2="-3.0734" y2="-1.6256" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="-1.6256" x2="-3.8862" y2="-1.6256" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="-2.1336" x2="-3.8862" y2="-2.3622" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="-2.3622" x2="-3.0734" y2="-2.3622" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="-2.3622" x2="-3.0734" y2="-2.1336" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="-2.1336" x2="-3.8862" y2="-2.1336" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="-2.6416" x2="-3.8862" y2="-2.8702" width="0.1524" layer="31"/>
<wire x1="-3.8862" y1="-2.8702" x2="-3.0734" y2="-2.8702" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="-2.8702" x2="-3.0734" y2="-2.6416" width="0.1524" layer="31"/>
<wire x1="-3.0734" y1="-2.6416" x2="-3.8862" y2="-2.6416" width="0.1524" layer="31"/>
<wire x1="-2.8702" y1="-3.0734" x2="-2.8702" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="-2.8702" y1="-3.8862" x2="-2.6416" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="-2.6416" y1="-3.8862" x2="-2.6416" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="-2.6416" y1="-3.0734" x2="-2.8702" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="-2.3622" y1="-3.0734" x2="-2.3622" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="-2.3622" y1="-3.8862" x2="-2.1336" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="-2.1336" y1="-3.8862" x2="-2.1336" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="-2.1336" y1="-3.0734" x2="-2.3622" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="-1.8542" y1="-3.0734" x2="-1.8542" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="-1.8542" y1="-3.8862" x2="-1.6256" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="-1.6256" y1="-3.8862" x2="-1.6256" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="-1.6256" y1="-3.0734" x2="-1.8542" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="-1.3716" y1="-3.0734" x2="-1.3716" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="-1.3716" y1="-3.8862" x2="-1.143" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="-1.143" y1="-3.8862" x2="-1.143" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="-1.143" y1="-3.0734" x2="-1.3716" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="-0.8636" y1="-3.0734" x2="-0.8636" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="-0.8636" y1="-3.8862" x2="-0.635" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="-0.635" y1="-3.8862" x2="-0.635" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="-0.635" y1="-3.0734" x2="-0.8636" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="-0.3556" y1="-3.0734" x2="-0.3556" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="-0.3556" y1="-3.8862" x2="-0.127" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="-0.127" y1="-3.8862" x2="-0.127" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="-0.127" y1="-3.0734" x2="-0.3556" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="0.127" y1="-3.0734" x2="0.127" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="0.127" y1="-3.8862" x2="0.3556" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="0.3556" y1="-3.8862" x2="0.3556" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="0.3556" y1="-3.0734" x2="0.127" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="0.635" y1="-3.0734" x2="0.635" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="0.635" y1="-3.8862" x2="0.8636" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="0.8636" y1="-3.8862" x2="0.8636" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="0.8636" y1="-3.0734" x2="0.635" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="1.143" y1="-3.0734" x2="1.143" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="1.143" y1="-3.8862" x2="1.3716" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="1.3716" y1="-3.8862" x2="1.3716" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="1.3716" y1="-3.0734" x2="1.143" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="1.6256" y1="-3.0734" x2="1.6256" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="1.6256" y1="-3.8862" x2="1.8542" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="1.8542" y1="-3.8862" x2="1.8542" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="1.8542" y1="-3.0734" x2="1.6256" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="2.1336" y1="-3.0734" x2="2.1336" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="2.1336" y1="-3.8862" x2="2.3622" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="2.3622" y1="-3.8862" x2="2.3622" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="2.3622" y1="-3.0734" x2="2.1336" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="2.6416" y1="-3.0734" x2="2.6416" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="2.6416" y1="-3.8862" x2="2.8702" y2="-3.8862" width="0.1524" layer="31"/>
<wire x1="2.8702" y1="-3.8862" x2="2.8702" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="2.8702" y1="-3.0734" x2="2.6416" y2="-3.0734" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="-2.6416" x2="3.0734" y2="-2.8702" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="-2.8702" x2="3.8862" y2="-2.8702" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="-2.8702" x2="3.8862" y2="-2.6416" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="-2.6416" x2="3.0734" y2="-2.6416" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="-2.1336" x2="3.0734" y2="-2.3622" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="-2.3622" x2="3.8862" y2="-2.3622" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="-2.3622" x2="3.8862" y2="-2.1336" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="-2.1336" x2="3.0734" y2="-2.1336" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="-1.6256" x2="3.0734" y2="-1.8542" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="-1.8542" x2="3.8862" y2="-1.8542" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="-1.8542" x2="3.8862" y2="-1.6256" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="-1.6256" x2="3.0734" y2="-1.6256" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="-1.143" x2="3.0734" y2="-1.3716" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="-1.3716" x2="3.8862" y2="-1.3716" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="-1.3716" x2="3.8862" y2="-1.143" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="-1.143" x2="3.0734" y2="-1.143" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="-0.635" x2="3.0734" y2="-0.8636" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="-0.8636" x2="3.8862" y2="-0.8636" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="-0.8636" x2="3.8862" y2="-0.635" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="-0.635" x2="3.0734" y2="-0.635" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="-0.127" x2="3.0734" y2="-0.3556" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="-0.3556" x2="3.8862" y2="-0.3556" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="-0.3556" x2="3.8862" y2="-0.127" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="-0.127" x2="3.0734" y2="-0.127" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="0.3556" x2="3.0734" y2="0.127" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="0.127" x2="3.8862" y2="0.127" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="0.127" x2="3.8862" y2="0.3556" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="0.3556" x2="3.0734" y2="0.3556" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="0.8636" x2="3.0734" y2="0.635" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="0.635" x2="3.8862" y2="0.635" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="0.635" x2="3.8862" y2="0.8636" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="0.8636" x2="3.0734" y2="0.8636" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="1.3716" x2="3.0734" y2="1.143" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="1.143" x2="3.8862" y2="1.143" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="1.143" x2="3.8862" y2="1.3716" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="1.3716" x2="3.0734" y2="1.3716" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="1.8542" x2="3.0734" y2="1.6256" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="1.6256" x2="3.8862" y2="1.6256" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="1.6256" x2="3.8862" y2="1.8542" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="1.8542" x2="3.0734" y2="1.8542" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="2.3622" x2="3.0734" y2="2.1336" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="2.1336" x2="3.8862" y2="2.1336" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="2.1336" x2="3.8862" y2="2.3622" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="2.3622" x2="3.0734" y2="2.3622" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="2.8702" x2="3.0734" y2="2.6416" width="0.1524" layer="31"/>
<wire x1="3.0734" y1="2.6416" x2="3.8862" y2="2.6416" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="2.6416" x2="3.8862" y2="2.8702" width="0.1524" layer="31"/>
<wire x1="3.8862" y1="2.8702" x2="3.0734" y2="2.8702" width="0.1524" layer="31"/>
<wire x1="2.6416" y1="3.8862" x2="2.6416" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="2.6416" y1="3.0734" x2="2.8702" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="2.8702" y1="3.0734" x2="2.8702" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="2.8702" y1="3.8862" x2="2.6416" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="2.1336" y1="3.8862" x2="2.1336" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="2.1336" y1="3.0734" x2="2.3622" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="2.3622" y1="3.0734" x2="2.3622" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="2.3622" y1="3.8862" x2="2.1336" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="1.6256" y1="3.8862" x2="1.6256" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="1.6256" y1="3.0734" x2="1.8542" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="1.8542" y1="3.0734" x2="1.8542" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="1.8542" y1="3.8862" x2="1.6256" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="1.143" y1="3.8862" x2="1.143" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="1.143" y1="3.0734" x2="1.3716" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="1.3716" y1="3.0734" x2="1.3716" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="1.3716" y1="3.8862" x2="1.143" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="0.635" y1="3.8862" x2="0.635" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="0.635" y1="3.0734" x2="0.8636" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="0.8636" y1="3.0734" x2="0.8636" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="0.8636" y1="3.8862" x2="0.635" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="0.127" y1="3.8862" x2="0.127" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="0.127" y1="3.0734" x2="0.3556" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="0.3556" y1="3.0734" x2="0.3556" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="0.3556" y1="3.8862" x2="0.127" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="-0.3556" y1="3.8862" x2="-0.3556" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="-0.3556" y1="3.0734" x2="-0.127" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="-0.127" y1="3.0734" x2="-0.127" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="-0.127" y1="3.8862" x2="-0.3556" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="-0.8636" y1="3.8862" x2="-0.8636" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="-0.8636" y1="3.0734" x2="-0.635" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="-0.635" y1="3.0734" x2="-0.635" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="-0.635" y1="3.8862" x2="-0.8636" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="-1.3716" y1="3.8862" x2="-1.3716" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="-1.3716" y1="3.0734" x2="-1.143" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="-1.143" y1="3.0734" x2="-1.143" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="-1.143" y1="3.8862" x2="-1.3716" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="-1.8542" y1="3.8862" x2="-1.8542" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="-1.8542" y1="3.0734" x2="-1.6256" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="-1.6256" y1="3.0734" x2="-1.6256" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="-1.6256" y1="3.8862" x2="-1.8542" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="-2.3622" y1="3.8862" x2="-2.3622" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="-2.3622" y1="3.0734" x2="-2.1336" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="-2.1336" y1="3.0734" x2="-2.1336" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="-2.1336" y1="3.8862" x2="-2.3622" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="-2.8702" y1="3.8862" x2="-2.8702" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="-2.8702" y1="3.0734" x2="-2.6416" y2="3.0734" width="0.1524" layer="31"/>
<wire x1="-2.6416" y1="3.0734" x2="-2.6416" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="-2.6416" y1="3.8862" x2="-2.8702" y2="3.8862" width="0.1524" layer="31"/>
<wire x1="-1.9812" y1="1.9812" x2="-1.9812" y2="1.6764" width="0.1524" layer="31"/>
<wire x1="-1.9812" y1="1.6764" x2="-1.8288" y2="1.6764" width="0.1524" layer="31"/>
<wire x1="-1.6764" y1="1.9812" x2="-1.9812" y2="1.9812" width="0.1524" layer="31"/>
<wire x1="-1.9812" y1="1.4732" x2="-1.9812" y2="0.889" width="0.1524" layer="31"/>
<wire x1="-1.9812" y1="0.889" x2="-1.8288" y2="0.889" width="0.1524" layer="31"/>
<wire x1="-1.9812" y1="0.6858" x2="-1.9812" y2="0.1016" width="0.1524" layer="31"/>
<wire x1="-1.9812" y1="0.1016" x2="-1.8288" y2="0.1016" width="0.1524" layer="31"/>
<wire x1="-1.9812" y1="-0.1016" x2="-1.9812" y2="-0.6858" width="0.1524" layer="31"/>
<wire x1="-1.9812" y1="-0.6858" x2="-1.8288" y2="-0.6858" width="0.1524" layer="31"/>
<wire x1="-1.9812" y1="-0.889" x2="-1.9812" y2="-1.4732" width="0.1524" layer="31"/>
<wire x1="-1.9812" y1="-1.4732" x2="-1.8288" y2="-1.4732" width="0.1524" layer="31"/>
<wire x1="-1.9812" y1="-1.6764" x2="-1.9812" y2="-1.9812" width="0.1524" layer="31"/>
<wire x1="-1.9812" y1="-1.9812" x2="-1.6764" y2="-1.9812" width="0.1524" layer="31"/>
<wire x1="-1.6764" y1="-1.9812" x2="-1.6764" y2="-1.8288" width="0.1524" layer="31"/>
<wire x1="-1.4732" y1="1.9812" x2="-1.4732" y2="1.8288" width="0.1524" layer="31"/>
<wire x1="-0.889" y1="1.9812" x2="-1.4732" y2="1.9812" width="0.1524" layer="31"/>
<wire x1="-1.4732" y1="-1.9812" x2="-0.889" y2="-1.9812" width="0.1524" layer="31"/>
<wire x1="-0.889" y1="-1.9812" x2="-0.889" y2="-1.8288" width="0.1524" layer="31"/>
<wire x1="-0.1016" y1="1.9812" x2="-0.6858" y2="1.9812" width="0.1524" layer="31"/>
<wire x1="-0.6858" y1="-1.9812" x2="-0.1016" y2="-1.9812" width="0.1524" layer="31"/>
<wire x1="-0.1016" y1="-1.9812" x2="-0.1016" y2="-1.8288" width="0.1524" layer="31"/>
<wire x1="0.1016" y1="1.9812" x2="0.1016" y2="1.8288" width="0.1524" layer="31"/>
<wire x1="0.1016" y1="-1.9812" x2="0.6858" y2="-1.9812" width="0.1524" layer="31"/>
<wire x1="0.6858" y1="-1.9812" x2="0.6858" y2="-1.8288" width="0.1524" layer="31"/>
<wire x1="0.889" y1="-1.9812" x2="1.4732" y2="-1.9812" width="0.1524" layer="31"/>
<wire x1="1.4732" y1="-1.9812" x2="1.4732" y2="-1.8288" width="0.1524" layer="31"/>
<wire x1="1.6764" y1="1.9812" x2="1.6764" y2="1.8288" width="0.1524" layer="31"/>
<wire x1="1.9812" y1="1.6764" x2="1.9812" y2="1.9812" width="0.1524" layer="31"/>
<wire x1="1.9812" y1="1.9812" x2="1.6764" y2="1.9812" width="0.1524" layer="31"/>
<wire x1="1.9812" y1="0.889" x2="1.9812" y2="1.4732" width="0.1524" layer="31"/>
<wire x1="1.9812" y1="1.4732" x2="1.8288" y2="1.4732" width="0.1524" layer="31"/>
<wire x1="1.9812" y1="0.1016" x2="1.9812" y2="0.6858" width="0.1524" layer="31"/>
<wire x1="1.9812" y1="0.6858" x2="1.8288" y2="0.6858" width="0.1524" layer="31"/>
<wire x1="1.9812" y1="-0.6858" x2="1.9812" y2="-0.1016" width="0.1524" layer="31"/>
<wire x1="1.9812" y1="-0.1016" x2="1.8288" y2="-0.1016" width="0.1524" layer="31"/>
<wire x1="1.9812" y1="-1.4732" x2="1.9812" y2="-0.889" width="0.1524" layer="31"/>
<wire x1="1.9812" y1="-0.889" x2="1.8288" y2="-0.889" width="0.1524" layer="31"/>
<wire x1="1.6764" y1="-1.9812" x2="1.9812" y2="-1.9812" width="0.1524" layer="31"/>
<wire x1="1.9812" y1="-1.9812" x2="1.9812" y2="-1.6764" width="0.1524" layer="31"/>
<wire x1="1.9812" y1="-1.6764" x2="1.8288" y2="-1.6764" width="0.1524" layer="31"/>
<wire x1="-3.9624" y1="2.9718" x2="-3.9624" y2="2.54" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="2.54" x2="-2.9718" y2="2.54" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="2.54" x2="-2.9718" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="2.9718" x2="-3.9624" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="2.4638" x2="-3.9624" y2="2.032" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="2.032" x2="-2.9718" y2="2.032" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="2.032" x2="-2.9718" y2="2.4638" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="2.4638" x2="-3.9624" y2="2.4638" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="1.9558" x2="-3.9624" y2="1.5494" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="1.5494" x2="-2.9718" y2="1.5494" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="1.5494" x2="-2.9718" y2="1.9558" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="1.9558" x2="-3.9624" y2="1.9558" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="1.4478" x2="-3.9624" y2="1.0414" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="1.0414" x2="-2.9718" y2="1.0414" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="1.0414" x2="-2.9718" y2="1.4478" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="1.4478" x2="-3.9624" y2="1.4478" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="0.9652" x2="-3.9624" y2="0.5334" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="0.5334" x2="-2.9718" y2="0.5334" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="0.5334" x2="-2.9718" y2="0.9652" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="0.9652" x2="-3.9624" y2="0.9652" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="0.4572" x2="-3.9624" y2="0.0508" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="0.0508" x2="-2.9718" y2="0.0508" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="0.0508" x2="-2.9718" y2="0.4572" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="0.4572" x2="-3.9624" y2="0.4572" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="-0.0508" x2="-3.9624" y2="-0.4572" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="-0.4572" x2="-2.9718" y2="-0.4572" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="-0.4572" x2="-2.9718" y2="-0.0508" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="-0.0508" x2="-3.9624" y2="-0.0508" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="-0.5334" x2="-3.9624" y2="-0.9652" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="-0.9652" x2="-2.9718" y2="-0.9652" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="-0.9652" x2="-2.9718" y2="-0.5334" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="-0.5334" x2="-3.9624" y2="-0.5334" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="-1.0414" x2="-3.9624" y2="-1.4478" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="-1.4478" x2="-2.9718" y2="-1.4478" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="-1.4478" x2="-2.9718" y2="-1.0414" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="-1.0414" x2="-3.9624" y2="-1.0414" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="-1.5494" x2="-3.9624" y2="-1.9558" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="-1.9558" x2="-2.9718" y2="-1.9558" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="-1.9558" x2="-2.9718" y2="-1.5494" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="-1.5494" x2="-3.9624" y2="-1.5494" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="-2.032" x2="-3.9624" y2="-2.4638" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="-2.4638" x2="-2.9718" y2="-2.4638" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="-2.4638" x2="-2.9718" y2="-2.032" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="-2.032" x2="-3.9624" y2="-2.032" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="-2.54" x2="-3.9624" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="-3.9624" y1="-2.9718" x2="-2.9718" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="-2.9718" x2="-2.9718" y2="-2.54" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="-2.54" x2="-3.9624" y2="-2.54" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="-2.9718" x2="-2.9718" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="-3.9624" x2="-2.54" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="-2.54" y1="-3.9624" x2="-2.54" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="-2.54" y1="-2.9718" x2="-2.9718" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="-2.4638" y1="-2.9718" x2="-2.4638" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="-2.4638" y1="-3.9624" x2="-2.032" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="-2.032" y1="-3.9624" x2="-2.032" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="-2.032" y1="-2.9718" x2="-2.4638" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="-1.9558" y1="-2.9718" x2="-1.9558" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="-1.9558" y1="-3.9624" x2="-1.5494" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="-1.5494" y1="-3.9624" x2="-1.5494" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="-1.5494" y1="-2.9718" x2="-1.9558" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="-1.4478" y1="-2.9718" x2="-1.4478" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="-1.4478" y1="-3.9624" x2="-1.0414" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="-1.0414" y1="-3.9624" x2="-1.0414" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="-1.0414" y1="-2.9718" x2="-1.4478" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="-0.9652" y1="-2.9718" x2="-0.9652" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="-0.9652" y1="-3.9624" x2="-0.5334" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="-0.5334" y1="-3.9624" x2="-0.5334" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="-0.5334" y1="-2.9718" x2="-0.9652" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="-0.4572" y1="-2.9718" x2="-0.4572" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="-0.4572" y1="-3.9624" x2="-0.0508" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="-0.0508" y1="-3.9624" x2="-0.0508" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="-0.0508" y1="-2.9718" x2="-0.4572" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="0.0508" y1="-2.9718" x2="0.0508" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="0.0508" y1="-3.9624" x2="0.4572" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="0.4572" y1="-3.9624" x2="0.4572" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="0.4572" y1="-2.9718" x2="0.0508" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="0.5334" y1="-2.9718" x2="0.5334" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="0.5334" y1="-3.9624" x2="0.9652" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="0.9652" y1="-3.9624" x2="0.9652" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="0.9652" y1="-2.9718" x2="0.5334" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="1.0414" y1="-2.9718" x2="1.0414" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="1.0414" y1="-3.9624" x2="1.4478" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="1.4478" y1="-3.9624" x2="1.4478" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="1.4478" y1="-2.9718" x2="1.0414" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="1.5494" y1="-2.9718" x2="1.5494" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="1.5494" y1="-3.9624" x2="1.9558" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="1.9558" y1="-3.9624" x2="1.9558" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="1.9558" y1="-2.9718" x2="1.5494" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="2.032" y1="-2.9718" x2="2.032" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="2.032" y1="-3.9624" x2="2.4638" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="2.4638" y1="-3.9624" x2="2.4638" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="2.4638" y1="-2.9718" x2="2.032" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="2.54" y1="-2.9718" x2="2.54" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="2.54" y1="-3.9624" x2="2.9718" y2="-3.9624" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="-3.9624" x2="2.9718" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="-2.9718" x2="2.54" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="-2.54" x2="2.9718" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="-2.9718" x2="3.9624" y2="-2.9718" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="-2.9718" x2="3.9624" y2="-2.54" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="-2.54" x2="2.9718" y2="-2.54" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="-2.032" x2="2.9718" y2="-2.4638" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="-2.4638" x2="3.9624" y2="-2.4638" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="-2.4638" x2="3.9624" y2="-2.032" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="-2.032" x2="2.9718" y2="-2.032" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="-1.5494" x2="2.9718" y2="-1.9558" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="-1.9558" x2="3.9624" y2="-1.9558" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="-1.9558" x2="3.9624" y2="-1.5494" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="-1.5494" x2="2.9718" y2="-1.5494" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="-1.0414" x2="2.9718" y2="-1.4478" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="-1.4478" x2="3.9624" y2="-1.4478" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="-1.4478" x2="3.9624" y2="-1.0414" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="-1.0414" x2="2.9718" y2="-1.0414" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="-0.5334" x2="2.9718" y2="-0.9652" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="-0.9652" x2="3.9624" y2="-0.9652" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="-0.9652" x2="3.9624" y2="-0.5334" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="-0.5334" x2="2.9718" y2="-0.5334" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="-0.0508" x2="2.9718" y2="-0.4572" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="-0.4572" x2="3.9624" y2="-0.4572" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="-0.4572" x2="3.9624" y2="-0.0508" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="-0.0508" x2="2.9718" y2="-0.0508" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="0.4572" x2="2.9718" y2="0.0508" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="0.0508" x2="3.9624" y2="0.0508" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="0.0508" x2="3.9624" y2="0.4572" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="0.4572" x2="2.9718" y2="0.4572" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="0.9652" x2="2.9718" y2="0.5334" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="0.5334" x2="3.9624" y2="0.5334" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="0.5334" x2="3.9624" y2="0.9652" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="0.9652" x2="2.9718" y2="0.9652" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="1.4478" x2="2.9718" y2="1.0414" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="1.0414" x2="3.9624" y2="1.0414" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="1.0414" x2="3.9624" y2="1.4478" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="1.4478" x2="2.9718" y2="1.4478" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="1.9558" x2="2.9718" y2="1.5494" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="1.5494" x2="3.9624" y2="1.5494" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="1.5494" x2="3.9624" y2="1.9558" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="1.9558" x2="2.9718" y2="1.9558" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="2.4638" x2="2.9718" y2="2.032" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="2.032" x2="3.9624" y2="2.032" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="2.032" x2="3.9624" y2="2.4638" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="2.4638" x2="2.9718" y2="2.4638" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="2.9718" x2="2.9718" y2="2.54" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="2.54" x2="3.9624" y2="2.54" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="2.54" x2="3.9624" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="3.9624" y1="2.9718" x2="2.9718" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="2.54" y1="3.9624" x2="2.54" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="2.54" y1="2.9718" x2="2.9718" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="2.9718" x2="2.9718" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="2.9718" y1="3.9624" x2="2.54" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="2.032" y1="3.9624" x2="2.032" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="2.032" y1="2.9718" x2="2.4638" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="2.4638" y1="2.9718" x2="2.4638" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="2.4638" y1="3.9624" x2="2.032" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="1.5494" y1="3.9624" x2="1.5494" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="1.5494" y1="2.9718" x2="1.9558" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="1.9558" y1="2.9718" x2="1.9558" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="1.9558" y1="3.9624" x2="1.5494" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="1.0414" y1="3.9624" x2="1.0414" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="1.0414" y1="2.9718" x2="1.4478" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="1.4478" y1="2.9718" x2="1.4478" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="1.4478" y1="3.9624" x2="1.0414" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="0.5334" y1="3.9624" x2="0.5334" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="0.5334" y1="2.9718" x2="0.9652" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="0.9652" y1="2.9718" x2="0.9652" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="0.9652" y1="3.9624" x2="0.5334" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="0.0508" y1="3.9624" x2="0.0508" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="0.0508" y1="2.9718" x2="0.4572" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="0.4572" y1="2.9718" x2="0.4572" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="0.4572" y1="3.9624" x2="0.0508" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="-0.4572" y1="3.9624" x2="-0.4572" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="-0.4572" y1="2.9718" x2="-0.0508" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="-0.0508" y1="2.9718" x2="-0.0508" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="-0.0508" y1="3.9624" x2="-0.4572" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="-0.9652" y1="3.9624" x2="-0.9652" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="-0.9652" y1="2.9718" x2="-0.5334" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="-0.5334" y1="2.9718" x2="-0.5334" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="-0.5334" y1="3.9624" x2="-0.9652" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="-1.4478" y1="3.9624" x2="-1.4478" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="-1.4478" y1="2.9718" x2="-1.0414" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="-1.0414" y1="2.9718" x2="-1.0414" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="-1.0414" y1="3.9624" x2="-1.4478" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="-1.9558" y1="3.9624" x2="-1.9558" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="-1.9558" y1="2.9718" x2="-1.5494" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="-1.5494" y1="2.9718" x2="-1.5494" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="-1.5494" y1="3.9624" x2="-1.9558" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="-2.4638" y1="3.9624" x2="-2.4638" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="-2.4638" y1="2.9718" x2="-2.032" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="-2.032" y1="2.9718" x2="-2.032" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="-2.032" y1="3.9624" x2="-2.4638" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="3.9624" x2="-2.9718" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="-2.9718" y1="2.9718" x2="-2.54" y2="2.9718" width="0.1524" layer="29"/>
<wire x1="-2.54" y1="2.9718" x2="-2.54" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="-2.54" y1="3.9624" x2="-2.9718" y2="3.9624" width="0.1524" layer="29"/>
<wire x1="-2.1082" y1="2.1082" x2="1.778" y2="2.1082" width="0.1524" layer="29"/>
<wire x1="1.778" y1="2.1082" x2="2.1082" y2="2.1082" width="0.1524" layer="29"/>
<wire x1="2.1082" y1="1.3716" x2="2.1082" y2="0.9906" width="0.1524" layer="29"/>
<wire x1="-2.1082" y1="0.9906" x2="-2.1082" y2="1.3716" width="0.1524" layer="29"/>
<wire x1="2.1082" y1="0.5842" x2="2.1082" y2="0.2032" width="0.1524" layer="29"/>
<wire x1="-2.1082" y1="0.2032" x2="-2.1082" y2="0.5842" width="0.1524" layer="29"/>
<wire x1="2.1082" y1="-0.2032" x2="2.1082" y2="-0.5842" width="0.1524" layer="29"/>
<wire x1="-2.1082" y1="-0.5842" x2="-2.1082" y2="-0.2032" width="0.1524" layer="29"/>
<wire x1="2.1082" y1="-0.9906" x2="2.1082" y2="-1.3716" width="0.1524" layer="29"/>
<wire x1="-2.1082" y1="-1.3716" x2="-2.1082" y2="-0.9906" width="0.1524" layer="29"/>
<wire x1="-2.1082" y1="-1.778" x2="2.1082" y2="-1.778" width="0.1524" layer="29"/>
<wire x1="2.1082" y1="-1.778" x2="2.1082" y2="-2.1082" width="0.1524" layer="29"/>
<wire x1="1.778" y1="-2.1082" x2="-2.1082" y2="-2.1082" width="0.1524" layer="29"/>
<wire x1="-2.1082" y1="-2.1082" x2="-2.1082" y2="-1.778" width="0.1524" layer="29"/>
<wire x1="-2.1082" y1="-1.778" x2="-2.1082" y2="2.1082" width="0.1524" layer="29"/>
<wire x1="2.1082" y1="2.1082" x2="2.1082" y2="-1.778" width="0.1524" layer="29"/>
<wire x1="2.1082" y1="-2.1082" x2="1.778" y2="-2.1082" width="0.1524" layer="29"/>
<wire x1="1.778" y1="-2.1082" x2="1.778" y2="2.1082" width="0.1524" layer="29"/>
<wire x1="-3.5814" y1="2.3114" x2="-2.3114" y2="3.5814" width="0.1524" layer="25"/>
<wire x1="2.8956" y1="3.5814" x2="2.5908" y2="3.5814" width="0.1524" layer="25"/>
<wire x1="2.3876" y1="3.5814" x2="2.1082" y2="3.5814" width="0.1524" layer="25"/>
<wire x1="1.905" y1="3.5814" x2="1.6002" y2="3.5814" width="0.1524" layer="25"/>
<wire x1="1.397" y1="3.5814" x2="1.0922" y2="3.5814" width="0.1524" layer="25"/>
<wire x1="0.889" y1="3.5814" x2="0.6096" y2="3.5814" width="0.1524" layer="25"/>
<wire x1="0.4064" y1="3.5814" x2="0.1016" y2="3.5814" width="0.1524" layer="25"/>
<wire x1="-0.1016" y1="3.5814" x2="-0.4064" y2="3.5814" width="0.1524" layer="25"/>
<wire x1="-0.6096" y1="3.5814" x2="-0.889" y2="3.5814" width="0.1524" layer="25"/>
<wire x1="-1.0922" y1="3.5814" x2="-1.397" y2="3.5814" width="0.1524" layer="25"/>
<wire x1="-1.6002" y1="3.5814" x2="-1.905" y2="3.5814" width="0.1524" layer="25"/>
<wire x1="-2.1082" y1="3.5814" x2="-2.3876" y2="3.5814" width="0.1524" layer="25"/>
<wire x1="-2.5908" y1="3.5814" x2="-2.8956" y2="3.5814" width="0.1524" layer="25"/>
<wire x1="-3.5814" y1="2.8956" x2="-3.5814" y2="2.5908" width="0.1524" layer="25"/>
<wire x1="-3.5814" y1="2.3876" x2="-3.5814" y2="2.1082" width="0.1524" layer="25"/>
<wire x1="-3.5814" y1="1.905" x2="-3.5814" y2="1.6002" width="0.1524" layer="25"/>
<wire x1="-3.5814" y1="1.397" x2="-3.5814" y2="1.0922" width="0.1524" layer="25"/>
<wire x1="-3.5814" y1="0.889" x2="-3.5814" y2="0.6096" width="0.1524" layer="25"/>
<wire x1="-3.5814" y1="0.4064" x2="-3.5814" y2="0.1016" width="0.1524" layer="25"/>
<wire x1="-3.5814" y1="-0.1016" x2="-3.5814" y2="-0.4064" width="0.1524" layer="25"/>
<wire x1="-3.5814" y1="-0.6096" x2="-3.5814" y2="-0.889" width="0.1524" layer="25"/>
<wire x1="-3.5814" y1="-1.0922" x2="-3.5814" y2="-1.397" width="0.1524" layer="25"/>
<wire x1="-3.5814" y1="-1.6002" x2="-3.5814" y2="-1.905" width="0.1524" layer="25"/>
<wire x1="-3.5814" y1="-2.1082" x2="-3.5814" y2="-2.3876" width="0.1524" layer="25"/>
<wire x1="-3.5814" y1="-2.5908" x2="-3.5814" y2="-2.8956" width="0.1524" layer="25"/>
<wire x1="-2.8956" y1="-3.5814" x2="-2.5908" y2="-3.5814" width="0.1524" layer="25"/>
<wire x1="-2.3876" y1="-3.5814" x2="-2.1082" y2="-3.5814" width="0.1524" layer="25"/>
<wire x1="-1.905" y1="-3.5814" x2="-1.6002" y2="-3.5814" width="0.1524" layer="25"/>
<wire x1="-1.397" y1="-3.5814" x2="-1.0922" y2="-3.5814" width="0.1524" layer="25"/>
<wire x1="-0.889" y1="-3.5814" x2="-0.6096" y2="-3.5814" width="0.1524" layer="25"/>
<wire x1="-0.4064" y1="-3.5814" x2="-0.1016" y2="-3.5814" width="0.1524" layer="25"/>
<wire x1="0.1016" y1="-3.5814" x2="0.4064" y2="-3.5814" width="0.1524" layer="25"/>
<wire x1="0.6096" y1="-3.5814" x2="0.889" y2="-3.5814" width="0.1524" layer="25"/>
<wire x1="1.0922" y1="-3.5814" x2="1.397" y2="-3.5814" width="0.1524" layer="25"/>
<wire x1="1.6002" y1="-3.5814" x2="1.905" y2="-3.5814" width="0.1524" layer="25"/>
<wire x1="2.1082" y1="-3.5814" x2="2.3876" y2="-3.5814" width="0.1524" layer="25"/>
<wire x1="2.5908" y1="-3.5814" x2="2.8956" y2="-3.5814" width="0.1524" layer="25"/>
<wire x1="3.5814" y1="-2.8956" x2="3.5814" y2="-2.5908" width="0.1524" layer="25"/>
<wire x1="3.5814" y1="-2.3876" x2="3.5814" y2="-2.1082" width="0.1524" layer="25"/>
<wire x1="3.5814" y1="-1.905" x2="3.5814" y2="-1.6002" width="0.1524" layer="25"/>
<wire x1="3.5814" y1="-1.397" x2="3.5814" y2="-1.0922" width="0.1524" layer="25"/>
<wire x1="3.5814" y1="-0.889" x2="3.5814" y2="-0.6096" width="0.1524" layer="25"/>
<wire x1="3.5814" y1="-0.4064" x2="3.5814" y2="-0.1016" width="0.1524" layer="25"/>
<wire x1="3.5814" y1="0.1016" x2="3.5814" y2="0.4064" width="0.1524" layer="25"/>
<wire x1="3.5814" y1="0.6096" x2="3.5814" y2="0.889" width="0.1524" layer="25"/>
<wire x1="3.5814" y1="1.0922" x2="3.5814" y2="1.397" width="0.1524" layer="25"/>
<wire x1="3.5814" y1="1.6002" x2="3.5814" y2="1.905" width="0.1524" layer="25"/>
<wire x1="3.5814" y1="2.1082" x2="3.5814" y2="2.3876" width="0.1524" layer="25"/>
<wire x1="3.5814" y1="2.5908" x2="3.5814" y2="2.8956" width="0.1524" layer="25"/>
<wire x1="-3.5814" y1="-3.5814" x2="3.5814" y2="-3.5814" width="0.1524" layer="25"/>
<wire x1="3.5814" y1="-3.5814" x2="3.5814" y2="3.5814" width="0.1524" layer="25"/>
<wire x1="3.5814" y1="3.5814" x2="-3.5814" y2="3.5814" width="0.1524" layer="25"/>
<wire x1="-3.5814" y1="3.5814" x2="-3.5814" y2="-3.5814" width="0.1524" layer="25"/>
<text x="-2.6202" y="4.115" size="1.27" layer="25" ratio="6" rot="SR0">&gt;NAME</text>
<text x="-2.8194" y="-5.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;VALUE</text>
<circle x="-3.2" y="3.2" radius="0.22360625" width="0.127" layer="25"/>
</package>
<package name="PZ100">
<wire x1="7.112" y1="6.477" x2="7.112" y2="7.112" width="0.1524" layer="51"/>
<wire x1="6.477" y1="-7.112" x2="7.112" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="7.112" x2="-7.112" y2="7.112" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="-7.112" x2="-6.477" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-7.112" x2="7.112" y2="-6.477" width="0.1524" layer="51"/>
<wire x1="7.112" y1="7.112" x2="6.477" y2="7.112" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="7.112" x2="-7.112" y2="6.477" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="-6.477" x2="-7.112" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-8.9662" y1="1.7018" x2="-8.9662" y2="1.3208" width="0.1524" layer="51"/>
<wire x1="-8.9662" y1="1.3208" x2="-8.7122" y2="1.3208" width="0.1524" layer="51"/>
<wire x1="-8.7122" y1="1.3208" x2="-8.7122" y2="1.7018" width="0.1524" layer="51"/>
<wire x1="-8.7122" y1="1.7018" x2="-8.9662" y2="1.7018" width="0.1524" layer="51"/>
<wire x1="-8.9662" y1="-3.302" x2="-8.9662" y2="-3.683" width="0.1524" layer="51"/>
<wire x1="-8.9662" y1="-3.683" x2="-8.7122" y2="-3.683" width="0.1524" layer="51"/>
<wire x1="-8.7122" y1="-3.683" x2="-8.7122" y2="-3.302" width="0.1524" layer="51"/>
<wire x1="-8.7122" y1="-3.302" x2="-8.9662" y2="-3.302" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="-8.7122" x2="-4.191" y2="-8.9662" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="-8.9662" x2="-3.81" y2="-8.9662" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="-8.9662" x2="-3.81" y2="-8.7122" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="-8.7122" x2="-4.191" y2="-8.7122" width="0.1524" layer="51"/>
<wire x1="0.8128" y1="-8.7122" x2="0.8128" y2="-8.9662" width="0.1524" layer="51"/>
<wire x1="0.8128" y1="-8.9662" x2="1.1938" y2="-8.9662" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-8.9662" x2="1.1938" y2="-8.7122" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-8.7122" x2="0.8128" y2="-8.7122" width="0.1524" layer="51"/>
<wire x1="5.8166" y1="-8.7122" x2="5.8166" y2="-8.9662" width="0.1524" layer="51"/>
<wire x1="5.8166" y1="-8.9662" x2="6.1976" y2="-8.9662" width="0.1524" layer="51"/>
<wire x1="6.1976" y1="-8.9662" x2="6.1976" y2="-8.7122" width="0.1524" layer="51"/>
<wire x1="6.1976" y1="-8.7122" x2="5.8166" y2="-8.7122" width="0.1524" layer="51"/>
<wire x1="8.9662" y1="-1.3208" x2="8.9662" y2="-1.7018" width="0.1524" layer="51"/>
<wire x1="8.9662" y1="-1.7018" x2="8.7122" y2="-1.7018" width="0.1524" layer="51"/>
<wire x1="8.7122" y1="-1.7018" x2="8.7122" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="8.7122" y1="-1.3208" x2="8.9662" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="8.9662" y1="3.683" x2="8.9662" y2="3.302" width="0.1524" layer="51"/>
<wire x1="8.9662" y1="3.302" x2="8.7122" y2="3.302" width="0.1524" layer="51"/>
<wire x1="8.7122" y1="3.302" x2="8.7122" y2="3.683" width="0.1524" layer="51"/>
<wire x1="8.7122" y1="3.683" x2="8.9662" y2="3.683" width="0.1524" layer="51"/>
<wire x1="3.81" y1="8.7122" x2="3.81" y2="8.9662" width="0.1524" layer="51"/>
<wire x1="3.81" y1="8.9662" x2="4.191" y2="8.9662" width="0.1524" layer="51"/>
<wire x1="4.191" y1="8.9662" x2="4.191" y2="8.7122" width="0.1524" layer="51"/>
<wire x1="4.191" y1="8.7122" x2="3.81" y2="8.7122" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="8.7122" x2="-1.1938" y2="8.9662" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="8.9662" x2="-0.8128" y2="8.9662" width="0.1524" layer="51"/>
<wire x1="-0.8128" y1="8.9662" x2="-0.8128" y2="8.7122" width="0.1524" layer="51"/>
<wire x1="-0.8128" y1="8.7122" x2="-1.1938" y2="8.7122" width="0.1524" layer="51"/>
<wire x1="-6.1976" y1="8.7122" x2="-6.1976" y2="8.9662" width="0.1524" layer="51"/>
<wire x1="-6.1976" y1="8.9662" x2="-5.8166" y2="8.9662" width="0.1524" layer="51"/>
<wire x1="-5.8166" y1="8.9662" x2="-5.8166" y2="8.7122" width="0.1524" layer="51"/>
<wire x1="-5.8166" y1="8.7122" x2="-6.1976" y2="8.7122" width="0.1524" layer="51"/>
<wire x1="5.8674" y1="7.112" x2="6.1468" y2="7.112" width="0.1524" layer="25"/>
<wire x1="6.1468" y1="7.112" x2="6.1468" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="6.1468" y1="8.1026" x2="5.8674" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="5.8674" y1="8.1026" x2="5.8674" y2="7.112" width="0.1524" layer="25"/>
<wire x1="5.3594" y1="7.112" x2="5.6388" y2="7.112" width="0.1524" layer="25"/>
<wire x1="5.6388" y1="7.112" x2="5.6388" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="5.6388" y1="8.1026" x2="5.3594" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="5.3594" y1="8.1026" x2="5.3594" y2="7.112" width="0.1524" layer="25"/>
<wire x1="4.8514" y1="7.112" x2="5.1308" y2="7.112" width="0.1524" layer="25"/>
<wire x1="5.1308" y1="7.112" x2="5.1308" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="5.1308" y1="8.1026" x2="4.8514" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="4.8514" y1="8.1026" x2="4.8514" y2="7.112" width="0.1524" layer="25"/>
<wire x1="4.3688" y1="7.112" x2="4.6482" y2="7.112" width="0.1524" layer="25"/>
<wire x1="4.6482" y1="7.112" x2="4.6482" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="4.6482" y1="8.1026" x2="4.3688" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="4.3688" y1="8.1026" x2="4.3688" y2="7.112" width="0.1524" layer="25"/>
<wire x1="3.8608" y1="7.112" x2="4.1402" y2="7.112" width="0.1524" layer="25"/>
<wire x1="4.1402" y1="7.112" x2="4.1402" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="4.1402" y1="8.1026" x2="3.8608" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="3.8608" y1="8.1026" x2="3.8608" y2="7.112" width="0.1524" layer="25"/>
<wire x1="3.3528" y1="7.112" x2="3.6322" y2="7.112" width="0.1524" layer="25"/>
<wire x1="3.6322" y1="7.112" x2="3.6322" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="3.6322" y1="8.1026" x2="3.3528" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="3.3528" y1="8.1026" x2="3.3528" y2="7.112" width="0.1524" layer="25"/>
<wire x1="2.8702" y1="7.112" x2="3.1496" y2="7.112" width="0.1524" layer="25"/>
<wire x1="3.1496" y1="7.112" x2="3.1496" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="3.1496" y1="8.1026" x2="2.8702" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="2.8702" y1="8.1026" x2="2.8702" y2="7.112" width="0.1524" layer="25"/>
<wire x1="2.3622" y1="7.112" x2="2.6416" y2="7.112" width="0.1524" layer="25"/>
<wire x1="2.6416" y1="7.112" x2="2.6416" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="2.6416" y1="8.1026" x2="2.3622" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="2.3622" y1="8.1026" x2="2.3622" y2="7.112" width="0.1524" layer="25"/>
<wire x1="1.8542" y1="7.112" x2="2.1336" y2="7.112" width="0.1524" layer="25"/>
<wire x1="2.1336" y1="7.112" x2="2.1336" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="2.1336" y1="8.1026" x2="1.8542" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="1.8542" y1="8.1026" x2="1.8542" y2="7.112" width="0.1524" layer="25"/>
<wire x1="1.3716" y1="7.112" x2="1.651" y2="7.112" width="0.1524" layer="25"/>
<wire x1="1.651" y1="7.112" x2="1.651" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="1.651" y1="8.1026" x2="1.3716" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="1.3716" y1="8.1026" x2="1.3716" y2="7.112" width="0.1524" layer="25"/>
<wire x1="0.8636" y1="7.112" x2="1.143" y2="7.112" width="0.1524" layer="25"/>
<wire x1="1.143" y1="7.112" x2="1.143" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="1.143" y1="8.1026" x2="0.8636" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="0.8636" y1="8.1026" x2="0.8636" y2="7.112" width="0.1524" layer="25"/>
<wire x1="0.3556" y1="7.112" x2="0.635" y2="7.112" width="0.1524" layer="25"/>
<wire x1="0.635" y1="7.112" x2="0.635" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="0.635" y1="8.1026" x2="0.3556" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="0.3556" y1="8.1026" x2="0.3556" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-0.1524" y1="7.112" x2="0.1524" y2="7.112" width="0.1524" layer="25"/>
<wire x1="0.1524" y1="7.112" x2="0.127" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="0.127" y1="8.1026" x2="-0.1524" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-0.1524" y1="8.1026" x2="-0.1524" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-0.635" y1="7.112" x2="-0.3556" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-0.3556" y1="7.112" x2="-0.3556" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-0.3556" y1="8.1026" x2="-0.635" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-0.635" y1="8.1026" x2="-0.635" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-1.143" y1="7.112" x2="-0.8636" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-0.8636" y1="7.112" x2="-0.8636" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-0.8636" y1="8.1026" x2="-1.143" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-1.143" y1="8.1026" x2="-1.143" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-1.651" y1="7.112" x2="-1.3716" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-1.3716" y1="7.112" x2="-1.3716" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-1.3716" y1="8.1026" x2="-1.651" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-1.651" y1="8.1026" x2="-1.651" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-2.1336" y1="7.112" x2="-1.8542" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-1.8542" y1="7.112" x2="-1.8542" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-1.8542" y1="8.1026" x2="-2.1336" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-2.1336" y1="8.1026" x2="-2.1336" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-2.6416" y1="7.112" x2="-2.3622" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-2.3622" y1="7.112" x2="-2.3622" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-2.3622" y1="8.1026" x2="-2.6416" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-2.6416" y1="8.1026" x2="-2.6416" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-3.1496" y1="7.112" x2="-2.8702" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-2.8702" y1="7.112" x2="-2.8702" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-2.8702" y1="8.1026" x2="-3.1496" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-3.1496" y1="8.1026" x2="-3.1496" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-3.6322" y1="7.112" x2="-3.3528" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-3.3528" y1="7.112" x2="-3.3528" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-3.3528" y1="8.1026" x2="-3.6322" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-3.6322" y1="8.1026" x2="-3.6322" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-4.1402" y1="7.112" x2="-3.8608" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-3.8608" y1="7.112" x2="-3.8608" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-3.8608" y1="8.1026" x2="-4.1402" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-4.1402" y1="8.1026" x2="-4.1402" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-4.6482" y1="7.112" x2="-4.3688" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-4.3688" y1="7.112" x2="-4.3688" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-4.3688" y1="8.1026" x2="-4.6482" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-4.6482" y1="8.1026" x2="-4.6482" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-5.1308" y1="7.112" x2="-4.8514" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-4.8514" y1="7.112" x2="-4.8514" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-4.8514" y1="8.1026" x2="-5.1308" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-5.1308" y1="8.1026" x2="-5.1308" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-5.6388" y1="7.112" x2="-5.3594" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-5.3594" y1="7.112" x2="-5.3594" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-5.3594" y1="8.1026" x2="-5.6388" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-5.6388" y1="8.1026" x2="-5.6388" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-6.1468" y1="7.112" x2="-5.8674" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-5.8674" y1="7.112" x2="-5.8674" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-5.8674" y1="8.1026" x2="-6.1468" y2="8.1026" width="0.1524" layer="25"/>
<wire x1="-6.1468" y1="8.1026" x2="-6.1468" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="5.8674" x2="-7.112" y2="6.1468" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="6.1468" x2="-8.1026" y2="6.1468" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="6.1468" x2="-8.1026" y2="5.8674" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="5.8674" x2="-7.112" y2="5.8674" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="5.3594" x2="-7.112" y2="5.6388" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="5.6388" x2="-8.1026" y2="5.6388" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="5.6388" x2="-8.1026" y2="5.3594" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="5.3594" x2="-7.112" y2="5.3594" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="4.8514" x2="-7.112" y2="5.1308" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="5.1308" x2="-8.1026" y2="5.1308" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="5.1308" x2="-8.1026" y2="4.8514" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="4.8514" x2="-7.112" y2="4.8514" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="4.3688" x2="-7.112" y2="4.6482" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="4.6482" x2="-8.1026" y2="4.6482" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="4.6482" x2="-8.1026" y2="4.3688" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="4.3688" x2="-7.112" y2="4.3688" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="3.8608" x2="-7.112" y2="4.1402" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="4.1402" x2="-8.1026" y2="4.1402" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="4.1402" x2="-8.1026" y2="3.8608" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="3.8608" x2="-7.112" y2="3.8608" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="3.3528" x2="-7.112" y2="3.6322" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="3.6322" x2="-8.1026" y2="3.6322" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="3.6322" x2="-8.1026" y2="3.3528" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="3.3528" x2="-7.112" y2="3.3528" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="2.8702" x2="-7.112" y2="3.1496" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="3.1496" x2="-8.1026" y2="3.1496" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="3.1496" x2="-8.1026" y2="2.8702" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="2.8702" x2="-7.112" y2="2.8702" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="2.3622" x2="-7.112" y2="2.6416" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="2.6416" x2="-8.1026" y2="2.6416" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="2.6416" x2="-8.1026" y2="2.3622" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="2.3622" x2="-7.112" y2="2.3622" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="1.8542" x2="-7.112" y2="2.1336" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="2.1336" x2="-8.1026" y2="2.1336" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="2.1336" x2="-8.1026" y2="1.8542" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="1.8542" x2="-7.112" y2="1.8542" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="1.3716" x2="-7.112" y2="1.651" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="1.651" x2="-8.1026" y2="1.651" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="1.651" x2="-8.1026" y2="1.3716" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="1.3716" x2="-7.112" y2="1.3716" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="0.8636" x2="-7.112" y2="1.143" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="1.143" x2="-8.1026" y2="1.143" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="1.143" x2="-8.1026" y2="0.8636" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="0.8636" x2="-7.112" y2="0.8636" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="0.3556" x2="-7.112" y2="0.635" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="0.635" x2="-8.1026" y2="0.635" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="0.635" x2="-8.1026" y2="0.3556" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="0.3556" x2="-7.112" y2="0.3556" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-0.1524" x2="-7.112" y2="0.1524" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="0.1524" x2="-8.1026" y2="0.127" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="0.127" x2="-8.1026" y2="-0.1524" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-0.1524" x2="-7.112" y2="-0.1524" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-0.635" x2="-7.112" y2="-0.3556" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-0.3556" x2="-8.1026" y2="-0.3556" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-0.3556" x2="-8.1026" y2="-0.635" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-0.635" x2="-7.112" y2="-0.635" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-1.143" x2="-7.112" y2="-0.8636" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-0.8636" x2="-8.1026" y2="-0.8636" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-0.8636" x2="-8.1026" y2="-1.143" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-1.143" x2="-7.112" y2="-1.143" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-1.651" x2="-7.112" y2="-1.3716" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-1.3716" x2="-8.1026" y2="-1.3716" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-1.3716" x2="-8.1026" y2="-1.651" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-1.651" x2="-7.112" y2="-1.651" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-2.1336" x2="-7.112" y2="-1.8542" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-1.8542" x2="-8.1026" y2="-1.8542" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-1.8542" x2="-8.1026" y2="-2.1336" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-2.1336" x2="-7.112" y2="-2.1336" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-2.6416" x2="-7.112" y2="-2.3622" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-2.3622" x2="-8.1026" y2="-2.3622" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-2.3622" x2="-8.1026" y2="-2.6416" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-2.6416" x2="-7.112" y2="-2.6416" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-3.1496" x2="-7.112" y2="-2.8702" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-2.8702" x2="-8.1026" y2="-2.8702" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-2.8702" x2="-8.1026" y2="-3.1496" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-3.1496" x2="-7.112" y2="-3.1496" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-3.6322" x2="-7.112" y2="-3.3528" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-3.3528" x2="-8.1026" y2="-3.3528" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-3.3528" x2="-8.1026" y2="-3.6322" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-3.6322" x2="-7.112" y2="-3.6322" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-4.1402" x2="-7.112" y2="-3.8608" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-3.8608" x2="-8.1026" y2="-3.8608" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-3.8608" x2="-8.1026" y2="-4.1402" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-4.1402" x2="-7.112" y2="-4.1402" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-4.6482" x2="-7.112" y2="-4.3688" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-4.3688" x2="-8.1026" y2="-4.3688" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-4.3688" x2="-8.1026" y2="-4.6482" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-4.6482" x2="-7.112" y2="-4.6482" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-5.1308" x2="-7.112" y2="-4.8514" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-4.8514" x2="-8.1026" y2="-4.8514" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-4.8514" x2="-8.1026" y2="-5.1308" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-5.1308" x2="-7.112" y2="-5.1308" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-5.6388" x2="-7.112" y2="-5.3594" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-5.3594" x2="-8.1026" y2="-5.3594" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-5.3594" x2="-8.1026" y2="-5.6388" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-5.6388" x2="-7.112" y2="-5.6388" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-6.1468" x2="-7.112" y2="-5.8674" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-5.8674" x2="-8.1026" y2="-5.8674" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-5.8674" x2="-8.1026" y2="-6.1468" width="0.1524" layer="25"/>
<wire x1="-8.1026" y1="-6.1468" x2="-7.112" y2="-6.1468" width="0.1524" layer="25"/>
<wire x1="-5.8674" y1="-7.112" x2="-6.1468" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-6.1468" y1="-7.112" x2="-6.1468" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-6.1468" y1="-8.1026" x2="-5.8674" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-5.8674" y1="-8.1026" x2="-5.8674" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-5.3594" y1="-7.112" x2="-5.6388" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-5.6388" y1="-7.112" x2="-5.6388" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-5.6388" y1="-8.1026" x2="-5.3594" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-5.3594" y1="-8.1026" x2="-5.3594" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-4.8514" y1="-7.112" x2="-5.1308" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-5.1308" y1="-7.112" x2="-5.1308" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-5.1308" y1="-8.1026" x2="-4.8514" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-4.8514" y1="-8.1026" x2="-4.8514" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-4.3688" y1="-7.112" x2="-4.6482" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-4.6482" y1="-7.112" x2="-4.6482" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-4.6482" y1="-8.1026" x2="-4.3688" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-4.3688" y1="-8.1026" x2="-4.3688" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-3.8608" y1="-7.112" x2="-4.1402" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-4.1402" y1="-7.112" x2="-4.1402" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-4.1402" y1="-8.1026" x2="-3.8608" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-3.8608" y1="-8.1026" x2="-3.8608" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-3.3528" y1="-7.112" x2="-3.6322" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-3.6322" y1="-7.112" x2="-3.6322" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-3.6322" y1="-8.1026" x2="-3.3528" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-3.3528" y1="-8.1026" x2="-3.3528" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-2.8702" y1="-7.112" x2="-3.1496" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-3.1496" y1="-7.112" x2="-3.1496" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-3.1496" y1="-8.1026" x2="-2.8702" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-2.8702" y1="-8.1026" x2="-2.8702" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-2.3622" y1="-7.112" x2="-2.6416" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-2.6416" y1="-7.112" x2="-2.6416" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-2.6416" y1="-8.1026" x2="-2.3622" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-2.3622" y1="-8.1026" x2="-2.3622" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-1.8542" y1="-7.112" x2="-2.1336" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-2.1336" y1="-7.112" x2="-2.1336" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-2.1336" y1="-8.1026" x2="-1.8542" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-1.8542" y1="-8.1026" x2="-1.8542" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-1.3716" y1="-7.112" x2="-1.651" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-1.651" y1="-7.112" x2="-1.651" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-1.651" y1="-8.1026" x2="-1.3716" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-1.3716" y1="-8.1026" x2="-1.3716" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-0.8636" y1="-7.112" x2="-1.143" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-1.143" y1="-7.112" x2="-1.143" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-1.143" y1="-8.1026" x2="-0.8636" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-0.8636" y1="-8.1026" x2="-0.8636" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-0.3556" y1="-7.112" x2="-0.635" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-0.635" y1="-7.112" x2="-0.635" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-0.635" y1="-8.1026" x2="-0.3556" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-0.3556" y1="-8.1026" x2="-0.3556" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="0.1524" y1="-7.112" x2="-0.1524" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="-0.1524" y1="-7.112" x2="-0.127" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="-0.127" y1="-8.1026" x2="0.1524" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="0.1524" y1="-8.1026" x2="0.1524" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="0.635" y1="-7.112" x2="0.3556" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="0.3556" y1="-7.112" x2="0.3556" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="0.3556" y1="-8.1026" x2="0.635" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="0.635" y1="-8.1026" x2="0.635" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="1.143" y1="-7.112" x2="0.8636" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="0.8636" y1="-7.112" x2="0.8636" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="0.8636" y1="-8.1026" x2="1.143" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="1.143" y1="-8.1026" x2="1.143" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="1.651" y1="-7.112" x2="1.3716" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="1.3716" y1="-7.112" x2="1.3716" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="1.3716" y1="-8.1026" x2="1.651" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="1.651" y1="-8.1026" x2="1.651" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="2.1336" y1="-7.112" x2="1.8542" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="1.8542" y1="-7.112" x2="1.8542" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="1.8542" y1="-8.1026" x2="2.1336" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="2.1336" y1="-8.1026" x2="2.1336" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="2.6416" y1="-7.112" x2="2.3622" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="2.3622" y1="-7.112" x2="2.3622" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="2.3622" y1="-8.1026" x2="2.6416" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="2.6416" y1="-8.1026" x2="2.6416" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="3.1496" y1="-7.112" x2="2.8702" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="2.8702" y1="-7.112" x2="2.8702" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="2.8702" y1="-8.1026" x2="3.1496" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="3.1496" y1="-8.1026" x2="3.1496" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="3.6322" y1="-7.112" x2="3.3528" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="3.3528" y1="-7.112" x2="3.3528" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="3.3528" y1="-8.1026" x2="3.6322" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="3.6322" y1="-8.1026" x2="3.6322" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="4.1402" y1="-7.112" x2="3.8608" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="3.8608" y1="-7.112" x2="3.8608" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="3.8608" y1="-8.1026" x2="4.1402" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="4.1402" y1="-8.1026" x2="4.1402" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="4.6482" y1="-7.112" x2="4.3688" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="4.3688" y1="-7.112" x2="4.3688" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="4.3688" y1="-8.1026" x2="4.6482" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="4.6482" y1="-8.1026" x2="4.6482" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="5.1308" y1="-7.112" x2="4.8514" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="4.8514" y1="-7.112" x2="4.8514" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="4.8514" y1="-8.1026" x2="5.1308" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="5.1308" y1="-8.1026" x2="5.1308" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="5.6388" y1="-7.112" x2="5.3594" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="5.3594" y1="-7.112" x2="5.3594" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="5.3594" y1="-8.1026" x2="5.6388" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="5.6388" y1="-8.1026" x2="5.6388" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="6.1468" y1="-7.112" x2="5.8674" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="5.8674" y1="-7.112" x2="5.8674" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="5.8674" y1="-8.1026" x2="6.1468" y2="-8.1026" width="0.1524" layer="25"/>
<wire x1="6.1468" y1="-8.1026" x2="6.1468" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-5.8674" x2="7.112" y2="-6.1468" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-6.1468" x2="8.1026" y2="-6.1468" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-6.1468" x2="8.1026" y2="-5.8674" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-5.8674" x2="7.112" y2="-5.8674" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-5.3594" x2="7.112" y2="-5.6388" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-5.6388" x2="8.1026" y2="-5.6388" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-5.6388" x2="8.1026" y2="-5.3594" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-5.3594" x2="7.112" y2="-5.3594" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-4.8514" x2="7.112" y2="-5.1308" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-5.1308" x2="8.1026" y2="-5.1308" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-5.1308" x2="8.1026" y2="-4.8514" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-4.8514" x2="7.112" y2="-4.8514" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-4.3688" x2="7.112" y2="-4.6482" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-4.6482" x2="8.1026" y2="-4.6482" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-4.6482" x2="8.1026" y2="-4.3688" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-4.3688" x2="7.112" y2="-4.3688" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-3.8608" x2="7.112" y2="-4.1402" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-4.1402" x2="8.1026" y2="-4.1402" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-4.1402" x2="8.1026" y2="-3.8608" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-3.8608" x2="7.112" y2="-3.8608" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-3.3528" x2="7.112" y2="-3.6322" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-3.6322" x2="8.1026" y2="-3.6322" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-3.6322" x2="8.1026" y2="-3.3528" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-3.3528" x2="7.112" y2="-3.3528" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-2.8702" x2="7.112" y2="-3.1496" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-3.1496" x2="8.1026" y2="-3.1496" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-3.1496" x2="8.1026" y2="-2.8702" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-2.8702" x2="7.112" y2="-2.8702" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-2.3622" x2="7.112" y2="-2.6416" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-2.6416" x2="8.1026" y2="-2.6416" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-2.6416" x2="8.1026" y2="-2.3622" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-2.3622" x2="7.112" y2="-2.3622" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-1.8542" x2="7.112" y2="-2.1336" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-2.1336" x2="8.1026" y2="-2.1336" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-2.1336" x2="8.1026" y2="-1.8542" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-1.8542" x2="7.112" y2="-1.8542" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-1.3716" x2="7.112" y2="-1.651" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-1.651" x2="8.1026" y2="-1.651" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-1.651" x2="8.1026" y2="-1.3716" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-1.3716" x2="7.112" y2="-1.3716" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-0.8636" x2="7.112" y2="-1.143" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-1.143" x2="8.1026" y2="-1.143" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-1.143" x2="8.1026" y2="-0.8636" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-0.8636" x2="7.112" y2="-0.8636" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-0.3556" x2="7.112" y2="-0.635" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-0.635" x2="8.1026" y2="-0.635" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-0.635" x2="8.1026" y2="-0.3556" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-0.3556" x2="7.112" y2="-0.3556" width="0.1524" layer="25"/>
<wire x1="7.112" y1="0.1524" x2="7.112" y2="-0.1524" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-0.1524" x2="8.1026" y2="-0.127" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="-0.127" x2="8.1026" y2="0.1524" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="0.1524" x2="7.112" y2="0.1524" width="0.1524" layer="25"/>
<wire x1="7.112" y1="0.635" x2="7.112" y2="0.3556" width="0.1524" layer="25"/>
<wire x1="7.112" y1="0.3556" x2="8.1026" y2="0.3556" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="0.3556" x2="8.1026" y2="0.635" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="0.635" x2="7.112" y2="0.635" width="0.1524" layer="25"/>
<wire x1="7.112" y1="1.143" x2="7.112" y2="0.8636" width="0.1524" layer="25"/>
<wire x1="7.112" y1="0.8636" x2="8.1026" y2="0.8636" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="0.8636" x2="8.1026" y2="1.143" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="1.143" x2="7.112" y2="1.143" width="0.1524" layer="25"/>
<wire x1="7.112" y1="1.651" x2="7.112" y2="1.3716" width="0.1524" layer="25"/>
<wire x1="7.112" y1="1.3716" x2="8.1026" y2="1.3716" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="1.3716" x2="8.1026" y2="1.651" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="1.651" x2="7.112" y2="1.651" width="0.1524" layer="25"/>
<wire x1="7.112" y1="2.1336" x2="7.112" y2="1.8542" width="0.1524" layer="25"/>
<wire x1="7.112" y1="1.8542" x2="8.1026" y2="1.8542" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="1.8542" x2="8.1026" y2="2.1336" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="2.1336" x2="7.112" y2="2.1336" width="0.1524" layer="25"/>
<wire x1="7.112" y1="2.6416" x2="7.112" y2="2.3622" width="0.1524" layer="25"/>
<wire x1="7.112" y1="2.3622" x2="8.1026" y2="2.3622" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="2.3622" x2="8.1026" y2="2.6416" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="2.6416" x2="7.112" y2="2.6416" width="0.1524" layer="25"/>
<wire x1="7.112" y1="3.1496" x2="7.112" y2="2.8702" width="0.1524" layer="25"/>
<wire x1="7.112" y1="2.8702" x2="8.1026" y2="2.8702" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="2.8702" x2="8.1026" y2="3.1496" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="3.1496" x2="7.112" y2="3.1496" width="0.1524" layer="25"/>
<wire x1="7.112" y1="3.6322" x2="7.112" y2="3.3528" width="0.1524" layer="25"/>
<wire x1="7.112" y1="3.3528" x2="8.1026" y2="3.3528" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="3.3528" x2="8.1026" y2="3.6322" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="3.6322" x2="7.112" y2="3.6322" width="0.1524" layer="25"/>
<wire x1="7.112" y1="4.1402" x2="7.112" y2="3.8608" width="0.1524" layer="25"/>
<wire x1="7.112" y1="3.8608" x2="8.1026" y2="3.8608" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="3.8608" x2="8.1026" y2="4.1402" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="4.1402" x2="7.112" y2="4.1402" width="0.1524" layer="25"/>
<wire x1="7.112" y1="4.6482" x2="7.112" y2="4.3688" width="0.1524" layer="25"/>
<wire x1="7.112" y1="4.3688" x2="8.1026" y2="4.3688" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="4.3688" x2="8.1026" y2="4.6482" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="4.6482" x2="7.112" y2="4.6482" width="0.1524" layer="25"/>
<wire x1="7.112" y1="5.1308" x2="7.112" y2="4.8514" width="0.1524" layer="25"/>
<wire x1="7.112" y1="4.8514" x2="8.1026" y2="4.8514" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="4.8514" x2="8.1026" y2="5.1308" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="5.1308" x2="7.112" y2="5.1308" width="0.1524" layer="25"/>
<wire x1="7.112" y1="5.6388" x2="7.112" y2="5.3594" width="0.1524" layer="25"/>
<wire x1="7.112" y1="5.3594" x2="8.1026" y2="5.3594" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="5.3594" x2="8.1026" y2="5.6388" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="5.6388" x2="7.112" y2="5.6388" width="0.1524" layer="25"/>
<wire x1="7.112" y1="6.1468" x2="7.112" y2="5.8674" width="0.1524" layer="25"/>
<wire x1="7.112" y1="5.8674" x2="8.1026" y2="5.8674" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="5.8674" x2="8.1026" y2="6.1468" width="0.1524" layer="25"/>
<wire x1="8.1026" y1="6.1468" x2="7.112" y2="6.1468" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="5.842" x2="-5.842" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="-7.112" x2="7.112" y2="-7.112" width="0.1524" layer="25"/>
<wire x1="7.112" y1="-7.112" x2="7.112" y2="7.112" width="0.1524" layer="25"/>
<wire x1="7.112" y1="7.112" x2="-7.112" y2="7.112" width="0.1524" layer="25"/>
<wire x1="-7.112" y1="7.112" x2="-7.112" y2="-7.112" width="0.1524" layer="25"/>
<smd name="1" x="-7.62" y="5.9944" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="2" x="-7.62" y="5.5118" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="3" x="-7.62" y="5.0038" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="4" x="-7.62" y="4.4958" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="5" x="-7.62" y="3.9878" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="6" x="-7.62" y="3.5052" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="7" x="-7.62" y="2.9972" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="8" x="-7.62" y="2.4892" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="9" x="-7.62" y="2.0066" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="10" x="-7.62" y="1.4986" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="11" x="-7.62" y="0.9906" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="12" x="-7.62" y="0.508" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="13" x="-7.62" y="0" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="14" x="-7.62" y="-0.508" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="15" x="-7.62" y="-0.9906" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="16" x="-7.62" y="-1.4986" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="17" x="-7.62" y="-2.0066" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="18" x="-7.62" y="-2.4892" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="19" x="-7.62" y="-2.9972" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="20" x="-7.62" y="-3.5052" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="21" x="-7.62" y="-3.9878" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="22" x="-7.62" y="-4.4958" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="23" x="-7.62" y="-5.0038" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="24" x="-7.62" y="-5.5118" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="25" x="-7.62" y="-5.9944" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="26" x="-5.9944" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="27" x="-5.5118" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="28" x="-5.0038" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="29" x="-4.4958" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="30" x="-3.9878" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="31" x="-3.5052" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="32" x="-2.9972" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="33" x="-2.4892" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="34" x="-2.0066" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="35" x="-1.4986" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="36" x="-0.9906" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="37" x="-0.508" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="38" x="0" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="39" x="0.508" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="40" x="0.9906" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="41" x="1.4986" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="42" x="2.0066" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="43" x="2.4892" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="44" x="2.9972" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="45" x="3.5052" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="46" x="3.9878" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="47" x="4.4958" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="48" x="5.0038" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="49" x="5.5118" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="50" x="5.9944" y="-7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="51" x="7.62" y="-5.9944" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="52" x="7.62" y="-5.5118" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="53" x="7.62" y="-5.0038" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="54" x="7.62" y="-4.4958" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="55" x="7.62" y="-3.9878" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="56" x="7.62" y="-3.5052" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="57" x="7.62" y="-2.9972" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="58" x="7.62" y="-2.4892" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="59" x="7.62" y="-2.0066" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="60" x="7.62" y="-1.4986" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="61" x="7.62" y="-0.9906" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="62" x="7.62" y="-0.508" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="63" x="7.62" y="0" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="64" x="7.62" y="0.508" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="65" x="7.62" y="0.9906" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="66" x="7.62" y="1.4986" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="67" x="7.62" y="2.0066" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="68" x="7.62" y="2.4892" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="69" x="7.62" y="2.9972" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="70" x="7.62" y="3.5052" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="71" x="7.62" y="3.9878" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="72" x="7.62" y="4.4958" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="73" x="7.62" y="5.0038" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="74" x="7.62" y="5.5118" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="75" x="7.62" y="5.9944" dx="0.2794" dy="1.6764" layer="1" rot="R270"/>
<smd name="76" x="5.9944" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="77" x="5.5118" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="78" x="5.0038" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="79" x="4.4958" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="80" x="3.9878" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="81" x="3.5052" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="82" x="2.9972" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="83" x="2.4892" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="84" x="2.0066" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="85" x="1.4986" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="86" x="0.9906" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="87" x="0.508" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="88" x="0" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="89" x="-0.508" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="90" x="-0.9906" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="91" x="-1.4986" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="92" x="-2.0066" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="93" x="-2.4892" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="94" x="-2.9972" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="95" x="-3.5052" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="96" x="-3.9878" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="97" x="-4.4958" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="98" x="-5.0038" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="99" x="-5.5118" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<smd name="100" x="-5.9944" y="7.62" dx="0.2794" dy="1.6764" layer="1" rot="R180"/>
<text x="-9.6774" y="5.9944" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-9.6774" y="5.9944" size="1.27" layer="25" ratio="6" rot="SR0">*</text>
<text x="-2.8702" y="9.525" size="1.27" layer="25" ratio="6" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-10.795" size="1.27" layer="27" ratio="6" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MSP430FR5969">
<wire x1="-35.56" y1="33.02" x2="33.02" y2="33.02" width="0.254" layer="94"/>
<wire x1="33.02" y1="33.02" x2="33.02" y2="-35.56" width="0.254" layer="94"/>
<wire x1="33.02" y1="-35.56" x2="-35.56" y2="-35.56" width="0.254" layer="94"/>
<wire x1="-35.56" y1="-35.56" x2="-35.56" y2="33.02" width="0.254" layer="94"/>
<pin name="P1.0/TA0.1/VREF-" x="-40.64" y="12.7" length="middle"/>
<circle x="-34.036" y="31.496" radius="0.915809375" width="0.254" layer="94"/>
<pin name="P1.1/TA0.2/VEREF+" x="-40.64" y="10.16" length="middle"/>
<pin name="P1.2/TA1.1/TA0CLK" x="-40.64" y="7.62" length="middle"/>
<pin name="P3.0/A12" x="-40.64" y="5.08" length="middle"/>
<pin name="P3.1/A13" x="-40.64" y="2.54" length="middle"/>
<pin name="P3.2/A14" x="-40.64" y="0" length="middle"/>
<pin name="P3.3/A15" x="-40.64" y="-2.54" length="middle"/>
<pin name="P4.7" x="-40.64" y="-5.08" length="middle"/>
<pin name="P1.3/TA1.2" x="-40.64" y="-7.62" length="middle"/>
<pin name="P1.4/TB0.1" x="-40.64" y="-10.16" length="middle"/>
<pin name="P1.5/TB0.2" x="-40.64" y="-12.7" length="middle"/>
<pin name="PJ.0/TDO" x="-40.64" y="-15.24" length="middle"/>
<pin name="PJ.1/TDI" x="-15.24" y="-40.64" length="middle" rot="R90"/>
<pin name="PJ.2/TMS" x="-12.7" y="-40.64" length="middle" rot="R90"/>
<pin name="PJ.3/TCK" x="-10.16" y="-40.64" length="middle" rot="R90"/>
<pin name="P4.0/A8" x="-7.62" y="-40.64" length="middle" rot="R90"/>
<pin name="P4.1/A9" x="-5.08" y="-40.64" length="middle" rot="R90"/>
<pin name="P4.2/A10" x="-2.54" y="-40.64" length="middle" rot="R90"/>
<pin name="P4.3/A11" x="0" y="-40.64" length="middle" rot="R90"/>
<pin name="P2.5/TB0.0" x="2.54" y="-40.64" length="middle" rot="R90"/>
<pin name="P2.6/TB0.1" x="5.08" y="-40.64" length="middle" rot="R90"/>
<pin name="TEST/SBWTCK" x="7.62" y="-40.64" length="middle" rot="R90"/>
<pin name="RST" x="10.16" y="-40.64" length="middle" rot="R90"/>
<pin name="P2.0/TB0.6" x="12.7" y="-40.64" length="middle" rot="R90"/>
<pin name="P2.1/TB0.0" x="38.1" y="-15.24" length="middle" rot="R180"/>
<pin name="P2.2/TB0.2/UCB0CLK" x="38.1" y="-12.7" length="middle" rot="R180"/>
<pin name="P3.4/TB0.3/SMCLK" x="38.1" y="-10.16" length="middle" rot="R180"/>
<pin name="P3.5/TB0.4/COUT" x="38.1" y="-7.62" length="middle" rot="R180"/>
<pin name="P3.6/TB0.5" x="38.1" y="-5.08" length="middle" rot="R180"/>
<pin name="P3.7/TB0.6" x="38.1" y="-2.54" length="middle" rot="R180"/>
<pin name="P1.6/TB0.3/UCB0SIMO/UCB0SDA/TA0.0" x="38.1" y="0" length="middle" rot="R180"/>
<pin name="P1.7/TB0.4/UCB0SOMI/UCB0SCL/TA1.0" x="38.1" y="2.54" length="middle" rot="R180"/>
<pin name="P4.4/TB0.5" x="38.1" y="5.08" length="middle" rot="R180"/>
<pin name="P4.5" x="38.1" y="7.62" length="middle" rot="R180"/>
<pin name="P4.6" x="38.1" y="10.16" length="middle" rot="R180"/>
<pin name="DVSS" x="38.1" y="12.7" length="middle" rot="R180"/>
<pin name="DVCC" x="12.7" y="38.1" length="middle" rot="R270"/>
<pin name="P2.7" x="10.16" y="38.1" length="middle" rot="R270"/>
<pin name="P2.3/TA0.0/UCA1STE/A6/C10" x="7.62" y="38.1" length="middle" rot="R270"/>
<pin name="P2.4/TA1.0/UCA1CLK/A7/C11" x="5.08" y="38.1" length="middle" rot="R270"/>
<pin name="AVSS@1" x="2.54" y="38.1" length="middle" rot="R270"/>
<pin name="PJ.6/HFXIN" x="0" y="38.1" length="middle" rot="R270"/>
<pin name="PJ.7/HFXOUT" x="-2.54" y="38.1" length="middle" rot="R270"/>
<pin name="AVSS@2" x="-5.08" y="38.1" length="middle" rot="R270"/>
<pin name="PJ.4/LFXIN" x="-7.62" y="38.1" length="middle" rot="R270"/>
<pin name="PJ.5/LFXOUT" x="-10.16" y="38.1" length="middle" rot="R270"/>
<pin name="AVSS@3" x="-12.7" y="38.1" length="middle" rot="R270"/>
<pin name="AVCC" x="-15.24" y="38.1" length="middle" rot="R270"/>
<wire x1="-7.62" y1="-2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<pin name="VSS@1" x="-2.54" y="-7.62" length="middle" rot="R90"/>
</symbol>
<symbol name="MSP430FR5969_PZ100">
<wire x1="-55.88" y1="73.66" x2="33.02" y2="73.66" width="0.254" layer="94"/>
<wire x1="33.02" y1="73.66" x2="33.02" y2="-86.36" width="0.254" layer="94"/>
<wire x1="33.02" y1="-86.36" x2="-55.88" y2="-86.36" width="0.254" layer="94"/>
<wire x1="-55.88" y1="-86.36" x2="-55.88" y2="73.66" width="0.254" layer="94"/>
<pin name="AVCC1" x="38.1" y="-45.72" length="middle" rot="R180"/>
<pin name="AVSS1" x="38.1" y="-50.8" length="middle" rot="R180"/>
<pin name="AVSS2" x="38.1" y="-53.34" length="middle" rot="R180"/>
<pin name="AVSS3" x="38.1" y="-55.88" length="middle" rot="R180"/>
<pin name="DVCC1" x="38.1" y="-38.1" length="middle" rot="R180"/>
<pin name="DVCC2" x="38.1" y="-40.64" length="middle" rot="R180"/>
<pin name="DVCC3" x="38.1" y="-43.18" length="middle" rot="R180"/>
<pin name="DVSS1" x="38.1" y="-60.96" length="middle" rot="R180"/>
<pin name="DVSS2" x="38.1" y="-63.5" length="middle" rot="R180"/>
<pin name="DVSS3" x="38.1" y="-66.04" length="middle" rot="R180"/>
<pin name="ESICI" x="38.1" y="5.08" length="middle" rot="R180"/>
<pin name="ESICOM" x="38.1" y="0" length="middle" rot="R180"/>
<pin name="ESIVCC" x="38.1" y="15.24" length="middle" rot="R180"/>
<pin name="ESIVSS" x="38.1" y="10.16" length="middle" rot="R180"/>
<pin name="P1.0/TA0.1/DMAE0/RTCCLK/A0/C0/VREF-/VEREF-" x="-60.96" y="71.12" length="middle"/>
<pin name="P1.1/TA0.2/TA1CLK/COUT/A1/C1/VREF+/VEREF+" x="-60.96" y="68.58" length="middle"/>
<pin name="P1.2/TA1.1/TA0CLK/COUT/A2/C2" x="-60.96" y="66.04" length="middle"/>
<pin name="P1.3/TA1.2/ESITEST4/A3/C3" x="-60.96" y="63.5" length="middle"/>
<pin name="P1.4/UCB0CLK/UCA0STE/TA1.0/S1" x="-60.96" y="60.96" length="middle"/>
<pin name="P1.5/UCB0STE/UCA0CLK/TA0.0/S0" x="-60.96" y="58.42" length="middle"/>
<pin name="P1.6/UCB0SIMO/UCB0SDA/TA0.1" x="-60.96" y="55.88" length="middle"/>
<pin name="P1.7/UCB0SOMI/UCB0SCL/TA0.2" x="-60.96" y="53.34" length="middle"/>
<pin name="P2.0/UCA0SIMO/UCA0TXD/TB0.6/TB0CLK" x="-60.96" y="48.26" length="middle"/>
<pin name="P2.1/UCA0SOMI/UCA0RXD/TB0.5/DMAE0" x="-60.96" y="45.72" length="middle"/>
<pin name="P2.2/UCA0CLK/TB0.4/RTCCLK" x="-60.96" y="43.18" length="middle"/>
<pin name="P2.3/UCA0STE/TB0OUTH" x="-60.96" y="40.64" length="middle"/>
<pin name="P2.4/TB0.3/COM4/S43" x="-60.96" y="38.1" length="middle"/>
<pin name="P2.5/TB0.4/COM5/S42" x="-60.96" y="35.56" length="middle"/>
<pin name="P2.6/TB0.5/ESIC1OUT/COM6/S41" x="-60.96" y="33.02" length="middle"/>
<pin name="P2.7/TB0.6/ESIC2OUT/COM7/S40" x="-60.96" y="30.48" length="middle"/>
<pin name="P3.0/UCB1CLK/S34" x="-60.96" y="25.4" length="middle"/>
<pin name="P3.1/UCB1SIMO/UCB1SDA/S33" x="-60.96" y="22.86" length="middle"/>
<pin name="P3.2/UCB1SOMI/UCB1SCL/S32" x="-60.96" y="20.32" length="middle"/>
<pin name="P3.3/TA1.1/TB0CLK/S26" x="-60.96" y="17.78" length="middle"/>
<pin name="P3.4/UCA1SIMO/UCA1TXD/TB0.0/S25" x="-60.96" y="15.24" length="middle"/>
<pin name="P3.5/UCA1SOMI/UCA1RXD/TB0.1/S24" x="-60.96" y="12.7" length="middle"/>
<pin name="P3.6/UCA1CLK/TB0.2/S23" x="-60.96" y="10.16" length="middle"/>
<pin name="P3.7/UCA1STE/TB0.3/S22" x="-60.96" y="7.62" length="middle"/>
<pin name="P4.0/UCB1SIMO/UCB1SDA/MCLK/S3" x="-60.96" y="2.54" length="middle"/>
<pin name="P4.1/UCB1SOMI/UCB1SCL/ACLK/S2" x="-60.96" y="0" length="middle"/>
<pin name="P4.2/UCA0SIMO/UCA0TXD/UCB1CLK" x="-60.96" y="-2.54" length="middle"/>
<pin name="P4.3/UCA0SOMI/UCA0RXD/UCB1STE" x="-60.96" y="-5.08" length="middle"/>
<pin name="P4.4/UCB1STE/TA1CLK/S8" x="-60.96" y="-7.62" length="middle"/>
<pin name="P4.5/UCB1CLK/TA1.0/S7" x="-60.96" y="-10.16" length="middle"/>
<pin name="P4.6/UCB1SIMO/UCB1SDA/TA1.1/S6" x="-60.96" y="-12.7" length="middle"/>
<pin name="P4.7/UCB1SOMI/UCB1SCL/TA1.2/S5" x="-60.96" y="-15.24" length="middle"/>
<pin name="P5.0/TA1.1/MCLK/S38" x="-60.96" y="-20.32" length="middle"/>
<pin name="P5.1/TA1.2/S37" x="-60.96" y="-22.86" length="middle"/>
<pin name="P5.2/TA1.0/TA1CLK/ACLK/S36" x="-60.96" y="-25.4" length="middle"/>
<pin name="P5.3/UCB1STE/S35" x="-60.96" y="-27.94" length="middle"/>
<pin name="P5.4/UCA1SIMO/UCA1TXD/S12" x="-60.96" y="-30.48" length="middle"/>
<pin name="P5.5/UCA1SOMI/UCA1RXD/S11" x="-60.96" y="-33.02" length="middle"/>
<pin name="P5.6/UCA1CLK/S10" x="-60.96" y="-35.56" length="middle"/>
<pin name="P5.7/UCA1STE/TB0CLK/S9" x="-60.96" y="-38.1" length="middle"/>
<pin name="P6.0/R23" x="-60.96" y="-43.18" length="middle"/>
<pin name="P6.1/R13/LCDREF" x="-60.96" y="-45.72" length="middle"/>
<pin name="P6.2/COUT/R03" x="-60.96" y="-48.26" length="middle"/>
<pin name="P6.3/COM0" x="-60.96" y="-50.8" length="middle"/>
<pin name="P6.4/TB0.0/COM1" x="-60.96" y="-53.34" length="middle"/>
<pin name="P6.5/TB0.1/COM2" x="-60.96" y="-55.88" length="middle"/>
<pin name="P6.6/TB0.2/COM3" x="-60.96" y="-58.42" length="middle"/>
<pin name="P6.7/TA0CLK/S31" x="-60.96" y="-60.96" length="middle"/>
<pin name="P7.0/TA0CLK/S17" x="-60.96" y="-66.04" length="middle"/>
<pin name="P7.1/TA0.0/S16" x="-60.96" y="-68.58" length="middle"/>
<pin name="P7.2/TA0.1/S15" x="-60.96" y="-71.12" length="middle"/>
<pin name="P7.3/TA0.2/S14" x="-60.96" y="-73.66" length="middle"/>
<pin name="P7.4/SMCLK/S13" x="-60.96" y="-76.2" length="middle"/>
<pin name="P7.5/TA0.2/S30" x="-60.96" y="-78.74" length="middle"/>
<pin name="P7.6/TA0.1/S29" x="-60.96" y="-81.28" length="middle"/>
<pin name="P7.7/TA1.2/TB0OUTH/S27" x="-60.96" y="-83.82" length="middle"/>
<pin name="P8.0/RTCCLK/S21" x="38.1" y="71.12" length="middle" rot="R180"/>
<pin name="P8.1/DMAE0/S20" x="38.1" y="68.58" length="middle" rot="R180"/>
<pin name="P8.2/S19" x="38.1" y="66.04" length="middle" rot="R180"/>
<pin name="P8.3/MCLK/S18" x="38.1" y="63.5" length="middle" rot="R180"/>
<pin name="P8.4/A7/C7" x="38.1" y="60.96" length="middle" rot="R180"/>
<pin name="P8.5/A6/C6" x="38.1" y="58.42" length="middle" rot="R180"/>
<pin name="P8.6/A5/C5" x="38.1" y="55.88" length="middle" rot="R180"/>
<pin name="P8.7/A4/C4" x="38.1" y="53.34" length="middle" rot="R180"/>
<pin name="P9.0/ESICH0/ESITEST0/A8/C8" x="38.1" y="48.26" length="middle" rot="R180"/>
<pin name="P9.1/ESICH1/ESITEST1/A9/C9" x="38.1" y="45.72" length="middle" rot="R180"/>
<pin name="P9.2/ESICH2/ESITEST2/A10/C10" x="38.1" y="43.18" length="middle" rot="R180"/>
<pin name="P9.3/ESICH3/ESITEST3/A11/C11" x="38.1" y="40.64" length="middle" rot="R180"/>
<pin name="P9.4/ESICI0/A12/C12" x="38.1" y="38.1" length="middle" rot="R180"/>
<pin name="P9.5/ESICI1/A13/C13" x="38.1" y="35.56" length="middle" rot="R180"/>
<pin name="P9.6/ESICI2/A14/C14" x="38.1" y="33.02" length="middle" rot="R180"/>
<pin name="P9.7/ESICI3/A15/C15" x="38.1" y="30.48" length="middle" rot="R180"/>
<pin name="P10.0/SMCLK/S4" x="38.1" y="25.4" length="middle" rot="R180"/>
<pin name="P10.1/TA0.0/S28" x="38.1" y="22.86" length="middle" rot="R180"/>
<pin name="P10.2/TA1.0/SMCLK/S39" x="38.1" y="20.32" length="middle" rot="R180"/>
<pin name="PJ.0/TDO/TB0OUTH/SMCLK/SRSCG1" x="38.1" y="-10.16" length="middle" rot="R180"/>
<pin name="PJ.1/TDI/TCLK/MCLK/SRSCG" x="38.1" y="-12.7" length="middle" rot="R180"/>
<pin name="PJ.2/TMS/ACLK/SROSCOFF" x="38.1" y="-15.24" length="middle" rot="R180"/>
<pin name="PJ.3/TCK/COUT/SRCPUOFF" x="38.1" y="-17.78" length="middle" rot="R180"/>
<pin name="PJ.4/LFXIN" x="38.1" y="-22.86" length="middle" rot="R180"/>
<pin name="PJ.5/LFXOUT" x="38.1" y="-25.4" length="middle" rot="R180"/>
<pin name="PJ.6/HFXIN" x="38.1" y="-30.48" length="middle" rot="R180"/>
<pin name="PJ.7/HFXOUT" x="38.1" y="-33.02" length="middle" rot="R180"/>
<pin name="R33/LCDCAP" x="38.1" y="-5.08" length="middle" rot="R180"/>
<pin name="RST/NMI/SBWTDIO" x="38.1" y="-78.74" length="middle" rot="R180"/>
<pin name="TEST/SBWTCK" x="38.1" y="-81.28" length="middle" rot="R180"/>
<text x="-9.8044" y="75.1586" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;NAME</text>
<text x="-5.6642" y="-89.9414" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MSP430FR5969_RGZ_48" prefix="U">
<description>&lt;b&gt;MSP430FR59xx Mixed Signal Microcontroller&lt;/b&gt;&lt;br&gt;
&lt;b&gt;Package: &lt;/b&gt;RGZ-S-PQVFN-N48  (MSP430FR596x and MSP430FR586x)&lt;br&gt;&lt;br&gt;
&lt;b&gt;Description&lt;/b&gt;&lt;br&gt;
The Texas Instruments MSP430FR58xx and MSP430FR59xx family of ultralow-power microcontrollers consists of several devices featuring embedded FRAM nonvolatile memory, an ultralow-power 16-bit MSP430 CPU, and different sets of peripherals targeted for various applications. The architecture, FRAM, and peripherals, combined with seven low-power modes, are optimized to achieve extended battery life in portable and wireless sensing applications. FRAM is a new nonvolatile memory that combines the speed, flexibility, and endurance of SRAM with the stability and reliability of flash, all at lower total power consumption.</description>
<gates>
<gate name="B" symbol="MSP430FR5969" x="0" y="2.54"/>
</gates>
<devices>
<device name="" package="RGZ48_4P1X4P1">
<connects>
<connect gate="B" pin="AVCC" pad="48"/>
<connect gate="B" pin="AVSS@1" pad="41"/>
<connect gate="B" pin="AVSS@2" pad="44"/>
<connect gate="B" pin="AVSS@3" pad="47"/>
<connect gate="B" pin="DVCC" pad="37"/>
<connect gate="B" pin="DVSS" pad="36"/>
<connect gate="B" pin="P1.0/TA0.1/VREF-" pad="1"/>
<connect gate="B" pin="P1.1/TA0.2/VEREF+" pad="2"/>
<connect gate="B" pin="P1.2/TA1.1/TA0CLK" pad="3"/>
<connect gate="B" pin="P1.3/TA1.2" pad="9"/>
<connect gate="B" pin="P1.4/TB0.1" pad="10"/>
<connect gate="B" pin="P1.5/TB0.2" pad="11"/>
<connect gate="B" pin="P1.6/TB0.3/UCB0SIMO/UCB0SDA/TA0.0" pad="31"/>
<connect gate="B" pin="P1.7/TB0.4/UCB0SOMI/UCB0SCL/TA1.0" pad="32"/>
<connect gate="B" pin="P2.0/TB0.6" pad="24"/>
<connect gate="B" pin="P2.1/TB0.0" pad="25"/>
<connect gate="B" pin="P2.2/TB0.2/UCB0CLK" pad="26"/>
<connect gate="B" pin="P2.3/TA0.0/UCA1STE/A6/C10" pad="39"/>
<connect gate="B" pin="P2.4/TA1.0/UCA1CLK/A7/C11" pad="40"/>
<connect gate="B" pin="P2.5/TB0.0" pad="20"/>
<connect gate="B" pin="P2.6/TB0.1" pad="21"/>
<connect gate="B" pin="P2.7" pad="38"/>
<connect gate="B" pin="P3.0/A12" pad="4"/>
<connect gate="B" pin="P3.1/A13" pad="5"/>
<connect gate="B" pin="P3.2/A14" pad="6"/>
<connect gate="B" pin="P3.3/A15" pad="7"/>
<connect gate="B" pin="P3.4/TB0.3/SMCLK" pad="27"/>
<connect gate="B" pin="P3.5/TB0.4/COUT" pad="28"/>
<connect gate="B" pin="P3.6/TB0.5" pad="29"/>
<connect gate="B" pin="P3.7/TB0.6" pad="30"/>
<connect gate="B" pin="P4.0/A8" pad="16"/>
<connect gate="B" pin="P4.1/A9" pad="17"/>
<connect gate="B" pin="P4.2/A10" pad="18"/>
<connect gate="B" pin="P4.3/A11" pad="19"/>
<connect gate="B" pin="P4.4/TB0.5" pad="33"/>
<connect gate="B" pin="P4.5" pad="34"/>
<connect gate="B" pin="P4.6" pad="35"/>
<connect gate="B" pin="P4.7" pad="8"/>
<connect gate="B" pin="PJ.0/TDO" pad="12"/>
<connect gate="B" pin="PJ.1/TDI" pad="13"/>
<connect gate="B" pin="PJ.2/TMS" pad="14"/>
<connect gate="B" pin="PJ.3/TCK" pad="15"/>
<connect gate="B" pin="PJ.4/LFXIN" pad="45"/>
<connect gate="B" pin="PJ.5/LFXOUT" pad="46"/>
<connect gate="B" pin="PJ.6/HFXIN" pad="42"/>
<connect gate="B" pin="PJ.7/HFXOUT" pad="43"/>
<connect gate="B" pin="RST" pad="23"/>
<connect gate="B" pin="TEST/SBWTCK" pad="22"/>
<connect gate="B" pin="VSS@1" pad="49"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="msp430fr5969_rgz_48" constant="no"/>
<attribute name="VENDOR" value="Texas Instruments" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MSP430FR6989_PZ100" prefix="MSP">
<gates>
<gate name="G$1" symbol="MSP430FR5969_PZ100" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PZ100">
<connects>
<connect gate="G$1" pin="AVCC1" pad="79"/>
<connect gate="G$1" pin="AVSS1" pad="83"/>
<connect gate="G$1" pin="AVSS2" pad="86"/>
<connect gate="G$1" pin="AVSS3" pad="80"/>
<connect gate="G$1" pin="DVCC1" pad="27"/>
<connect gate="G$1" pin="DVCC2" pad="58"/>
<connect gate="G$1" pin="DVCC3" pad="99"/>
<connect gate="G$1" pin="DVSS1" pad="26"/>
<connect gate="G$1" pin="DVSS2" pad="57"/>
<connect gate="G$1" pin="DVSS3" pad="98"/>
<connect gate="G$1" pin="ESICI" pad="77"/>
<connect gate="G$1" pin="ESICOM" pad="78"/>
<connect gate="G$1" pin="ESIVCC" pad="75"/>
<connect gate="G$1" pin="ESIVSS" pad="76"/>
<connect gate="G$1" pin="P1.0/TA0.1/DMAE0/RTCCLK/A0/C0/VREF-/VEREF-" pad="66"/>
<connect gate="G$1" pin="P1.1/TA0.2/TA1CLK/COUT/A1/C1/VREF+/VEREF+" pad="65"/>
<connect gate="G$1" pin="P1.2/TA1.1/TA0CLK/COUT/A2/C2" pad="64"/>
<connect gate="G$1" pin="P1.3/TA1.2/ESITEST4/A3/C3" pad="63"/>
<connect gate="G$1" pin="P1.4/UCB0CLK/UCA0STE/TA1.0/S1" pad="2"/>
<connect gate="G$1" pin="P1.5/UCB0STE/UCA0CLK/TA0.0/S0" pad="3"/>
<connect gate="G$1" pin="P1.6/UCB0SIMO/UCB0SDA/TA0.1" pad="4"/>
<connect gate="G$1" pin="P1.7/UCB0SOMI/UCB0SCL/TA0.2" pad="5"/>
<connect gate="G$1" pin="P10.0/SMCLK/S4" pad="95"/>
<connect gate="G$1" pin="P10.1/TA0.0/S28" pad="37"/>
<connect gate="G$1" pin="P10.2/TA1.0/SMCLK/S39" pad="18"/>
<connect gate="G$1" pin="P2.0/UCA0SIMO/UCA0TXD/TB0.6/TB0CLK" pad="51"/>
<connect gate="G$1" pin="P2.1/UCA0SOMI/UCA0RXD/TB0.5/DMAE0" pad="50"/>
<connect gate="G$1" pin="P2.2/UCA0CLK/TB0.4/RTCCLK" pad="49"/>
<connect gate="G$1" pin="P2.3/UCA0STE/TB0OUTH" pad="48"/>
<connect gate="G$1" pin="P2.4/TB0.3/COM4/S43" pad="14"/>
<connect gate="G$1" pin="P2.5/TB0.4/COM5/S42" pad="15"/>
<connect gate="G$1" pin="P2.6/TB0.5/ESIC1OUT/COM6/S41" pad="16"/>
<connect gate="G$1" pin="P2.7/TB0.6/ESIC2OUT/COM7/S40" pad="17"/>
<connect gate="G$1" pin="P3.0/UCB1CLK/S34" pad="23"/>
<connect gate="G$1" pin="P3.1/UCB1SIMO/UCB1SDA/S33" pad="24"/>
<connect gate="G$1" pin="P3.2/UCB1SOMI/UCB1SCL/S32" pad="25"/>
<connect gate="G$1" pin="P3.3/TA1.1/TB0CLK/S26" pad="39"/>
<connect gate="G$1" pin="P3.4/UCA1SIMO/UCA1TXD/TB0.0/S25" pad="40"/>
<connect gate="G$1" pin="P3.5/UCA1SOMI/UCA1RXD/TB0.1/S24" pad="41"/>
<connect gate="G$1" pin="P3.6/UCA1CLK/TB0.2/S23" pad="42"/>
<connect gate="G$1" pin="P3.7/UCA1STE/TB0.3/S22" pad="43"/>
<connect gate="G$1" pin="P4.0/UCB1SIMO/UCB1SDA/MCLK/S3" pad="96"/>
<connect gate="G$1" pin="P4.1/UCB1SOMI/UCB1SCL/ACLK/S2" pad="97"/>
<connect gate="G$1" pin="P4.2/UCA0SIMO/UCA0TXD/UCB1CLK" pad="100"/>
<connect gate="G$1" pin="P4.3/UCA0SOMI/UCA0RXD/UCB1STE" pad="1"/>
<connect gate="G$1" pin="P4.4/UCB1STE/TA1CLK/S8" pad="91"/>
<connect gate="G$1" pin="P4.5/UCB1CLK/TA1.0/S7" pad="92"/>
<connect gate="G$1" pin="P4.6/UCB1SIMO/UCB1SDA/TA1.1/S6" pad="93"/>
<connect gate="G$1" pin="P4.7/UCB1SOMI/UCB1SCL/TA1.2/S5" pad="94"/>
<connect gate="G$1" pin="P5.0/TA1.1/MCLK/S38" pad="19"/>
<connect gate="G$1" pin="P5.1/TA1.2/S37" pad="20"/>
<connect gate="G$1" pin="P5.2/TA1.0/TA1CLK/ACLK/S36" pad="21"/>
<connect gate="G$1" pin="P5.3/UCB1STE/S35" pad="22"/>
<connect gate="G$1" pin="P5.4/UCA1SIMO/UCA1TXD/S12" pad="87"/>
<connect gate="G$1" pin="P5.5/UCA1SOMI/UCA1RXD/S11" pad="88"/>
<connect gate="G$1" pin="P5.6/UCA1CLK/S10" pad="89"/>
<connect gate="G$1" pin="P5.7/UCA1STE/TB0CLK/S9" pad="90"/>
<connect gate="G$1" pin="P6.0/R23" pad="7"/>
<connect gate="G$1" pin="P6.1/R13/LCDREF" pad="8"/>
<connect gate="G$1" pin="P6.2/COUT/R03" pad="9"/>
<connect gate="G$1" pin="P6.3/COM0" pad="10"/>
<connect gate="G$1" pin="P6.4/TB0.0/COM1" pad="11"/>
<connect gate="G$1" pin="P6.5/TB0.1/COM2" pad="12"/>
<connect gate="G$1" pin="P6.6/TB0.2/COM3" pad="13"/>
<connect gate="G$1" pin="P6.7/TA0CLK/S31" pad="34"/>
<connect gate="G$1" pin="P7.0/TA0CLK/S17" pad="52"/>
<connect gate="G$1" pin="P7.1/TA0.0/S16" pad="53"/>
<connect gate="G$1" pin="P7.2/TA0.1/S15" pad="54"/>
<connect gate="G$1" pin="P7.3/TA0.2/S14" pad="55"/>
<connect gate="G$1" pin="P7.4/SMCLK/S13" pad="56"/>
<connect gate="G$1" pin="P7.5/TA0.2/S30" pad="35"/>
<connect gate="G$1" pin="P7.6/TA0.1/S29" pad="36"/>
<connect gate="G$1" pin="P7.7/TA1.2/TB0OUTH/S27" pad="38"/>
<connect gate="G$1" pin="P8.0/RTCCLK/S21" pad="44"/>
<connect gate="G$1" pin="P8.1/DMAE0/S20" pad="45"/>
<connect gate="G$1" pin="P8.2/S19" pad="46"/>
<connect gate="G$1" pin="P8.3/MCLK/S18" pad="47"/>
<connect gate="G$1" pin="P8.4/A7/C7" pad="59"/>
<connect gate="G$1" pin="P8.5/A6/C6" pad="60"/>
<connect gate="G$1" pin="P8.6/A5/C5" pad="61"/>
<connect gate="G$1" pin="P8.7/A4/C4" pad="62"/>
<connect gate="G$1" pin="P9.0/ESICH0/ESITEST0/A8/C8" pad="67"/>
<connect gate="G$1" pin="P9.1/ESICH1/ESITEST1/A9/C9" pad="68"/>
<connect gate="G$1" pin="P9.2/ESICH2/ESITEST2/A10/C10" pad="69"/>
<connect gate="G$1" pin="P9.3/ESICH3/ESITEST3/A11/C11" pad="70"/>
<connect gate="G$1" pin="P9.4/ESICI0/A12/C12" pad="71"/>
<connect gate="G$1" pin="P9.5/ESICI1/A13/C13" pad="72"/>
<connect gate="G$1" pin="P9.6/ESICI2/A14/C14" pad="73"/>
<connect gate="G$1" pin="P9.7/ESICI3/A15/C15" pad="74"/>
<connect gate="G$1" pin="PJ.0/TDO/TB0OUTH/SMCLK/SRSCG1" pad="30"/>
<connect gate="G$1" pin="PJ.1/TDI/TCLK/MCLK/SRSCG" pad="31"/>
<connect gate="G$1" pin="PJ.2/TMS/ACLK/SROSCOFF" pad="32"/>
<connect gate="G$1" pin="PJ.3/TCK/COUT/SRCPUOFF" pad="33"/>
<connect gate="G$1" pin="PJ.4/LFXIN" pad="84"/>
<connect gate="G$1" pin="PJ.5/LFXOUT" pad="85"/>
<connect gate="G$1" pin="PJ.6/HFXIN" pad="82"/>
<connect gate="G$1" pin="PJ.7/HFXOUT" pad="81"/>
<connect gate="G$1" pin="R33/LCDCAP" pad="6"/>
<connect gate="G$1" pin="RST/NMI/SBWTDIO" pad="29"/>
<connect gate="G$1" pin="TEST/SBWTCK" pad="28"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ncp583">
<packages>
<package name="SC82-AB_1PRIMARY">
<description>Original name &lt;b&gt;SC82-AB&lt;/b&gt;&lt;p&gt;</description>
<smd name="1" x="-1.3208" y="-0.8128" dx="0.4064" dy="0.9144" layer="1" rot="R180"/>
<smd name="2" x="-0.0254" y="-0.8128" dx="0.4064" dy="0.9144" layer="1" rot="R180"/>
<smd name="3" x="-0.0254" y="1.0668" dx="0.4064" dy="0.9144" layer="1" rot="R180"/>
<smd name="4" x="-1.3208" y="1.0668" dx="0.4064" dy="0.9144" layer="1" rot="R180"/>
<wire x1="-1.5748" y1="-0.2794" x2="0.2286" y2="-0.2794" width="0.2" layer="21"/>
<wire x1="-1.5748" y1="-0.2794" x2="-1.5748" y2="0.5334" width="0.2" layer="21"/>
<wire x1="-1.5748" y1="0.5334" x2="0.2286" y2="0.5334" width="0.2" layer="21"/>
<wire x1="0.2286" y1="-0.2794" x2="0.2286" y2="0.5334" width="0.2" layer="21"/>
<text x="-1.984121875" y="1.89260625" size="0.254" layer="25" font="vector" ratio="13" rot="SR0">&gt;NAME</text>
<text x="-1.984121875" y="1.63860625" size="0.254" layer="27" font="vector" ratio="13" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="NCP583">
<wire x1="-7.62" y1="5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<pin name="CE" x="-12.7" y="2.54" length="middle"/>
<pin name="GND" x="-12.7" y="-2.54" length="middle"/>
<pin name="OUT" x="12.7" y="-2.54" length="middle" rot="R180"/>
<pin name="VIN" x="12.7" y="2.54" length="middle" rot="R180"/>
<text x="-7.366" y="6.35" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-7.62" size="1.778" layer="95">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="NCP583" prefix="U">
<description>&lt;b&gt;NCP583  - Ultra-Low Iq 150 mA CMOS LDO Regulator with Enable&lt;/b&gt;
&lt;p&gt;The NCP583 series of low dropout regulators are designed for portable battery powered applications 
which require precise output voltage accuracy and low quiescent current. These devices feature an enable 
function which lowers current consumption significantly and are offered in two small packages; 
SC−82AB and the SOT−563. A 1.0 mF ceramic capacitor is the recommended value to be used with 
these devices on the output pin.&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="NCP583" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SC82-AB_1PRIMARY">
<connects>
<connect gate="G$1" pin="CE" pad="1"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="OUT" pad="3"/>
<connect gate="G$1" pin="VIN" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="max9938">
<description>&lt;b&gt;1μA, 4-Bump UCSP/SOT23, Precision Current-Sense Amplifier&lt;/b&gt;&lt;br&gt;
&lt;p&gt;The MAX9938 high-side current-sense amplifier offers precision accuracy specifications of VOS less than 500μV (max) and gain error less than 0.5% (max). Quiescent supply current is an ultra-low 1μA. The MAX9938 fits in a tiny, 1mm x 1mm UCSPTM package size or a 5-pin SOT23 package, making the part ideal for applications in notebook computers, cell phones, PDAs, and all battery-operated portable devices where accura- cy, low quiescent current, and small size are critical.&lt;/p&gt;&lt;p&gt;
The MAX9938 features an input common-mode voltage range from 1.6V to 28V. These current-sense amplifiers have a voltage output and are offered in four gain versions: 25V/V (MAX9938T), 50V/V (MAX9938F), 100V/V (MAX9938H), and 200V/V (MAX9938W).&lt;/p&gt;&lt;p&gt;
The four gain selections offer flexibility in the choice of the external current-sense resistor. The very low 500μV (max) input offset voltage allows small 25mV to 50mV full-scale VSENSE voltage for very low voltage drop at full-current measurement.&lt;/p&gt;&lt;p&gt;
The MAX9938 is offered in tiny 4-bump, UCSP (1mm x 1mm x 0.6mm footprint), 5-pin SOT23, and 6-pin μDFN (2mm x 2mm x 0.8mm) packages specified for operation over the -40°C to +85°C extended temperature range.&lt;/p&gt;</description>
<packages>
<package name="SOT23-5">
<description>&lt;b&gt;5-Lead Small Outline Transistor&lt;/b&gt; Package SOT-23&lt;p&gt;
Source: http://www.analog.com/UploadedFiles/Data_Sheets/346131962AD8067_a.pdf</description>
<wire x1="1.372" y1="0.735" x2="1.372" y2="-0.735" width="0.1524" layer="21"/>
<wire x1="1.372" y1="-0.735" x2="-1.372" y2="-0.735" width="0.1524" layer="51"/>
<wire x1="-1.372" y1="-0.735" x2="-1.372" y2="0.735" width="0.1524" layer="21"/>
<wire x1="-1.372" y1="0.735" x2="1.372" y2="0.735" width="0.1524" layer="51"/>
<wire x1="-0.522" y1="0.735" x2="0.522" y2="0.735" width="0.1524" layer="21"/>
<wire x1="-0.428" y1="-0.735" x2="-0.522" y2="-0.735" width="0.1524" layer="21"/>
<wire x1="0.522" y1="-0.735" x2="0.428" y2="-0.735" width="0.1524" layer="21"/>
<wire x1="-1.328" y1="-0.735" x2="-1.372" y2="-0.735" width="0.1524" layer="21"/>
<wire x1="1.372" y1="-0.735" x2="1.328" y2="-0.735" width="0.1524" layer="21"/>
<wire x1="1.328" y1="0.735" x2="1.372" y2="0.735" width="0.1524" layer="21"/>
<wire x1="-1.372" y1="0.735" x2="-1.328" y2="0.735" width="0.1524" layer="21"/>
<smd name="1" x="-0.95" y="-1.3" dx="0.55" dy="1.2" layer="1"/>
<smd name="2" x="0" y="-1.3" dx="0.55" dy="1.2" layer="1"/>
<smd name="3" x="0.95" y="-1.3" dx="0.55" dy="1.2" layer="1"/>
<smd name="4" x="0.95" y="1.3" dx="0.55" dy="1.2" layer="1"/>
<smd name="5" x="-0.95" y="1.3" dx="0.55" dy="1.2" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.429" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.2" y1="-1.425" x2="-0.7" y2="-0.775" layer="51"/>
<rectangle x1="-0.25" y1="-1.425" x2="0.25" y2="-0.775" layer="51"/>
<rectangle x1="0.7" y1="-1.425" x2="1.2" y2="-0.775" layer="51"/>
<rectangle x1="0.7" y1="0.775" x2="1.2" y2="1.425" layer="51"/>
<rectangle x1="-1.2" y1="0.775" x2="-0.7" y2="1.425" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MAX9938">
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<pin name="RS+" x="-12.7" y="7.62" length="middle"/>
<pin name="RS-" x="-12.7" y="0" length="middle"/>
<pin name="GND" x="2.54" y="-10.16" length="middle" rot="R90"/>
<pin name="OUT" x="12.7" y="7.62" length="middle" rot="R180"/>
<text x="-7.62" y="10.414" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MAX9938" prefix="U">
<description>&lt;b&gt;1μA, 4-Bump UCSP/SOT23, Precision Current-Sense Amplifier&lt;/b&gt;&lt;br&gt;
&lt;p&gt;The MAX9938 high-side current-sense amplifier offers precision accuracy specifications of VOS less than 500μV (max) and gain error less than 0.5% (max). Quiescent supply current is an ultra-low 1μA. The MAX9938 fits in a tiny, 1mm x 1mm UCSPTM package size or a 5-pin SOT23 package, making the part ideal for applications in notebook computers, cell phones, PDAs, and all battery-operated portable devices where accura- cy, low quiescent current, and small size are critical.&lt;/p&gt;&lt;p&gt;
The MAX9938 features an input common-mode voltage range from 1.6V to 28V. These current-sense amplifiers have a voltage output and are offered in four gain versions: 25V/V (MAX9938T), 50V/V (MAX9938F), 100V/V (MAX9938H), and 200V/V (MAX9938W).&lt;/p&gt;&lt;p&gt;
The four gain selections offer flexibility in the choice of the external current-sense resistor. The very low 500μV (max) input offset voltage allows small 25mV to 50mV full-scale VSENSE voltage for very low voltage drop at full-current measurement.&lt;/p&gt;&lt;p&gt;
The MAX9938 is offered in tiny 4-bump, UCSP (1mm x 1mm x 0.6mm footprint), 5-pin SOT23, and 6-pin μDFN (2mm x 2mm x 0.8mm) packages specified for operation over the -40°C to +85°C extended temperature range.&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="MAX9938" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="SOT23-5">
<connects>
<connect gate="G$1" pin="GND" pad="1 2"/>
<connect gate="G$1" pin="OUT" pad="3"/>
<connect gate="G$1" pin="RS+" pad="5"/>
<connect gate="G$1" pin="RS-" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="cc1101">
<packages>
<package name="QLP20">
<circle x="-1.5882625" y="1.5882625" radius="0.0424" width="0.127" layer="21"/>
<wire x1="-1.85" y1="2" x2="1.85" y2="2" width="0.127" layer="48"/>
<wire x1="1.85" y1="2" x2="2" y2="1.85" width="0.127" layer="48"/>
<wire x1="2" y1="1.85" x2="2" y2="-1.85" width="0.127" layer="48"/>
<wire x1="2" y1="-1.85" x2="1.85" y2="-2" width="0.127" layer="48"/>
<wire x1="1.85" y1="-2" x2="-1.85" y2="-2" width="0.127" layer="48"/>
<wire x1="-1.85" y1="-2" x2="-2" y2="-1.85" width="0.127" layer="48"/>
<wire x1="-2" y1="-1.85" x2="-2" y2="1.85" width="0.127" layer="48"/>
<wire x1="-2" y1="1.85" x2="-1.85" y2="2" width="0.127" layer="48"/>
<rectangle x1="-0.325" y1="0.65" x2="0.325" y2="1.05" layer="31"/>
<rectangle x1="-1.175" y1="-0.2" x2="-0.525" y2="0.2" layer="31" rot="R90"/>
<rectangle x1="0.525" y1="-0.2" x2="1.175" y2="0.2" layer="31" rot="R90"/>
<rectangle x1="-0.325" y1="-1.05" x2="0.325" y2="-0.65" layer="31"/>
<rectangle x1="-1.905" y1="-1.905" x2="1.905" y2="1.905" layer="39"/>
<smd name="1" x="-1.88" y="1" dx="0.96" dy="0.28" layer="1"/>
<smd name="2" x="-1.88" y="0.5" dx="0.96" dy="0.28" layer="1"/>
<smd name="3" x="-1.88" y="0" dx="0.96" dy="0.28" layer="1"/>
<smd name="4" x="-1.88" y="-0.5" dx="0.96" dy="0.28" layer="1"/>
<smd name="5" x="-1.88" y="-1" dx="0.96" dy="0.28" layer="1"/>
<smd name="6" x="-1" y="-1.88" dx="0.96" dy="0.28" layer="1" rot="R90"/>
<smd name="7" x="-0.5" y="-1.88" dx="0.96" dy="0.28" layer="1" rot="R90"/>
<smd name="8" x="0" y="-1.88" dx="0.96" dy="0.28" layer="1" rot="R90"/>
<smd name="9" x="0.5" y="-1.88" dx="0.96" dy="0.28" layer="1" rot="R90"/>
<smd name="10" x="1" y="-1.88" dx="0.96" dy="0.28" layer="1" rot="R90"/>
<smd name="11" x="1.88" y="-1" dx="0.96" dy="0.28" layer="1" rot="R180"/>
<smd name="12" x="1.88" y="-0.5" dx="0.96" dy="0.28" layer="1" rot="R180"/>
<smd name="13" x="1.88" y="0" dx="0.96" dy="0.28" layer="1" rot="R180"/>
<smd name="14" x="1.88" y="0.5" dx="0.96" dy="0.28" layer="1" rot="R180"/>
<smd name="15" x="1.88" y="1" dx="0.96" dy="0.28" layer="1" rot="R180"/>
<smd name="16" x="1" y="1.88" dx="0.96" dy="0.28" layer="1" rot="R270"/>
<smd name="17" x="0.5" y="1.88" dx="0.96" dy="0.28" layer="1" rot="R270"/>
<smd name="18" x="0" y="1.88" dx="0.96" dy="0.28" layer="1" rot="R270"/>
<smd name="19" x="-0.5" y="1.88" dx="0.96" dy="0.28" layer="1" rot="R270"/>
<smd name="20" x="-1" y="1.88" dx="0.96" dy="0.28" layer="1" rot="R270"/>
<smd name="GND" x="0" y="0" dx="2.4" dy="2.4" layer="1" cream="no"/>
<pad name="GND1" x="0" y="0" drill="0.332740625" stop="no" thermals="no"/>
<pad name="GND2" x="-0.635" y="0.635" drill="0.332740625" stop="no" thermals="no"/>
<pad name="GND3" x="0.635" y="0.635" drill="0.332740625" stop="no" thermals="no"/>
<pad name="GND4" x="-0.635" y="-0.635" drill="0.332740625" stop="no" thermals="no"/>
<pad name="GND5" x="0.635" y="-0.635" drill="0.332740625" stop="no" thermals="no"/>
<text x="-2" y="2.5" size="1" layer="25" font="vector" ratio="10">&gt;NAME</text>
<text x="0" y="-2.54" size="1" layer="27" font="vector" ratio="10" align="top-center">&gt;VALUE</text>
<wire x1="-1.3" y1="2" x2="-2" y2="2" width="0.127" layer="21"/>
<wire x1="-2" y1="2" x2="-2" y2="1.3" width="0.127" layer="21"/>
<wire x1="1.3" y1="2" x2="2" y2="2" width="0.127" layer="21"/>
<wire x1="2" y1="2" x2="2" y2="1.3" width="0.127" layer="21"/>
<wire x1="2" y1="-1.3" x2="2" y2="-2" width="0.127" layer="21"/>
<wire x1="2" y1="-2" x2="1.3" y2="-2" width="0.127" layer="21"/>
<wire x1="-1.3" y1="-2" x2="-2" y2="-2" width="0.127" layer="21"/>
<wire x1="-2" y1="-2" x2="-2" y2="-1.3" width="0.127" layer="21"/>
</package>
<package name="XTAL-3.2X2.5">
<wire x1="1.9" y1="-1.5" x2="-1.9" y2="-1.5" width="0.17" layer="48"/>
<wire x1="-1.9" y1="-1.5" x2="-1.9" y2="1.5" width="0.17" layer="48"/>
<smd name="1" x="-1.1" y="-0.8" dx="1.4" dy="1.2" layer="1"/>
<smd name="2" x="1.1" y="-0.8" dx="1.4" dy="1.2" layer="1"/>
<smd name="3" x="1.1" y="0.8" dx="1.4" dy="1.2" layer="1"/>
<smd name="4" x="-1.1" y="0.8" dx="1.4" dy="1.2" layer="1"/>
<text x="-2.6" y="1.7" size="1.27" layer="25">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="CC1101">
<wire x1="-17.78" y1="-25.4" x2="-17.78" y2="25.4" width="0.254" layer="94"/>
<wire x1="-17.78" y1="25.4" x2="17.78" y2="25.4" width="0.254" layer="94"/>
<wire x1="17.78" y1="25.4" x2="17.78" y2="-25.4" width="0.254" layer="94"/>
<wire x1="17.78" y1="-25.4" x2="-17.78" y2="-25.4" width="0.254" layer="94"/>
<pin name="AVDD1" x="20.32" y="22.86" visible="pin" length="short" rot="R180"/>
<pin name="AVDD2" x="20.32" y="17.78" visible="pin" length="short" rot="R180"/>
<pin name="AVDD3" x="20.32" y="12.7" visible="pin" length="short" rot="R180"/>
<pin name="AVDD4" x="20.32" y="7.62" visible="pin" length="short" rot="R180"/>
<pin name="CSN" x="-20.32" y="-7.62" visible="pin" length="short"/>
<pin name="DCOUPL" x="-20.32" y="-2.54" visible="pin" length="short"/>
<pin name="DGUARD" x="-20.32" y="-12.7" visible="pin" length="short"/>
<pin name="DVDD" x="-20.32" y="2.54" visible="pin" length="short"/>
<pin name="GDO0(ATEST)" x="-20.32" y="-17.78" visible="pin" length="short"/>
<pin name="GDO2" x="-20.32" y="12.7" visible="pin" length="short"/>
<pin name="GND" x="20.32" y="-22.86" visible="pin" length="short" rot="R180"/>
<pin name="RBIAS" x="20.32" y="2.54" visible="pin" length="short" rot="R180"/>
<pin name="RF_N" x="20.32" y="-2.54" visible="pin" length="short" rot="R180"/>
<pin name="RF_P" x="20.32" y="-7.62" visible="pin" length="short" rot="R180"/>
<pin name="SCLK" x="-20.32" y="22.86" visible="pin" length="short"/>
<pin name="SI" x="-20.32" y="7.62" visible="pin" length="short"/>
<pin name="SO(GDO1)" x="-20.32" y="17.78" visible="pin" length="short"/>
<pin name="XOSC_Q1" x="20.32" y="-17.78" visible="pin" length="short" rot="R180"/>
<pin name="XOSC_Q2" x="20.32" y="-12.7" visible="pin" length="short" rot="R180"/>
<text x="-17.78" y="26.67" size="2.54" layer="95" font="vector" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="2.54" layer="96" font="vector" ratio="15" align="center">&gt;VALUE</text>
</symbol>
<symbol name="XTAL">
<wire x1="1.016" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.016" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.381" y1="1.524" x2="-0.381" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-0.381" y1="-1.524" x2="0.381" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0.381" y1="-1.524" x2="0.381" y2="1.524" width="0.254" layer="94"/>
<wire x1="0.381" y1="1.524" x2="-0.381" y2="1.524" width="0.254" layer="94"/>
<wire x1="1.016" y1="1.778" x2="1.016" y2="-1.778" width="0.254" layer="94"/>
<wire x1="-1.016" y1="1.778" x2="-1.016" y2="-1.778" width="0.254" layer="94"/>
<pin name="1" x="-2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1"/>
<pin name="2" x="2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1" rot="R180"/>
<text x="-2.54" y="2.54" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.159" y="-1.143" size="0.8636" layer="93">1</text>
<text x="1.524" y="-1.143" size="0.8636" layer="93">2</text>
<text x="-2.54" y="5.08" size="1.778" layer="95">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="CC1101" prefix="IC">
<gates>
<gate name="G$1" symbol="CC1101" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QLP20">
<connects>
<connect gate="G$1" pin="AVDD1" pad="9"/>
<connect gate="G$1" pin="AVDD2" pad="11"/>
<connect gate="G$1" pin="AVDD3" pad="14"/>
<connect gate="G$1" pin="AVDD4" pad="15"/>
<connect gate="G$1" pin="CSN" pad="7"/>
<connect gate="G$1" pin="DCOUPL" pad="5"/>
<connect gate="G$1" pin="DGUARD" pad="18"/>
<connect gate="G$1" pin="DVDD" pad="4"/>
<connect gate="G$1" pin="GDO0(ATEST)" pad="6"/>
<connect gate="G$1" pin="GDO2" pad="3"/>
<connect gate="G$1" pin="GND" pad="16 19 GND GND1 GND2 GND3 GND4 GND5"/>
<connect gate="G$1" pin="RBIAS" pad="17"/>
<connect gate="G$1" pin="RF_N" pad="13"/>
<connect gate="G$1" pin="RF_P" pad="12"/>
<connect gate="G$1" pin="SCLK" pad="1"/>
<connect gate="G$1" pin="SI" pad="20"/>
<connect gate="G$1" pin="SO(GDO1)" pad="2"/>
<connect gate="G$1" pin="XOSC_Q1" pad="8"/>
<connect gate="G$1" pin="XOSC_Q2" pad="10"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="XTAL" prefix="X">
<gates>
<gate name="G$1" symbol="XTAL" x="0" y="0"/>
</gates>
<devices>
<device name="-3.2X2.5" package="XTAL-3.2X2.5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="johanson-baluns">
<packages>
<package name="XXXXBM15A0001">
<wire x1="1.016" y1="1.524" x2="-1.016" y2="1.524" width="0.127" layer="48"/>
<wire x1="-1.016" y1="1.524" x2="-1.016" y2="-1.524" width="0.127" layer="48"/>
<wire x1="-1.016" y1="-1.524" x2="1.016" y2="-1.524" width="0.127" layer="48"/>
<wire x1="1.016" y1="-1.524" x2="1.016" y2="1.524" width="0.127" layer="48"/>
<wire x1="1.016" y1="1.524" x2="1.27" y2="1.778" width="0.127" layer="21"/>
<rectangle x1="-1.016" y1="-1.524" x2="1.016" y2="1.524" layer="39"/>
<smd name="1" x="0.65" y="0.8" dx="0.33" dy="0.9" layer="1"/>
<smd name="2" x="0" y="0.8" dx="0.33" dy="0.9" layer="1"/>
<smd name="3" x="-0.65" y="0.8" dx="0.33" dy="0.9" layer="1"/>
<smd name="4" x="-0.65" y="-0.8" dx="0.33" dy="0.9" layer="1"/>
<smd name="5" x="0" y="-0.8" dx="0.33" dy="0.9" layer="1"/>
<smd name="6" x="0.65" y="-0.8" dx="0.33" dy="0.9" layer="1"/>
<text x="-0.635" y="1.905" size="1" layer="25" font="vector" ratio="10">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="BALUN_CC110X">
<wire x1="-15.24" y1="7.62" x2="15.24" y2="7.62" width="0.254" layer="94"/>
<wire x1="15.24" y1="7.62" x2="15.24" y2="-7.62" width="0.254" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="-15.24" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-7.62" x2="-15.24" y2="7.62" width="0.254" layer="94"/>
<pin name="BAL3" x="-17.78" y="5.08" visible="pin" length="short"/>
<pin name="BAL4" x="-17.78" y="-5.08" visible="pin" length="short"/>
<pin name="GND" x="17.78" y="-5.08" visible="pin" length="short" rot="R180"/>
<pin name="UNBAL" x="17.78" y="5.08" visible="pin" length="short" rot="R180"/>
<text x="-15.24" y="8.89" size="2.54" layer="95" font="vector">&gt;NAME</text>
<text x="0" y="0" size="2.54" layer="96" font="vector" ratio="15" align="center">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="0896BM15A0001" prefix="U">
<description>868/915 MHz Impedance Matched/Balun/LPF Integrated Component for T.I. CC110X,
CC111X, CC113X and CC115X, CC110L, CC113L, CC115L, CC430 and RF430</description>
<gates>
<gate name="G$1" symbol="BALUN_CC110X" x="0" y="0"/>
</gates>
<devices>
<device name="" package="XXXXBM15A0001">
<connects>
<connect gate="G$1" pin="BAL3" pad="3"/>
<connect gate="G$1" pin="BAL4" pad="4"/>
<connect gate="G$1" pin="GND" pad="2 5 6" route="any"/>
<connect gate="G$1" pin="UNBAL" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="adxl362">
<packages>
<package name="ADXL362">
<wire x1="-0.75" y1="-1.5" x2="-1.6" y2="-1.5" width="0.127" layer="48"/>
<wire x1="-1.6" y1="-1.5" x2="-1.6" y2="-1.25" width="0.127" layer="48"/>
<wire x1="0.75" y1="-1.5" x2="1.6" y2="-1.5" width="0.127" layer="48"/>
<wire x1="1.6" y1="-1.5" x2="1.6" y2="-1.25" width="0.127" layer="48"/>
<wire x1="0.75" y1="1.5" x2="1.6" y2="1.5" width="0.127" layer="48"/>
<wire x1="1.6" y1="1.5" x2="1.6" y2="1.25" width="0.127" layer="48"/>
<wire x1="-0.75" y1="1.5" x2="-1.6" y2="1.5" width="0.127" layer="48"/>
<wire x1="-1.6" y1="1.5" x2="-1.6" y2="1.25" width="0.127" layer="48"/>
<wire x1="-1.85" y1="1.377" x2="-1.85" y2="1.75" width="0.127" layer="21"/>
<wire x1="-1.85" y1="1.75" x2="-1.4" y2="1.75" width="0.127" layer="21"/>
<smd name="P$1" x="-1.35" y="1" dx="0.8" dy="0.3" layer="1"/>
<smd name="P$2" x="-1.35" y="0.5" dx="0.8" dy="0.3" layer="1"/>
<smd name="P$3" x="-1.35" y="0" dx="0.8" dy="0.3" layer="1"/>
<smd name="P$4" x="-1.35" y="-0.5" dx="0.8" dy="0.3" layer="1"/>
<smd name="P$5" x="-1.35" y="-1" dx="0.8" dy="0.3" layer="1"/>
<smd name="P$6" x="-0.5" y="-1.275" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="P$7" x="0" y="-1.275" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="P$8" x="0.5" y="-1.275" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="P$9" x="1.35" y="-1" dx="0.8" dy="0.3" layer="1"/>
<smd name="P$10" x="1.35" y="-0.5" dx="0.8" dy="0.3" layer="1"/>
<smd name="P$11" x="1.35" y="0" dx="0.8" dy="0.3" layer="1"/>
<smd name="P$12" x="1.35" y="0.5" dx="0.8" dy="0.3" layer="1"/>
<smd name="P$13" x="1.35" y="1" dx="0.8" dy="0.3" layer="1"/>
<smd name="P$14" x="0.5" y="1.275" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="P$15" x="0" y="1.275" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="P$16" x="-0.5" y="1.275" dx="0.8" dy="0.3" layer="1" rot="R90"/>
</package>
</packages>
<symbols>
<symbol name="ADXL362">
<wire x1="-2.54" y1="15.24" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="17.78" y2="0" width="0.254" layer="94"/>
<wire x1="17.78" y1="0" x2="17.78" y2="15.24" width="0.254" layer="94"/>
<wire x1="17.78" y1="15.24" x2="-2.54" y2="15.24" width="0.254" layer="94"/>
<pin name="!CS" x="-7.62" y="5.08" visible="pin" length="middle"/>
<pin name="GND" x="7.62" y="-5.08" visible="off" length="middle" rot="R90"/>
<pin name="INT1" x="22.86" y="7.62" visible="pin" length="middle" rot="R180"/>
<pin name="INT2" x="22.86" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="MISO" x="-7.62" y="7.62" visible="pin" length="middle"/>
<pin name="MOSI" x="-7.62" y="10.16" visible="pin" length="middle"/>
<pin name="SCLK" x="-7.62" y="12.7" visible="pin" length="middle"/>
<pin name="VDDIO" x="22.86" y="12.7" visible="pin" length="middle" rot="R180"/>
<pin name="VS" x="22.86" y="10.16" visible="pin" length="middle" rot="R180"/>
<text x="4.826" y="0.508" size="1.778" layer="94">GND</text>
<text x="-2.54" y="17.78" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="15.24" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ADXL362" prefix="U">
<description>Micropower 3-axis accelerometer&lt;BR&gt;
2/4/8g digital output (SPI)</description>
<gates>
<gate name="G$1" symbol="ADXL362" x="-7.62" y="-7.62"/>
</gates>
<devices>
<device name="" package="ADXL362">
<connects>
<connect gate="G$1" pin="!CS" pad="P$8"/>
<connect gate="G$1" pin="GND" pad="P$12 P$13 P$16"/>
<connect gate="G$1" pin="INT1" pad="P$11"/>
<connect gate="G$1" pin="INT2" pad="P$9"/>
<connect gate="G$1" pin="MISO" pad="P$7"/>
<connect gate="G$1" pin="MOSI" pad="P$6"/>
<connect gate="G$1" pin="SCLK" pad="P$4"/>
<connect gate="G$1" pin="VDDIO" pad="P$1"/>
<connect gate="G$1" pin="VS" pad="P$14"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="fdg6303n">
<description>&lt;b&gt;FDG6303N Dual N-Channel, Digital FET&lt;/b&gt;&lt;br&gt;
&lt;p&gt;These dual N-Channel logic level enhancement mode field effect transistors are produced using Fairchild's proprietary, high cell density, DMOS technology. This very high density process is especially tailored to minimize on-state resistance. This device has been designed especially for low voltage applications as a replacement for bipolar digital transistors and small signal MOSFETs.&lt;/p&gt;</description>
<packages>
<package name="SC70-6">
<description>&lt;b&gt;6-Lead Thin Shrink Small Outline Transistor Package SC70&lt;/b&gt;&lt;p&gt;
Source: http://www.analog.com/static/imported-files/data_sheets/ADA4853-1_4853-2_4853-3.pdf</description>
<wire x1="1.022" y1="0.585" x2="1.022" y2="-0.585" width="0.1524" layer="21"/>
<wire x1="1.022" y1="-0.585" x2="-1.022" y2="-0.585" width="0.1524" layer="51"/>
<wire x1="-1.022" y1="-0.585" x2="-1.022" y2="0.585" width="0.1524" layer="21"/>
<wire x1="-1.022" y1="0.585" x2="1.022" y2="0.585" width="0.1524" layer="51"/>
<rectangle x1="-0.15" y1="-1.2" x2="0.15" y2="-0.625" layer="51"/>
<rectangle x1="-0.8" y1="-1.2" x2="-0.5" y2="-0.625" layer="51"/>
<rectangle x1="0.5" y1="-1.2" x2="0.8" y2="-0.625" layer="51"/>
<rectangle x1="0.5" y1="0.625" x2="0.8" y2="1.2" layer="51" rot="R180"/>
<rectangle x1="-0.15" y1="0.625" x2="0.15" y2="1.2" layer="51" rot="R180"/>
<rectangle x1="-0.875" y1="-1.4" x2="-0.425" y2="-0.5" layer="29"/>
<rectangle x1="-0.8" y1="-1.325" x2="-0.5" y2="-0.575" layer="31"/>
<rectangle x1="-0.225" y1="-1.4" x2="0.225" y2="-0.5" layer="29"/>
<rectangle x1="-0.15" y1="-1.325" x2="0.15" y2="-0.575" layer="31"/>
<rectangle x1="0.425" y1="-1.4" x2="0.875" y2="-0.5" layer="29"/>
<rectangle x1="0.5" y1="-1.325" x2="0.8" y2="-0.575" layer="31"/>
<rectangle x1="0.425" y1="0.5" x2="0.875" y2="1.4" layer="29" rot="R180"/>
<rectangle x1="0.5" y1="0.575" x2="0.8" y2="1.325" layer="31" rot="R180"/>
<rectangle x1="-0.225" y1="0.5" x2="0.225" y2="1.4" layer="29" rot="R180"/>
<rectangle x1="-0.15" y1="0.575" x2="0.15" y2="1.325" layer="31" rot="R180"/>
<rectangle x1="-0.8" y1="0.625" x2="-0.5" y2="1.2" layer="51" rot="R180"/>
<rectangle x1="-0.875" y1="0.5" x2="-0.425" y2="1.4" layer="29" rot="R180"/>
<rectangle x1="-0.8" y1="0.575" x2="-0.5" y2="1.325" layer="31" rot="R180"/>
<smd name="1" x="-0.65" y="-0.95" dx="0.35" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="2" x="0" y="-0.95" dx="0.35" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="3" x="0.65" y="-0.95" dx="0.35" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="4" x="0.65" y="0.95" dx="0.35" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="5" x="0" y="0.95" dx="0.35" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="6" x="-0.65" y="0.95" dx="0.35" dy="0.8" layer="1" stop="no" cream="no"/>
<text x="-1.397" y="1.524" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.651" y="-2.794" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MOSFET-DUAL-NCHANNEL">
<rectangle x1="9.906" y1="5.08" x2="10.668" y2="6.35" layer="94"/>
<rectangle x1="9.906" y1="8.89" x2="10.668" y2="10.16" layer="94"/>
<rectangle x1="9.906" y1="6.731" x2="10.668" y2="8.509" layer="94"/>
<rectangle x1="-12.954" y1="-10.16" x2="-12.192" y2="-8.89" layer="94"/>
<rectangle x1="-12.954" y1="-6.35" x2="-12.192" y2="-5.08" layer="94"/>
<rectangle x1="-12.954" y1="-8.509" x2="-12.192" y2="-6.731" layer="94"/>
<wire x1="9.0424" y1="10.033" x2="9.0424" y2="5.08" width="0.254" layer="94"/>
<wire x1="12.7" y1="9.525" x2="10.6934" y2="9.525" width="0.1524" layer="94"/>
<wire x1="12.7" y1="10.16" x2="12.7" y2="9.525" width="0.1524" layer="94"/>
<wire x1="12.7" y1="5.842" x2="12.7" y2="5.08" width="0.1524" layer="94"/>
<wire x1="12.7" y1="5.842" x2="11.43" y2="6.35" width="0.1524" layer="94"/>
<wire x1="11.43" y1="6.35" x2="11.43" y2="5.334" width="0.1524" layer="94"/>
<wire x1="11.43" y1="5.334" x2="12.7" y2="5.842" width="0.1524" layer="94"/>
<wire x1="11.557" y1="5.842" x2="10.668" y2="5.842" width="0.1524" layer="94"/>
<wire x1="11.557" y1="5.588" x2="12.446" y2="5.842" width="0.3048" layer="94"/>
<wire x1="12.446" y1="5.842" x2="11.557" y2="6.096" width="0.3048" layer="94"/>
<wire x1="11.557" y1="6.096" x2="11.557" y2="5.842" width="0.3048" layer="94"/>
<wire x1="11.557" y1="5.842" x2="11.811" y2="5.842" width="0.3048" layer="94"/>
<wire x1="8.89" y1="7.62" x2="7.62" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-13.8176" y1="-5.207" x2="-13.8176" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-5.715" x2="-12.1666" y2="-5.715" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-5.08" x2="-10.16" y2="-5.715" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-9.398" x2="-10.16" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-9.398" x2="-11.43" y2="-8.89" width="0.1524" layer="94"/>
<wire x1="-11.43" y1="-8.89" x2="-11.43" y2="-9.906" width="0.1524" layer="94"/>
<wire x1="-11.43" y1="-9.906" x2="-10.16" y2="-9.398" width="0.1524" layer="94"/>
<wire x1="-11.303" y1="-9.398" x2="-12.192" y2="-9.398" width="0.1524" layer="94"/>
<wire x1="-11.303" y1="-9.652" x2="-10.414" y2="-9.398" width="0.3048" layer="94"/>
<wire x1="-10.414" y1="-9.398" x2="-11.303" y2="-9.144" width="0.3048" layer="94"/>
<wire x1="-11.303" y1="-9.144" x2="-11.303" y2="-9.398" width="0.3048" layer="94"/>
<wire x1="-11.303" y1="-9.398" x2="-11.049" y2="-9.398" width="0.3048" layer="94"/>
<wire x1="-13.97" y1="-7.62" x2="-15.24" y2="-7.62" width="0.1524" layer="94"/>
<pin name="D1" x="-10.16" y="-2.54" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="D2" x="12.7" y="12.7" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="G1" x="-17.78" y="-7.62" visible="off" length="short" direction="pas"/>
<pin name="G2" x="5.08" y="7.62" visible="off" length="short" direction="pas"/>
<pin name="S1" x="-10.16" y="-12.7" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="S2" x="12.7" y="2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FDG6303N">
<description>&lt;b&gt;FDG6303N Dual N-Channel, Digital FET&lt;/b&gt;&lt;br&gt;
&lt;p&gt;These dual N-Channel logic level enhancement mode field effect transistors are produced using Fairchild's proprietary, high cell density, DMOS technology. This very high density process is especially tailored to minimize on-state resistance. This device has been designed especially for low voltage applications as a replacement for bipolar digital transistors and small signal MOSFETs.&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="MOSFET-DUAL-NCHANNEL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SC70-6">
<connects>
<connect gate="G$1" pin="D1" pad="3"/>
<connect gate="G$1" pin="D2" pad="6"/>
<connect gate="G$1" pin="G1" pad="5"/>
<connect gate="G$1" pin="G2" pad="2"/>
<connect gate="G$1" pin="S1" pad="4"/>
<connect gate="G$1" pin="S2" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="HF-Bauteile">
<packages>
<package name="ANT-433-USP">
<smd name="S1" x="-6" y="0" dx="4" dy="0.8" layer="1" rot="R90"/>
<wire x1="-6.15" y1="2.2" x2="6.15" y2="2.2" width="0.127" layer="21"/>
<wire x1="6.15" y1="2" x2="6.15" y2="-2" width="0.127" layer="51"/>
<wire x1="6.15" y1="-2.2" x2="-6.15" y2="-2.2" width="0.127" layer="21"/>
<wire x1="-6.15" y1="-2" x2="-6.15" y2="2" width="0.127" layer="51"/>
<smd name="P$4" x="6" y="0" dx="4" dy="0.8" layer="1" rot="R90"/>
<text x="0" y="0" size="1.016" layer="21" align="center">YAGEO S432</text>
<text x="-4.5" y="-1.5" size="0.6096" layer="21" align="center">S1</text>
</package>
</packages>
<symbols>
<symbol name="CHIP_ANT_MURATA">
<wire x1="0" y1="2.54" x2="25.4" y2="2.54" width="0.254" layer="94"/>
<wire x1="25.4" y1="2.54" x2="25.4" y2="-2.54" width="0.254" layer="94"/>
<wire x1="25.4" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="0" x2="22.606" y2="0" width="0.254" layer="94"/>
<wire x1="22.606" y1="0" x2="24.13" y2="1.524" width="0.254" layer="94"/>
<wire x1="22.606" y1="0" x2="24.13" y2="-1.524" width="0.254" layer="94"/>
<pin name="P$1" x="-5.08" y="0" length="middle"/>
<text x="0.254" y="3.302" size="1.27" layer="95">&gt;Name</text>
<text x="0" y="-4.318" size="1.27" layer="96">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="433CHIP">
<gates>
<gate name="G$1" symbol="CHIP_ANT_MURATA" x="-12.7" y="0"/>
</gates>
<devices>
<device name="" package="ANT-433-USP">
<connects>
<connect gate="G$1" pin="P$1" pad="S1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Aesthetics">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find non-functional items- supply symbols, logos, notations, frame blocks, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; CC v3.0 Share-Alike You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
</packages>
<symbols>
<symbol name="DGND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="DGND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="tag-connect_msp430">
<packages>
<package name="TC2030-MCP-NL-CP">
<description>&lt;B&gt;TAG-CONNECT ICSP Connector&lt;/B&gt;&lt;I&gt;- with optional copper pads for steel alignment pins&lt;/I&gt;&lt;BR&gt;&lt;I&gt;Manufacturer:&lt;/I&gt; &lt;a href="http://www.tag-connect.com"&gt;Tag-Connect&lt;/a&gt;&lt;BR&gt;
&lt;BR&gt;Cable for easy In-Circuit Serial Programming. Designed for Microchip ICD2, suitable for many others.
&lt;p&gt;
&lt;b&gt;NOTE:&lt;/b&gt; Eagle's default spacing for drill holes does not leave sufficent room for routing traces for this footprint and should be adjusted. &lt;br&gt;
This setting can be found in the board layout editor under the Edit menu.  Select "Design Rules" and then the Distance tab.  8 mils for Drill/Hole works well.
&lt;br&gt;
&lt;TABLE cellspacing=0 cellpadding=0 border=0&gt;
&lt;TR&gt;&lt;TD width=20&gt;&lt;/TD&gt;&lt;TD&gt;
&lt;TABLE cellspacing=0 cellpadding=1 border=1&gt;
&lt;TR bgcolor=silver&gt;&lt;TD align=center&gt;PAD&lt;/TD&gt;&lt;TD align=center&gt;Description&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;1&lt;/TD&gt;&lt;TD&gt;MCLR/Vpp&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;2&lt;/TD&gt;&lt;TD&gt;Vdd&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;3&lt;/TD&gt;&lt;TD&gt;GND&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;4&lt;/TD&gt;&lt;TD&gt;PGD (ISPDAT)&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;5&lt;/TD&gt;&lt;TD&gt;PGC (ISPCLK)&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;6&lt;/TD&gt;&lt;TD&gt;nc (used for LVP)&lt;/TD&gt;&lt;/TR&gt;
&lt;/TABLE&gt;
&lt;/TD&gt;&lt;/TR&gt;&lt;/TABLE&gt;&lt;BR&gt;&lt;BR&gt;

&lt;B&gt;Note:&lt;/B&gt; Suitable Receptacle pins are 0295-0-15-xx-06-xx-10-0 series from &lt;a href="www.mill-max.com"&gt;Mill-Max&lt;/a&gt;&lt;BR&gt;&lt;BR&gt;

©2009 ROFA.cz - modified and updated by Robert Darlington &amp;#8249;rdarlington@gmail.com&amp;#8250;</description>
<smd name="1" x="1.27" y="-0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="2" x="1.27" y="0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="3" x="2.54" y="-0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="4" x="2.54" y="0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="5" x="3.81" y="-0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="6" x="3.81" y="0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<text x="-1.27" y="1.905" size="1.27" layer="25">&gt;name</text>
<hole x="0" y="0" drill="1.6"/>
<hole x="5.08" y="1.016" drill="1.6"/>
<hole x="5.08" y="-1.016" drill="1.6"/>
<polygon width="0.0254" layer="39">
<vertex x="1.27" y="-0.2413"/>
<vertex x="1.6637" y="-0.2413"/>
<vertex x="1.6637" y="-0.635"/>
<vertex x="2.1463" y="-0.635"/>
<vertex x="2.1463" y="-0.2413"/>
<vertex x="2.9337" y="-0.2413"/>
<vertex x="2.9337" y="-0.635"/>
<vertex x="3.4163" y="-0.635"/>
<vertex x="3.4163" y="-0.2413"/>
<vertex x="3.81" y="-0.2413"/>
<vertex x="3.81" y="0.2413"/>
<vertex x="3.4163" y="0.2413"/>
<vertex x="3.4163" y="0.635"/>
<vertex x="2.9337" y="0.635"/>
<vertex x="2.9337" y="0.2413"/>
<vertex x="2.1463" y="0.2413"/>
<vertex x="2.1463" y="0.635"/>
<vertex x="1.6637" y="0.635"/>
<vertex x="1.6637" y="0.2413"/>
<vertex x="1.27" y="0.2413"/>
</polygon>
<polygon width="0.0254" layer="16">
<vertex x="3.556" y="-1.016" curve="90"/>
<vertex x="5.08" y="-2.54" curve="90"/>
<vertex x="6.604" y="-1.016"/>
<vertex x="6.604" y="1.016" curve="90"/>
<vertex x="5.08" y="2.54" curve="90"/>
<vertex x="3.556" y="1.016"/>
</polygon>
<polygon width="0.0254" layer="16">
<vertex x="-1.524" y="0" curve="-90"/>
<vertex x="0" y="1.524" curve="-90"/>
<vertex x="1.524" y="0" curve="-90"/>
<vertex x="0" y="-1.524" curve="-90"/>
</polygon>
<polygon width="0.254" layer="30">
<vertex x="3.556" y="-1.016" curve="90"/>
<vertex x="5.08" y="-2.54" curve="90"/>
<vertex x="6.604" y="-1.016"/>
<vertex x="6.604" y="1.016" curve="90"/>
<vertex x="5.08" y="2.54" curve="90"/>
<vertex x="3.556" y="1.016"/>
</polygon>
<polygon width="0.254" layer="30">
<vertex x="-1.524" y="0" curve="-90"/>
<vertex x="0" y="1.524" curve="-90"/>
<vertex x="1.524" y="0" curve="-90"/>
<vertex x="0" y="-1.524" curve="-90"/>
</polygon>
</package>
<package name="TC2030-MCP">
<description>&lt;b&gt;TAG-CONNECT ICSP Connector&lt;/b&gt; - Legged version&lt;BR&gt;&lt;I&gt;Manufacturer:&lt;/I&gt; &lt;a href="http://www.tag-connect.com"&gt;Tag-Connect&lt;/a&gt;
&lt;p&gt;
Cable for easy In-Circuit Serial Programming. Designed for Microchip ICD2, suitable for many others.
&lt;p&gt;
&lt;b&gt;NOTE:&lt;/b&gt; Eagle's default spacing for drill holes does not leave sufficent room for routing traces for this footprint and should be adjusted. &lt;br&gt;
This setting can be found in the board layout editor under the Edit menu.  Select "Design Rules" and then the Distance tab.  8 mils for Drill/Hole works well.
&lt;br&gt;
&lt;TABLE cellspacing=0 cellpadding=0 border=0&gt;
&lt;TR&gt;&lt;TD width=20&gt;&lt;/TD&gt;&lt;TD&gt;
&lt;TABLE cellspacing=0 cellpadding=1 border=1&gt;
&lt;TR bgcolor=silver&gt;&lt;TD align=center&gt;PAD&lt;/TD&gt;&lt;TD align=center&gt;Description&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;1&lt;/TD&gt;&lt;TD&gt;MCLR/Vpp&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;2&lt;/TD&gt;&lt;TD&gt;Vdd&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;3&lt;/TD&gt;&lt;TD&gt;GND&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;4&lt;/TD&gt;&lt;TD&gt;PGD (ISPDAT)&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;5&lt;/TD&gt;&lt;TD&gt;PGC (ISPCLK)&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;6&lt;/TD&gt;&lt;TD&gt;nc (used for LVP)&lt;/TD&gt;&lt;/TR&gt;
&lt;/TABLE&gt;
&lt;/TD&gt;&lt;/TR&gt;&lt;/TABLE&gt;&lt;BR&gt;&lt;BR&gt;
©2009 ROFA.cz - modified and updated by Robert Darlington &amp;#8249;rdarlington@gmail.com&amp;#8250;</description>
<smd name="1" x="1.27" y="-0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="2" x="1.27" y="0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="3" x="2.54" y="-0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="4" x="2.54" y="0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="5" x="3.81" y="-0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="6" x="3.81" y="0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<text x="-1.27" y="-2.54" size="1.27" layer="25" rot="R90">&gt;name</text>
<hole x="0" y="0" drill="0.889"/>
<hole x="5.08" y="-1.016" drill="0.889"/>
<hole x="5.08" y="1.016" drill="0.889"/>
<hole x="0" y="2.54" drill="2.3748"/>
<hole x="0" y="-2.54" drill="2.3748"/>
<hole x="3.175" y="-2.54" drill="2.3748"/>
<hole x="3.175" y="2.54" drill="2.3748"/>
<polygon width="0.0254" layer="39">
<vertex x="1.27" y="-0.2413"/>
<vertex x="1.6637" y="-0.2413"/>
<vertex x="1.6637" y="-0.635"/>
<vertex x="2.1463" y="-0.635"/>
<vertex x="2.1463" y="-0.2413"/>
<vertex x="2.9337" y="-0.2413"/>
<vertex x="2.9337" y="-0.635"/>
<vertex x="3.4163" y="-0.635"/>
<vertex x="3.4163" y="-0.2413"/>
<vertex x="3.81" y="-0.2413"/>
<vertex x="3.81" y="0.2413"/>
<vertex x="3.4163" y="0.2413"/>
<vertex x="3.4163" y="0.635"/>
<vertex x="2.9337" y="0.635"/>
<vertex x="2.9337" y="0.2413"/>
<vertex x="2.1463" y="0.2413"/>
<vertex x="2.1463" y="0.635"/>
<vertex x="1.6637" y="0.635"/>
<vertex x="1.6637" y="0.2413"/>
<vertex x="1.27" y="0.2413"/>
</polygon>
</package>
<package name="TC2030-MCP-NL">
<description>&lt;B&gt;TAG-CONNECT ICSP Connector&lt;/B&gt;&lt;BR&gt;&lt;I&gt;Manufacturer:&lt;/I&gt; &lt;a href="www.tag-connect.com"&gt;Tag-Connect&lt;/a&gt;&lt;BR&gt;
&lt;BR&gt;Cable for easy In-Circuit Serial Programming. Designed for Microchip ICD2, suitable for many others.&lt;BR&gt;

&lt;TABLE cellspacing=0 cellpadding=0 border=0&gt;
&lt;TR&gt;&lt;TD width=20&gt;&lt;/TD&gt;&lt;TD&gt;
&lt;TABLE cellspacing=0 cellpadding=1 border=1&gt;
&lt;TR bgcolor=silver&gt;&lt;TD align=center&gt;PAD&lt;/TD&gt;&lt;TD align=center&gt;Description&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;1&lt;/TD&gt;&lt;TD&gt;MCLR/Vpp&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;2&lt;/TD&gt;&lt;TD&gt;Vdd&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;3&lt;/TD&gt;&lt;TD&gt;GND&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;4&lt;/TD&gt;&lt;TD&gt;PGD (ISPDAT)&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;5&lt;/TD&gt;&lt;TD&gt;PGC (ISPCLK)&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;6&lt;/TD&gt;&lt;TD&gt;nc (used for LVP)&lt;/TD&gt;&lt;/TR&gt;
&lt;/TABLE&gt;
&lt;/TD&gt;&lt;/TR&gt;&lt;/TABLE&gt;&lt;BR&gt;&lt;BR&gt;

©2009 ROFA.cz - modified and updated by Robert Darlington &amp;#8249;rdarlington@gmail.com&amp;#8250;</description>
<smd name="1" x="1.27" y="-0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="2" x="1.27" y="0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="3" x="2.54" y="-0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="4" x="2.54" y="0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="5" x="3.81" y="-0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="6" x="3.81" y="0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;name</text>
<hole x="0" y="0" drill="0.889"/>
<hole x="5.08" y="-1.016" drill="0.889"/>
<hole x="5.08" y="1.016" drill="0.889"/>
<polygon width="0.0254" layer="39">
<vertex x="1.27" y="-0.2413"/>
<vertex x="1.6637" y="-0.2413"/>
<vertex x="1.6637" y="-0.635"/>
<vertex x="2.1463" y="-0.635"/>
<vertex x="2.1463" y="-0.2413"/>
<vertex x="2.9337" y="-0.2413"/>
<vertex x="2.9337" y="-0.635"/>
<vertex x="3.4163" y="-0.635"/>
<vertex x="3.4163" y="-0.2413"/>
<vertex x="3.81" y="-0.2413"/>
<vertex x="3.81" y="0.2413"/>
<vertex x="3.4163" y="0.2413"/>
<vertex x="3.4163" y="0.635"/>
<vertex x="2.9337" y="0.635"/>
<vertex x="2.9337" y="0.2413"/>
<vertex x="2.1463" y="0.2413"/>
<vertex x="2.1463" y="0.635"/>
<vertex x="1.6637" y="0.635"/>
<vertex x="1.6637" y="0.2413"/>
<vertex x="1.27" y="0.2413"/>
</polygon>
</package>
<package name="TC2030-MCP-NODRILLS">
<smd name="1" x="-1.27" y="-0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="2" x="-1.27" y="0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="3" x="0" y="-0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="4" x="0" y="0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="5" x="1.27" y="-0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<smd name="6" x="1.27" y="0.635" dx="0.7874" dy="0.7874" layer="1" roundness="100" cream="no"/>
<text x="-3.175" y="1.27" size="1.27" layer="25">&gt;name</text>
<polygon width="0.0254" layer="39">
<vertex x="-1.27" y="-0.2413"/>
<vertex x="-0.8763" y="-0.2413"/>
<vertex x="-0.8763" y="-0.635"/>
<vertex x="-0.3937" y="-0.635"/>
<vertex x="-0.3937" y="-0.2413"/>
<vertex x="0.3937" y="-0.2413"/>
<vertex x="0.3937" y="-0.635"/>
<vertex x="0.8763" y="-0.635"/>
<vertex x="0.8763" y="-0.2413"/>
<vertex x="1.27" y="-0.2413"/>
<vertex x="1.27" y="0.2413"/>
<vertex x="0.8763" y="0.2413"/>
<vertex x="0.8763" y="0.635"/>
<vertex x="0.3937" y="0.635"/>
<vertex x="0.3937" y="0.2413"/>
<vertex x="-0.3937" y="0.2413"/>
<vertex x="-0.3937" y="0.635"/>
<vertex x="-0.8763" y="0.635"/>
<vertex x="-0.8763" y="0.2413"/>
<vertex x="-1.27" y="0.2413"/>
</polygon>
<circle x="-2.54" y="0" radius="0.40160625" width="0.0254" layer="48"/>
</package>
</packages>
<symbols>
<symbol name="ICSP">
<circle x="5.842" y="9.144" radius="0.5679" width="0.254" layer="94"/>
<circle x="4.826" y="3.048" radius="0.5679" width="0.254" layer="94"/>
<circle x="6.858" y="3.048" radius="0.5679" width="0.254" layer="94"/>
<wire x1="-10.16" y1="10.16" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="8.89" y2="-7.62" width="0.254" layer="94"/>
<wire x1="8.89" y1="-7.62" x2="8.89" y2="10.16" width="0.254" layer="94"/>
<wire x1="8.89" y1="10.16" x2="-10.16" y2="10.16" width="0.254" layer="94"/>
<pin name="ICSP_CLK/PGC" x="-12.7" y="-2.54" length="short" direction="out"/>
<pin name="ICSP_DAT/PGD" x="-12.7" y="0" length="short"/>
<pin name="LVP" x="-12.7" y="-5.08" length="short"/>
<pin name="VDD" x="-12.7" y="5.08" length="short" direction="pwr"/>
<pin name="VPP/MCLR" x="-12.7" y="7.62" length="short" direction="pas"/>
<pin name="VSS(GND)" x="-12.7" y="2.54" length="short" direction="pwr"/>
<polygon width="0.254" layer="94">
<vertex x="6.096" y="7.62" curve="-90"/>
<vertex x="6.604" y="8.128" curve="-90"/>
<vertex x="7.112" y="7.62" curve="-90"/>
<vertex x="6.604" y="7.112" curve="-90"/>
</polygon>
<polygon width="0.254" layer="94">
<vertex x="4.572" y="7.62" curve="-90"/>
<vertex x="5.08" y="8.128" curve="-90"/>
<vertex x="5.588" y="7.62" curve="-90"/>
<vertex x="5.08" y="7.112" curve="-90"/>
</polygon>
<polygon width="0.254" layer="94">
<vertex x="6.096" y="6.096" curve="-90"/>
<vertex x="6.604" y="6.604" curve="-90"/>
<vertex x="7.112" y="6.096" curve="-90"/>
<vertex x="6.604" y="5.588" curve="-90"/>
</polygon>
<polygon width="0.254" layer="94">
<vertex x="4.572" y="6.096" curve="-90"/>
<vertex x="5.08" y="6.604" curve="-90"/>
<vertex x="5.588" y="6.096" curve="-90"/>
<vertex x="5.08" y="5.588" curve="-90"/>
</polygon>
<polygon width="0.254" layer="94">
<vertex x="4.572" y="4.572" curve="-90"/>
<vertex x="5.08" y="5.08" curve="-90"/>
<vertex x="5.588" y="4.572" curve="-90"/>
<vertex x="5.08" y="4.064" curve="-90"/>
</polygon>
<polygon width="0.254" layer="94">
<vertex x="6.096" y="4.572" curve="-90"/>
<vertex x="6.604" y="5.08" curve="-90"/>
<vertex x="7.112" y="4.572" curve="-90"/>
<vertex x="6.604" y="4.064" curve="-90"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="TC2030" prefix="J" uservalue="yes">
<description>&lt;h3&gt;TAG-CONNECT ICSP Connector&lt;/h3&gt;&lt;BR&gt;&lt;I&gt;Manufacturer:&lt;/I&gt; &lt;a href="http://www.tag-connect.com"&gt;Tag-Connect&lt;/a&gt;&lt;BR&gt;
&lt;BR&gt;Cable for easy In-Circuit Serial Programming. Designed for Microchip ICD2, suitable for many others.&lt;BR&gt;
Two variants - one "with legs" (for hands-free fit on PCB) and another "without legs" for quick programming.

&lt;p&gt;
&lt;TABLE cellspacing=0 cellpadding=0 border=0&gt;
&lt;TR&gt;&lt;TD width=20&gt;&lt;/TD&gt;&lt;TD&gt;
&lt;TABLE cellspacing=0 cellpadding=1 border=1&gt;
&lt;TR bgcolor=silver&gt;&lt;TD align=center&gt;PAD&lt;/TD&gt;&lt;TD align=center&gt;Description&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;1&lt;/TD&gt;&lt;TD&gt;MCLR/Vpp&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;2&lt;/TD&gt;&lt;TD&gt;Vdd&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;3&lt;/TD&gt;&lt;TD&gt;GND&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;4&lt;/TD&gt;&lt;TD&gt;PGD (ISPDAT)&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;5&lt;/TD&gt;&lt;TD&gt;PGC (ISPCLK)&lt;/TD&gt;&lt;/TR&gt;
&lt;TR&gt;&lt;TD align=center&gt;6&lt;/TD&gt;&lt;TD&gt;nc (used for LVP)&lt;/TD&gt;&lt;/TR&gt;
&lt;/TABLE&gt;
&lt;/TD&gt;&lt;/TR&gt;&lt;/TABLE&gt;&lt;BR&gt;&lt;BR&gt;

©2009 ROFA.cz - modified and updated by Robert Darlington &amp;#8249;rdarlington@gmail.com&amp;#8250;</description>
<gates>
<gate name="G$1" symbol="ICSP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TC2030-MCP-NL-CP">
<connects>
<connect gate="G$1" pin="ICSP_CLK/PGC" pad="5"/>
<connect gate="G$1" pin="ICSP_DAT/PGD" pad="4"/>
<connect gate="G$1" pin="LVP" pad="6"/>
<connect gate="G$1" pin="VDD" pad="2"/>
<connect gate="G$1" pin="VPP/MCLR" pad="1"/>
<connect gate="G$1" pin="VSS(GND)" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-MCP" package="TC2030-MCP">
<connects>
<connect gate="G$1" pin="ICSP_CLK/PGC" pad="5"/>
<connect gate="G$1" pin="ICSP_DAT/PGD" pad="4"/>
<connect gate="G$1" pin="LVP" pad="6"/>
<connect gate="G$1" pin="VDD" pad="2"/>
<connect gate="G$1" pin="VPP/MCLR" pad="1"/>
<connect gate="G$1" pin="VSS(GND)" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-MCP-NL" package="TC2030-MCP-NL">
<connects>
<connect gate="G$1" pin="ICSP_CLK/PGC" pad="5"/>
<connect gate="G$1" pin="ICSP_DAT/PGD" pad="4"/>
<connect gate="G$1" pin="LVP" pad="6"/>
<connect gate="G$1" pin="VDD" pad="2"/>
<connect gate="G$1" pin="VPP/MCLR" pad="1"/>
<connect gate="G$1" pin="VSS(GND)" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-NODRILLS" package="TC2030-MCP-NODRILLS">
<connects>
<connect gate="G$1" pin="ICSP_CLK/PGC" pad="5"/>
<connect gate="G$1" pin="ICSP_DAT/PGD" pad="4"/>
<connect gate="G$1" pin="LVP" pad="6"/>
<connect gate="G$1" pin="VDD" pad="2"/>
<connect gate="G$1" pin="VPP/MCLR" pad="1"/>
<connect gate="G$1" pin="VSS(GND)" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="esd11b">
<packages>
<package name="DSN2">
<wire x1="-0.31" y1="0.15" x2="0.13" y2="0.15" width="0.08" layer="51"/>
<wire x1="0.13" y1="0.15" x2="0.29" y2="0.15" width="0.08" layer="51"/>
<wire x1="-0.31" y1="0.15" x2="-0.31" y2="-0.15" width="0.08" layer="51"/>
<wire x1="0.29" y1="0.15" x2="0.29" y2="-0.15" width="0.08" layer="51"/>
<wire x1="-0.31" y1="-0.15" x2="0.13" y2="-0.15" width="0.08" layer="51"/>
<wire x1="0.13" y1="-0.15" x2="0.29" y2="-0.15" width="0.08" layer="51"/>
<wire x1="0.13" y1="0.15" x2="0.13" y2="-0.15" width="0.08" layer="51"/>
<rectangle x1="-0.43" y1="-0.2" x2="0.42" y2="0.2" layer="29"/>
<smd name="P$1" x="-0.24" y="0" dx="0.3" dy="0.28" layer="1" rot="R90" stop="no"/>
<smd name="P$2" x="0.23" y="0" dx="0.3" dy="0.28" layer="1" rot="R90" stop="no"/>
<text x="-0.77" y="0.25" size="0.3048" layer="25" ratio="5">&gt;NAME</text>
<text x="-0.77" y="-0.59" size="0.3048" layer="25" ratio="5">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="ESD11B">
<wire x1="-5.08" y1="0" x2="-0.5842" y2="0" width="0.254" layer="94"/>
<wire x1="-0.5842" y1="0" x2="-0.5842" y2="1.016" width="0.254" layer="94"/>
<wire x1="-0.5842" y1="1.016" x2="-0.9652" y2="1.397" width="0.254" layer="94"/>
<wire x1="-0.5842" y1="-1.016" x2="-0.5842" y2="0" width="0.254" layer="94"/>
<wire x1="-0.2032" y1="-1.397" x2="-0.5842" y2="-1.016" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="0.5588" y2="0" width="0.254" layer="94"/>
<wire x1="0.5588" y1="0" x2="-0.5842" y2="0" width="0.254" layer="94"/>
<wire x1="0.5588" y1="0" x2="0.5588" y2="-1.016" width="0.254" layer="94"/>
<wire x1="0.5588" y1="-1.016" x2="0.9398" y2="-1.397" width="0.254" layer="94"/>
<wire x1="0.5588" y1="1.016" x2="0.5588" y2="0" width="0.254" layer="94"/>
<wire x1="0.1778" y1="1.397" x2="0.5588" y2="1.016" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pwr"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pwr" rot="R180"/>
<text x="-5.08" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-5.08" size="1.778" layer="95">&gt;VALUE</text>
<polygon width="0.254" layer="94">
<vertex x="-2.0066" y="-1.27"/>
<vertex x="-2.0066" y="1.27"/>
<vertex x="-0.7366" y="0"/>
</polygon>
<polygon width="0.254" layer="94">
<vertex x="1.9812" y="1.27"/>
<vertex x="1.9812" y="-1.27"/>
<vertex x="0.7112" y="0"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESD11B" prefix="D">
<description>Transient Voltage Suppressor, Micro Packaged diodes for ESD protection

DSN Package

Datasheet:

http://www.onsemi.com/pub_link/Collateral/ESD11B-D.PDF</description>
<gates>
<gate name="D1" symbol="ESD11B" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DSN2">
<connects>
<connect gate="D1" pin="1" pad="P$1"/>
<connect gate="D1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun">
<packages>
<package name="1X02">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="MOLEX-1X2">
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="3.81" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796"/>
</package>
<package name="SCREWTERMINAL-3.5MM-2">
<wire x1="-1.75" y1="3.4" x2="5.25" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="3.4" x2="5.25" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="5.25" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.15" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-1.35" x2="-2.15" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.15" x2="5.65" y2="3.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.15" x2="5.65" y2="2.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="2.15" x2="5.25" y2="2.15" width="0.2032" layer="51"/>
<circle x="2" y="3" radius="0.2828" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="JST-2-SMD">
<description>2mm SMD side-entry connector. tDocu layer indicates the actual physical plastic housing. +/- indicate SparkFun standard batteries and wiring.</description>
<wire x1="-4" y1="-1" x2="-4" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="-4" y1="-4.5" x2="-3.2" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="-3.2" y1="-4.5" x2="-3.2" y2="-2" width="0.2032" layer="21"/>
<wire x1="-3.2" y1="-2" x2="-2" y2="-2" width="0.2032" layer="21"/>
<wire x1="2" y1="-2" x2="3.2" y2="-2" width="0.2032" layer="21"/>
<wire x1="3.2" y1="-2" x2="3.2" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="3.2" y1="-4.5" x2="4" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="4" y1="-4.5" x2="4" y2="-1" width="0.2032" layer="21"/>
<wire x1="2" y1="3" x2="-2" y2="3" width="0.2032" layer="21"/>
<smd name="1" x="-1" y="-3.7" dx="1" dy="4.6" layer="1"/>
<smd name="2" x="1" y="-3.7" dx="1" dy="4.6" layer="1"/>
<smd name="NC1" x="-3.4" y="1.5" dx="3.4" dy="1.6" layer="1" rot="R90"/>
<smd name="NC2" x="3.4" y="1.5" dx="3.4" dy="1.6" layer="1" rot="R90"/>
<text x="-1.27" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="0" size="0.4064" layer="27">&gt;Value</text>
<text x="2.159" y="-4.445" size="1.27" layer="51">+</text>
<text x="-2.921" y="-4.445" size="1.27" layer="51">-</text>
</package>
<package name="1X02_BIG">
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="5.08" y2="-1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="1.27" x2="-1.27" y2="1.27" width="0.127" layer="21"/>
<pad name="P$1" x="0" y="0" drill="1.0668"/>
<pad name="P$2" x="3.81" y="0" drill="1.0668"/>
</package>
<package name="JST-2-SMD-VERT">
<wire x1="-4.1" y1="2.97" x2="4.2" y2="2.97" width="0.2032" layer="51"/>
<wire x1="4.2" y1="2.97" x2="4.2" y2="-2.13" width="0.2032" layer="51"/>
<wire x1="4.2" y1="-2.13" x2="-4.1" y2="-2.13" width="0.2032" layer="51"/>
<wire x1="-4.1" y1="-2.13" x2="-4.1" y2="2.97" width="0.2032" layer="51"/>
<wire x1="-4.1" y1="3" x2="4.2" y2="3" width="0.2032" layer="21"/>
<wire x1="4.2" y1="3" x2="4.2" y2="2.3" width="0.2032" layer="21"/>
<wire x1="-4.1" y1="3" x2="-4.1" y2="2.3" width="0.2032" layer="21"/>
<wire x1="2" y1="-2.1" x2="4.2" y2="-2.1" width="0.2032" layer="21"/>
<wire x1="4.2" y1="-2.1" x2="4.2" y2="-1.7" width="0.2032" layer="21"/>
<wire x1="-2" y1="-2.1" x2="-4.1" y2="-2.1" width="0.2032" layer="21"/>
<wire x1="-4.1" y1="-2.1" x2="-4.1" y2="-1.8" width="0.2032" layer="21"/>
<smd name="P$1" x="-3.4" y="0.27" dx="3" dy="1.6" layer="1" rot="R90"/>
<smd name="P$2" x="3.4" y="0.27" dx="3" dy="1.6" layer="1" rot="R90"/>
<smd name="VCC" x="-1" y="-2" dx="1" dy="5.5" layer="1"/>
<smd name="GND" x="1" y="-2" dx="1" dy="5.5" layer="1"/>
<text x="2.54" y="-5.08" size="1.27" layer="25">&gt;Name</text>
<text x="2.24" y="3.48" size="1.27" layer="27">&gt;Value</text>
</package>
<package name="R_SW_TH">
<wire x1="-1.651" y1="19.2532" x2="-1.651" y2="-1.3716" width="0.2032" layer="21"/>
<wire x1="-1.651" y1="-1.3716" x2="-1.651" y2="-2.2352" width="0.2032" layer="21"/>
<wire x1="-1.651" y1="19.2532" x2="13.589" y2="19.2532" width="0.2032" layer="21"/>
<wire x1="13.589" y1="19.2532" x2="13.589" y2="-2.2352" width="0.2032" layer="21"/>
<wire x1="13.589" y1="-2.2352" x2="-1.651" y2="-2.2352" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="1.6002"/>
<pad name="P$2" x="0" y="16.9926" drill="1.6002"/>
<pad name="P$3" x="12.0904" y="15.494" drill="1.6002"/>
<pad name="P$4" x="12.0904" y="8.4582" drill="1.6002"/>
</package>
<package name="SCREWTERMINAL-5MM-2">
<wire x1="-3.1" y1="4.2" x2="8.1" y2="4.2" width="0.2032" layer="21"/>
<wire x1="8.1" y1="4.2" x2="8.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="8.1" y1="-2.3" x2="8.1" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="8.1" y1="-3.3" x2="-3.1" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-3.3" x2="-3.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-2.3" x2="-3.1" y2="4.2" width="0.2032" layer="21"/>
<wire x1="8.1" y1="-2.3" x2="-3.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-1.35" x2="-3.7" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-1.35" x2="-3.7" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-2.35" x2="-3.1" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="8.1" y1="4" x2="8.7" y2="4" width="0.2032" layer="51"/>
<wire x1="8.7" y1="4" x2="8.7" y2="3" width="0.2032" layer="51"/>
<wire x1="8.7" y1="3" x2="8.1" y2="3" width="0.2032" layer="51"/>
<circle x="2.5" y="3.7" radius="0.2828" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="1.3" diameter="2.032" shape="square"/>
<pad name="2" x="5" y="0" drill="1.3" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X02_LOCK">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="-0.1778" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.7178" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
</package>
<package name="MOLEX-1X2_LOCK">
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="3.81" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="-0.127" y="0" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.667" y="0" drill="1.016" diameter="1.8796"/>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
</package>
<package name="1X02_LOCK_LONGPADS">
<description>This footprint was designed to help hold the alignment of a through-hole component (i.e.  6-pin header) while soldering it into place.  
You may notice that each hole has been shifted either up or down by 0.005 of an inch from it's more standard position (which is a perfectly straight line).  
This slight alteration caused the pins (the squares in the middle) to touch the edges of the holes.  Because they are alternating, it causes a "brace" 
to hold the component in place.  0.005 has proven to be the perfect amount of "off-center" position when using our standard breakaway headers.
Although looks a little odd when you look at the bare footprint, once you have a header in there, the alteration is very hard to notice.  Also,
if you push a header all the way into place, it is covered up entirely on the bottom side.  This idea of altering the position of holes to aid alignment 
will be further integrated into the Sparkfun Library for other footprints.  It can help hold any component with 3 or more connection pins.</description>
<wire x1="1.651" y1="0" x2="0.889" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.016" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.9906" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.9906" x2="-0.9906" y2="1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-0.9906" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.9906" x2="-0.9906" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0" x2="3.556" y2="0" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="-0.9906" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.9906" x2="3.5306" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="0.9906" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.9906" x2="3.5306" y2="1.27" width="0.2032" layer="21"/>
<pad name="1" x="-0.127" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="2.667" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-1.27" y="1.778" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="-1.27" y="-3.302" size="1.27" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
</package>
<package name="SCREWTERMINAL-3.5MM-2_LOCK">
<wire x1="-1.75" y1="3.4" x2="5.25" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="3.4" x2="5.25" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="5.25" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.15" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-1.35" x2="-2.15" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.15" x2="5.65" y2="3.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.15" x2="5.65" y2="2.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="2.15" x2="5.25" y2="2.15" width="0.2032" layer="51"/>
<circle x="2" y="3" radius="0.2828" width="0.127" layer="51"/>
<circle x="0" y="0" radius="0.4318" width="0.0254" layer="51"/>
<circle x="3.5" y="0" radius="0.4318" width="0.0254" layer="51"/>
<pad name="1" x="-0.1778" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.6778" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X02_LONGPADS">
<pad name="1" x="0" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
</package>
<package name="1X02_NO_SILK">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="JST-2-PTH">
<wire x1="-2" y1="0" x2="-2" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="-2" y1="-1.8" x2="-3" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="-3" y1="-1.8" x2="-3" y2="6" width="0.2032" layer="21"/>
<wire x1="-3" y1="6" x2="3" y2="6" width="0.2032" layer="21"/>
<wire x1="3" y1="6" x2="3" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3" y1="-1.8" x2="2" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="2" y1="-1.8" x2="2" y2="0" width="0.2032" layer="21"/>
<pad name="1" x="-1" y="0" drill="0.7" diameter="1.4478"/>
<pad name="2" x="1" y="0" drill="0.7" diameter="1.4478"/>
<text x="-1.27" y="5.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="4" size="0.4064" layer="27">&gt;Value</text>
<text x="0.6" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
</package>
<package name="1X02_XTRA_BIG">
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="2.54" x2="-5.08" y2="2.54" width="0.127" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="2.0574" diameter="3.556"/>
<pad name="2" x="2.54" y="0" drill="2.0574" diameter="3.556"/>
</package>
<package name="1X02_PP_HOLES_ONLY">
<circle x="0" y="0" radius="0.635" width="0.127" layer="51"/>
<circle x="2.54" y="0" radius="0.635" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<hole x="0" y="0" drill="1.4732"/>
<hole x="2.54" y="0" drill="1.4732"/>
</package>
</packages>
<symbols>
<symbol name="M02">
<wire x1="3.81" y1="-2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-2.54" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="M02" prefix="JP" uservalue="yes">
<description>&lt;b&gt;Header 2&lt;/b&gt;
Standard 2-pin 0.1" header. Use with straight break away headers (SKU : PRT-00116), right angle break away headers (PRT-00553), swiss pins (PRT-00743), machine pins (PRT-00117), and female headers (PRT-00115). Molex polarized connector foot print use with SKU : PRT-08233 with associated crimp pins and housings.</description>
<gates>
<gate name="G$1" symbol="M02" x="-2.54" y="0"/>
</gates>
<devices>
<device name="PTH" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR" package="MOLEX-1X2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.5MM" package="SCREWTERMINAL-3.5MM-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-JST-2MM-SMT" package="JST-2-SMD">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH2" package="1X02_BIG">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4UCON-15767" package="JST-2-SMD-VERT">
<connects>
<connect gate="G$1" pin="1" pad="GND"/>
<connect gate="G$1" pin="2" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ROCKER" package="R_SW_TH">
<connects>
<connect gate="G$1" pin="1" pad="P$3"/>
<connect gate="G$1" pin="2" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5MM" package="SCREWTERMINAL-5MM-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK" package="1X02_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR_LOCK" package="MOLEX-1X2_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK_LONGPADS" package="1X02_LOCK_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.5MM_LOCK" package="SCREWTERMINAL-3.5MM-2_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH3" package="1X02_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1X02_NO_SILK" package="1X02_NO_SILK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-2" package="JST-2-PTH">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH4" package="1X02_XTRA_BIG">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POGO_PIN_HOLES_ONLY" package="1X02_PP_HOLES_ONLY">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="tiny_passives">
<packages>
<package name="0402">
<wire x1="-0.49" y1="0.2" x2="-0.49" y2="-0.2" width="0.127" layer="51"/>
<wire x1="-0.49" y1="-0.2" x2="0.56" y2="-0.2" width="0.127" layer="51"/>
<wire x1="0.56" y1="-0.2" x2="0.56" y2="0.2" width="0.127" layer="51"/>
<wire x1="0.56" y1="0.2" x2="-0.49" y2="0.2" width="0.127" layer="51"/>
<smd name="1" x="-0.49" y="0" dx="0.6" dy="0.6" layer="1" rot="R180"/>
<smd name="2" x="0.51" y="0" dx="0.6" dy="0.6" layer="1" rot="R180"/>
<text x="-0.64" y="0.4" size="0.254" layer="25">&gt;NAME</text>
<text x="-0.69" y="-0.6" size="0.254" layer="27">&gt;VALUE</text>
</package>
<package name="0603">
<smd name="1" x="-0.85" y="0" dx="1.2" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.2" dy="1.1" layer="1"/>
<wire x1="0" y1="0.3" x2="0" y2="-0.3" width="0.127" layer="51"/>
<wire x1="-0.9" y1="0.4" x2="1" y2="0.4" width="0.254" layer="51"/>
<wire x1="1" y1="0.4" x2="1" y2="-0.4" width="0.254" layer="51"/>
<wire x1="1" y1="-0.4" x2="-0.9" y2="-0.4" width="0.254" layer="51"/>
<wire x1="-0.9" y1="-0.4" x2="-0.9" y2="0.4" width="0.254" layer="51"/>
<text x="-1.27" y="0.635" size="0.254" layer="25">&gt;NAME</text>
<text x="-1.27" y="-0.889" size="0.254" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="C-EU">
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<text x="1.524" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-4.699" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="R-EU">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.1524" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.1524" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="C-EU" prefix="C" uservalue="yes">
<gates>
<gate name="C1" symbol="C-EU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0402">
<connects>
<connect gate="C1" pin="1" pad="1"/>
<connect gate="C1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603" package="0603">
<connects>
<connect gate="C1" pin="1" pad="1"/>
<connect gate="C1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="R-EU" prefix="R" uservalue="yes">
<gates>
<gate name="R1" symbol="R-EU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0402">
<connects>
<connect gate="R1" pin="1" pad="1"/>
<connect gate="R1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603" package="0603">
<connects>
<connect gate="R1" pin="1" pad="1"/>
<connect gate="R1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Capacitors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find resistors, capacitors, inductors, test points, jumper pads, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="0805">
<wire x1="-0.3" y1="0.6" x2="0.3" y2="0.6" width="0.1524" layer="21"/>
<wire x1="-0.3" y1="-0.6" x2="0.3" y2="-0.6" width="0.1524" layer="21"/>
<smd name="1" x="-0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<text x="-0.762" y="0.8255" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.397" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="CAP-PTH-SMALL">
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="0.7" diameter="1.651"/>
<pad name="2" x="2.54" y="0" drill="0.7" diameter="1.651"/>
<text x="0.508" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="0.254" y="-1.524" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="CAP-PTH-SMALL2">
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="3.81" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="-1.27" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="0.7" diameter="1.651"/>
<pad name="2" x="2.54" y="0" drill="0.7" diameter="1.651"/>
<text x="-1.27" y="1.905" size="0.6096" layer="25">&gt;Name</text>
<text x="-1.27" y="-2.54" size="0.6096" layer="27">&gt;Value</text>
</package>
<package name="CAP-PTH-LARGE">
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.2032" layer="21"/>
<pad name="1" x="-4.826" y="0" drill="0.9" diameter="1.905"/>
<pad name="2" x="4.572" y="0" drill="0.9" diameter="1.905"/>
<text x="-0.762" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.016" y="-1.524" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="GRM43D">
<wire x1="2.25" y1="1.6" x2="1.1" y2="1.6" width="0.127" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1.1" y2="1.6" width="0.127" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-2.25" y2="1.6" width="0.127" layer="51"/>
<wire x1="-2.25" y1="1.6" x2="-2.25" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-2.25" y1="-1.6" x2="-1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="1.1" y1="-1.6" x2="2.25" y2="-1.6" width="0.127" layer="51"/>
<wire x1="2.25" y1="-1.6" x2="2.25" y2="1.6" width="0.127" layer="51"/>
<wire x1="1.1" y1="1.6" x2="1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-2.3" y1="1.8" x2="2.3" y2="1.8" width="0.127" layer="21"/>
<wire x1="-2.3" y1="-1.8" x2="2.3" y2="-1.8" width="0.127" layer="21"/>
<smd name="A" x="1.927" y="0" dx="3.2" dy="1.65" layer="1" rot="R90"/>
<smd name="C" x="-1.927" y="0" dx="3.2" dy="1.65" layer="1" rot="R90"/>
<text x="-2" y="2" size="0.4064" layer="25">&gt;NAME</text>
<text x="0" y="-2" size="0.4064" layer="27" rot="R180">&gt;VALUE</text>
<rectangle x1="-2.2" y1="-1.6" x2="-1.1" y2="1.6" layer="51"/>
<rectangle x1="1.1" y1="-1.6" x2="2.2" y2="1.6" layer="51"/>
</package>
<package name="0603-CAP">
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<wire x1="0" y1="0.027940625" x2="0" y2="-0.027940625" width="0.381" layer="21"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="0402-CAP">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="0" y1="0.0305" x2="0" y2="-0.0305" width="0.4064" layer="21"/>
<smd name="1" x="-0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<smd name="2" x="0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<text x="-0.889" y="0.6985" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.0795" y="-1.143" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="CAP-PTH-5MM">
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="-2.5" y="0" drill="0.7" diameter="1.651"/>
<pad name="2" x="2.5" y="0" drill="0.7" diameter="1.651"/>
<text x="-0.762" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.016" y="-1.524" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="AXIAL-5MM">
<wire x1="-1.14" y1="0.762" x2="1.14" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.14" y1="0.762" x2="1.14" y2="0" width="0.2032" layer="21"/>
<wire x1="1.14" y1="0" x2="1.14" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="1.14" y1="-0.762" x2="-1.14" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-1.14" y1="-0.762" x2="-1.14" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.14" y1="0" x2="-1.14" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.14" y1="0" x2="1.394" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.14" y1="0" x2="-1.394" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-2.5" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="2.5" y="0" drill="0.9" diameter="1.8796"/>
<text x="-2.54" y="1.17" size="0.4" layer="25">&gt;Name</text>
<text x="-1.032" y="-0.208" size="0.4" layer="21" ratio="15">&gt;Value</text>
</package>
<package name="1210">
<wire x1="-1.6" y1="1.3" x2="1.6" y2="1.3" width="0.127" layer="51"/>
<wire x1="1.6" y1="1.3" x2="1.6" y2="-1.3" width="0.127" layer="51"/>
<wire x1="1.6" y1="-1.3" x2="-1.6" y2="-1.3" width="0.127" layer="51"/>
<wire x1="-1.6" y1="-1.3" x2="-1.6" y2="1.3" width="0.127" layer="51"/>
<wire x1="-1.6" y1="1.3" x2="1.6" y2="1.3" width="0.2032" layer="21"/>
<wire x1="-1.6" y1="-1.3" x2="1.6" y2="-1.3" width="0.2032" layer="21"/>
<smd name="1" x="-1.6" y="0" dx="1.2" dy="2" layer="1"/>
<smd name="2" x="1.6" y="0" dx="1.2" dy="2" layer="1"/>
<text x="-0.8" y="0.5" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.9" y="-0.7" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1206">
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.143" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.397" y="-1.524" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="CTZ3">
<description>CTZ3 Series land pattern for variable capacitor - CTZ3E-50C-W1-PF</description>
<wire x1="-1.6" y1="1.4" x2="-1.6" y2="-2.25" width="0.127" layer="51"/>
<wire x1="-1.6" y1="-2.25" x2="1.6" y2="-2.25" width="0.127" layer="51"/>
<wire x1="1.6" y1="1.4" x2="1.6" y2="-2.25" width="0.127" layer="51"/>
<wire x1="-0.5" y1="0" x2="0.5" y2="0" width="0.127" layer="51"/>
<wire x1="-1.6" y1="1.4" x2="-1" y2="2.2" width="0.127" layer="51"/>
<wire x1="1.6" y1="1.4" x2="1" y2="2.2" width="0.127" layer="51"/>
<wire x1="-1" y1="2.2" x2="1" y2="2.2" width="0.127" layer="51"/>
<wire x1="0" y1="0.8" x2="0" y2="-0.8" width="0.127" layer="51"/>
<wire x1="-0.8" y1="0" x2="0.8" y2="0" width="0.127" layer="51"/>
<wire x1="-1.05" y1="2.25" x2="-1.7" y2="1.45" width="0.127" layer="21"/>
<wire x1="-1.7" y1="1.45" x2="-1.7" y2="-2.35" width="0.127" layer="21"/>
<wire x1="-1.7" y1="-2.35" x2="-1.05" y2="-2.35" width="0.127" layer="21"/>
<wire x1="1.05" y1="2.25" x2="1.7" y2="1.4" width="0.127" layer="21"/>
<wire x1="1.7" y1="1.4" x2="1.7" y2="-2.35" width="0.127" layer="21"/>
<wire x1="1.7" y1="-2.35" x2="1.05" y2="-2.35" width="0.127" layer="21"/>
<smd name="+" x="0" y="2.05" dx="1.5" dy="1.2" layer="1"/>
<smd name="-" x="0" y="-2.05" dx="1.5" dy="1.2" layer="1"/>
<text x="-2" y="3" size="0.4064" layer="25">&gt;NAME</text>
<text x="-2" y="-3.4" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="CAP-PTH-SMALL-KIT">
<description>&lt;h3&gt;CAP-PTH-SMALL-KIT&lt;/h3&gt;
Commonly used for small ceramic capacitors. Like our 0.1uF (http://www.sparkfun.com/products/8375) or 22pF caps (http://www.sparkfun.com/products/8571).&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of this package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-2.667" y1="1.27" x2="2.667" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.667" y1="1.27" x2="2.667" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.667" y1="-1.27" x2="-2.667" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.667" y1="-1.27" x2="-2.667" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-1.397" y="0" drill="1.016" diameter="2.032" stop="no"/>
<pad name="2" x="1.397" y="0" drill="1.016" diameter="2.032" stop="no"/>
<polygon width="0.127" layer="30">
<vertex x="-1.4021" y="-0.9475" curve="-90"/>
<vertex x="-2.357" y="-0.0178" curve="-90.011749"/>
<vertex x="-1.4046" y="0.9576" curve="-90"/>
<vertex x="-0.4546" y="-0.0204" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-1.4046" y="-0.4395" curve="-90.012891"/>
<vertex x="-1.8491" y="-0.0153" curve="-90"/>
<vertex x="-1.4046" y="0.452" curve="-90"/>
<vertex x="-0.9627" y="-0.0051" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="1.397" y="-0.9475" curve="-90"/>
<vertex x="0.4421" y="-0.0178" curve="-90.011749"/>
<vertex x="1.3945" y="0.9576" curve="-90"/>
<vertex x="2.3445" y="-0.0204" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="1.3945" y="-0.4395" curve="-90.012891"/>
<vertex x="0.95" y="-0.0153" curve="-90"/>
<vertex x="1.3945" y="0.452" curve="-90"/>
<vertex x="1.8364" y="-0.0051" curve="-90.012967"/>
</polygon>
</package>
<package name="CAP-PTH-SMALLEZ">
<description>This is the "EZ" version of the .1" spaced ceramic thru-hole cap.&lt;br&gt;
It has reduced top mask to make it harder to put the component on the wrong side of the board.</description>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="3.81" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="-1.27" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="0.7" diameter="1.651" stop="no"/>
<pad name="2" x="2.54" y="0" drill="0.7" diameter="1.651" stop="no"/>
<text x="-1.27" y="1.905" size="0.6096" layer="25">&gt;Name</text>
<text x="-1.27" y="-2.54" size="0.6096" layer="27">&gt;Value</text>
<circle x="0" y="0" radius="0.898025" width="0" layer="30"/>
<circle x="2.54" y="0" radius="0.915809375" width="0" layer="30"/>
<circle x="0" y="0" radius="0.40160625" width="0" layer="29"/>
<circle x="2.54" y="0" radius="0.40160625" width="0" layer="29"/>
</package>
</packages>
<symbols>
<symbol name="CAP">
<wire x1="0" y1="2.54" x2="0" y2="2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="0.508" width="0.1524" layer="94"/>
<text x="1.524" y="2.921" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-2.159" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="0.508" x2="2.032" y2="1.016" layer="94"/>
<rectangle x1="-2.032" y1="1.524" x2="2.032" y2="2.032" layer="94"/>
<pin name="1" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CAP" prefix="C" uservalue="yes">
<description>&lt;b&gt;Capacitor&lt;/b&gt;
Standard 0603 ceramic capacitor, and 0.1" leaded capacitor.</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="PTH" package="CAP-PTH-SMALL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH2" package="CAP-PTH-SMALL2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH3" package="CAP-PTH-LARGE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD" package="GRM43D">
<connects>
<connect gate="G$1" pin="1" pad="A"/>
<connect gate="G$1" pin="2" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603-CAP" package="0603-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0402-CAP" package="0402-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH1" package="CAP-PTH-5MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_" package="AXIAL-5MM">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1210" package="1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ASMD" package="CTZ3">
<connects>
<connect gate="G$1" pin="1" pad="+"/>
<connect gate="G$1" pin="2" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KIT" package="CAP-PTH-SMALL-KIT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="EZ" package="CAP-PTH-SMALLEZ">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="msp430" deviceset="MSP430FR5969_RGZ_48" device="">
<attribute name="DIGIKEY" value="296-37875-1-ND"/>
<attribute name="MOUSER" value="595-SP430FR5969IRGZR"/>
</part>
<part name="MSP1" library="msp430" deviceset="MSP430FR6989_PZ100" device="">
<attribute name="DIGIKEY" value="296-38379-5-ND"/>
<attribute name="MOUSER" value="595-MSP430FR6989IPZ"/>
</part>
<part name="U2" library="ncp583" deviceset="NCP583" device="">
<attribute name="DIGIKEY" value="NCP583SQ33T1GOSCT-ND"/>
<attribute name="MOUSER" value="863-NCP583SQ33T1G"/>
</part>
<part name="U3" library="max9938" deviceset="MAX9938" device="">
<attribute name="DIGIKEY" value="MAX9938WEUK+TCT-ND"/>
<attribute name="MOUSER" value="700-MAX9938WEUK+T"/>
</part>
<part name="IC1" library="cc1101" deviceset="CC1101" device="">
<attribute name="DIGIKEY" value="296-35718-1-ND"/>
<attribute name="MOUSER" value="595-CC1101RGPR"/>
</part>
<part name="U4" library="johanson-baluns" deviceset="0896BM15A0001" device="">
<attribute name="DIGIKEY" value="712-1474-1-ND"/>
<attribute name="MOUSER" value="609-0896BM15A0001E"/>
</part>
<part name="U5" library="adxl362" deviceset="ADXL362" device="">
<attribute name="DIGIKEY" value="ADXL362BCCZ-RL7CT-ND"/>
<attribute name="MOUSER" value="584-ADXL362BCCZ-R7"/>
</part>
<part name="U$1" library="fdg6303n" deviceset="FDG6303N" device="">
<attribute name="DIGIKEY" value="FDG6303NCT-ND"/>
<attribute name="MOUSER" value="512-FDG6303N"/>
</part>
<part name="X1" library="cc1101" deviceset="XTAL" device="-3.2X2.5">
<attribute name="DIGIKEY" value="644-1261-1-ND"/>
<attribute name="MOUSER" value="??????"/>
</part>
<part name="ANT" library="HF-Bauteile" deviceset="433CHIP" device="">
<attribute name="DIGIKEY" value="ANT-433-USP-ND"/>
<attribute name="MOUSER" value="712-ANT-433-USP"/>
</part>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="U$2" library="fdg6303n" deviceset="FDG6303N" device="">
<attribute name="DIGIKEY" value="FDG6303NCT-ND"/>
<attribute name="MOUSER" value="512-FDG6303N"/>
</part>
<part name="GND9" library="supply1" deviceset="GND" device=""/>
<part name="GND10" library="supply1" deviceset="GND" device=""/>
<part name="GND11" library="supply1" deviceset="GND" device=""/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="GND12" library="supply1" deviceset="GND" device=""/>
<part name="GND13" library="supply1" deviceset="GND" device=""/>
<part name="GND14" library="supply1" deviceset="GND" device=""/>
<part name="GND15" library="supply1" deviceset="GND" device=""/>
<part name="J1" library="tag-connect_msp430" deviceset="TC2030" device="-MCP-NL"/>
<part name="GND16" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="D1" library="esd11b" deviceset="ESD11B" device="">
<attribute name="DIGIKEY" value="ESD11B5.0ST5GOSCT-ND"/>
<attribute name="MOUSER" value="ESD11B5.0ST5G"/>
</part>
<part name="GND17" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="J2" library="tag-connect_msp430" deviceset="TC2030" device="-MCP-NL"/>
<part name="GND18" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="D2" library="esd11b" deviceset="ESD11B" device="">
<attribute name="DIGIKEY" value="ESD11B5.0ST5GOSCT-ND"/>
<attribute name="MOUSER" value="ESD11B5.0ST5G"/>
</part>
<part name="GND19" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="JP7" library="SparkFun" deviceset="M02" device="-JST-2MM-SMT" value="LiPo Battery">
<attribute name="DIGIKEY" value="455-1749-1-ND"/>
<attribute name="MOUSER" value="???????"/>
</part>
<part name="C1" library="SparkFun-Capacitors" deviceset="CAP" device="0805" value="33uF">
<attribute name="DIGIKEY" value="445-5986-1-ND"/>
<attribute name="MOUSER" value="810-C2012X5R0J336M"/>
</part>
<part name="C2" library="tiny_passives" deviceset="C-EU" device="" value="2.2nF">
<attribute name="DIGIKEY" value="311-1037-1-ND"/>
<attribute name="MOUSER" value="603-CC402KRX7R9BB222"/>
</part>
<part name="C3" library="tiny_passives" deviceset="C-EU" device="" value="2.2nF">
<attribute name="DIGIKEY" value="311-1037-1-ND"/>
<attribute name="MOUSER" value="603-CC402KRX7R9BB222"/>
</part>
<part name="C4" library="tiny_passives" deviceset="C-EU" device="" value="1uF">
<attribute name="DIGIKEY" value="311-1439-1-ND"/>
<attribute name="MOUSER" value="603-CC402KRX5R6BB105"/>
</part>
<part name="C5" library="tiny_passives" deviceset="C-EU" device="" value="0.1uF">
<attribute name="DIGIKEY" value="311-1338-1-ND"/>
<attribute name="MOUSER" value="603-CC402KRX7R7BB104"/>
</part>
<part name="C6" library="tiny_passives" deviceset="C-EU" device="" value="0.1uF">
<attribute name="DIGIKEY" value="311-1338-1-ND"/>
<attribute name="MOUSER" value="603-CC402KRX7R7BB104"/>
</part>
<part name="C7" library="tiny_passives" deviceset="C-EU" device="" value="1uF">
<attribute name="DIGIKEY" value="311-1439-1-ND"/>
<attribute name="MOUSER" value="603-CC402KRX5R6BB105"/>
</part>
<part name="C8" library="tiny_passives" deviceset="C-EU" device="" value="1uF">
<attribute name="DIGIKEY" value="311-1439-1-ND"/>
<attribute name="MOUSER" value="603-CC402KRX5R6BB105"/>
</part>
<part name="C9" library="tiny_passives" deviceset="C-EU" device="" value="0.1uF">
<attribute name="DIGIKEY" value="311-1338-1-ND"/>
<attribute name="MOUSER" value="603-CC402KRX7R7BB104"/>
</part>
<part name="C10" library="tiny_passives" deviceset="C-EU" device="" value="0.1uF">
<attribute name="DIGIKEY" value="311-1338-1-ND"/>
<attribute name="MOUSER" value="603-CC402KRX7R7BB104"/>
</part>
<part name="C11" library="tiny_passives" deviceset="C-EU" device="" value="12pF">
<attribute name="DIGIKEY" value="1276-1178-1-ND"/>
<attribute name="MOUSER" value="81-GJM1555C1HR12BB1D"/>
</part>
<part name="C12" library="tiny_passives" deviceset="C-EU" device="" value="12pF">
<attribute name="DIGIKEY" value="1276-1178-1-ND"/>
<attribute name="MOUSER" value="81-GJM1555C1HR12BB1D"/>
</part>
<part name="R1" library="tiny_passives" deviceset="R-EU" device="" value="10">
<attribute name="DIGIKEY" value="YAG3340CT-ND"/>
<attribute name="MOUSER" value="603-RT0402BRD0710RL"/>
</part>
<part name="R2" library="tiny_passives" deviceset="R-EU" device="" value="1M">
<attribute name="DIGIKEY" value="311-1.00MLRCT-ND"/>
<attribute name="MOUSER" value="603-RC0402FR-071ML"/>
</part>
<part name="R3" library="tiny_passives" deviceset="R-EU" device="" value="1M">
<attribute name="DIGIKEY" value="311-1.00MLRCT-ND"/>
<attribute name="MOUSER" value="603-RC0402FR-071ML"/>
</part>
<part name="R4" library="tiny_passives" deviceset="R-EU" device="" value="47k">
<attribute name="DIGIKEY" value="311-47.0KLRCT-ND"/>
<attribute name="MOUSER" value="603-RC0402FR-0747KL"/>
</part>
<part name="R5" library="tiny_passives" deviceset="R-EU" device="" value="47k">
<attribute name="DIGIKEY" value="311-47.0KLRCT-ND"/>
<attribute name="MOUSER" value="603-RC0402FR-0747KL"/>
</part>
<part name="R7" library="tiny_passives" deviceset="R-EU" device="" value="56k">
<attribute name="DIGIKEY" value="311-56KJRCT-ND"/>
<attribute name="MOUSER" value="603-RC0402JR-0756KL"/>
</part>
<part name="R8" library="tiny_passives" deviceset="R-EU" device="" value="10k">
<attribute name="DIGIKEY" value="311-10KJRCT-ND"/>
<attribute name="MOUSER" value="603-RC0402JR-0710KL"/>
</part>
<part name="R9" library="tiny_passives" deviceset="R-EU" device="" value="10k">
<attribute name="DIGIKEY" value="311-10KJRCT-ND"/>
<attribute name="MOUSER" value="603-RC0402JR-0710KL"/>
</part>
<part name="R10" library="tiny_passives" deviceset="R-EU" device="" value="10k">
<attribute name="DIGIKEY" value="311-10KJRCT-ND"/>
<attribute name="MOUSER" value="603-RC0402JR-0710KL"/>
</part>
<part name="R11" library="tiny_passives" deviceset="R-EU" device="" value="10k">
<attribute name="DIGIKEY" value="311-10KJRCT-ND"/>
<attribute name="MOUSER" value="603-RC0402JR-0710KL"/>
</part>
<part name="R12" library="tiny_passives" deviceset="R-EU" device="" value="10k">
<attribute name="DIGIKEY" value="311-10KJRCT-ND"/>
<attribute name="MOUSER" value="603-RC0402JR-0710KL"/>
</part>
<part name="R13" library="tiny_passives" deviceset="R-EU" device="" value="10k">
<attribute name="DIGIKEY" value="311-10KJRCT-ND"/>
<attribute name="MOUSER" value="603-RC0402JR-0710KL"/>
</part>
<part name="R14" library="tiny_passives" deviceset="R-EU" device="" value="10k">
<attribute name="DIGIKEY" value="311-10KJRCT-ND"/>
<attribute name="MOUSER" value="603-RC0402JR-0710KL"/>
</part>
<part name="R15" library="tiny_passives" deviceset="R-EU" device="" value="10k">
<attribute name="DIGIKEY" value="311-10KJRCT-ND"/>
<attribute name="MOUSER" value="603-RC0402JR-0710KL"/>
</part>
<part name="R16" library="tiny_passives" deviceset="R-EU" device="" value="10k">
<attribute name="DIGIKEY" value="311-10KJRCT-ND"/>
<attribute name="MOUSER" value="603-RC0402JR-0710KL"/>
</part>
<part name="R17" library="tiny_passives" deviceset="R-EU" device="" value="10k">
<attribute name="DIGIKEY" value="311-10KJRCT-ND"/>
<attribute name="MOUSER" value="603-RC0402JR-0710KL"/>
</part>
</parts>
<sheets>
<sheet>
<plain>
<text x="449.58" y="-22.86" size="1.778" layer="91">433MHz
ANT1204F002R0433A</text>
<text x="5.08" y="5.08" size="5.08" layer="91">Power Regulator</text>
<text x="58.42" y="-30.48" size="5.08" layer="91">Current Sense</text>
<text x="58.42" y="-73.66" size="5.08" layer="91">Voltage Sense</text>
<text x="-10.16" y="-73.66" size="5.08" layer="91">Power Gating</text>
<text x="157.48" y="7.62" size="5.08" layer="91">Shoulder Angel Processor</text>
<text x="347.98" y="7.62" size="5.08" layer="91">CC1101 Radio</text>
<text x="332.74" y="-88.9" size="5.08" layer="91">ADXL362 Accelerometer</text>
<text x="172.72" y="-132.08" size="5.08" layer="91">Target Processor </text>
<text x="20.32" y="-165.1" size="5.08" layer="91">Programmers</text>
<text x="-10.16" y="-200.66" size="5.08" layer="97">SA_Programmer</text>
<text x="-5.08" y="-271.78" size="5.08" layer="97">Target Programmer</text>
</plain>
<instances>
<instance part="U1" gate="B" x="198.12" y="-58.42">
<attribute name="DIGIKEY" x="198.12" y="-58.42" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="198.12" y="-58.42" size="1.778" layer="96" display="off"/>
</instance>
<instance part="MSP1" gate="G$1" x="210.82" y="-215.9">
<attribute name="DIGIKEY" x="210.82" y="-215.9" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="210.82" y="-215.9" size="1.778" layer="96" display="off"/>
</instance>
<instance part="U2" gate="G$1" x="30.48" y="-12.7">
<attribute name="DIGIKEY" x="30.48" y="-12.7" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="30.48" y="-12.7" size="1.778" layer="96" display="off"/>
</instance>
<instance part="U3" gate="G$1" x="78.74" y="-45.72">
<attribute name="DIGIKEY" x="78.74" y="-45.72" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="78.74" y="-45.72" size="1.778" layer="96" display="off"/>
</instance>
<instance part="IC1" gate="G$1" x="345.44" y="-30.48">
<attribute name="DIGIKEY" x="345.44" y="-30.48" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="345.44" y="-30.48" size="1.778" layer="96" display="off"/>
</instance>
<instance part="U4" gate="G$1" x="419.1" y="-33.02">
<attribute name="DIGIKEY" x="419.1" y="-33.02" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="419.1" y="-33.02" size="1.778" layer="96" display="off"/>
</instance>
<instance part="U5" gate="G$1" x="363.22" y="-114.3">
<attribute name="DIGIKEY" x="363.22" y="-114.3" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="363.22" y="-114.3" size="1.778" layer="96" display="off"/>
</instance>
<instance part="U$1" gate="G$1" x="20.32" y="-91.44" rot="R90">
<attribute name="DIGIKEY" x="20.32" y="-91.44" size="1.778" layer="96" rot="R90" display="off"/>
<attribute name="MOUSER" x="20.32" y="-91.44" size="1.778" layer="96" rot="R90" display="off"/>
</instance>
<instance part="X1" gate="G$1" x="396.24" y="-48.26">
<attribute name="DIGIKEY" x="396.24" y="-48.26" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="396.24" y="-48.26" size="1.778" layer="96" display="off"/>
</instance>
<instance part="ANT" gate="G$1" x="449.58" y="-27.94">
<attribute name="DIGIKEY" x="449.58" y="-27.94" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="449.58" y="-27.94" size="1.778" layer="96" display="off"/>
</instance>
<instance part="GND1" gate="1" x="17.78" y="-22.86"/>
<instance part="GND2" gate="1" x="45.72" y="-30.48"/>
<instance part="GND3" gate="1" x="81.28" y="-96.52"/>
<instance part="GND4" gate="1" x="81.28" y="-60.96"/>
<instance part="GND5" gate="1" x="241.3" y="-22.86"/>
<instance part="GND6" gate="1" x="157.48" y="-33.02"/>
<instance part="GND7" gate="1" x="292.1" y="-48.26"/>
<instance part="U$2" gate="G$1" x="-2.54" y="-114.3" rot="R90">
<attribute name="DIGIKEY" x="-2.54" y="-114.3" size="1.778" layer="96" rot="R90" display="off"/>
<attribute name="MOUSER" x="-2.54" y="-114.3" size="1.778" layer="96" rot="R90" display="off"/>
</instance>
<instance part="GND9" gate="1" x="368.3" y="-58.42"/>
<instance part="GND10" gate="1" x="396.24" y="-63.5"/>
<instance part="GND11" gate="1" x="370.84" y="-124.46"/>
<instance part="GND8" gate="1" x="386.08" y="-27.94" rot="R90"/>
<instance part="GND12" gate="1" x="256.54" y="-213.36"/>
<instance part="GND13" gate="1" x="274.32" y="-269.24"/>
<instance part="GND14" gate="1" x="256.54" y="-271.78"/>
<instance part="GND15" gate="1" x="381" y="-22.86"/>
<instance part="J1" gate="G$1" x="5.08" y="-215.9" rot="MR0"/>
<instance part="GND16" gate="1" x="38.1" y="-243.84"/>
<instance part="D1" gate="D1" x="58.42" y="-193.04" rot="R90">
<attribute name="DIGIKEY" x="58.42" y="-193.04" size="1.778" layer="96" rot="R90" display="off"/>
<attribute name="MOUSER" x="58.42" y="-193.04" size="1.778" layer="96" rot="R90" display="off"/>
</instance>
<instance part="GND17" gate="1" x="58.42" y="-203.2"/>
<instance part="J2" gate="G$1" x="10.16" y="-287.02" rot="MR0"/>
<instance part="GND18" gate="1" x="43.18" y="-314.96"/>
<instance part="D2" gate="D1" x="60.96" y="-264.16" rot="R90">
<attribute name="DIGIKEY" x="60.96" y="-264.16" size="1.778" layer="96" rot="R90" display="off"/>
<attribute name="MOUSER" x="60.96" y="-264.16" size="1.778" layer="96" rot="R90" display="off"/>
</instance>
<instance part="GND19" gate="1" x="60.96" y="-274.32"/>
<instance part="JP7" gate="G$1" x="-2.54" y="-7.62" smashed="yes" rot="MR180">
<attribute name="NAME" x="-5.08" y="-13.462" size="1.778" layer="95" rot="MR180"/>
<attribute name="VALUE" x="-6.858" y="-2.54" size="1.778" layer="96" rot="MR270"/>
<attribute name="DIGIKEY" x="-2.54" y="-7.62" size="1.778" layer="96" rot="MR180" display="off"/>
<attribute name="MOUSER" x="-2.54" y="-7.62" size="1.778" layer="96" rot="MR180" display="off"/>
</instance>
<instance part="C1" gate="G$1" x="45.72" y="-22.86" rot="R180">
<attribute name="DIGIKEY" x="45.72" y="-22.86" size="1.778" layer="96" rot="R180" display="off"/>
<attribute name="MOUSER" x="45.72" y="-22.86" size="1.778" layer="96" rot="R180" display="off"/>
</instance>
<instance part="C2" gate="C1" x="45.72" y="-231.14" rot="R180">
<attribute name="DIGIKEY" x="45.72" y="-231.14" size="1.778" layer="96" rot="R180" display="off"/>
<attribute name="MOUSER" x="45.72" y="-231.14" size="1.778" layer="96" rot="R180" display="off"/>
</instance>
<instance part="C3" gate="C1" x="50.8" y="-302.26" rot="R180">
<attribute name="DIGIKEY" x="50.8" y="-302.26" size="1.778" layer="96" rot="R180" display="off"/>
<attribute name="MOUSER" x="50.8" y="-302.26" size="1.778" layer="96" rot="R180" display="off"/>
</instance>
<instance part="C4" gate="C1" x="269.24" y="-261.62" rot="R180">
<attribute name="DIGIKEY" x="269.24" y="-261.62" size="1.778" layer="96" rot="R180" display="off"/>
<attribute name="MOUSER" x="269.24" y="-261.62" size="1.778" layer="96" rot="R180" display="off"/>
</instance>
<instance part="C5" gate="C1" x="279.4" y="-261.62" rot="R180">
<attribute name="DIGIKEY" x="279.4" y="-261.62" size="1.778" layer="96" rot="R180" display="off"/>
<attribute name="MOUSER" x="279.4" y="-261.62" size="1.778" layer="96" rot="R180" display="off"/>
</instance>
<instance part="C6" gate="C1" x="157.48" y="-22.86" rot="R180">
<attribute name="DIGIKEY" x="157.48" y="-22.86" size="1.778" layer="96" rot="R180" display="off"/>
<attribute name="MOUSER" x="157.48" y="-22.86" size="1.778" layer="96" rot="R180" display="off"/>
</instance>
<instance part="C7" gate="C1" x="144.78" y="-22.86" rot="R180">
<attribute name="DIGIKEY" x="144.78" y="-22.86" size="1.778" layer="96" rot="R180" display="off"/>
<attribute name="MOUSER" x="144.78" y="-22.86" size="1.778" layer="96" rot="R180" display="off"/>
</instance>
<instance part="C8" gate="C1" x="281.94" y="-38.1" rot="R180">
<attribute name="DIGIKEY" x="281.94" y="-38.1" size="1.778" layer="96" rot="R180" display="off"/>
<attribute name="MOUSER" x="281.94" y="-38.1" size="1.778" layer="96" rot="R180" display="off"/>
</instance>
<instance part="C9" gate="C1" x="292.1" y="-38.1" rot="R180">
<attribute name="DIGIKEY" x="292.1" y="-38.1" size="1.778" layer="96" rot="R180" display="off"/>
<attribute name="MOUSER" x="292.1" y="-38.1" size="1.778" layer="96" rot="R180" display="off"/>
</instance>
<instance part="C10" gate="C1" x="381" y="-15.24" rot="R180">
<attribute name="DIGIKEY" x="381" y="-15.24" size="1.778" layer="96" rot="R180" display="off"/>
<attribute name="MOUSER" x="381" y="-15.24" size="1.778" layer="96" rot="R180" display="off"/>
</instance>
<instance part="C11" gate="C1" x="388.62" y="-55.88" rot="R180">
<attribute name="DIGIKEY" x="388.62" y="-55.88" size="1.778" layer="96" rot="R180" display="off"/>
<attribute name="MOUSER" x="388.62" y="-55.88" size="1.778" layer="96" rot="R180" display="off"/>
</instance>
<instance part="C12" gate="C1" x="403.86" y="-55.88" rot="R180">
<attribute name="DIGIKEY" x="403.86" y="-55.88" size="1.778" layer="96" rot="R180" display="off"/>
<attribute name="MOUSER" x="403.86" y="-55.88" size="1.778" layer="96" rot="R180" display="off"/>
</instance>
<instance part="R1" gate="R1" x="55.88" y="-43.18" rot="R90">
<attribute name="DIGIKEY" x="55.88" y="-43.18" size="1.778" layer="96" rot="R90" display="off"/>
<attribute name="MOUSER" x="55.88" y="-43.18" size="1.778" layer="96" rot="R90" display="off"/>
</instance>
<instance part="R2" gate="R1" x="68.58" y="-78.74" rot="R180">
<attribute name="DIGIKEY" x="68.58" y="-78.74" size="1.778" layer="96" rot="R180" display="off"/>
<attribute name="MOUSER" x="68.58" y="-78.74" size="1.778" layer="96" rot="R180" display="off"/>
</instance>
<instance part="R3" gate="R1" x="81.28" y="-86.36" rot="R270">
<attribute name="DIGIKEY" x="81.28" y="-86.36" size="1.778" layer="96" rot="R270" display="off"/>
<attribute name="MOUSER" x="81.28" y="-86.36" size="1.778" layer="96" rot="R270" display="off"/>
</instance>
<instance part="R4" gate="R1" x="45.72" y="-198.12" rot="R270">
<attribute name="DIGIKEY" x="45.72" y="-198.12" size="1.778" layer="96" rot="R270" display="off"/>
<attribute name="MOUSER" x="45.72" y="-198.12" size="1.778" layer="96" rot="R270" display="off"/>
</instance>
<instance part="R5" gate="R1" x="50.8" y="-269.24" rot="R270">
<attribute name="DIGIKEY" x="50.8" y="-269.24" size="1.778" layer="96" rot="R270" display="off"/>
<attribute name="MOUSER" x="50.8" y="-269.24" size="1.778" layer="96" rot="R270" display="off"/>
</instance>
<instance part="R7" gate="R1" x="373.38" y="-27.94">
<attribute name="DIGIKEY" x="373.38" y="-27.94" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="373.38" y="-27.94" size="1.778" layer="96" display="off"/>
</instance>
<instance part="R8" gate="R1" x="355.6" y="-172.72">
<attribute name="DIGIKEY" x="355.6" y="-172.72" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="355.6" y="-172.72" size="1.778" layer="96" display="off"/>
</instance>
<instance part="R9" gate="R1" x="355.6" y="-177.8">
<attribute name="DIGIKEY" x="355.6" y="-177.8" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="355.6" y="-177.8" size="1.778" layer="96" display="off"/>
</instance>
<instance part="R10" gate="R1" x="355.6" y="-182.88">
<attribute name="DIGIKEY" x="355.6" y="-182.88" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="355.6" y="-182.88" size="1.778" layer="96" display="off"/>
</instance>
<instance part="R11" gate="R1" x="355.6" y="-187.96">
<attribute name="DIGIKEY" x="355.6" y="-187.96" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="355.6" y="-187.96" size="1.778" layer="96" display="off"/>
</instance>
<instance part="R12" gate="R1" x="398.78" y="-172.72">
<attribute name="DIGIKEY" x="398.78" y="-172.72" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="398.78" y="-172.72" size="1.778" layer="96" display="off"/>
</instance>
<instance part="R13" gate="R1" x="398.78" y="-177.8">
<attribute name="DIGIKEY" x="398.78" y="-177.8" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="398.78" y="-177.8" size="1.778" layer="96" display="off"/>
</instance>
<instance part="R14" gate="R1" x="398.78" y="-182.88">
<attribute name="DIGIKEY" x="398.78" y="-182.88" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="398.78" y="-182.88" size="1.778" layer="96" display="off"/>
</instance>
<instance part="R15" gate="R1" x="398.78" y="-187.96">
<attribute name="DIGIKEY" x="398.78" y="-187.96" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="398.78" y="-187.96" size="1.778" layer="96" display="off"/>
</instance>
<instance part="R16" gate="R1" x="398.78" y="-193.04">
<attribute name="DIGIKEY" x="398.78" y="-193.04" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="398.78" y="-193.04" size="1.778" layer="96" display="off"/>
</instance>
<instance part="R17" gate="R1" x="398.78" y="-198.12">
<attribute name="DIGIKEY" x="398.78" y="-198.12" size="1.778" layer="96" display="off"/>
<attribute name="MOUSER" x="398.78" y="-198.12" size="1.778" layer="96" display="off"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="BATT+" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="CE"/>
<wire x1="17.78" y1="-10.16" x2="17.78" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="VIN"/>
<wire x1="17.78" y1="-7.62" x2="17.78" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-2.54" x2="43.18" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-2.54" x2="43.18" y2="-10.16" width="0.1524" layer="91"/>
<label x="27.94" y="-2.54" size="1.778" layer="95"/>
<pinref part="JP7" gate="G$1" pin="1"/>
<wire x1="5.08" y1="-7.62" x2="17.78" y2="-7.62" width="0.1524" layer="91"/>
<junction x="17.78" y="-7.62"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="GND"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="17.78" y1="-15.24" x2="17.78" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="2"/>
<wire x1="5.08" y1="-10.16" x2="15.24" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-10.16" x2="15.24" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-15.24" x2="17.78" y2="-15.24" width="0.1524" layer="91"/>
<junction x="17.78" y="-15.24"/>
</segment>
<segment>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="81.28" y1="-93.98" x2="81.28" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="R3" gate="R1" pin="2"/>
</segment>
<segment>
<pinref part="GND4" gate="1" pin="GND"/>
<pinref part="U3" gate="G$1" pin="GND"/>
<wire x1="81.28" y1="-58.42" x2="81.28" y2="-55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="B" pin="DVSS"/>
<wire x1="236.22" y1="-45.72" x2="236.22" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="200.66" y1="-20.32" x2="200.66" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-20.32" x2="193.04" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-20.32" x2="185.42" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-17.78" x2="193.04" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-17.78" x2="200.66" y2="-17.78" width="0.1524" layer="91"/>
<junction x="193.04" y="-17.78"/>
<wire x1="200.66" y1="-17.78" x2="236.22" y2="-17.78" width="0.1524" layer="91"/>
<junction x="200.66" y="-17.78"/>
<junction x="236.22" y="-17.78"/>
<wire x1="236.22" y1="-17.78" x2="241.3" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-17.78" x2="241.3" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="GND5" gate="1" pin="GND"/>
<pinref part="U1" gate="B" pin="AVSS@3"/>
<pinref part="U1" gate="B" pin="AVSS@2"/>
<pinref part="U1" gate="B" pin="AVSS@1"/>
</segment>
<segment>
<wire x1="281.94" y1="-40.64" x2="281.94" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="281.94" y1="-43.18" x2="292.1" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="292.1" y1="-43.18" x2="292.1" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="292.1" y1="-43.18" x2="292.1" y2="-45.72" width="0.1524" layer="91"/>
<junction x="292.1" y="-43.18"/>
<pinref part="GND7" gate="1" pin="GND"/>
<pinref part="C9" gate="C1" pin="1"/>
<pinref part="C8" gate="C1" pin="1"/>
</segment>
<segment>
<wire x1="388.62" y1="-58.42" x2="388.62" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="GND10" gate="1" pin="GND"/>
<wire x1="388.62" y1="-60.96" x2="396.24" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-60.96" x2="403.86" y2="-60.96" width="0.1524" layer="91"/>
<junction x="396.24" y="-60.96"/>
<wire x1="403.86" y1="-60.96" x2="403.86" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="C11" gate="C1" pin="1"/>
<pinref part="C12" gate="C1" pin="1"/>
</segment>
<segment>
<pinref part="GND9" gate="1" pin="GND"/>
<wire x1="368.3" y1="-55.88" x2="368.3" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="GND"/>
<wire x1="368.3" y1="-53.34" x2="365.76" y2="-53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U5" gate="G$1" pin="GND"/>
<wire x1="370.84" y1="-119.38" x2="370.84" y2="-121.92" width="0.1524" layer="91"/>
<pinref part="GND11" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND12" gate="1" pin="GND"/>
<wire x1="256.54" y1="-210.82" x2="256.54" y2="-205.74" width="0.1524" layer="91"/>
<pinref part="MSP1" gate="G$1" pin="ESIVSS"/>
<wire x1="248.92" y1="-205.74" x2="251.46" y2="-205.74" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-205.74" x2="251.46" y2="-220.98" width="0.1524" layer="91"/>
<pinref part="MSP1" gate="G$1" pin="R33/LCDCAP"/>
<wire x1="251.46" y1="-220.98" x2="248.92" y2="-220.98" width="0.1524" layer="91"/>
<wire x1="256.54" y1="-205.74" x2="251.46" y2="-205.74" width="0.1524" layer="91"/>
<junction x="251.46" y="-205.74"/>
</segment>
<segment>
<pinref part="MSP1" gate="G$1" pin="DVSS3"/>
<wire x1="248.92" y1="-281.94" x2="251.46" y2="-281.94" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-281.94" x2="251.46" y2="-279.4" width="0.1524" layer="91"/>
<pinref part="MSP1" gate="G$1" pin="DVSS2"/>
<wire x1="251.46" y1="-279.4" x2="248.92" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-279.4" x2="251.46" y2="-276.86" width="0.1524" layer="91"/>
<junction x="251.46" y="-279.4"/>
<pinref part="MSP1" gate="G$1" pin="DVSS1"/>
<wire x1="251.46" y1="-276.86" x2="248.92" y2="-276.86" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-276.86" x2="251.46" y2="-271.78" width="0.1524" layer="91"/>
<junction x="251.46" y="-276.86"/>
<pinref part="MSP1" gate="G$1" pin="AVSS3"/>
<wire x1="251.46" y1="-271.78" x2="248.92" y2="-271.78" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-271.78" x2="251.46" y2="-269.24" width="0.1524" layer="91"/>
<junction x="251.46" y="-271.78"/>
<pinref part="MSP1" gate="G$1" pin="AVSS2"/>
<wire x1="251.46" y1="-269.24" x2="248.92" y2="-269.24" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-269.24" x2="251.46" y2="-266.7" width="0.1524" layer="91"/>
<junction x="251.46" y="-269.24"/>
<pinref part="MSP1" gate="G$1" pin="AVSS1"/>
<wire x1="251.46" y1="-266.7" x2="248.92" y2="-266.7" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-266.7" x2="256.54" y2="-266.7" width="0.1524" layer="91"/>
<junction x="251.46" y="-266.7"/>
<wire x1="256.54" y1="-266.7" x2="256.54" y2="-269.24" width="0.1524" layer="91"/>
<pinref part="GND14" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND13" gate="1" pin="GND"/>
<wire x1="274.32" y1="-266.7" x2="279.4" y2="-266.7" width="0.1524" layer="91"/>
<wire x1="279.4" y1="-266.7" x2="279.4" y2="-264.16" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-266.7" x2="269.24" y2="-266.7" width="0.1524" layer="91"/>
<junction x="274.32" y="-266.7"/>
<wire x1="269.24" y1="-266.7" x2="269.24" y2="-264.16" width="0.1524" layer="91"/>
<pinref part="C4" gate="C1" pin="1"/>
<pinref part="C5" gate="C1" pin="1"/>
</segment>
<segment>
<pinref part="GND2" gate="1" pin="GND"/>
<pinref part="C1" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="383.54" y1="-27.94" x2="378.46" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="R7" gate="R1" pin="2"/>
</segment>
<segment>
<pinref part="GND15" gate="1" pin="GND"/>
<wire x1="381" y1="-20.32" x2="381" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="C10" gate="C1" pin="1"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="ICSP_CLK/PGC"/>
<wire x1="17.78" y1="-218.44" x2="38.1" y2="-218.44" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-218.44" x2="38.1" y2="-236.22" width="0.1524" layer="91"/>
<pinref part="GND16" gate="1" pin="GND"/>
<wire x1="38.1" y1="-236.22" x2="38.1" y2="-241.3" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-233.68" x2="45.72" y2="-236.22" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-236.22" x2="38.1" y2="-236.22" width="0.1524" layer="91"/>
<junction x="38.1" y="-236.22"/>
<pinref part="C2" gate="C1" pin="1"/>
</segment>
<segment>
<pinref part="D1" gate="D1" pin="1"/>
<pinref part="GND17" gate="1" pin="GND"/>
<wire x1="58.42" y1="-200.66" x2="58.42" y2="-198.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="ICSP_CLK/PGC"/>
<wire x1="22.86" y1="-289.56" x2="43.18" y2="-289.56" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-289.56" x2="43.18" y2="-307.34" width="0.1524" layer="91"/>
<pinref part="GND18" gate="1" pin="GND"/>
<wire x1="43.18" y1="-307.34" x2="43.18" y2="-312.42" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-304.8" x2="50.8" y2="-307.34" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-307.34" x2="43.18" y2="-307.34" width="0.1524" layer="91"/>
<junction x="43.18" y="-307.34"/>
<pinref part="C3" gate="C1" pin="1"/>
</segment>
<segment>
<pinref part="D2" gate="D1" pin="1"/>
<pinref part="GND19" gate="1" pin="GND"/>
<wire x1="60.96" y1="-269.24" x2="60.96" y2="-271.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND6" gate="1" pin="GND"/>
<pinref part="C6" gate="C1" pin="1"/>
<wire x1="157.48" y1="-30.48" x2="157.48" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="C7" gate="C1" pin="1"/>
<wire x1="157.48" y1="-25.4" x2="144.78" y2="-25.4" width="0.1524" layer="91"/>
<junction x="157.48" y="-25.4"/>
</segment>
</net>
<net name="SA_VCC" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="OUT"/>
<wire x1="55.88" y1="-38.1" x2="55.88" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="55.88" y1="-15.24" x2="45.72" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="RS+"/>
<wire x1="45.72" y1="-15.24" x2="43.18" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-38.1" x2="55.88" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="55.88" y1="-15.24" x2="60.96" y2="-15.24" width="0.1524" layer="91"/>
<junction x="55.88" y="-15.24"/>
<label x="60.96" y="-15.24" size="1.778" layer="95" xref="yes"/>
<wire x1="45.72" y1="-20.32" x2="45.72" y2="-15.24" width="0.1524" layer="91"/>
<junction x="45.72" y="-15.24"/>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="R1" gate="R1" pin="2"/>
<junction x="55.88" y="-38.1"/>
</segment>
<segment>
<pinref part="U1" gate="B" pin="AVCC"/>
<wire x1="182.88" y1="-20.32" x2="182.88" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="U1" gate="B" pin="DVCC"/>
<wire x1="210.82" y1="-20.32" x2="210.82" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="182.88" y1="-15.24" x2="210.82" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="C6" gate="C1" pin="2"/>
<wire x1="157.48" y1="-17.78" x2="157.48" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-15.24" x2="182.88" y2="-15.24" width="0.1524" layer="91"/>
<junction x="182.88" y="-15.24"/>
<wire x1="144.78" y1="-15.24" x2="142.24" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="144.78" y1="-15.24" x2="144.78" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="C7" gate="C1" pin="2"/>
<label x="142.24" y="-15.24" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="157.48" y1="-15.24" x2="144.78" y2="-15.24" width="0.1524" layer="91"/>
<junction x="157.48" y="-15.24"/>
<junction x="144.78" y="-15.24"/>
</segment>
<segment>
<wire x1="45.72" y1="-193.04" x2="45.72" y2="-185.42" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="ICSP_DAT/PGD"/>
<wire x1="45.72" y1="-185.42" x2="45.72" y2="-182.88" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-215.9" x2="38.1" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-215.9" x2="38.1" y2="-185.42" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-185.42" x2="45.72" y2="-185.42" width="0.1524" layer="91"/>
<junction x="45.72" y="-185.42"/>
<wire x1="45.72" y1="-185.42" x2="58.42" y2="-185.42" width="0.1524" layer="91"/>
<pinref part="D1" gate="D1" pin="2"/>
<wire x1="58.42" y1="-187.96" x2="58.42" y2="-185.42" width="0.1524" layer="91"/>
<label x="45.72" y="-182.88" size="1.778" layer="95" rot="R90" xref="yes"/>
<pinref part="R4" gate="R1" pin="1"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="RS-"/>
<wire x1="66.04" y1="-45.72" x2="66.04" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-48.26" x2="55.88" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="55.88" y1="-48.26" x2="55.88" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="55.88" y1="-78.74" x2="55.88" y2="-101.6" width="0.1524" layer="91"/>
<junction x="55.88" y="-78.74"/>
<pinref part="U$1" gate="G$1" pin="S1"/>
<wire x1="55.88" y1="-101.6" x2="33.02" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-78.74" x2="55.88" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="55.88" y1="-101.6" x2="55.88" y2="-119.38" width="0.1524" layer="91"/>
<junction x="55.88" y="-101.6"/>
<pinref part="U$2" gate="G$1" pin="S1"/>
<wire x1="55.88" y1="-119.38" x2="55.88" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="55.88" y1="-124.46" x2="10.16" y2="-124.46" width="0.1524" layer="91"/>
<pinref part="R1" gate="R1" pin="1"/>
<junction x="55.88" y="-48.26"/>
<pinref part="R2" gate="R1" pin="2"/>
<wire x1="55.88" y1="-119.38" x2="-2.54" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="-119.38" x2="-2.54" y2="-101.6" width="0.1524" layer="91"/>
<junction x="55.88" y="-119.38"/>
<pinref part="U$2" gate="G$1" pin="S2"/>
<wire x1="-2.54" y1="-101.6" x2="-5.08" y2="-101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SA_CS" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="OUT"/>
<wire x1="91.44" y1="-38.1" x2="96.52" y2="-38.1" width="0.1524" layer="91"/>
<label x="96.52" y="-38.1" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="B" pin="P3.3/A15"/>
<wire x1="157.48" y1="-60.96" x2="137.16" y2="-60.96" width="0.1524" layer="91"/>
<label x="137.16" y="-60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="SA_VS" class="0">
<segment>
<wire x1="73.66" y1="-78.74" x2="81.28" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-78.74" x2="81.28" y2="-81.28" width="0.1524" layer="91"/>
<junction x="81.28" y="-78.74"/>
<wire x1="81.28" y1="-78.74" x2="96.52" y2="-78.74" width="0.1524" layer="91"/>
<label x="96.52" y="-78.74" size="1.778" layer="95" xref="yes"/>
<pinref part="R2" gate="R1" pin="1"/>
<pinref part="R3" gate="R1" pin="1"/>
</segment>
<segment>
<pinref part="U1" gate="B" pin="P3.2/A14"/>
<wire x1="157.48" y1="-58.42" x2="137.16" y2="-58.42" width="0.1524" layer="91"/>
<label x="137.16" y="-58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="T_VCC" class="0">
<segment>
<wire x1="248.92" y1="-200.66" x2="266.7" y2="-200.66" width="0.1524" layer="91"/>
<label x="266.7" y="-200.66" size="1.778" layer="95" xref="yes"/>
<pinref part="MSP1" gate="G$1" pin="ESIVCC"/>
</segment>
<segment>
<pinref part="MSP1" gate="G$1" pin="DVCC1"/>
<wire x1="248.92" y1="-254" x2="251.46" y2="-254" width="0.1524" layer="91"/>
<pinref part="MSP1" gate="G$1" pin="AVCC1"/>
<wire x1="248.92" y1="-261.62" x2="251.46" y2="-261.62" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-261.62" x2="251.46" y2="-259.08" width="0.1524" layer="91"/>
<pinref part="MSP1" gate="G$1" pin="DVCC3"/>
<wire x1="251.46" y1="-259.08" x2="251.46" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-256.54" x2="251.46" y2="-254" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-259.08" x2="251.46" y2="-259.08" width="0.1524" layer="91"/>
<junction x="251.46" y="-259.08"/>
<pinref part="MSP1" gate="G$1" pin="DVCC2"/>
<wire x1="248.92" y1="-256.54" x2="251.46" y2="-256.54" width="0.1524" layer="91"/>
<junction x="251.46" y="-256.54"/>
<wire x1="269.24" y1="-254" x2="269.24" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-248.92" x2="276.86" y2="-248.92" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-254" x2="274.32" y2="-248.92" width="0.1524" layer="91"/>
<label x="276.86" y="-248.92" size="1.778" layer="95" xref="yes"/>
<wire x1="279.4" y1="-256.54" x2="279.4" y2="-254" width="0.1524" layer="91"/>
<wire x1="279.4" y1="-254" x2="274.32" y2="-254" width="0.1524" layer="91"/>
<wire x1="269.24" y1="-254" x2="274.32" y2="-254" width="0.1524" layer="91"/>
<junction x="274.32" y="-254"/>
<wire x1="269.24" y1="-254" x2="251.46" y2="-254" width="0.1524" layer="91"/>
<junction x="269.24" y="-254"/>
<junction x="251.46" y="-254"/>
<pinref part="C4" gate="C1" pin="2"/>
<pinref part="C5" gate="C1" pin="2"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="D1"/>
<wire x1="0" y1="-124.46" x2="-2.54" y2="-124.46" width="0.1524" layer="91"/>
<label x="-2.54" y="-124.46" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<wire x1="50.8" y1="-264.16" x2="50.8" y2="-256.54" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="ICSP_DAT/PGD"/>
<wire x1="50.8" y1="-256.54" x2="50.8" y2="-254" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-287.02" x2="43.18" y2="-287.02" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-287.02" x2="43.18" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-256.54" x2="50.8" y2="-256.54" width="0.1524" layer="91"/>
<junction x="50.8" y="-256.54"/>
<wire x1="50.8" y1="-256.54" x2="60.96" y2="-256.54" width="0.1524" layer="91"/>
<pinref part="D2" gate="D1" pin="2"/>
<wire x1="60.96" y1="-259.08" x2="60.96" y2="-256.54" width="0.1524" layer="91"/>
<label x="50.8" y="-254" size="1.778" layer="95" rot="R90" xref="yes"/>
<pinref part="R5" gate="R1" pin="1"/>
</segment>
</net>
<net name="SA_T_VCC_SEL" class="0">
<segment>
<pinref part="U1" gate="B" pin="P3.0/A12"/>
<wire x1="157.48" y1="-53.34" x2="137.16" y2="-53.34" width="0.1524" layer="91"/>
<label x="137.16" y="-53.34" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="G1"/>
<wire x1="5.08" y1="-132.08" x2="5.08" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-134.62" x2="-2.54" y2="-134.62" width="0.1524" layer="91"/>
<label x="-2.54" y="-134.62" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="R_VCC" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="DVDD"/>
<wire x1="325.12" y1="-27.94" x2="307.34" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="DGUARD"/>
<wire x1="325.12" y1="-43.18" x2="307.34" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="307.34" y1="-43.18" x2="307.34" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="DCOUPL"/>
<wire x1="307.34" y1="-33.02" x2="325.12" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="307.34" y1="-27.94" x2="307.34" y2="-33.02" width="0.1524" layer="91"/>
<junction x="307.34" y="-33.02"/>
<wire x1="307.34" y1="-27.94" x2="292.1" y2="-27.94" width="0.1524" layer="91"/>
<junction x="307.34" y="-27.94"/>
<wire x1="292.1" y1="-27.94" x2="281.94" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="281.94" y1="-27.94" x2="281.94" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="292.1" y1="-33.02" x2="292.1" y2="-27.94" width="0.1524" layer="91"/>
<junction x="292.1" y="-27.94"/>
<wire x1="292.1" y1="-27.94" x2="292.1" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="292.1" y1="-22.86" x2="281.94" y2="-22.86" width="0.1524" layer="91"/>
<label x="281.94" y="-22.86" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="C9" gate="C1" pin="2"/>
<pinref part="C8" gate="C1" pin="2"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="AVDD4"/>
<wire x1="365.76" y1="-22.86" x2="368.3" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="368.3" y1="-22.86" x2="368.3" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="368.3" y1="-17.78" x2="368.3" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="368.3" y1="-12.7" x2="368.3" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="368.3" y1="-7.62" x2="381" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="381" y1="-7.62" x2="381" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="AVDD3"/>
<wire x1="365.76" y1="-17.78" x2="368.3" y2="-17.78" width="0.1524" layer="91"/>
<junction x="368.3" y="-17.78"/>
<pinref part="IC1" gate="G$1" pin="AVDD2"/>
<wire x1="365.76" y1="-12.7" x2="368.3" y2="-12.7" width="0.1524" layer="91"/>
<junction x="368.3" y="-12.7"/>
<pinref part="IC1" gate="G$1" pin="AVDD1"/>
<wire x1="365.76" y1="-7.62" x2="368.3" y2="-7.62" width="0.1524" layer="91"/>
<junction x="368.3" y="-7.62"/>
<junction x="381" y="-7.62"/>
<wire x1="381" y1="-7.62" x2="386.08" y2="-7.62" width="0.1524" layer="91"/>
<label x="386.08" y="-7.62" size="1.778" layer="95" xref="yes"/>
<pinref part="C10" gate="C1" pin="2"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="D2"/>
<wire x1="7.62" y1="-78.74" x2="2.54" y2="-78.74" width="0.1524" layer="91"/>
<label x="2.54" y="-78.74" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="D2"/>
<wire x1="-15.24" y1="-101.6" x2="-20.32" y2="-101.6" width="0.1524" layer="91"/>
<label x="-20.32" y="-101.6" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SA_T_R_VCC_ENA" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="G1"/>
<wire x1="27.94" y1="-109.22" x2="27.94" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-111.76" x2="25.4" y2="-111.76" width="0.1524" layer="91"/>
<label x="25.4" y="-111.76" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="B" pin="P3.1/A13"/>
<wire x1="157.48" y1="-55.88" x2="137.16" y2="-55.88" width="0.1524" layer="91"/>
<label x="137.16" y="-55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="SA_TEST" class="0">
<segment>
<wire x1="205.74" y1="-99.06" x2="205.74" y2="-116.84" width="0.1524" layer="91"/>
<label x="205.74" y="-116.84" size="1.778" layer="95" rot="R90"/>
<pinref part="U1" gate="B" pin="TEST/SBWTCK"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="LVP"/>
<label x="50.8" y="-220.98" size="1.778" layer="95" xref="yes"/>
<wire x1="17.78" y1="-220.98" x2="50.8" y2="-220.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SA_RST" class="0">
<segment>
<wire x1="208.28" y1="-99.06" x2="208.28" y2="-116.84" width="0.1524" layer="91"/>
<label x="208.28" y="-116.84" size="1.778" layer="95" rot="R90"/>
<pinref part="U1" gate="B" pin="RST"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="VPP/MCLR"/>
<label x="50.8" y="-208.28" size="1.778" layer="95" xref="yes"/>
<wire x1="17.78" y1="-208.28" x2="45.72" y2="-208.28" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-208.28" x2="50.8" y2="-208.28" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-203.2" x2="45.72" y2="-208.28" width="0.1524" layer="91"/>
<junction x="45.72" y="-208.28"/>
<wire x1="45.72" y1="-208.28" x2="45.72" y2="-226.06" width="0.1524" layer="91"/>
<pinref part="R4" gate="R1" pin="2"/>
<pinref part="C2" gate="C1" pin="2"/>
</segment>
</net>
<net name="SA_BSL_RST" class="0">
<segment>
<pinref part="U1" gate="B" pin="P1.3/TA1.2"/>
<wire x1="157.48" y1="-66.04" x2="137.16" y2="-66.04" width="0.1524" layer="91"/>
<label x="137.16" y="-66.04" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="350.52" y1="-172.72" x2="332.74" y2="-172.72" width="0.1524" layer="91"/>
<label x="332.74" y="-172.72" size="1.778" layer="95"/>
<pinref part="R8" gate="R1" pin="1"/>
</segment>
</net>
<net name="SA_BSL_TEST" class="0">
<segment>
<pinref part="U1" gate="B" pin="P1.4/TB0.1"/>
<wire x1="157.48" y1="-68.58" x2="137.16" y2="-68.58" width="0.1524" layer="91"/>
<label x="137.16" y="-68.58" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="350.52" y1="-177.8" x2="332.74" y2="-177.8" width="0.1524" layer="91"/>
<label x="332.74" y="-177.8" size="1.778" layer="95"/>
<pinref part="R9" gate="R1" pin="1"/>
</segment>
</net>
<net name="SA_BSL_TX" class="0">
<segment>
<wire x1="200.66" y1="-99.06" x2="200.66" y2="-116.84" width="0.1524" layer="91"/>
<label x="200.66" y="-116.84" size="1.778" layer="95" rot="R90"/>
<pinref part="U1" gate="B" pin="P2.5/TB0.0"/>
</segment>
<segment>
<wire x1="350.52" y1="-182.88" x2="332.74" y2="-182.88" width="0.1524" layer="91"/>
<label x="332.74" y="-182.88" size="1.778" layer="95"/>
<pinref part="R10" gate="R1" pin="1"/>
</segment>
</net>
<net name="SA_BSL_RX" class="0">
<segment>
<wire x1="203.2" y1="-99.06" x2="203.2" y2="-116.84" width="0.1524" layer="91"/>
<label x="203.2" y="-116.84" size="1.778" layer="95" rot="R90"/>
<pinref part="U1" gate="B" pin="P2.6/TB0.1"/>
</segment>
<segment>
<wire x1="350.52" y1="-187.96" x2="332.74" y2="-187.96" width="0.1524" layer="91"/>
<label x="332.74" y="-187.96" size="1.778" layer="95"/>
<pinref part="R11" gate="R1" pin="1"/>
</segment>
</net>
<net name="T_BSL_RX" class="0">
<segment>
<wire x1="149.86" y1="-167.64" x2="132.08" y2="-167.64" width="0.1524" layer="91"/>
<label x="132.08" y="-167.64" size="1.778" layer="95"/>
<pinref part="MSP1" gate="G$1" pin="P2.0/UCA0SIMO/UCA0TXD/TB0.6/TB0CLK"/>
</segment>
<segment>
<wire x1="360.68" y1="-187.96" x2="375.92" y2="-187.96" width="0.1524" layer="91"/>
<label x="375.92" y="-187.96" size="1.778" layer="95" rot="MR0"/>
<pinref part="R11" gate="R1" pin="2"/>
</segment>
</net>
<net name="T_BSL_TX" class="0">
<segment>
<wire x1="149.86" y1="-170.18" x2="132.08" y2="-170.18" width="0.1524" layer="91"/>
<label x="132.08" y="-170.18" size="1.778" layer="95"/>
<pinref part="MSP1" gate="G$1" pin="P2.1/UCA0SOMI/UCA0RXD/TB0.5/DMAE0"/>
</segment>
<segment>
<wire x1="360.68" y1="-182.88" x2="375.92" y2="-182.88" width="0.1524" layer="91"/>
<label x="375.92" y="-182.88" size="1.778" layer="95" rot="MR0"/>
<pinref part="R10" gate="R1" pin="2"/>
</segment>
</net>
<net name="R_SCLK" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="SCLK"/>
<wire x1="325.12" y1="-7.62" x2="320.04" y2="-7.62" width="0.1524" layer="91"/>
<label x="320.04" y="-7.62" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<wire x1="393.7" y1="-182.88" x2="381" y2="-182.88" width="0.1524" layer="91"/>
<label x="381" y="-182.88" size="1.778" layer="95"/>
<pinref part="R14" gate="R1" pin="1"/>
</segment>
<segment>
<pinref part="U1" gate="B" pin="P1.5/TB0.2"/>
<wire x1="157.48" y1="-71.12" x2="137.16" y2="-71.12" width="0.1524" layer="91"/>
<label x="137.16" y="-71.12" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="236.22" y1="-71.12" x2="256.54" y2="-71.12" width="0.1524" layer="91"/>
<label x="256.54" y="-71.12" size="1.778" layer="95" rot="MR0"/>
<pinref part="U1" gate="B" pin="P2.2/TB0.2/UCB0CLK"/>
</segment>
</net>
<net name="R_MISO" class="0">
<segment>
<wire x1="325.12" y1="-12.7" x2="320.04" y2="-12.7" width="0.1524" layer="91"/>
<label x="320.04" y="-12.7" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="IC1" gate="G$1" pin="SO(GDO1)"/>
</segment>
<segment>
<wire x1="393.7" y1="-177.8" x2="381" y2="-177.8" width="0.1524" layer="91"/>
<label x="381" y="-177.8" size="1.778" layer="95"/>
<pinref part="R13" gate="R1" pin="1"/>
</segment>
<segment>
<wire x1="236.22" y1="-73.66" x2="256.54" y2="-73.66" width="0.1524" layer="91"/>
<label x="256.54" y="-73.66" size="1.778" layer="95" rot="MR0"/>
<pinref part="U1" gate="B" pin="P2.1/TB0.0"/>
</segment>
<segment>
<wire x1="236.22" y1="-58.42" x2="256.54" y2="-58.42" width="0.1524" layer="91"/>
<label x="256.54" y="-58.42" size="1.778" layer="95" rot="MR0"/>
<pinref part="U1" gate="B" pin="P1.6/TB0.3/UCB0SIMO/UCB0SDA/TA0.0"/>
</segment>
</net>
<net name="R_GDO2" class="0">
<segment>
<wire x1="325.12" y1="-17.78" x2="320.04" y2="-17.78" width="0.1524" layer="91"/>
<label x="320.04" y="-17.78" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="IC1" gate="G$1" pin="GDO2"/>
</segment>
<segment>
<wire x1="393.7" y1="-198.12" x2="381" y2="-198.12" width="0.1524" layer="91"/>
<label x="381" y="-198.12" size="1.778" layer="95"/>
<pinref part="R17" gate="R1" pin="1"/>
</segment>
<segment>
<pinref part="U1" gate="B" pin="P1.2/TA1.1/TA0CLK"/>
<wire x1="157.48" y1="-50.8" x2="137.16" y2="-50.8" width="0.1524" layer="91"/>
<label x="137.16" y="-50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="R_MOSI" class="0">
<segment>
<wire x1="325.12" y1="-22.86" x2="320.04" y2="-22.86" width="0.1524" layer="91"/>
<label x="320.04" y="-22.86" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="IC1" gate="G$1" pin="SI"/>
</segment>
<segment>
<wire x1="393.7" y1="-172.72" x2="381" y2="-172.72" width="0.1524" layer="91"/>
<label x="381" y="-172.72" size="1.778" layer="95"/>
<pinref part="R12" gate="R1" pin="1"/>
</segment>
<segment>
<wire x1="210.82" y1="-99.06" x2="210.82" y2="-116.84" width="0.1524" layer="91"/>
<label x="210.82" y="-116.84" size="1.778" layer="95" rot="R90"/>
<pinref part="U1" gate="B" pin="P2.0/TB0.6"/>
</segment>
<segment>
<wire x1="236.22" y1="-55.88" x2="256.54" y2="-55.88" width="0.1524" layer="91"/>
<label x="256.54" y="-55.88" size="1.778" layer="95" rot="MR0"/>
<pinref part="U1" gate="B" pin="P1.7/TB0.4/UCB0SOMI/UCB0SCL/TA1.0"/>
</segment>
</net>
<net name="R_CSN" class="0">
<segment>
<wire x1="325.12" y1="-38.1" x2="320.04" y2="-38.1" width="0.1524" layer="91"/>
<label x="320.04" y="-38.1" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="IC1" gate="G$1" pin="CSN"/>
</segment>
<segment>
<wire x1="393.7" y1="-187.96" x2="381" y2="-187.96" width="0.1524" layer="91"/>
<label x="381" y="-187.96" size="1.778" layer="95"/>
<pinref part="R15" gate="R1" pin="1"/>
</segment>
<segment>
<pinref part="U1" gate="B" pin="P1.0/TA0.1/VREF-"/>
<wire x1="157.48" y1="-45.72" x2="137.16" y2="-45.72" width="0.1524" layer="91"/>
<label x="137.16" y="-45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="R_GDO0" class="0">
<segment>
<wire x1="325.12" y1="-48.26" x2="320.04" y2="-48.26" width="0.1524" layer="91"/>
<label x="320.04" y="-48.26" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="IC1" gate="G$1" pin="GDO0(ATEST)"/>
</segment>
<segment>
<wire x1="393.7" y1="-193.04" x2="381" y2="-193.04" width="0.1524" layer="91"/>
<label x="381" y="-193.04" size="1.778" layer="95"/>
<pinref part="R16" gate="R1" pin="1"/>
</segment>
<segment>
<pinref part="U1" gate="B" pin="P1.1/TA0.2/VEREF+"/>
<wire x1="157.48" y1="-48.26" x2="137.16" y2="-48.26" width="0.1524" layer="91"/>
<label x="137.16" y="-48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="T_R_VCC_SEL" class="0">
<segment>
<wire x1="149.86" y1="-157.48" x2="132.08" y2="-157.48" width="0.1524" layer="91"/>
<label x="132.08" y="-157.48" size="1.778" layer="95"/>
<pinref part="MSP1" gate="G$1" pin="P1.5/UCB0STE/UCA0CLK/TA0.0/S0"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="G2"/>
<wire x1="12.7" y1="-86.36" x2="12.7" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-88.9" x2="2.54" y2="-88.9" width="0.1524" layer="91"/>
<label x="2.54" y="-88.9" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RBIAS"/>
<wire x1="368.3" y1="-27.94" x2="365.76" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="R7" gate="R1" pin="1"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RF_P"/>
<wire x1="365.76" y1="-38.1" x2="401.32" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="BAL4"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RF_N"/>
<wire x1="365.76" y1="-33.02" x2="396.24" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-33.02" x2="396.24" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="BAL3"/>
<wire x1="396.24" y1="-27.94" x2="401.32" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="XOSC_Q2"/>
<wire x1="365.76" y1="-43.18" x2="403.86" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="403.86" y1="-43.18" x2="403.86" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="2"/>
<wire x1="403.86" y1="-48.26" x2="403.86" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="403.86" y1="-48.26" x2="398.78" y2="-48.26" width="0.1524" layer="91"/>
<junction x="403.86" y="-48.26"/>
<wire x1="403.86" y1="-48.26" x2="439.42" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="439.42" y1="-48.26" x2="439.42" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="GND"/>
<wire x1="439.42" y1="-38.1" x2="436.88" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="C12" gate="C1" pin="2"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="1"/>
<wire x1="393.7" y1="-48.26" x2="388.62" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-48.26" x2="388.62" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="XOSC_Q1"/>
<wire x1="388.62" y1="-48.26" x2="365.76" y2="-48.26" width="0.1524" layer="91"/>
<junction x="388.62" y="-48.26"/>
<pinref part="C11" gate="C1" pin="2"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="UNBAL"/>
<wire x1="436.88" y1="-27.94" x2="444.5" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="ANT" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="A_SCLK" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="SCLK"/>
<wire x1="355.6" y1="-101.6" x2="342.9" y2="-101.6" width="0.1524" layer="91"/>
<label x="342.9" y="-101.6" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="149.86" y1="-190.5" x2="132.08" y2="-190.5" width="0.1524" layer="91"/>
<label x="132.08" y="-190.5" size="1.778" layer="95"/>
<pinref part="MSP1" gate="G$1" pin="P3.0/UCB1CLK/S34"/>
</segment>
</net>
<net name="A_MOSI" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="MOSI"/>
<wire x1="355.6" y1="-104.14" x2="342.9" y2="-104.14" width="0.1524" layer="91"/>
<label x="342.9" y="-104.14" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="149.86" y1="-193.04" x2="132.08" y2="-193.04" width="0.1524" layer="91"/>
<label x="132.08" y="-193.04" size="1.778" layer="95"/>
<pinref part="MSP1" gate="G$1" pin="P3.1/UCB1SIMO/UCB1SDA/S33"/>
</segment>
</net>
<net name="A_MISO" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="MISO"/>
<wire x1="355.6" y1="-106.68" x2="342.9" y2="-106.68" width="0.1524" layer="91"/>
<label x="342.9" y="-106.68" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="149.86" y1="-195.58" x2="132.08" y2="-195.58" width="0.1524" layer="91"/>
<label x="132.08" y="-195.58" size="1.778" layer="95"/>
<pinref part="MSP1" gate="G$1" pin="P3.2/UCB1SOMI/UCB1SCL/S32"/>
</segment>
</net>
<net name="A_CSN" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="!CS"/>
<wire x1="355.6" y1="-109.22" x2="342.9" y2="-109.22" width="0.1524" layer="91"/>
<label x="342.9" y="-109.22" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="149.86" y1="-198.12" x2="132.08" y2="-198.12" width="0.1524" layer="91"/>
<label x="132.08" y="-198.12" size="1.778" layer="95"/>
<pinref part="MSP1" gate="G$1" pin="P3.3/TA1.1/TB0CLK/S26"/>
</segment>
</net>
<net name="A_VCC" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="VDDIO"/>
<wire x1="386.08" y1="-101.6" x2="388.62" y2="-101.6" width="0.1524" layer="91"/>
<label x="398.78" y="-101.6" size="1.778" layer="95" xref="yes"/>
<pinref part="U5" gate="G$1" pin="VS"/>
<wire x1="388.62" y1="-101.6" x2="398.78" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-104.14" x2="388.62" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-104.14" x2="388.62" y2="-101.6" width="0.1524" layer="91"/>
<junction x="388.62" y="-101.6"/>
</segment>
<segment>
<wire x1="149.86" y1="-172.72" x2="132.08" y2="-172.72" width="0.1524" layer="91"/>
<label x="132.08" y="-172.72" size="1.778" layer="95"/>
<pinref part="MSP1" gate="G$1" pin="P2.2/UCA0CLK/TB0.4/RTCCLK"/>
</segment>
</net>
<net name="A_INT1" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="INT1"/>
<wire x1="386.08" y1="-106.68" x2="398.78" y2="-106.68" width="0.1524" layer="91"/>
<label x="398.78" y="-106.68" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="149.86" y1="-182.88" x2="132.08" y2="-182.88" width="0.1524" layer="91"/>
<label x="132.08" y="-182.88" size="1.778" layer="95"/>
<pinref part="MSP1" gate="G$1" pin="P2.6/TB0.5/ESIC1OUT/COM6/S41"/>
</segment>
</net>
<net name="A_INT2" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="INT2"/>
<wire x1="386.08" y1="-109.22" x2="398.78" y2="-109.22" width="0.1524" layer="91"/>
<label x="398.78" y="-109.22" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="149.86" y1="-185.42" x2="132.08" y2="-185.42" width="0.1524" layer="91"/>
<label x="132.08" y="-185.42" size="1.778" layer="95"/>
<pinref part="MSP1" gate="G$1" pin="P2.7/TB0.6/ESIC2OUT/COM7/S40"/>
</segment>
</net>
<net name="T_R_MOSI" class="0">
<segment>
<wire x1="403.86" y1="-172.72" x2="416.56" y2="-172.72" width="0.1524" layer="91"/>
<label x="416.56" y="-172.72" size="1.778" layer="95" rot="MR0"/>
<pinref part="R12" gate="R1" pin="2"/>
</segment>
<segment>
<wire x1="149.86" y1="-160.02" x2="132.08" y2="-160.02" width="0.1524" layer="91"/>
<label x="132.08" y="-160.02" size="1.778" layer="95"/>
<pinref part="MSP1" gate="G$1" pin="P1.6/UCB0SIMO/UCB0SDA/TA0.1"/>
</segment>
</net>
<net name="T_R_MISO" class="0">
<segment>
<wire x1="403.86" y1="-177.8" x2="416.56" y2="-177.8" width="0.1524" layer="91"/>
<label x="416.56" y="-177.8" size="1.778" layer="95" rot="MR0"/>
<pinref part="R13" gate="R1" pin="2"/>
</segment>
<segment>
<wire x1="149.86" y1="-162.56" x2="132.08" y2="-162.56" width="0.1524" layer="91"/>
<label x="132.08" y="-162.56" size="1.778" layer="95"/>
<pinref part="MSP1" gate="G$1" pin="P1.7/UCB0SOMI/UCB0SCL/TA0.2"/>
</segment>
</net>
<net name="T_R_SCLK" class="0">
<segment>
<wire x1="403.86" y1="-182.88" x2="416.56" y2="-182.88" width="0.1524" layer="91"/>
<label x="416.56" y="-182.88" size="1.778" layer="95" rot="MR0"/>
<pinref part="R14" gate="R1" pin="2"/>
</segment>
<segment>
<wire x1="149.86" y1="-154.94" x2="132.08" y2="-154.94" width="0.1524" layer="91"/>
<label x="132.08" y="-154.94" size="1.778" layer="95"/>
<pinref part="MSP1" gate="G$1" pin="P1.4/UCB0CLK/UCA0STE/TA1.0/S1"/>
</segment>
</net>
<net name="T_R_CSN" class="0">
<segment>
<wire x1="403.86" y1="-187.96" x2="416.56" y2="-187.96" width="0.1524" layer="91"/>
<label x="416.56" y="-187.96" size="1.778" layer="95" rot="MR0"/>
<pinref part="R15" gate="R1" pin="2"/>
</segment>
<segment>
<wire x1="149.86" y1="-175.26" x2="132.08" y2="-175.26" width="0.1524" layer="91"/>
<label x="132.08" y="-175.26" size="1.778" layer="95"/>
<pinref part="MSP1" gate="G$1" pin="P2.3/UCA0STE/TB0OUTH"/>
</segment>
</net>
<net name="T_R_GDO0" class="0">
<segment>
<wire x1="403.86" y1="-193.04" x2="416.56" y2="-193.04" width="0.1524" layer="91"/>
<label x="416.56" y="-193.04" size="1.778" layer="95" rot="MR0"/>
<pinref part="R16" gate="R1" pin="2"/>
</segment>
<segment>
<wire x1="149.86" y1="-177.8" x2="132.08" y2="-177.8" width="0.1524" layer="91"/>
<label x="132.08" y="-177.8" size="1.778" layer="95"/>
<pinref part="MSP1" gate="G$1" pin="P2.4/TB0.3/COM4/S43"/>
</segment>
</net>
<net name="T_R_GDO2" class="0">
<segment>
<wire x1="403.86" y1="-198.12" x2="416.56" y2="-198.12" width="0.1524" layer="91"/>
<label x="416.56" y="-198.12" size="1.778" layer="95" rot="MR0"/>
<pinref part="R17" gate="R1" pin="2"/>
</segment>
<segment>
<wire x1="149.86" y1="-180.34" x2="132.08" y2="-180.34" width="0.1524" layer="91"/>
<label x="132.08" y="-180.34" size="1.778" layer="95"/>
<pinref part="MSP1" gate="G$1" pin="P2.5/TB0.4/COM5/S42"/>
</segment>
</net>
<net name="T_BSL_RST" class="0">
<segment>
<pinref part="MSP1" gate="G$1" pin="RST/NMI/SBWTDIO"/>
<wire x1="248.92" y1="-294.64" x2="264.16" y2="-294.64" width="0.1524" layer="91"/>
<label x="264.16" y="-294.64" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<wire x1="360.68" y1="-172.72" x2="375.92" y2="-172.72" width="0.1524" layer="91"/>
<label x="375.92" y="-172.72" size="1.778" layer="95" rot="MR0"/>
<pinref part="R8" gate="R1" pin="2"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="VPP/MCLR"/>
<label x="55.88" y="-279.4" size="1.778" layer="95" xref="yes"/>
<wire x1="22.86" y1="-279.4" x2="50.8" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-279.4" x2="55.88" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-274.32" x2="50.8" y2="-279.4" width="0.1524" layer="91"/>
<junction x="50.8" y="-279.4"/>
<wire x1="50.8" y1="-279.4" x2="50.8" y2="-297.18" width="0.1524" layer="91"/>
<pinref part="R5" gate="R1" pin="2"/>
<pinref part="C3" gate="C1" pin="2"/>
</segment>
</net>
<net name="T_BSL_TEST" class="0">
<segment>
<pinref part="MSP1" gate="G$1" pin="TEST/SBWTCK"/>
<wire x1="248.92" y1="-297.18" x2="264.16" y2="-297.18" width="0.1524" layer="91"/>
<label x="264.16" y="-297.18" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="360.68" y1="-177.8" x2="375.92" y2="-177.8" width="0.1524" layer="91"/>
<label x="375.92" y="-177.8" size="1.778" layer="95" rot="MR0"/>
<pinref part="R9" gate="R1" pin="2"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="LVP"/>
<label x="55.88" y="-292.1" size="1.778" layer="95" xref="yes"/>
<wire x1="22.86" y1="-292.1" x2="55.88" y2="-292.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D1"/>
<wire x1="22.86" y1="-101.6" x2="22.86" y2="-78.74" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="S2"/>
<wire x1="22.86" y1="-78.74" x2="17.78" y2="-78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SA_R_VCC_SEL" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="G2"/>
<wire x1="-10.16" y1="-109.22" x2="-10.16" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="-111.76" x2="-20.32" y2="-111.76" width="0.1524" layer="91"/>
<label x="-20.32" y="-111.76" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="B" pin="P2.7"/>
<wire x1="208.28" y1="-20.32" x2="208.28" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="208.28" y1="-12.7" x2="215.9" y2="-12.7" width="0.1524" layer="91"/>
<label x="215.9" y="-12.7" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
