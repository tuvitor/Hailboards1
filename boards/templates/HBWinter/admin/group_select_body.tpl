<table width="80%" cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
  <tr>
    <td class="BoardColumn" align="center"><span class="BoardColumnLink">
        {L_GROUP_TITLE}</span>
    </td>
  </tr>
  <tr>
    <td class="BoardRowB" align="center">
        <span class="BoardRowBLink">{L_GROUP_EXPLAIN}</span>
    </td>
  </tr>
</table><br /><br />

<form method="post" action="{S_GROUP_ACTION}"><table cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
	<tr>
		
	<th class="BoardColumn" align="center">{L_GROUP_SELECT}</th>
	</tr>
	<!-- BEGIN select_box -->
	<tr>
		<td class="BoardRowA" align="center">{S_GROUP_SELECT}&nbsp;&nbsp;<input type="submit" name="edit" value="{L_LOOK_UP}" class="MainMenuRow" />&nbsp;</td>
	</tr>
	<!-- END select_box -->
	<tr>
		<td class="BoardRowA" align="center">{S_HIDDEN_FIELDS}<input type="submit" class="MainMenuRow" name="new" value="{L_CREATE_NEW_GROUP}" /></td>
	</tr>
</table></form>
