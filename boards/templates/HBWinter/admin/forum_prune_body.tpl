<table width="80%" cellspacing="1" cellpadding="4" border="0" align="center">
  <tr>
    <td class="BoardColumn" align="center">
        <span class="BoardColumnLink">{L_FORUM_PRUNE}</span>
    </td>
  </tr>
  <tr>
    <td class="BoardRowB">
        <br />
        <span class="BoardRowBLink">{L_FORUM_PRUNE_EXPLAIN}</span><br /><br />

    </td>
  </tr>
</table><br /><br />

<form method="post"	action="{S_FORUMPRUNE_ACTION}">
  <table cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
	<tr>
	  <th class="BoardColumn">{L_FORUM}: {FORUM_NAME}</th>
	</tr>
	<tr> 
	  <td class="MainMenuRow"><span class="MainMenuLink">{L_FORUM_PRUNE}</span></td>
	</tr>
	<tr>
	  <td class="BoardRowA">{S_PRUNE_DATA}</td>
	</tr>
	<tr> 
	  <td class="catBottom" align="center">{S_HIDDEN_VARS}
		<input type="submit" name="doprune" value="{L_DO_PRUNE}" class="MainMenuRow">
	  </td>
	</tr>
  </table>
</form>
