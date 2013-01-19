 
<table width="100%" cellspacing="2" cellpadding="2" border="0" align="center">
  <tr> 
	<td align="left" class="MainMenuRow"><span class="MainMenuLink"><a href="{U_INDEX}" class="MainMenuLink">{L_INDEX}</a>&nbsp;&raquo;&nbsp;Groups</span></td>
  </tr>
</table>

<table width="100%" cellpadding="4" cellspacing="1" border="0" class="BoardRowB">
  <!-- BEGIN switch_groups_joined -->
  <tr> 
	<th colspan="2" align="center" class="BoardRowA" height="25"><span class="BoardRowALink">{L_GROUP_MEMBERSHIP_DETAILS}</span></th>
  </tr>
  <!-- BEGIN switch_groups_member -->
  <tr> 
	<td><span class="BoardRowBLink">{L_YOU_BELONG_GROUPS}</span></td>
	<td align="right"> 
	  <table width="90%" cellspacing="0" cellpadding="0" border="0">
		<tr><form method="get" action="{S_USERGROUP_ACTION}">
			<td width="40%"><span class="gensmall">{GROUP_MEMBER_SELECT}</span></td>
			<td align="center" width="30%"> 
			  <input type="submit" value="{L_VIEW_INFORMATION}" class="liteoption" />{S_HIDDEN_FIELDS}
			</td>
		</form></tr>
	  </table>
	</td>
  </tr>
  <!-- END switch_groups_member -->
  <!-- BEGIN switch_groups_pending -->
  <tr> 
	<td class="BoardRowB"><span class="BoardRowBLink">{L_PENDING_GROUPS}</span></td>
	<td class="BoardRowB" align="right"> 
	  <table width="90%" cellspacing="0" cellpadding="0" border="0">
		<tr><form method="get" action="{S_USERGROUP_ACTION}">
			<td width="40%"><span class="gensmall">{GROUP_PENDING_SELECT}</span></td>
			<td align="center" width="30%"> 
			  <input type="submit" value="{L_VIEW_INFORMATION}" class="liteoption" />{S_HIDDEN_FIELDS}
			</td>
		</form></tr>
	  </table>
	</td>
  </tr>
  <!-- END switch_groups_pending -->
  <!-- END switch_groups_joined -->
  <!-- BEGIN switch_groups_remaining -->
  <tr> 
	<th colspan="2" align="center" class="BoardRowA" height="25"><span class="BoardRowALink">{L_JOIN_A_GROUP}</span></th>
  </tr>
  <tr> 
	<td><span class="BoardRowBLink">{L_SELECT_A_GROUP}</span></td>
	<td align="right"> 
	  <table width="90%" cellspacing="0" cellpadding="0" border="0">
		<tr><form method="get" action="{S_USERGROUP_ACTION}">
			<td width="40%"><span class="gensmall">{GROUP_LIST_SELECT}</span></td>
			<td align="center" width="30%"> 
			  <input type="submit" value="{L_VIEW_INFORMATION}" class="liteoption" />{S_HIDDEN_FIELDS}
			</td>
		</form></tr>
	  </table>
	</td>
  </tr>
  <!-- END switch_groups_remaining -->
</table>

<table width="100%" cellspacing="0" border="0" align="center" cellpadding="2" class="MainMenuRow">
  <tr> 
	<td align="right" valign="top">{S_TIMEZONE}</td>
  </tr>
</table>

<table width="100%" cellspacing="2" border="0" align="center" class="MainMenuRow">
  <tr> 
	<td valign="top" align="right">{JUMPBOX}</td>
  </tr>
</table>
