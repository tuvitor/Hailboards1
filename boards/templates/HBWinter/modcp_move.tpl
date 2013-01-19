<form action="{S_MODCP_ACTION}" method="post">
  <table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
	<tr> 
	  <td align="left" class="BoardColumn"><a href="{U_INDEX}" class="BoardColumnLink">{L_INDEX}</a></td>
	</tr>
  </table>
  <table width="100%" cellpadding="4" cellspacing="1" border="0" class="BoardRowA">
	<tr> 
	  <th height="25" class="BoardRowA"><b>{MESSAGE_TITLE} :: Move Thread</b></th>
	</tr>
	<tr> 
	  <td class="BoardRowB"> 
<br>
<table width="70%" align="center">
	<tr>
	<td width="50%"><span class="BoardRowBLink">{L_MOVE_TO_FORUM}: {S_FORUM_SELECT}</span></td><td width="50%"><span class="BoardRowBLink"><input type="checkbox" name="move_leave_shadow" enabled="false" />{L_LEAVESHADOW} (<a href="javascript:alert('Leaving a Shadow Topic keeps a copy of the thread in both forums. Do not use in most cases.');">More Information</a>)<br /></span></td>
	</tr>
	<tr>
	<td width="50%"><span class="BoardRowBLink">{MESSAGE_TEXT}</span></td><td width="50%"><span class="BoardRowBLink">{S_HIDDEN_FIELDS} <input class="mainoption" type="submit" name="confirm" value="{L_YES}" />  &nbsp; <input class="liteoption" type="submit" name="cancel" value="{L_NO}" /> </span></td>
	</tr>
</table>
<br> </td>
	</tr>
  </table>
</form>