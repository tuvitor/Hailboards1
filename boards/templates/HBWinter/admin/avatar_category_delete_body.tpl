<table cellspacing="2" cellpadding="2" width="80%" class="MainTable" align="center" valign="center">
        <tr>
                <td class="BoardColumn" align="center"><span class="BoardColumnLink">{L_CATEGORY_TITLE}</span></td> 
        </tr>
        <tr>
                <td class="BoardRowB" align="center" valign="center"><span class="BoardRowBLink"><br />{L_CATEGORY_EXPLAIN}<br /><br /><span></td>
        </tr>
</table>
<p>&nbsp;</p>
<form method="post" action="{S_CATEGORY_ACTION}">
  <table class="forumline" cellspacing="1" cellpadding="4" border="0" align="center">
	<tr>
		<th class="BoardColumn" colspan="2">{L_CATEGORY_DELETE}</th>
	</tr>
	<tr>
		<td class="BoardRowB">{L_TITLE}</td>
		<td class="BoardRowB">{CATEGORY_TITLE}</td>
	</tr>
	<tr>
		<td class="BoardRowB">{L_DELETE_AVATARS}</td>
		<td class="BoardRowB"><select name="delete_avatars"><option value="0">No</option><option value="1">Yes</option></select></td>
	</tr>
	<tr>
		<td class="BoardRowB">{L_DESTINATION_CATEGORY}</td>
		<td class="BoardRowB"><select name="dest_category">{S_DESTINATION_OPTIONS}</select></td>
	</tr>
	<tr>
		<td class="catBottom" colspan="2" align="center">{S_HIDDEN_FIELDS}<input class="mainoption" name="delete_category" type="submit" value="{L_SUBMIT}" /></td>
	</tr>
</table></form>

