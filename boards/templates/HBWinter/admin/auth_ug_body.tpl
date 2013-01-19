<br />

<table cellspacing="2" cellpadding="2" width="80%" class="MainTable" align="center" valign="center">
        <tr>
                <td class="BoardColumn" align="center"><span class="BoardColumnLink">{L_AUTH_TITLE}</span></td>
        </tr>
 <form method="post" action="{S_AUTH_ACTION}">
        <tr>
                <td class="BoardRowB" align="center" valign="center"><span class="BoardRowBLink"><br />{L_USER_OR_GROUPNAME}: {USERNAME}<br /><br /><span></td>
        </tr>
<!-- BEGIN switch_user_auth -->
		<tr>
                <td class="BoardRowA" align="center" valign="center"><span class="BoardRowBLink">{USER_LEVEL}<br /><span></td>
		</tr>
		<tr>
                <td class="BoardRowA" align="center" valign="center"><span class="BoardRowBLink">{USER_GROUP_MEMBERSHIPS}<br /><span></td>
		</tr>
<!-- END switch_user_auth -->	
<!-- BEGIN switch_group_auth -->
		<tr>
                <td class="BoardRowA" align="center" valign="center"><span class="BoardRowBLink">{GROUP_MEMBERSHIP}<br /><span></td>
		</tr>
<!-- END switch_group_auth -->
</table>
<br />
<br />
<table cellspacing="2" cellpadding="2" width="80%" class="MainTable" align="center" valign="center">
        <tr>
                <td class="BoardColumn" align="center">{L_PERMISSIONS}</td>
        </tr>
		        <tr>
                <td class="BoardRowB" align="center">{L_AUTH_EXPLAIN}</td>
        </tr>
</table>
<br /><br />
  <table cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
	<tr> 
	  <th width="30%" class="BoardColumn">{L_FORUM}</th>
	  <!-- BEGIN acltype -->
	  <th class="BoardColumn">{acltype.L_UG_ACL_TYPE}</th>
	  <!-- END acltype -->
	  <th class="BoardColumn">{L_MODERATOR_STATUS}</th>
	</tr>
	<!-- BEGIN forums -->
	<tr> 
	  <td class="BoardRowA" align="center">{forums.FORUM_NAME}</td>
	  <!-- BEGIN aclvalues -->
	  <td class="BoardRowB" align="center">{forums.aclvalues.S_ACL_SELECT}</td>
	  <!-- END aclvalues -->
	  <td class="BoardRowB" align="center">{forums.S_MOD_SELECT}</td>
	</tr>
	<!-- END forums -->
	<tr> 
	  <td colspan="{S_COLUMN_SPAN}" class="BoardRowA" align="center"> <span class="gensmall">{U_SWITCH_MODE}</span></td>
	</tr>
	<tr>
	  <td colspan="{S_COLUMN_SPAN}" class="BoardColumn" align="center">{S_HIDDEN_FIELDS} 
		<input type="submit" name="submit" value="{L_SUBMIT}" class="mainoption" />
		&nbsp;&nbsp; 
		<input type="reset" value="{L_RESET}" class="liteoption" name="reset" />
	  </td>
	</tr>
  </table>
</form>
