<br />

<table cellspacing="2" cellpadding="2" width="80%" class="MainTable" align="center" valign="center">
	<tr>
		<td class="BoardColumn" align="center"><span class="BoardColumnLink">{L_CATEGORY_TITLE}</span></td>
	</tr>
	<tr>
		<td class="BoardRowB" align="center" valign="center"><span class="BoardRowBLink"><br />{L_CATEGORY_TEXT}<br /><br /><span></td>
	</tr>
</table>
<br /><br />
{L_CATTITLE}

<table cellspacing="2" cellpadding="2" width="100%" class="MainTable" align="center" valign="center">


<form method="post" action="{S_CATEGORY_ACTION}"><table cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
	<tr>
		<th class="MainMenuRow"><span class="MainMenuLink">{L_TITLE}</span></th>
		<th class="MainMenuRow"><span class="MainMenuLink">{L_CONTAINS}</span></th>
		<th class="MainMenuRow"><span class="MainMenuLink">{L_DISPLAY_ORDER}</span></th>
		<th colspan="2" class="MainMenuRow"><span class="MainMenuLink">{L_ACTION}</span></th>
	</tr>
	<!-- BEGIN categories -->
	<tr>
		<td class="BoardRowA"><a href="{categories.U_CATEGORY_TITLE}">{categories.TITLE}</a></td>
		<td class="BoardRowB">{categories.CONTAINS}</td>
		<td class="BoardRowA" align="center"><input type="text" class="InputNotes" size="3" name="order[{categories.CATEGORY_ID}]" value="{categories.ORDER}"></td>
		<td class="BoardRowB"><a href="{categories.U_CATEGORY_EDIT}"><span class="BoardRowBLink">{L_EDIT}</span></a></td>
		<td class="BoardRowA"><a href="{categories.U_CATEGORY_DELETE}"><span class="BoardRowBLink">{L_DELETE}</span></a></td>
	</tr>
	<!-- END categories -->
	<tr>
		<td class="catBottom" colspan="5" align="center">{S_HIDDEN_FIELDS}<input type="submit" name="add_category" value="{L_CATEGORY_ADD}" class="MainMenuRow" />&nbsp;&nbsp;<input class="MainMenuRow" type="submit" name="save_order" value="{L_SAVE_ORDER}">&nbsp;&nbsp;<input class="MainMenuRow" type="submit" name="add_avatar" value="{L_AVATAR_ADD}"></td>
	</tr>
</table></form>

