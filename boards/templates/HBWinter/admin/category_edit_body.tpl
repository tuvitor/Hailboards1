<br />
<table width="80%" cellpadding="0" cellspacing="0" align="center" class="MainTable">

  <tr>
    <td class="BoardColumn" align="center">
        <span class="BoardColumnLink">{L_EDIT_CATEGORY}</span>
    </td>
  </tr>

  <tr>
    <td class="BoardRowB" align="center">
        <br /><span class="BoardRowBLink">{L_EDIT_CATEGORY_EXPLAIN}</span><br /><br />
    </td>
  </tr>
</table>

<br /><br />

<form action="{S_FORUM_ACTION}" method="post">
  <table cellpadding="4" cellspacing="1" border="0" class="MainTable" align="center">
	<tr> 
	  <th class="BoardColumn" colspan="2">{L_EDIT_CATEGORY}</th>
	</tr>
	<tr> 
	  <td class="BoardRowA">{L_CATEGORY}</td>
	  <td class="BoardRowB"><input class="post" type="text" size="25" name="cat_title" value="{CAT_TITLE}" /></td>
	</tr>
	<tr> 
	  <td class="catBottom" colspan="2" align="center">{S_HIDDEN_FIELDS}<input type="submit" name="submit" value="{S_SUBMIT_VALUE}" class="mainoption" /></td>
	</tr>
  </table>
</form>
		
<br clear="all" />
