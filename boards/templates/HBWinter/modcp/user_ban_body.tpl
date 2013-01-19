<table width="80%" cellspacing="1" cellpadding="4" border="0" align="center">
  <tr>
    <td class="BoardColumn" align="center">
	<span class="BoardColumnLink">{L_BAN_TITLE}</span>
    </td>
  </tr>
  <tr>
    <td class="BoardRowB">
	<br />
	<span class="BoardRowBLink">{L_BAN_EXPLAIN}</span><br /><br />

    </td>
  </tr>
</table>

<br /><br />

<form method="post" name="post" action="{S_BANLIST_ACTION}"><table width="80%" cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
	<tr> 
	  <th class="BoardColumn" colspan="2">{L_BAN_USER}</th>
	</tr>
	<tr> 
	  <td class="BoardRowA">{L_USERNAME}:</td>
	  <td class="BoardRowB"><input class="post" type="text" class="post" name="username" maxlength="50" size="20" /> <input type="hidden" name="mode" value="edit" />{S_HIDDEN_FIELDS} <input type="submit" name="usersubmit" value="{L_FIND_USERNAME}" class="liteoption" onClick="window.open('{U_SEARCH_USER}', '_phpbbsearch', 'HEIGHT=250,resizable=yes,WIDTH=400');return false;" /></td>
	</tr>
	<tr> 
	  <th class="BoardColumn" colspan="2">{L_UNBAN_USER}</th>
	</tr>
	<tr> 
	  <td class="BoardRowA">{L_USERNAME}: <br /><span class="gensmall">{L_UNBAN_USER_EXPLAIN}</span></td>
	  <td class="BoardRowB">{S_UNBAN_USERLIST_SELECT}</td>
	</tr>
	<tr> 
	  <th class="BoardColumn" colspan="2">{L_BAN_IP}</th>
	</tr>
	<tr> 
	  <td class="BoardRowA">{L_IP_OR_HOSTNAME}: <br /><span class="gensmall">{L_BAN_IP_EXPLAIN}</span></td>
	  <td class="BoardRowB"><input class="post" type="text" name="ban_ip" size="35" /></td>
	</tr>
	<tr> 
	  <th class="BoardColumn" colspan="2">{L_UNBAN_IP}</th>
	</tr>
	<tr> 
	  <td class="BoardRowA">{L_IP_OR_HOSTNAME}: <br /><span class="gensmall">{L_UNBAN_IP_EXPLAIN}</span></td>
	  <td class="BoardRowB">{S_UNBAN_IPLIST_SELECT}</td>
	</tr>
	<tr> 
	  <th class="BoardColumn" colspan="2">{L_BAN_EMAIL}</th>
	</tr>
	<tr> 
	  <td class="BoardRowA">{L_EMAIL_ADDRESS}: <br /><span class="gensmall">{L_BAN_EMAIL_EXPLAIN}</span></td>
	  <td class="BoardRowB"><input class="post" type="text" name="ban_email" size="35" /></td>
	</tr>
	<tr> 
	  <th class="BoardColumn" colspan="2">{L_UNBAN_EMAIL}</th>
	</tr>
	<tr> 
	  <td class="BoardRowA">{L_EMAIL_ADDRESS}: <br /><span class="gensmall">{L_UNBAN_EMAIL_EXPLAIN}</span></td>
	  <td class="BoardRowB">{S_UNBAN_EMAILLIST_SELECT}</td>
	</tr>
	<tr> 
	  <td class="catBottom" colspan="2" align="center"><input type="submit" name="submit" value="{L_SUBMIT}" class="mainoption" />&nbsp;&nbsp;<input type="reset" value="{L_RESET}" class="liteoption" /></td>
	</tr>
</table></form>

<br />

<table width="80%" cellspacing="1" cellpadding="4" border="0" align="center">
  <tr>
    <td class="MainMenuRow">
	<br /><span class="MainMenuLink">{L_BAN_EXPLAIN_WARN}</span><br /><br />
    </td>
  </tr>
</table>
