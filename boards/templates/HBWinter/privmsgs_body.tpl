<script language="Javascript" type="text/javascript">	//	// Should really check the browser to stop this whining ...	//	function select_switch(status)	{		for (i = 0; i < document.privmsg_list.length; i++)		{			document.privmsg_list.elements[i].checked = status;		}	}</script><table border="0" cellspacing="0" cellpadding="0" align="center" width="100%" class="MainMenuRow"><tr><td><form method="post" name="privmsg_list" action="{S_PRIVMSGS_ACTION}">
  <table width="100%" cellspacing="0" cellpadding="0" border="0" align="center">	<tr>
	  <td align="left" valign="bottom" class="MainMenuRow">&nbsp;</td>
	  <td align="left" valign="bottom" width="100%">&nbsp;<a href="{U_INDEX}" class="MainMenuLink">{L_INDEX}</a><span class="MainMenuLink">&nbsp;&raquo; </span><span class="MainMenuLink" style="color: yellow;">Private Messages</span><span class="MainMenuLink">&nbsp;&raquo;</span></td>	  <td align="right" nowrap="nowrap"><span class="MainMenuRow">{L_DISPLAY_MESSAGES}: 		<select name="msgdays">{S_SELECT_MSG_DAYS}		</select>		<input type="submit" value="{L_GO}" name="submit_msgdays" class="MainMenuRow" />		</span></td>	</tr>  </table>
  <table width="100%" cellspacing="1" cellpadding="2" border="0" align="center">	<tr> 
	  <td align="left" valign="middle" class="MainMenuRow">&nbsp;</td>	  <td align="left" valign="middle" class="MainMenuRow">&nbsp;</td>
	  <td align="left" valign="middle" class="MainMenuRow">&nbsp;</td>
	</tr>
  </table>  <table width="100%" cellspacing="1" cellpadding="2" border="0" align="center">	<tr> 	  <td align="left" valign="middle" class="MainMenuRow">&nbsp;&nbsp;<span class="MainMenuLink">{POST_PM}</span><span class="MainMenuLink">&nbsp;|&nbsp;</span><span class="MainMenuLink" style="color: orange;">{INBOX}</span><span class="MainMenuLink">&nbsp;|&nbsp;</span><span class="MainMenuLink" style="color: orange;">{SENTBOX}</span><span class="MainMenuLink">&nbsp;|&nbsp;</span><span class="MainMenuLink" style="color: orange;">{OUTBOX}</span><span class="MainMenuLink">&nbsp;|&nbsp;</span><span class="MainMenuLink" style="color: orange;">{SAVEBOX}</span></td>
	  <td align="left" valign="middle" class="MainMenuRow">&nbsp;</td>
	  <td align="left" valign="middle" class="MainMenuRow">&nbsp;</td>
	</tr>
  </table>
 <table width="100%" cellspacing="1" cellpadding="0" border="0">  <tr>    <td colspan="2" class="MainMenuRow"> </td>    <td class="MainMenuRow">      <table border="0" cellpadding="3" cellspacing="1" width="100%" class="MainMenuRow">	<tr> 	  <th width="5%" height="25" class="BoardColumn" nowrap="nowrap"><span class="BoardColumnLink"> &nbsp;{L_FLAG}&nbsp; </span></th>	  <th width="55%" class="BoardColumn" nowrap="nowrap"><span class="BoardColumnLink">&nbsp;{L_SUBJECT}&nbsp;</span></th>	  <th width="20%" class="BoardColumn" nowrap="nowrap"><span class="BoardColumnLink">&nbsp;{L_FROM_OR_TO}&nbsp;</span></th>	  <th width="15%" class="BoardColumn" nowrap="nowrap"><span class="BoardColumnLink">&nbsp;{L_DATE}&nbsp;</span></th>	  <th width="5%" class="BoardColumn" nowrap="nowrap"><span class="BoardColumnLink">&nbsp;{L_MARK}&nbsp;</span></th>	</tr>	<!-- BEGIN listrow -->	<tr> 	  <td class="BoardRowA" width="5%" align="center" valign="middle"><img src="{listrow.PRIVMSG_FOLDER_IMG}" width="19" height="18" alt="{listrow.L_PRIVMSG_FOLDER_ALT}" title="{listrow.L_PRIVMSG_FOLDER_ALT}" /></td>	  <td width="55%" valign="middle" class="BoardRowB">{listrow.PRIVMSG_ATTACHMENTS_IMG}<span class="BoardRowBLink">&nbsp;<a href="{listrow.U_READ}" class="BoardRowBLink">{listrow.SUBJECT}</a></span></td>	  <td width="20%" valign="middle" align="center" class="BoardRowB"><span class="BoardRowBLink">&nbsp;<a href="{listrow.U_FROM_USER_PROFILE}" class="BoardRowALink">{listrow.FROM}</a></span></td>	  <td width="15%" align="center" valign="middle" class="BoardRowB"><span class="BoardRowBLink">{listrow.DATE}</span></td>	  <td width="5%" align="center" valign="middle" class="BoardRowB"><span class="BoardRowBLink"> 		<input type="checkbox" name="mark[]2" value="{listrow.S_MARK_ID}" />		</span></td>	</tr>	<!-- END listrow -->	<!-- BEGIN switch_no_messages -->	<tr> 	  <td class="BoardRowA" colspan="5" align="center" valign="middle"><span class="gen">{L_NO_MESSAGES}</span></td>	</tr>	<!-- END switch_no_messages -->	<tr> 	  <td class="MainMenuRow" colspan="5" height="28" align="right"> {S_HIDDEN_FIELDS} 		<input type="submit" name="save" value="{L_SAVE_MARKED}" class="MainMenuRow" />		&nbsp; 		<input type="submit" name="delete" value="{L_DELETE_MARKED}" class="MainMenuRow" />		&nbsp; 		<input type="submit" name="deleteall" value="{L_DELETE_ALL}" class="MainMenuRow" />	  </td>	</tr>  </table>
    <table width="100%" cellspacing="1" cellpadding="2" border="0" align="center">	<tr> 
	  <td align="left" valign="middle" class="MainMenuRow">&nbsp;</td>	  <td align="left" valign="middle" class="MainMenuRow">&nbsp;</td>
	  <td align="left" valign="middle" class="MainMenuRow">&nbsp;</td>
	</tr>
  </table>
  <table width="100%" border="0" cellpadding="3" cellspacing="1">  <tr align="left" valign="top">      <td nowrap width="15%" class="BoardColumn" align="right">          Watched Users:      </td>      <td width="85%" class="BoardRowB">{BUDDYLIST}</td>  </tr></table>
  <table width="100%" cellspacing="1" cellpadding="2" border="0" align="center">	<tr> 
	  <td align="left" valign="middle" class="MainMenuRow">&nbsp;</td>	  <td align="left" valign="middle" class="MainMenuRow">&nbsp;</td>
	  <td align="left" valign="middle" class="MainMenuRow">&nbsp;</td>
	</tr>
  </table>
  <table border="0" cellspacing="0" cellpadding="0" align="center" width="100%">  <tr>   <td align="left"> 	  <!-- BEGIN switch_box_size_notice -->	  <table width="175" cellspacing="1" cellpadding="2" border="0" class="MainTable">		<tr> 		  <td colspan="3" width="175" class="MainMenuRow" nowrap="nowrap"><span class="MainMenuLink">{ATTACH_BOX_SIZE_STATUS}</span></td>		</tr>		<tr> 		  <td colspan="3" width="175" class="row2">			<table cellspacing="0" cellpadding="1" border="0" class="MainMenuRow">			  <tr> 				<td class="MainMenuRow"><img src="templates/HBPreview/images/spacer.gif" width="{ATTACHBOX_LIMIT_IMG_WIDTH}" height="8" alt="{ATTACH_LIMIT_PERCENT}" /></td>			  </tr>			</table>		  </td>		</tr>		<tr> 		  <td width="33%" class="MainMenuRow"><span class="MainMenuLink">0%</span></td>		  <td width="34%" align="center" class="MainMenuRow"><span class="MainMenuLink">50%</span></td>		  <td width="33%" align="right" class="MainMenuRow"><span class="MainMenuLink">100%</span></td>		</tr>	  </table>	  <!-- END switch_box_size_notice -->	</td>	<td valign="bottom" align="center" width="100%" class="MainMenuRow"> 	  <table height="40" cellspacing="2" cellpadding="2" border="0">		<tr valign="middle"> 		  <td class="MainMenuLink">{INBOX}<span class="MainMenuLink">&nbsp;|&nbsp;</span>{SENTBOX}<span class="MainMenuLink">&nbsp;|&nbsp;</span>{OUTBOX}<span class="MainMenuLink">&nbsp;|&nbsp;</span>{SAVEBOX}		</tr>	  </table>	</td>	<td align="right"> 	  <!-- BEGIN switch_box_size_notice -->	  <table width="175" cellspacing="1" cellpadding="2" border="0" class="MainTable">		<tr> 		  <td colspan="3" width="175" class="MainMenuRow" nowrap="nowrap"><span class="MainMenuLink">{BOX_SIZE_STATUS}</span></td>		</tr>		<tr> 		  <td colspan="3" width="175" class="row2">			<table cellspacing="0" cellpadding="1" border="0" class="MainMenuRow">			  <tr> 				<td class="MainMenuRow"><img src="templates/HBPreview/images/spacer.gif" width="{INBOX_LIMIT_IMG_WIDTH}" height="8" alt="{INBOX_LIMIT_PERCENT}" /></td>			  </tr>			</table>		  </td>		</tr>		<tr> 		  <td width="33%" class="MainMenuRow"><span class="MainMenuLink">0%</span></td>		  <td width="34%" align="center" class="MainMenuRow"><span class="MainMenuLink">50%</span></td>		  <td width="33%" align="right" class="MainMenuRow"><span class="MainMenuLink">100%</span></td>		</tr>	  </table>	  <!-- END switch_box_size_notice -->	</td>  </tr></table>  <table width="100%" cellspacing="2" border="0" align="center" cellpadding="2">	<tr> 	  <td align="left" valign="middle" class="MainMenuRow"></td>	  <td align="left" valign="middle" width="100%" class="MainMenuRow"><span class="MainMenuLink">{PAGE_NUMBER}</span></td>	  <td align="right" valign="top" nowrap="nowrap" class="MainMenuRow"><b><span class="BoardColumnLink"><a href="javascript:select_switch(true);" class="MainMenuLink">{L_MARK_ALL}</a> :: <a href="javascript:select_switch(false);" class="MainMenuLink">{L_UNMARK_ALL}</a></span></b><br /><span class="nav">{PAGINATION}<br /></span><span class="MainMenuLink">{S_TIMEZONE}</span></td>	</tr>  </table>     </td>  </tr> </table></form></td></tr></table></tr></td><table width="100%" border="0">  <tr> 	<td align="right" valign="top" class="MainMenuRow">{JUMPBOX}