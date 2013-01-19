<br />

<table cellspacing="2" cellpadding="2" width="80%" class="MainTable" align="center" valign="center">
        <tr>
                <td class="BoardColumn" align="center"><span class="BoardColumnLink">{L_CATEGORY_TITLE}</span></td>
        </tr>
        <tr>
                <td class="BoardRowB" align="center" valign="center"><span class="BoardRowBLink"><br />{L_CATEGORY_EXPLAIN}<br /><br /><span></td>
        </tr>
</table>
<br /><br />


<form method="post" action="{S_CATEGORY_ACTION}"><table class="forumline" cellspacing="1" cellpadding="4" border="0" align="center">
	<tr>
		<th class="BoardColumn" colspan="2">{L_CATEGORY_ADD}</th>
	</tr>
	<tr>
		<td class="BoardRowB">{L_TITLE}</td>
		<td class="BoardRowB"><input class="post" type="text" name="category_name" value="{CATEGORY_TITLE}" /></td>
	</tr>
	<tr>
		<td class="BoardRowB">{L_DISPLAY_ORDER}</td>
		<td class="BoardRowB"><input class="post" type="text" name="display_order" value="{DISPLAY_ORDER}" /></td>
	</tr>
	<tr>
		<td class="catBottom" colspan="2" align="center">{S_HIDDEN_FIELDS}<input class="mainoption" type="submit" value="{L_SUBMIT}" /></td>
	</tr>
</table></form>

