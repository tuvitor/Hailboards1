<table width="80%" cellpadding="4" cellspacing="1" border="0" class="MainTable" align="center">
  <tr>
    <td class="BoardColumn" align="center">
    <span class="BoardColumnLink">{L_FORUM_TITLE}</span>
    </td>
  </tr>
  <tr>
    <td class="BoardRowB" align="center">
    <br /><span class="BoardRowBLink">{L_FORUM_EXPLAIN}</span>
    <br /><br />
  </tr>
</table>

<br /><br />

<form method="post" action="{S_FORUM_ACTION}"><table width="100%" cellpadding="4" cellspacing="1" border="0" class="MainTable" align="center">
	<tr>
		<th class="BoardColumn" colspan="7">{L_FORUM_TITLE}</th>
	</tr>
	<!-- BEGIN catrow -->
	<tr>
		<td class="MainMenuRow" colspan="3"><span class="MainMenuLink"><b><a href="{catrow.U_VIEWCAT}" class="MainMenuLink">{catrow.CAT_DESC}</a></b></span></td>
		<td class="MainMenuRow" align="center" valign="middle"><span class="BoardRowBLink"><a href="{catrow.U_CAT_EDIT}" class="MainMenuLink">{L_EDIT}</a></span></td>
		<td class="MainMenuRow" align="center" valign="middle"><span class="BoardRowBLink"><a href="{catrow.U_CAT_DELETE}" class="MainMenuLink">{L_DELETE}</a></span></td>
		<td class="MainMenuRow" align="center" valign="middle" nowrap="nowrap"><span class="BoardRowBLink"><a href="{catrow.U_CAT_MOVE_UP}" class="MainMenuLink">{L_MOVE_UP}</a>&nbsp;&nbsp;&nbsp;<a href="{catrow.U_CAT_MOVE_DOWN}" class="MainMenuLink">{L_MOVE_DOWN}</a></span></td>
		<td class="MainMenuRow" align="center" valign="middle"><span class="BoardRowBLink">&nbsp;</span></td>
	</tr>
	<!-- BEGIN forumrow -->
	<tr> 
		<td class="BoardRowB"><span class="SubjectLink"><a href="{catrow.forumrow.U_VIEWFORUM}" target="_new">{catrow.forumrow.FORUM_NAME}</a></span><br /><span class="BoardRowBLink">{catrow.forumrow.FORUM_DESC}</span></td>
		<td class="BoardRowA" align="center" valign="middle"><span class="BoardRowBLink">{catrow.forumrow.NUM_TOPICS}</span></td>
		<td class="BoardRowB" align="center" valign="middle"><span class="BoardRowBLink">{catrow.forumrow.NUM_POSTS}</span></td>
		<td class="BoardRowA" align="center" valign="middle"><span class="BoardRowBLink"><a href="{catrow.forumrow.U_FORUM_EDIT}">{L_EDIT}</a></span></td>
		<td class="BoardRowB" align="center" valign="middle"><span class="BoardRowBLink"><a href="{catrow.forumrow.U_FORUM_DELETE}">{L_DELETE}</a></span></td>
		<td class="BoardRowA" align="center" valign="middle"><span class="BoardRowBLink"><a href="{catrow.forumrow.U_FORUM_MOVE_UP}">{L_MOVE_UP}</a> <br /> <a href="{catrow.forumrow.U_FORUM_MOVE_DOWN}">{L_MOVE_DOWN}</a></span></td>
		<td class="BoardRowB" align="center" valign="middle"><span class="BoardRowBLink"><a href="{catrow.forumrow.U_FORUM_RESYNC}">{L_RESYNC}</a></span></td>
	</tr>
	<!-- END forumrow -->
	<tr>
		<td colspan="7" class="BoardRowA"><input class="post" type="text" name="{catrow.S_ADD_FORUM_NAME}" /> <input type="submit" class="MainMenuRow"  name="{catrow.S_ADD_FORUM_SUBMIT}" value="{L_CREATE_FORUM}" /></td>
	</tr>
	<tr>
		<td colspan="7" height="1" class="spaceRow"><img src="../templates/subSilver/images/spacer.gif" alt="" width="1" height="1" /></td>
	</tr>
	<!-- END catrow -->
	<tr>
		<td colspan="7" class="catBottom"><input class="post" type="text" name="categoryname" /> <input type="submit" class="MainMenuRow"  name="addcategory" value="{L_CREATE_CATEGORY}" /></td>
	</tr>
</table></form>
