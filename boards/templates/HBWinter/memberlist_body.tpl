<form method="post" action="{S_MODE_ACTION}">
<table width="100%" cellspacing="1" cellpadding="1" border="0" align="center">
  <tr>
      <td align="left" class="MainMenuRow"><span class="MainMenuLink"><a href="{U_INDEX}" class="MainMenuLink">{L_INDEX}</a></span>&nbsp;&raquo;&nbsp;<span class="MainMenuLink">{L_MEMBERLIST}</td>
  </tr>
</table>
<table width="100%" class="MainMenuRow" align="center"
<tr>
<td align="right" nowrap="nowrap">{L_SELECT_SORT_METHOD}&nbsp;{S_MODE_SELECT}&nbsp;&nbsp;{L_ORDER}&nbsp;{S_ORDER_SELECT}&nbsp;&nbsp;
<input type="submit" name="submit" value="{L_SUBMIT}" />
</td>
</tr></table>
<table width="100%" class="BoardRowA" align="center" cellspacing="0" cellpadding="0">
<tr>
	<th class="BoardRowA" height="25" nowrap="nowrap"><b>#</b></th>
	<th class="BoardRowA" nowrap="nowrap"><b>PM</b></th>
	<th class="BoardRowA" nowrap="nowrap"><b>{L_USERNAME}</b></th>
	<th class="BoardRowA" nowrap="nowrap"><b>{L_EMAIL}</b></th>
	<th class="BoardRowA" nowrap="nowrap"><b>{L_FROM}</b></th>
	<th class="BoardRowA" nowrap="nowrap"><b>{L_JOINED}</b></th>
	<th class="BoardRowA" nowrap="nowrap"><b>{L_POSTS}</b></th>
	<th class="BoardRowA" nowrap="nowrap"><b>{L_WEBSITE}</b></th>
</tr>
<!-- BEGIN memberrow -->
<tr>
<td class="BoardRowA" align="center">&nbsp;{memberrow.ROW_NUMBER}&nbsp;</td>
<td class="BoardRowB" align="center"><span class="BoardRowBLink">&nbsp;{memberrow.HB_PM}&nbsp;</span></td>
<td class="BoardRowB" align="center"><a href="{memberrow.U_VIEWPROFILE}">{memberrow.USERNAME}</a></span></td>
<td class="BoardRowB" align="center"><span class="BoardRowBLink">&nbsp;{memberrow.HB_EMAIL}&nbsp;</span></td>
<td class="BoardRowB" align="center">{memberrow.FROM}&nbsp;</td>
<td class="BoardRowB" align="center"><span class="BoardRowBLink">{memberrow.JOINED}</span></td>
<td class="BoardRowB" align="center"><span class="BoardRowBLink">{memberrow.POSTS}</span></td>
<td class="BoardRowA" align="center"><span class="BoardRowBLink">&nbsp;{memberrow.HB_WWW}&nbsp;</span></td>


<!-- END memberrow -->
</tr></table>
<table width="100%" cellspacing="0" cellpadding="0" border="0" class="MainMenu">
  <tr> 
	<td><span class="MainMenuLink">{PAGE_NUMBER}</span></td>
	<td align="right"><span class="MainMenuLink">{S_TIMEZONE}</span><br /><span class="nav">{PAGINATION}</span></td>
  </tr>
</table></form>

<table width="100%" cellspacing="2" border="0" align="center" class="MainMenuRow">
  <tr> 
	<td valign="top" align="right" class="MainMenuLink">{JUMPBOX}</td>
  </tr>
</table>
