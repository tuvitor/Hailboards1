<table width="100%" cellspacing="2" cellpadding="2" border="0" align="center" class="BoardRowA">
  <tr> 
	<td align="left" valign="bottom" class="BoardColumn">{L_SEARCH_MATCHES}<br /></td>
  </tr>
</table>

<table width="100%" cellspacing="2" cellpadding="2" border="0" align="center" class="MainMenuRow">
  <tr> 
	<td align="left"><a href="{U_INDEX}" class="MainMenuLink">{L_INDEX}</a></td>
  </tr>
</table>

<table border="0" cellpadding="3" cellspacing="1" width="100%" class="BoardRowB" align="center">
  <tr> 
	<th width="150" height="25" class="BoardRowBLink" nowrap="nowrap">{L_AUTHOR}</th>
	<th width="100%" class="BoardRowBLink" nowrap="nowrap">{L_MESSAGE}</th>
  </tr>
  <!-- BEGIN searchresults -->
  <tr> 
	<td class="BoardRowA" colspan="2" height="28"><span class="BoardRowALink"><img src="templates/HBWinter/images/folder.gif" align="absmiddle">&nbsp; {L_TOPIC}:&nbsp;<a href="{searchresults.U_TOPIC}" class="BoardRowALink">{searchresults.TOPIC_TITLE}</a></span></td>
  </tr>
  <tr> 
	<td width="150" align="left" valign="top" class="row1" rowspan="2"><span class="AuthorLink"><b>{searchresults.POSTER_NAME}</b></span><br />
	  <br />
	  <span class="BoardRowBLink">{L_REPLIES}: <b>{searchresults.TOPIC_REPLIES}</b><br />
	  {L_VIEWS}: <b>{searchresults.TOPIC_VIEWS}</b></span><br />
	</td>
	<td width="100%" valign="top" class="BoardRowA"><img src="{searchresults.MINI_POST_IMG}" width="12" height="9" alt="{searchresults.L_MINI_POST_ALT}" title="{searchresults.L_MINI_POST_ALT}" border="0" /><span class="BoardRowALink">{L_FORUM}:&nbsp;<b><a href="{searchresults.U_FORUM}" class="BoardRowALink">{searchresults.FORUM_NAME}</a></b>&nbsp; &nbsp;{L_POSTED}: {searchresults.POST_DATE}&nbsp; &nbsp;{L_SUBJECT}: <b><a href="{searchresults.U_POST}">{searchresults.POST_SUBJECT}</a></b></span></td>
  </tr>
  <tr>
	<td valign="top" class="BoardRowB">{searchresults.MESSAGE}</td>
  </tr>
  <!-- END searchresults -->
  <tr> 
	<td class="BoardRowB" colspan="2" height="28" align="center">&nbsp; </td>
  </tr>
</table>

<table width="100%" cellspacing="2" border="0" align="center" cellpadding="2">
  <tr> 
	<td align="left" valign="top" class="MainMenuRow"><span class="MainMenuLink">{PAGE_NUMBER}</span></td>
	<td align="right" valign="top" nowrap="nowrap" class="MainMenuRow"><span class="BoardColumnLink">{HB_PAGINATION}</span><br /><span class="MainMenuLink">{S_TIMEZONE}</span></td>
  </tr>
</table>

<table width="100%" cellspacing="2" border="0" align="center">
  <tr> 
	<td valign="top" align="right" class="MainMenuRow"><span class="MainMenuLink">{JUMPBOX}</span></td>
  </tr>
</table>
