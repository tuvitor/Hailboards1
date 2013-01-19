<table width="80%" cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
  <tr>
    <td class="BoardColumn" align="center">
	{L_DATABASE_BACKUP}
    </td>
  </tr>
  <tr>
    <td class="BoardRowB" align="center">
	<span class="BoardRowBLink">{L_BACKUP_EXPLAIN}</span>
    </td>
  </tr>
</table><br /><br />

<form method="post" action="{S_DBUTILS_ACTION}"><table cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
	<tr>
		<th colspan="2" class="BoardColumn">{L_BACKUP_OPTIONS}</th>
	</tr>
	<tr>
		<td class="BoardRowB">{L_FULL_BACKUP}</td>
		<td class="BoardRowB"><input type="radio" name="backup_type" value="full" checked /></td>
	</tr>
	<tr>
		<td class="BoardRowA">{L_STRUCTURE_BACKUP}</td>
		<td class="BoardRowA"><input type="radio" name="backup_type" value="structure" /></td>
	</tr>
	<tr>
		<td class="BoardRowB">{L_DATA_BACKUP}</td>
		<td class="BoardRowB"><input type="radio" name="backup_type" value="data" /></td>
	</tr>
	<tr>
		<td class="BoardRowA">{L_ADDITIONAL_TABLES}</td>
		<td class="BoardRowA"><input class="post" type="text" name="additional_tables" /></td>
	</tr>
	<tr>
		<td class="BoardRowA">{L_GZIP_COMPRESS}</td>
		<td class="BoardRowA">{L_NO} <input type="radio" name="gzipcompress" value="0" checked /> &nbsp;{L_YES} <input type="radio" name="gzipcompress" value="1" /></td>
	</tr>
	<tr>
		<td class="catBottom" colspan="2" align="center">{S_HIDDEN_FIELDS}<input type="submit" name="backupstart" value="{L_START_BACKUP}" class="mainoption" /></td>
	</tr>
</table></form>
