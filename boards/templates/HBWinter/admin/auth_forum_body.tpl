<table cellspacing="2" cellpadding="2" width="80%" class="MainTable" align="center" valign="center">
        <tr>
                <td class="BoardColumn" align="center"><span class="BoardColumnLink">{L_AUTH_TITLE}</span></td>
        </tr>
        <tr>
                <td class="BoardRowB" align="center" valign="center"><span class="BoardRowBLink"><br /><p>{{L_AUTH_EXPLAIN}</p><br /><span class="BoardRowBLink">{L_FORUM}: {FORUM_NAME}</span>span><br /></td>
        </tr>
</table>
<br /><br />
<table cellspacing="2" cellpadding="2" width="100%" class="MainTable" align="center" valign="center">



<form method="post" action="{S_FORUMAUTH_ACTION}">
  <table cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
	<tr> 
	  <!-- BEGIN forum_auth_titles -->
	  <th class="thTop">{forum_auth_titles.CELL_TITLE}</th>
	  <!-- END forum_auth_titles -->
	</tr>
	<tr> 
	  <!-- BEGIN forum_auth_data -->
	  <td class="BoardRowA" align="center">{forum_auth_data.S_AUTH_LEVELS_SELECT}</td>
	  <!-- END forum_auth_data -->
	</tr>
	<tr> 
	  <td colspan="{S_COLUMN_SPAN}" align="center" class="BoardRowA"> <span class="gensmall">{U_SWITCH_MODE}</span></td>
	</tr>
	<tr>
	  <td colspan="{S_COLUMN_SPAN}" class="catBottom" align="center">{S_HIDDEN_FIELDS} 
		<input type="submit" name="submit" value="{L_SUBMIT}" class="mainoption" />
		&nbsp;&nbsp; 
		<input type="reset" value="{L_RESET}" name="reset" class="liteoption" />
	  </td>
	</tr>
  </table>
</form>
