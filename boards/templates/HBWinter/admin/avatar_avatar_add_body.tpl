<table cellspacing="2" cellpadding="2" width="80%" class="MainTable" align="center" valign="center">
        <tr>
                <td class="BoardColumn" align="center"><span class="BoardColumnLink">{L_AVATAR_TITLE}</span></td>
        </tr>
        <tr>
                <td class="BoardRowB" align="center" valign="center"><span class="BoardRowBLink"><br /><p>{L_AVATAR_EXPLAIN}</p><br /><br /><span></td>
        </tr>
</table>
<br /><br />
<table cellspacing="2" cellpadding="2" width="100%" class="MainTable" align="center" valign="center">

<form method="post" action="{S_AVATAR_ACTION}"><table class="forumline" cellspacing="1" cellpadding="4" border="0" align="center">
	<tr>
		<th class="BoardColumn" colspan="2">{L_AVATAR_ADD}</th>
	</tr>
	<tr>
		<td class="BoardRowB">{L_TITLE}</td>
		<td class="BoardRowB"><input class="post" type="text" name="avatar_name" value="{AVATAR_TITLE}" /></td>
	</tr>
	<tr>
		<td class="BoardRowB">{L_FILE_PATH}</td>
		<td class="BoardRowB"><input class="post" type="text" name="file_path" value="{FILE_PATH}" /></td>
	</tr>
	<tr>
		<td class="BoardRowB">{L_AVATAR_CATEGORY}</td>
		<td class="BoardRowB"><select name="avatar_category">{AVATAR_CATEGORY}</select></td>
	</tr>
	<tr>
		<td class="BoardRowB">{L_DISPLAY_ORDER}</td>
		<td class="BoardRowB"><input class="post" type="text" name="display_order" value="{DISPLAY_ORDER}" /></td>
	</tr>
	<tr>
		<td class="catBottom" colspan="2" align="center">{S_HIDDEN_FIELDS}<input class="mainoption" type="submit" value="{L_SUBMIT}" />&nbsp;&nbsp;<input class="mainoption" type="reset" value="{L_RESET}" /></td>
	</tr>
</table></form>

<form method="post" action="{S_AVATAR_ACTION}"><table class="forumline" cellspacing="1" cellpadding="4" border="0" align="center">
	<tr>
		<th class="BoardColumn" colspan="2">{L_AVATAR_ADD}</th>
	</tr>
	<tr>
		<td class="BoardRowB">{L_FILE_PATH}</td>
		<td class="BoardRowB"><input class="post" type="text" name="avatar_dir" value="{FILE_PATH}" /></td>
	</tr>
	<tr>
		<td class="BoardRowB">{L_AVATAR_CATEGORY}</td>
		<td class="BoardRowB"><select name="avatar_category">{AVATAR_CATEGORY}</select></td>
	</tr>
	<tr>
		<td class="catBottom" colspan="2" align="center"><input class="mainoption" type="submit" name="add_multiple_avatar" value="{L_SUBMIT}" />&nbsp;&nbsp;<input class="mainoption" type="reset" value="{L_RESET}" /></td>
	</tr>
</table></form>
