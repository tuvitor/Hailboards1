<br />

<table cellspacing="2" cellpadding="2" width="80%" class="MainTable" align="center" valign="center">
        <tr>
                <td class="BoardColumn" align="center"><span class="BoardColumnLink">{L_FORUM_DELETE}</span></td>
        </tr>
        <tr>
                <td class="BoardRowB" align="center" valign="center"><span class="BoardRowBLink"><br />{L_FORUM_DELETE_EXPLAIN}<br /><br /><span></td>
        </tr>
</table>
<br /><br />

<form action="{S_FORUM_ACTION}" method="post">
  <table cellpadding="4" cellspacing="1" border="0" class="MainTable" align="center">
	<tr> 
	  <th colspan="2" class="BoardColumn">{L_FORUM_DELETE}</th>
	  </tr>
	<tr> 
	  <td class="BoardRowA">{L_FORUM_NAME}</td>
	  <td class="BoardRowA"><span class="row1">{NAME}</span></td>
	</tr>
	<tr> 
	  <td class="BoardRowA">{L_MOVE_CONTENTS}</td>
	  <td class="BoardRowA">{S_SELECT_TO}</td>
	</tr>
	<tr> 
	  <td class="catBottom" colspan="2" align="center">{S_HIDDEN_FIELDS}<input type="submit" name="submit" value="{S_SUBMIT_VALUE}" class="mainoption" /></td>
	</tr>
  </table>
</form>
