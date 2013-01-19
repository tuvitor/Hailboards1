<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir="{S_CONTENT_DIRECTION}">
<head>
{META}
<meta http-equiv="Content-Type" content="text/html; charset={S_CONTENT_ENCODING}"  />
<!-- link rel="stylesheet" href="../templates/subSilver/{T_HEAD_STYLESHEET}" type="text/css" -->
<style type="text/css">
<!--

/*
  The original HBWinter Theme for hB version 1.2+
  Created by SPIRE Web Design 
  http://www.epicfactory.com

  NOTE: These CSS definitions are stored within the main page body so that you can use the phpBB2
  theme administration centre. When you have finalised your style you could cut the final CSS code
  and place it in an external file, deleting this section to save bandwidth.
*/
 
.MainTable {
	background-color: #55568f;
	font-family: verdana,arial, helvetica, sans-serif;
	font-weight: normal;
	font-size: 8pt;
	color: black;
	text-decoration: none;
}
.MainMenuRowAlt {
	background: transparent;
	font-family: arial, helvetica, sans-serif;
	font-weight: bold;
	font-size: 9pt;
	color: gold;
	text-decoration: none;
}
.MainMenuRow {
	background: url(templates/HBWinter/images/MainMenuRow.png) #44486e repeat-x;
	font-family: verdana, arial, helvetica, sans-serif;
	font-weight: normal;
	font-size: 8pt;
	color: white;
	text-decoration: none;
}
.MainMenuLink {
	background-color: transparent;
	font-family: verdana,arial, helvetica, sans-serif;
	font-weight: bold;
	font-size: 8pt;
	color: lightgrey;
	text-decoration: none;
}
a {
	text-decoration: none;
}
a.MainMenuLink:hover {
	text-decoration: underline;
	color: aliceblue;
}
a.MainMenuLink:active {
	text-decoration: underline;
	color: aliceblue;
}
.BoardColumn {
	background: url(templates/HBWinter/images/BoardColumn.png) #7d7eaa repeat-x;
	font-family: verdana, arial, helvetica, sans-serif;
	font-weight: bold;
	font-size: 10pt;
	color: #f5f7ec;
	text-decoration: none;
}
.BoardColumnLink {
	background-color: transparent;
	font-family: verdana,arial, helvetica, sans-serif;
	font-weight: bold;
	font-size: 10pt;
	color: #fbebbf;
	text-decoration: none;
}
a.BoardColumnLink:hover {
	text-decoration: underline;
}
a.BoardColumnLink:active {
	text-decoration: underline;
}
.BoardRowA {
	background-color: #C3C8D8;
	border: 2px groove snow;
	font-family: verdana,arial, helvetica, sans-serif;
	font-weight: normal;
	font-size: 10pt;
	color: #000000;
	text-decoration: none;
}
.BoardRowALink {
	background-color: transparent;
	font-family: verdana,arial, helvetica, sans-serif;
	font-weight: bold;
	font-size: 10pt;
	color: black;
	text-decoration: none;
}
.BoardRowALink:hover {
	text-decoration: underline;
}
.BoardRowALink:active {
	text-decoration: underline;
}
.BoardRowB {
	background: #D3DADF;
	border: 2px groove snow;
	font-family: verdana,arial, helvetica, sans-serif;
	font-weight: normal;
	font-size: 10pt;
	color: black;
	text-decoration: none;
}
.BoardRowBLink {
	background:transparent;
	font-family: arial, helvetica, sans-serif;
	font-weight: bold;
	font-size: 8pt;
	color: black;
	text-decoration: none;
}
a.BoardRowBLink:hover {
	text-decoration: underline;
}
a.BoardRowBLink:active {
	text-decoration: underline;
}
.BoardRowBSticky {
background: url(templates/HBWinter/images/BoardColumn.png) #7d7eaa repeat-x;
	background-color: #BCB9BF;
	font-family: verdana,arial, helvetica, sans-serif;
	font-weight: bold;
	font-size: 8pt;
	color: white;
	text-decoration: none;
}
.SubjectLink {
	background-color: transparent;
	font-family: verdana,arial, helvetica, sans-serif;
	font-weight: bold;
	font-size: 10pt;
	color: black;
	text-decoration: underline;
}
a.SubjectLink {
	background-color: transparent;
	font-family: verdana,arial, helvetica, sans-serif;
	font-weight: bold;
	font-size: 10pt;
	color: black;
	text-decoration: underline;
}
a.SubjectLink:hover {
	text-decoration: underline;
}
a.SubjectLink:active {
	text-decoration: underline;
}
a.SubjectLink:visited {
	font-weight: bold;
	text-decoration: underline;
}
.ForumDescription {
	background-color: transparent;
	font-family: verdana,arial, helvetica, sans-serif;
	font-weight: normal;
	font-size: 8pt;
	color: black;
	text-decoration: none;
}
.AuthorLink {
	background-color: #C3C8D8;
	font-family: verdana,arial, helvetica, sans-serif;
	font-weight: bold;
	font-size: 10pt;
	color: black;
	text-decoration: none;
}
.VersionText {
	background-color: transparent;
	font-family: verdana,arial, helvetica, sans-serif;
	font-weight: normal;
	font-size: 8pt;
	color: white;
	text-decoration: none;
}
.InputSection {
	background-color: transparent;
	font-family: verdana,arial, helvetica, sans-serif;
	font-weight: bold;
	font-size: 8pt;
	color: #00003f;
	text-decoration: none;
}
.InputNotes {
	background-color: transparent;
	font-family: verdana,arial, helvetica, sans-serif;
	font-weight: normal;
	font-size: 8pt;
	color: black;
	text-decoration: none;
	width: 65%;
}
.SignatureTitle {
	background-color: transparent;
	font-family: arial, helvetica, sans-serif;
	font-weight: bold;
	font-size: 8pt;
	color: #000000;
	text-decoration: none;
}
.SignatureText {
	background-color: transparent;
	font-family: arial, helvetica, sans-serif;
	font-weight: normal;
	font-size: 8pt;
	color: black;
	text-decoration: none;
}
body {
	COLOR: black;
	BACKGROUND-COLOR: #45466D;
}
a.OnlineModsLink {
	FONT-WEIGHT: normal;
	FONT-SIZE: 8pt;
	COLOR: #fdf7e4;
	FONT-FAMILY: verdana,arial, helvetica, sans-serif;
	BACKGROUND-COLOR: transparent;
	TEXT-DECORATION: underline;
}


B     { font-weight: bold; }
.red  { color: #880000; }
.grey { color: #999999; }

.statistictext { color: white; }
.statisticvalue
{
color: yellow;
font-weight: bold;
}

.QuotedText {
border: 1px dashed #888888;
background-color: #A1A3AC;
font-family: verdana,arial,sans-serif;
font-weight: normal;
font-size: 9pt;
color: white;
text-decoration: none;
margin-top: 5px;
margin-left: 5px;
margin-right: 5px;
padding: 5px;
}

.tos {
font-family: verdana,arial,sans-serif;
font-size: 8pt;
}

.AdminMenuLink {
background-color: transparent;
font-family: tahoma,arial,sans-serif;
font-weight: bold;
font-size: 8pt;
color: #FFCC99;
text-decoration: none;
}
.genericuser
{
color: #45466D; font-weight: bold; font-style: normal; background-color: #D3DADF; text-decoration: none; border: 1px solid White;
}
/* Import the fancy styles for IE only (NS4.x doesn't use the @import function) */
@import url("../templates/subSilver/formIE.css"); 
-->
</style>
<title>{SITENAME} - {L_PHPBB_ADMIN}</title>
</head>
<body link="#000000" vlink="#000000">

<a name="top"></a>
