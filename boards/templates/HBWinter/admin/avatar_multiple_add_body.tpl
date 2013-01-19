
<table cellspacing="2" cellpadding="2" width="80%" class="MainTable" align="center" valign="center">
        <tr>
                <td class="BoardColumn" align="center"><span class="BoardColumnLink">{L_AVATAR_TITLE}</span></td>
        </tr>
        <tr>
                <td class="BoardRowB" align="center" valign="center"><span class="BoardRowBLink"><br />{L_AVATAR_TEXT}<br /><br /><span></td>
        </tr>
</table>
<br /><br />

<form method="post" action="{S_AVATAR_ACTION}"><table cellspacing="1" cellpadding="4" border="0" align="center" class="forumline">

	<tr>

		<th colspan="5" class="thTop">{AVATAR_TITLE}</th>

	</tr>

	<tr>

		<th class="thCornerL">{L_IMAGE}</th>

		<th class="thTop">{L_TITLE}</th>

		<th class="thTop">{L_CATEGORY}</th>

		<th class="thCornerR">{L_INCLUDE}</th>

	</tr>

	<!-- BEGIN avatar_row -->

	<tr>

		<td class="{avatar_row.ROW_CLASS}"><img src="{avatar_row.U_AVATAR_IMAGE}" border="0"><input type="hidden" name="avimage[{avatar_row.AVATAR_OPTION}]" tabindex="1" value="{avatar_row.AVATAR_IMAGE}" /></td>

		<td class="{avatar_row.ROW_CLASS}"><input type="text" class="bginput" name="avtitle[{avatar_row.AVATAR_OPTION}]" tabindex="1" value="{avatar_row.AVATAR_NAME}" size="25" /></td>

		<td class="{avatar_row.ROW_CLASS}"><select name="avcat[{avatar_row.AVATAR_OPTION}]">{CATEGORIES}</select></td>

		<td class="{avatar_row.ROW_CLASS}" align="center"><input type="checkbox" name="doimage[{avatar_row.AVATAR_OPTION}]" value="1" tabindex="1" /></td>

	</tr>

	<!-- END avatar_row -->

	<tr>

		<td class="catBottom" colspan="5" align="right">{PAGE_NUMBER}<br />{PAGINATION}</td>

	</tr>

	<tr>

		<td class="catBottom" colspan="5" align="center">{S_HIDDEN_FIELDS}<input type="submit" name="add_avatar_group" value="{L_AVATAR_ADD}" class="mainoption" />&nbsp;&nbsp;<input class="mainoption" type="reset" value="{L_RESET}" /></td>

	</tr>

</table></form>