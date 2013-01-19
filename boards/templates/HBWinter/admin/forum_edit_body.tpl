<br />

<table cellspacing="2" cellpadding="2" width="80%" class="MainTable" align="center" valign="center">
        <tr>
                <td class="BoardColumn" align="center"><span class="BoardColumnLink">{L_FORUM_TITLE}</span></td>
        </tr>
        <tr>
                <td class="BoardRowB" align="center" valign="center"><span class="BoardRowBLink"><br />{L_FORUM_EXPLAIN}<br /><br /><span></td>
        </tr>
</table>
<br /><br />

<form action="{S_FORUM_ACTION}" method="post">
  <table width="100%" cellpadding="4" cellspacing="1" border="0" class="forumline" align="center">
	<tr> 
	  <th class="BoardColumn" colspan="2">{L_FORUM_SETTINGS}</th>
	</tr>
	<tr> 
	  <td class="BoardRowA">{L_FORUM_NAME}</td>
	  <td class="BoardRowB"><input type="text" size="25" name="forumname" value="{FORUM_NAME}" class="post" /></td>
	</tr>
	<tr> 
	  <td class="BoardRowA">{L_FORUM_DESCRIPTION}</td>
	  <td class="BoardRowB"><textarea rows="5" cols="45" wrap="virtual" name="forumdesc" class="post">{DESCRIPTION}</textarea></td>
	</tr>
	<tr> 
	  <td class="BoardRowA">{L_CATEGORY}</td>
	  <td class="BoardRowB"><select name="c">{S_CAT_LIST}</select></td>
	</tr>
	<tr> 
	  <td class="BoardRowA">{L_FORUM_STATUS}</td>
	  <td class="BoardRowB"><select name="forumstatus">{S_STATUS_LIST}</select></td>
	</tr>
	<tr> 
	  <td class="BoardRowA">{L_AUTO_PRUNE}</td>
	  <td class="BoardRowB"><table cellspacing="0" cellpadding="1" border="0">
		  <tr> 
			<td align="right" valign="middle"><span class="BoardRowBLink">{L_ENABLED}</span></td>
			<td align="left" valign="middle"><input type="checkbox" name="prune_enable" value="1" {S_PRUNE_ENABLED} /></td>
		  </tr>
		  <tr> 
			<td align="right" valign="middle"><span class="BoardRowBLink">{L_PRUNE_DAYS}</span></td>
			<td align="left" valign="middle">&nbsp;<input type="text" name="prune_days" value="{PRUNE_DAYS}" size="5" class="post" />&nbsp;<span class="BoardRowBLink">{L_DAYS}</span></td>
		  </tr>
		  <tr> 
			<td align="right" valign="middle"><span class="BoardRowBLink">{L_PRUNE_FREQ}</span></td>
			<td align="left" valign="middle">&nbsp;<input type="text" name="prune_freq" value="{PRUNE_FREQ}" size="5" class="post" />&nbsp;<span class="BoardRowBLink">{L_DAYS}</span></td>
		  </tr>
	  </table></td>
	</tr>
	<tr> 
	  <td class="BoardColumn" colspan="2" align="center">{S_HIDDEN_FIELDS}<input type="submit" name="submit" value="{S_SUBMIT_VALUE}" class="mainoption" /></td>
	</tr>
  </table>
</form>
		
<br clear="all" />
