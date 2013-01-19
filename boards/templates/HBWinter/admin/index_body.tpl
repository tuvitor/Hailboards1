<div align="center"><img src="../templates/HBWinter/images/hb_logo_sm.png"></div>

<br /><br />

<table width="100%" cellpadding="1" cellspacing="1" border="0" class="MainTable">
  <tr width="100%">
    <td class="BoardColumn" align="center"><span class="BoardColumnLink">{L_WELCOME}</span></td></tr>
  <tr width="100%">
    <td class="BoardRowA"><span class="BoardRowBLink">{L_ADMIN_INTRO}</span></td>
  </tr>
</table>

<table width="100%" cellpadding="1" cellspacing="1" border="0" class="MainMenuRow"><tr><td>&nbsp;</td></tr></table>

<table width="100%" cellpadding="1" cellspacing="1" border="0" class="MainTable">
  <tr width="100%">
    <td class="BoardColumn" align="center"><span class="BoardColumnLink">{L_FORUM_STATS}</span></td></tr>
  <tr width="100%">
    <td class="BoardColumn">

<table width="100%" cellpadding="4" cellspacing="1" border="0" class="MainTable">
  <tr>
        <th width="25%" nowrap="nowrap" height="25" class="MainMenuRow"><span class="MainMenuLink">{L_STATISTIC}</span></th>
        <th width="25%" height="25" class="MainMenuRow"><span class="MainMenuLink">{L_VALUE}</span></th>
        <th width="25%" nowrap="nowrap" height="25" class="MainMenuRow"><span class="MainMenuLink">{L_STATISTIC}</span></th>
        <th width="25%" height="25" class="MainMenuRow"><span class="MainMenuLink">{L_VALUE}</span></th>
  </tr>
  <tr>
        <td class="BoardRowA" nowrap="nowrap"><span class="BoardRowBLink">{L_NUMBER_POSTS}:</span></td>
        <td class="BoardRowB"><span class="BoardRowBLink">{NUMBER_OF_POSTS}</span></td>
        <td class="BoardRowA" nowrap="nowrap"><span class="BoardRowBLink">{L_POSTS_PER_DAY}:</span></td>
        <td class="BoardRowB"><span class="BoardRowBLink">{POSTS_PER_DAY}</span></td>
  </tr>
  <tr>
        <td class="BoardRowA" nowrap="nowrap"><span class="BoardRowBLink">{L_NUMBER_TOPICS}:</span></td>
        <td class="BoardRowB"><span class="BoardRowBLink">{NUMBER_OF_TOPICS}</span></td>
        <td class="BoardRowA" nowrap="nowrap"><span class="BoardRowBLink">{L_TOPICS_PER_DAY}:</span></td>
        <td class="BoardRowB"<span class="BoardRowBLink">{TOPICS_PER_DAY}</span></td>
  </tr>
  <tr>
        <td class="BoardRowA" nowrap="nowrap"><span class="BoardRowBLink">{L_NUMBER_USERS}:</span></td>
        <td class="BoardRowB"><span class="BoardRowBLink">{NUMBER_OF_USERS}</span></td>
        <td class="BoardRowA" nowrap="nowrap"><span class="BoardRowBLink">{L_USERS_PER_DAY}:</span></td>
        <td class="BoardRowB"><span class="BoardRowBLink">{USERS_PER_DAY}</span></td>
  </tr>
  <tr>
        <td class="BoardRowA" nowrap="nowrap"><span class="BoardRowBLink">{L_BOARD_STARTED}:</span></td>
        <td class="BoardRowB"><span class="BoardRowBLink">{START_DATE}</span></td>
        <td class="BoardRowA" nowrap="nowrap"><span class="BoardRowBLink">{L_AVATAR_DIR_SIZE}:</span></td>
        <td class="BoardRowB"><span class="BoardRowBLink">{AVATAR_DIR_SIZE}</span></td>
  </tr>
  <tr>
        <td class="BoardRowA" nowrap="nowrap"><span class="BoardRowBLink">{L_DB_SIZE}:</span></td>
        <td class="BoardRowB"><span class="BoardRowBLink">{DB_SIZE}</span></b></td>
        <td class="BoardRowA" nowrap="nowrap"><span class="BoardRowBLink">{L_GZIP_COMPRESSION}:</span></td>
        <td class="BoardRowB"><span class="BoardRowBLink">{GZIP_COMPRESSION}</span></b></td>
  </tr>
</table>

   </span></td>
</tr>
</table>

<br />


<table width="100%" cellpadding="1" cellspacing="1" border="0" class="MainTable">
  <tr width="100%">
    <td class="BoardColumn" align="center"><span class="BoardColumnLink">{L_VERSION_INFORMATION}</span></td></tr>
  <tr width="100%">
    <td class="BoardRowB" align="center"><span class="BoardRowBLink">{VERSION_INFO}</span></td>
  </tr>
</table>

<br />

<table width="100%" cellpadding="1" cellspacing="1" border="0" class="MainTable">
  <tr width="100%">
    <td class="BoardColumn" align="center"><span class="BoardColumnLink">{L_WHO_IS_ONLINE}</span></td></tr>
  <tr width="100%"><td>

<table width="100%" cellpadding="4" cellspacing="1" border="0" class="MainTable">
  <tr> 
	<th width="20%" class="MainMenuRow" height="25"><span class="MainMenuLink">&nbsp;{L_USERNAME}&nbsp;</span></th>
	<th width="20%" height="25" class="MainMenuRow"><span class="MainMenuLink">&nbsp;{L_STARTED}&nbsp;</span></th>
	<th width="20%" class="MainMenuRow"><span class="MainMenuLink">&nbsp;{L_LAST_UPDATE}&nbsp;</span></th>
	<th width="20%" class="MainMenuRow"><span class="MainMenuLink">&nbsp;{L_FORUM_LOCATION}&nbsp;</span></th>
	<th width="20%" height="25" class="MainMenuRow"><span class="MainMenuLink">&nbsp;{L_IP_ADDRESS}&nbsp;</span></th>
  </tr>
  <!-- BEGIN reg_user_row -->
  <tr> 
	<td width="20%" class="BoardRowA">&nbsp;<span class="BoardRowBLink"><a href="{reg_user_row.U_USER_PROFILE}" class="BoardRowBLink">{reg_user_row.USERNAME}</a></span>&nbsp;</td>
	<td width="20%" align="center" class="BoardRowB">&nbsp;<span class="BoardRowBLink">{reg_user_row.STARTED}</span>&nbsp;</td>
	<td width="20%" align="center" nowrap="nowrap" class="BoardRowA">&nbsp;<span class="BoardRowBLink">{reg_user_row.LASTUPDATE}</span>&nbsp;</td>
	<td width="20%" class="BoardRowB">&nbsp;<span class="BoardRowBLink"><a href="{reg_user_row.U_FORUM_LOCATION}" class="BoardRowBLink">{reg_user_row.FORUM_LOCATION}</a></span>&nbsp;</td>
	<td width="20%" class="BoardRowA">&nbsp;<span class="BoardRowBLink"><a href="{reg_user_row.U_WHOIS_IP}" class="BoardRowBLink" target="_phpbbwhois">{reg_user_row.IP_ADDRESS}</a></span>&nbsp;</td>
  </tr>
  <!-- END reg_user_row -->
  <tr> 
	<td colspan="5" height="1" class="row3"><img src="../templates/subSilver/images/spacer.gif" width="1" height="1" alt="."></td>
  </tr>
  <!-- BEGIN guest_user_row -->
  <tr> 
	<td width="20%" class="MainMenuRow">&nbsp;<span class="MainMenuLink">{guest_user_row.USERNAME}</span>&nbsp;</td>
	<td width="20%" align="center" class="MainMenuRow">&nbsp;<span class="gen">{guest_user_row.STARTED}</span>&nbsp;</td>
	<td width="20%" align="center" nowrap="nowrap" class="MainMenuRow">&nbsp;<span class="gen">{guest_user_row.LASTUPDATE}</span>&nbsp;</td>
	<td width="20%" class="MainMenuRow">&nbsp;<a href="{guest_user_row.U_FORUM_LOCATION}" class="MainMenuLink">{guest_user_row.FORUM_LOCATION}</a></span>&nbsp;</td>
	<td width="20%" class="MainMenuRow" align="center">&nbsp;<span class="MainMenuLink"><a href="{guest_user_row.U_WHOIS_IP}" target="_phpbbwhois" class="MainMenuLink">{guest_user_row.IP_ADDRESS}</a></span>&nbsp;</td>
  </tr>
  <!-- END guest_user_row -->
</table>
</td></tr></table>
<br />