 
<form action="{S_GROUPCP_ACTION}" method="post">

<table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
	<tr>
		<td align="left" class="MainMenuRow"><span class="MainMenuLink"><a href="{U_INDEX}" class="MainMenuLink">{L_INDEX}</a>&nbsp;&raquo;&nbsp;Groups</td>
	</tr>
</table>

<table class="BoardRowB" width="100%" cellspacing="1" cellpadding="4" border="0">
	<tr> 
		<th class="MainMenuRow" colspan="7" height="25"><b>{L_GROUP_INFORMATION}</b></th>
	</tr>
	<tr> 
		<td class="row1" width="20%"><span class="gen">{L_GROUP_NAME}:</span></td>
		<td class="row2"><span class="gen"><b>{GROUP_NAME}</b></span></td>
	</tr>
	<tr> 
		<td class="row1" width="20%"><span class="gen">{L_GROUP_DESC}:</span></td>
		<td class="row2"><span class="gen">{GROUP_DESC}</span></td>
	</tr>
	<tr> 
		<td class="row1" width="20%"><span class="gen">{L_GROUP_MEMBERSHIP}:</span></td>
		<td class="row2"><span class="gen">{GROUP_DETAILS} &nbsp;&nbsp;
		<!-- BEGIN switch_subscribe_group_input -->
		<input class="mainoption" type="submit" name="joingroup" value="{L_JOIN_GROUP}" />
		<!-- END switch_subscribe_group_input -->
		<!-- BEGIN switch_unsubscribe_group_input -->
		<input class="mainoption" type="submit" name="unsub" value="{L_UNSUBSCRIBE_GROUP}" />
		<!-- END switch_unsubscribe_group_input -->
		</span></td>
	</tr>
	<!-- BEGIN switch_mod_option -->
	<tr> 
		<td class="row1" width="20%"><span class="gen">{L_GROUP_TYPE}:</span></td>
		<td class="row2"><span class="gen"><span class="gen"><input type="radio" name="group_type" value="{S_GROUP_OPEN_TYPE}" {S_GROUP_OPEN_CHECKED} /> {L_GROUP_OPEN} &nbsp;&nbsp;<input type="radio" name="group_type" value="{S_GROUP_CLOSED_TYPE}" {S_GROUP_CLOSED_CHECKED} />	{L_GROUP_CLOSED} &nbsp;&nbsp;<input type="radio" name="group_type" value="{S_GROUP_HIDDEN_TYPE}" {S_GROUP_HIDDEN_CHECKED} />	{L_GROUP_HIDDEN} &nbsp;&nbsp; <input class="mainoption" type="submit" name="groupstatus" value="{L_UPDATE}" /></span></td>
	</tr>
	<!-- END switch_mod_option -->
</table>

{S_HIDDEN_FIELDS}

</form>

<form action="{S_GROUPCP_ACTION}" method="post" name="post">
<table width="100%" cellpadding="4" cellspacing="1" border="0" class="BoardRowB">
	<tr> 
	  <th class="MainMenuRow" height="25"><b>{L_PM}</b></th>
	  <th class="MainMenuRow"><b>{L_USERNAME}</b></th>
	  <th class="MainMenuRow"><b>{L_POSTS}</b></th>
	  <th class="MainMenuRow"><b>{L_FROM}</b></th>
	  <th class="MainMenuRow"><b>{L_EMAIL}</b></th>
	  <th class="MainMenuRow"><b>{L_WEBSITE}</b></th>
	  <th class="MainMenuRow"><b>{L_SELECT}</b></th>
	</tr>
	<tr> 
	  <td class="BoardRowA" colspan="8" height="28"><span class="cattitle"><b>{L_GROUP_MODERATOR}</b></span></td>
	</tr>
	<tr> 
	  <td class="BoardRowB" align="center"> {MOD_PM_IMG} </td>
	  <td class="BoardRowB" align="center"><span class="gen"><a href="{U_MOD_VIEWPROFILE}" class="gen">{MOD_USERNAME}</a></span></td>
	  <td class="BoardRowB" align="center" valign="middle"><span class="gen">{MOD_POSTS}</span></td>
	  <td class="BoardRowB" align="center" valign="middle"><span class="gen">{MOD_FROM}</span></td>
	  <td class="BoardRowB" align="center" valign="middle"><span class="gen">{MOD_EMAIL_IMG}</span></td>
	  <td class="BoardRowB" align="center">&nbsp;{MOD_WWW_IMG}&nbsp;</td>
	  <td class="BoardRowB" align="center"> &nbsp; </td>
	</tr>
	<tr> 
	  <td class="BoardRowA" colspan="8" height="28"><b>{L_GROUP_MEMBERS}</b></td>
	</tr>
	<!-- BEGIN member_row -->
	<tr> 
	  <td class="{member_row.ROW_CLASS}" align="center"> {member_row.PM_IMG} </td>
	  <td class="{member_row.ROW_CLASS}" align="center"><span class="gen"><a href="{member_row.U_VIEWPROFILE}" class="gen">{member_row.USERNAME}</a></span></td>
	  <td class="{member_row.ROW_CLASS}" align="center"><span class="gen">{member_row.POSTS}</span></td>
	  <td class="{member_row.ROW_CLASS}" align="center"><span class="gen"> {member_row.FROM} 
		</span></td>
	  <td class="{member_row.ROW_CLASS}" align="center" valign="middle"><span class="gen">{member_row.EMAIL_IMG}</span></td>
	  <td class="{member_row.ROW_CLASS}" align="center">&nbsp;{member_row.WWW_IMG}&nbsp;</td>
	  <td class="{member_row.ROW_CLASS}" align="center"> 
	  <!-- BEGIN switch_mod_option -->
	  <input type="checkbox" name="members[]" value="{member_row.USER_ID}" /> 
	  <!-- END switch_mod_option -->
	  </td>
	</tr>
	<!-- END member_row -->

	<!-- BEGIN switch_no_members -->
	<tr> 
	  <td class="BoardRowB" colspan="7" align="center"><span class="gen">{L_NO_MEMBERS}</span></td>
	</tr>
	<!-- END switch_no_members -->

	<!-- BEGIN switch_hidden_group -->
	<tr> 
	  <td class="BoardRowB" colspan="7" align="center"><span class="gen">{L_HIDDEN_MEMBERS}</span></td>
	</tr>
	<!-- END switch_hidden_group -->

	<!-- BEGIN switch_mod_option -->
	<tr>
		<td class="MainMenuRow" colspan="8" align="right"><span class="MainMenuLink">
			<input type="submit" name="remove" value="{L_REMOVE_SELECTED}" class="mainoption" />
		</td>
	</tr>
	<!-- END switch_mod_option -->
</table>

<table width="100%" cellspacing="2" border="0" align="center" cellpadding="2">
	<tr>
		<td align="left" valign="top" class="MainMenuRow">
		<!-- BEGIN switch_mod_option -->
		<span class="MainMenuLink"><input type="text"  class="post" name="username" maxlength="50" size="20" /> <input type="submit" name="add" value="{L_ADD_MEMBER}" class="mainoption" /> <input type="submit" name="usersubmit" value="{L_FIND_USERNAME}" class="liteoption" onClick="window.open('{U_SEARCH_USER}', '_phpbbsearch', 'HEIGHT=250,resizable=yes,WIDTH=400');return false;" /></span><br /><br />
		<!-- END switch_mod_option -->
		<span class="MainMenuLink">{PAGE_NUMBER}</span></td>
		<td align="right" valign="top" class="MainMenuRow"><span class="MainMenuLink">{S_TIMEZONE}</span><br /><span class="MainMenuLink">{HB_PAGINATION}</span></td>
	</tr>
</table>

{PENDING_USER_BOX}

{S_HIDDEN_FIELDS}</form>

<table width="100%" cellspacing="2" border="0" align="center">
  <tr> 
	<td valign="top" align="right" class="MainMenuRow">{JUMPBOX}</td>
  </tr>
</table>
