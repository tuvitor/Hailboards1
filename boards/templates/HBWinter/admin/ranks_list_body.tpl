<table width="80%" cellspacing="1" cellpadding="4" border="0" align="center">
  <tr>
    <td class="BoardColumn" align="center">
        <span class="BoardColumnLink">{L_RANKS_TITLE}</span>
    </td>
  </tr>
  <tr>
    <td class="BoardRowB">
        <br />
        <span class="BoardRowBLink">{L_RANKS_TEXT}</span><br /><br />

    </td>
  </tr>
</table>
<br /><br />

<form method="post" action="{S_RANKS_ACTION}"><table cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
	<tr>
		<th class="BoardColumn"><span class="BoardColumnLink">{L_RANK}</span></th>
        <th class="BoardColumn"><span class="BoardColumnLink">{L_RANK_MINIMUM}</span></th>
		<th class="BoardColumn"><span class="BoardColumnLink">{L_SPECIAL_RANK}</span></th>
		<th class="BoardColumn"><span class="BoardColumnLink">{L_EDIT}</span></th>
		<th class="BoardColumn"><span class="BoardColumnLink">{L_DELETE}</span></th>
	</tr>
	<!-- BEGIN ranks -->
	<tr>
		<td class="BoardRowA" align="center"><span class="BoardRowBLink">{ranks.RANK}</span></td>
        <td class="BoardRowB" align="center"><span class="BoardRowBLink">{ranks.RANK_MIN}</span></td>
		<td class="BoardRowA" align="center"><span class="BoardRowBLink">{ranks.SPECIAL_RANK}</span></td>
		<td class="BoardRowB" align="center"><a href="{ranks.U_RANK_EDIT}" class="BoardRowBLink">{L_EDIT}</a></td>
		<td class="BoardRowA" align="center"><a href="{ranks.U_RANK_DELETE}" class="BoardRowBLink">{L_DELETE}</a></td>
	</tr>
	<!-- END ranks -->			
	<tr>
		<td class="BoardColumn" align="center" colspan="6"><input type="submit" class="MainMenuRow" name="add" value="{L_ADD_RANK}" /></td>
	</tr>
</table></form>
