
<table width="80%" cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
  <tr>
    <td class="BoardColumn" align="center">
        {L_SMILEY_TITLE}
    </td>
  </tr>
  <tr>
    <td class="BoardRowB" align="center">
        <span class="BoardRowBLink">{L_SMILEY_EXPLAIN}</span>
    </td>
  </tr>
</table><br /><br />

<form method="post" action="{S_SMILEY_ACTION}"><table class="MainTable" cellspacing="1" cellpadding="4" border="0" align="center">
	<tr>
		<th class="BoardColumn" colspan="2">{L_SMILEY_IMPORT}</th>
	</tr>
	<tr>
		<td class="BoardRowB">{L_SELECT_LBL}</td>
		<td class="BoardRowB">{S_SMILE_SELECT}</td>
	</tr>
	<tr>
		<td class="BoardRowA">{L_DEL_EXISTING}</td>
		<td class="BoardRowA"><input type="checkbox" name="clear_current" value="1" /></td>
	</tr>
	<tr>
		<td class="BoardRowB" colspan="2" align="center">{L_CONFLICTS}<br /><input type="radio" name="replace" value="1" checked="checked"/> {L_REPLACE_EXISTING} &nbsp; <input type="radio" name="replace" value="0" /> {L_KEEP_EXISTING}</td>
	</tr>
	<tr>
		<td class="catBottom" colspan="2" align="center">{S_HIDDEN_FIELDS}<input class="mainoption" name="import_pack" type="submit" value="{L_IMPORT}" /></td>
	</tr>
</table></form>
