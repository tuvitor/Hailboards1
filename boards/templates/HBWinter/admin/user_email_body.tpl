<table width="80%" cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
  <tr>
    <td class="BoardColumn" align="center">
        {L_EMAIL_TITLE}
    </td>
  </tr>
  <tr>
    <td class="BoardRowB" align="center">
        <span class="BoardRowBLink">{L_EMAIL_EXPLAIN}</span>
    </td>
  </tr>
</table><br /><br />

<form method="post" action="{S_USER_ACTION}">

{ERROR_BOX}

<table cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
	<tr> 
	  <th class="BoardColumn" colspan="2">{L_COMPOSE}</th>
	</tr>
	<tr> 
	  <td class="BoardRowA" align="right"><b>{L_RECIPIENTS}</b></td>
	  <td class="BoardRowB" align="left">{S_GROUP_SELECT}</td>
	</tr>
	<tr> 
	  <td class="BoardRowA" align="right"><b>{L_EMAIL_SUBJECT}</b></td>
	  <td class="BoardRowB"><span class="gen"><input class="post" type="text" name="subject" size="45" maxlength="100" tabindex="2" class="post" value="{SUBJECT}" /></span></td>
	</tr>
	<tr> 
	  <td class="BoardRowA" align="right" valign="top"> <span class="gen"><b>{L_EMAIL_MSG}</b></span> 
	  <td class="BoardRowB"><span class="gen"> <textarea name="message" rows="15" cols="35" wrap="virtual" style="width:450px" tabindex="3" class="post">{MESSAGE}</textarea></span> 
	</tr>
	<tr> 
	  <td class="catBottom" align="center" colspan="2"><input type="submit" value="{L_EMAIL}" name="submit" class="mainoption" /></td>
	</tr>
</table>

</form>
