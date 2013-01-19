<form method="post" action="{S_PRIVMSGS_ACTION}">
  <table width="100%" cellspacing="0" cellpadding="0" border="0" align="center">	<tr>
	  <td align="left" valign="bottom" class="MainMenuRow">&nbsp;</td>
	  <td align="left" valign="bottom" class="MainMenuRow" width="100%"><a href="{U_INDEX}" class="MainMenuLink">{L_INDEX}</a><span class="MainMenuLink">&nbsp;&raquo; </span><span class="MainMenuLink">{INBOX}</span><span class="MainMenuLink">&nbsp;&raquo;&nbsp;</span><span class="MainMenuLink" style="color: yellow;">Viewing Private Message</span><span class="MainMenuLink">&nbsp;&raquo;</span></td>	  <td align="right" class="MainMenuRow" nowrap="nowrap">&nbsp;</td>	</tr>  </table>
  
  <table width="100%" cellspacing="1" cellpadding="1" border="0" align="center">	<tr> 
	  <td align="left" valign="middle" class="MainMenuRow">&nbsp;</td>
	</tr>
  </table>

  <table width="100%" cellspacing="1" cellpadding="1" border="0" align="center">	<tr> 	  <td align="left" valign="middle" class="MainMenuRow"><span class="MainMenuLink">{EDIT_PM}{REPLY_PM}</span><span class="MainMenuLink">&nbsp;|&nbsp;</span><span class="MainMenuLink" style="color: orange;">{INBOX}</span><span class="MainMenuLink">&nbsp;|&nbsp;</span><span class="MainMenuLink" style="color: orange;">{SENTBOX}</span><span class="MainMenuLink">&nbsp;|&nbsp;</span><span class="MainMenuLink" style="color: orange;">{OUTBOX}</span><span class="MainMenuLink">&nbsp;|&nbsp;</span><span class="MainMenuLink" style="color: orange;">{SAVEBOX}</span><span class="MainMenuLink">&nbsp;|&nbsp;{QUOTE_PM}{EDIT_PM}</span></td>
	</tr>
  </table>
<table cellspacing="2" cellpadding="2" border="0" align="center" width="100%" class="MainMenuRow">
   <tr align=left valign=top>

		<td class="BoardColumn" nowrap width="20%" align=right>{L_FROM}:&nbsp;</td>
		<td class="BoardRowB" width="80%">
		<span class="AuthorLink">{MESSAGE_FROM}</span>			
		</td>
	</tr>
	<tr align="left" valign="top">
		<td class="BoardColumn" nowrap align="right">{L_TO}:&nbsp;</td>
		<td class="BoardRowB">
		<span class="AuthorLink">{MESSAGE_TO}</span>
		</td>
	</tr>
	<tr align=left valign=top>
		<td class="BoardColumn" nowrap align=right>{L_POSTED}:&nbsp;</td>
		<td class="BoardRowB" >{POST_DATE}</td>

	</tr>
	<tr align=left valign=top>
		<td class="BoardColumn" nowrap align=right>{L_SUBJECT}:&nbsp;</td>
		<td class="BoardRowB">{POST_SUBJECT}</td>
	</tr>
	<tr align=left valign=top>
		<td class="BoardColumn" nowrap align=right><font size="-1"><b>Body:&nbsp;</b></td>
		<td class="BoardRowB">{MESSAGE}</span></td>
	</tr>
</table>
<table cellspacing="0" cellpadding="0" border="0" align="center" width="100%" class="BoardColumn">  <tr>
    <td>	  	<!-- BEGIN postrow -->		{ATTACHMENTS}		<!-- END postrow -->
    </td>
  </tr>
</table>	  </td>	</tr>	<tr> 	  <td width="78%" height="12" valign="bottom" colspan="3" class="BoardColumn"> 		&nbsp;	  </td>	</tr>	<tr>	  <td class="MainMenuRow" colspan="3" height="28" align="right"> {S_HIDDEN_FIELDS} 		<input type="submit" name="save" value="{L_SAVE_MSG}" class="BoardColumn" />		&nbsp; 		<input type="submit" name="delete" value="{L_DELETE_MSG}" class="BoardColumn" />		<!-- BEGIN switch_attachments -->		&nbsp; 		<input type="submit" name="pm_delete_attach" value="{L_DELETE_ATTACHMENTS}" class="BoardColumn" />		<!-- END switch_attachments -->	  </td>	</tr>  </table></form>
<table width="100%" cellspacing="0" border="0" align="center" cellpadding="0" class="MainTable">  <tr> 	<td valign="top" align="right" class="MainMenuRow">&nbsp;</td>  </tr></table>
<table width="100%" cellspacing="0" border="0" align="center" cellpadding="0" class="MainTable">  <tr> 	<td valign="top" align="right" class="MainMenuRow">{JUMPBOX}</td>  </tr></table>