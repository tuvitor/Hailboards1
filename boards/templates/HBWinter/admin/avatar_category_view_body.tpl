<br />

<table cellspacing="2" cellpadding="2" width="80%" class="MainTable" align="center" valign="center">
        <tr>
                <td class="BoardColumn" align="center"><span class="BoardColumnLink">{L_AVATAR_TITLE}</span></td>
        </tr>
        <tr>
                <td class="BoardRowB" align="center" valign="center"><span class="BoardRowBLink"><br />{L_AVATAR_TEXT}<br /><br /><span></td>
        </tr>
</table>
<br /><br />

<table cellspacing="2" cellpadding="2" width="75%" class="MainTable" align="center" valign="center">

<form method="post" action="{S_AVATAR_ACTION}"><table cellspacing="1" cellpadding="4" border="0" align="center" class="forumline">
	<tr>
		<th colspan="5" class="BoardColumn">{CATEGORY_TITLE}</th>
	</tr>
	<tr>
		<th class="MainMenuRow">{L_TITLE}</th>
		<th class="MainMenuRow">{L_DISPLAY_ORDER}</th>
		<th colspan="2" class="MainMenuRow">{L_ACTION}</th>
		<th class="MainMenuRow">{L_IMAGE}</th>
	</tr>
	<!-- BEGIN avatars -->
	<tr>
		<td class="BoardRowB">{avatars.TITLE}</td>
		<td class="BoardRowB" align="center"><input type="text" class="bginput" size="3" name="order[{avatars.AVATAR_ID}]" value="{avatars.ORDER}"></td>
		<td class="BoardRowB"><a href="{avatars.U_AVATAR_EDIT}">{L_EDIT}</a></td>
		<td class="BoardRowB"><a href="{avatars.U_AVATAR_DELETE}">{L_DELETE}</a></td>
		<td class="BoardRowB"><img src="{avatars.U_AVATAR_IMAGE}" border="0"></td>
	</tr>
	<!-- END avatars -->
	<tr>
		<td class="catBottom" colspan="5" align="center">{S_HIDDEN_FIELDS}<input type="submit" name="add_avatar" value="{L_AVATAR_ADD}" class="mainoption" />&nbsp;&nbsp;<input class="liteoption" type="submit" name="save_avatar_order" value="{L_SAVE_ORDER}"></td>
	</tr>
</table></form>

