
<form method="post" action="{S_MODCP_ACTION}">
<table width="100%" cellspacing="1" cellpadding="1" border="0" align="center">
  <tr> 
	<td align="left" class="MainMenuRow"><a href="{U_INDEX}" class="MainMenuLink">{L_INDEX}</a> -> <a href="{U_VIEW_FORUM}" class="MainMenuLink">{FORUM_NAME}</a></span></td>
  </tr>
</table>

  <table width="100%" cellpadding="4" cellspacing="1" border="0" class="MainMenuRow">
	<tr> 
	  <td class="BoardColumn" colspan="5" align="center" height="28"><span class="BoardColumnLink">{L_MOD_CP}</span> 
	  </td>
	</tr>
	<tr> 
	  <td class="BoardRowA" colspan="5" align="center"><span class="BoardRowBLink">{L_MOD_CP_EXPLAIN}</span></td>
	</tr>
	<tr class="BoardColumn"> 
	  <th width="4%" class="thLeft" nowrap="nowrap">&nbsp;</th>
	  <th nowrap="nowrap">&nbsp;{L_TOPICS}&nbsp;</th>
	  <th width="8%" nowrap="nowrap">&nbsp;{L_REPLIES}&nbsp;</th>
	  <th width="17%" nowrap="nowrap">&nbsp;{L_LASTPOST}&nbsp;</th>
	  <th width="5%" class="thRight" nowrap="nowrap">&nbsp;{L_SELECT}&nbsp;</th>
	</tr>
	<!-- BEGIN topicrow -->
	<tr> 
	  <td class="BoardRowA" align="center" valign="middle"><img src="{topicrow.TOPIC_FOLDER_IMG}" width="19" height="18" alt="{topicrow.L_TOPIC_FOLDER_ALT}" title="{topicrow.L_TOPIC_FOLDER_ALT}" /></td>
	  <td class="BoardRowB">&nbsp;<span class="BoardRowALink">{topicrow.TOPIC_ATTACHMENT_IMG}{topicrow.TOPIC_TYPE}<a href="{topicrow.U_VIEW_TOPIC}" class="BoardRowALink">{topicrow.TOPIC_TITLE}</a></span></td>
	  <td class="BoardRowA" align="center" valign="middle"><span class="BoardRowBLink">{topicrow.REPLIES}</span></td>
	  <td class="BoardRowA" align="center" valign="middle"><span class="BoardRowBLink">{topicrow.LAST_POST_TIME}</span></td>
	  <td class="BoardRowA" align="center" valign="middle"> 
		<input type="checkbox" name="topic_id_list[]" value="{topicrow.TOPIC_ID}" />
	  </td>
	</tr>
	<!-- END topicrow -->
	<tr align="right"> 
	  <td class="BoardColumn" colspan="5" height="29"> {S_HIDDEN_FIELDS} 
		<input type="submit" name="delete" class="liteoption" value="{L_DELETE}" />
		&nbsp; 
		<input type="submit" name="move" class="liteoption" value="{L_MOVE}" />
		&nbsp; 
		<input type="submit" name="lock" class="liteoption" value="{L_LOCK}" />
		&nbsp; 
		<input type="submit" name="unlock" class="liteoption" value="{L_UNLOCK}" />
	  </td>
	</tr>
  </table>
  <table width="100%" cellspacing="2" border="0" align="center" cellpadding="2">
  <tr class="BoardColumn"> 
	<td align="left" valign="middle"><span class="nav">{PAGE_NUMBER}</b></span></td>
	<td align="right" valign="top" nowrap="nowrap"><span class="gensmall">{S_TIMEZONE}</span><br /><span class="nav">{PAGINATION}</span></td>
  </tr>
</table>
</form>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
	<td align="right" class="BoardColumn">{JUMPBOX}</td>
  </tr>
</table>
