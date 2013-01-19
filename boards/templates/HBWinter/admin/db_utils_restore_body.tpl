<table width="80%" cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
  <tr>
    <td class="BoardColumn" align="center">
        {L_DATABASE_RESTORE}
    </td>
  </tr>
  <tr>
    <td class="BoardRowB" align="center">
        <span class="BoardRowBLink">{L_RESTORE_EXPLAIN}</span>
    </td>
  </tr>
</table><br /><br />

<form enctype="multipart/form-data" method="post" action="{S_DBUTILS_ACTION}"><table cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
	<tr>
		<th class="BoardColumn">{L_SELECT_FILE}</th>
	</tr>
	<tr>
		<td class="BoardRowA" align="center">&nbsp;<input type="file" name="backup_file">&nbsp;&nbsp;{S_HIDDEN_FIELDS}<input type="submit" name="restore_start" value="{L_START_RESTORE}" class="mainoption" />&nbsp;</td>
	</tr>
</table></form>
