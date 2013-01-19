<table width="100%" cellspacing="0" cellpadding="0" border="0" class="MainMenuRow"><tr><td> 
<form action="{S_LOGIN_ACTION}" method="post" target="_top">

<table width="100%" cellspacing="2" cellpadding="0" border="0" align="center" class="MainMenuRow>"
  <tr> 
	<td align="left" class="MainMenuRow"><a href="{U_INDEX}" class="MainMenulink">{L_INDEX}</a></td>
  </tr>
</table>

<table width="100%" cellpadding="4" cellspacing="1" border="0" class="MainMenuRow" align="center">
  <tr> 
	<th class="BoardRowA" nowrap="nowrap"><b>{L_ENTER_PASSWORD}</b></th>
  </tr>
  <tr> 
	<td class="BoardRowB"><table border="0" cellpadding="3" cellspacing="1" width="100%">
		  <tr> 
			<td colspan="2" align="center">&nbsp;</td>
		  </tr>
		  <tr> 
			<td width="45%" align="right"><span class="BoardRowBLink">{L_USERNAME}:</span></td>
			<td> 
			  <input type="text" class="post" name="username" size="25" maxlength="40" value="{USERNAME}" />
			</td>
		  </tr>
		  <tr> 
			<td align="right"><span class="BoardRowBLink">{L_PASSWORD}:</span></td>
			<td> 
			  <input type="password" class="post" name="password" size="25" maxlength="32" />
			</td>
		  </tr>
		  <tr align="center"> 
			<td colspan="2"><span class="BoardRowBLink">{L_AUTO_LOGIN}: <input type="checkbox" name="autologin" /></span></td>
		  </tr>
		  <tr align="center"> 
			<td colspan="2">{S_HIDDEN_FIELDS}<input type="submit" name="login" class="MainMenuRow" value="{L_LOGIN}" /></td>
		  </tr>
		  <tr align="center"> 
			<td colspan="2"><a href="{U_SEND_PASSWORD}" class="BoardRowBLink">{L_SEND_PASSWORD}</a></td>
		  </tr>
</form>
</table>
</td>
</tr>
</table>
</td></tr></table>
