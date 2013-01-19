<table width="80%" cellspacing="1" cellpadding="4" border="0" align="center">
  <tr>
    <td class="BoardColumn" align="center">
        <span class="BoardColumnLink">{L_USER_TITLE}</span>
    </td>
  </tr>
  <tr>
    <td class="BoardRowB">
        <br />
        <span class="BoardRowBLink">{L_USER_EXPLAIN}</span><br /><br />

    </td>
  </tr>
</table>
<br /><br />

<form method="post" name="post" action="{S_USER_ACTION}"><table cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
	<tr>
		<th class="BoardColumn" align="center">{L_USER_SELECT}</th>
	</tr>
	<tr>
		<td class="BoardRowA" align="center"><input type="text" class="InputSection" name="username" maxlength="50" size="20" /> <input type="hidden" name="mode" value="edit" />{S_HIDDEN_FIELDS}<input type="submit" name="submituser" value="{L_LOOK_UP}" class="MainMenuRow" /> <input type="submit" name="usersubmit" value="{L_FIND_USERNAME}" class="MainMenuRow" onClick="window.open('{U_SEARCH_USER}', '_phpbbsearch', 'HEIGHT=250,resizable=yes,WIDTH=400');return false;" /></td>
	</tr>
</table></form>
