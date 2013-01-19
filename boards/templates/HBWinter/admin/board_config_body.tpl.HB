<table width="80%" cellpadding="0" cellspacing="0" align="center" class="MainTable">

  <tr>
    <td class="BoardColumn" align="center">
	<span class="BoardColumnLink">{L_CONFIGURATION_TITLE}</span>
    </td>
  </tr>

  <tr>
    <td class="BoardRowB" align="center">
	<br /><span class="BoardRowBLink">{L_CONFIGURATION_EXPLAIN}</span><br /><br />
    </td>
  </tr>
</table>

<br /><br />
<form action="{S_CONFIG_ACTION}" method="InputSection"><table width="99%" cellpadding="4" cellspacing="1" border="0" align="center" class="MainTable">
	<tr>
	  <th class="BoardColumn" colspan="2">{L_GENERAL_SETTINGS}</th>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_SERVER_NAME}</a></td>
		<td class="BoardRowB"><input class="InputSection" type="text" maxlength="255" size="40" name="server_name" value="{SERVER_NAME}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_SERVER_PORT}</span><span class="BoardRowBLink"><br />{L_SERVER_PORT_EXPLAIN}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" maxlength="5" size="5" name="server_port" value="{SERVER_PORT}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_SCRIPT_PATH}</span><span class="BoardRowBLink"><br />{L_SCRIPT_PATH_EXPLAIN}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" maxlength="255" name="script_path" value="{SCRIPT_PATH}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_SITE_NAME}</span><br /><span class="BoardRowBLink">{L_SITE_NAME_EXPLAIN}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" size="25" maxlength="100" name="sitename" value="{SITENAME}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_SITE_DESCRIPTION}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" size="40" maxlength="255" name="site_desc" value="{SITE_DESCRIPTION}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_DISABLE_BOARD}</span><br /><span class="BoardRowBLink">{L_DISABLE_BOARD_EXPLAIN}</span></td>
		<td class="BoardRowB"><input type="radio" name="board_disable" value="1" {S_DISABLE_BOARD_YES} /> {L_YES}&nbsp;&nbsp;<input type="radio" name="board_disable" value="0" {S_DISABLE_BOARD_NO} /> {L_NO}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_ACCT_ACTIVATION}</span></td>
		<td class="BoardRowB"><input type="radio" name="require_activation" value="{ACTIVATION_NONE}" {ACTIVATION_NONE_CHECKED} />{L_NONE}&nbsp; &nbsp;<input type="radio" name="require_activation" value="{ACTIVATION_USER}" {ACTIVATION_USER_CHECKED} />{L_USER}&nbsp; &nbsp;<input type="radio" name="require_activation" value="{ACTIVATION_ADMIN}" {ACTIVATION_ADMIN_CHECKED} />{L_ADMIN}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_VISUAL_CONFIRM}</span><br /><span class="BoardRowBLink">{L_VISUAL_CONFIRM_EXPLAIN}</span></td>
		<td class="BoardRowB"><input type="radio" name="enable_confirm" value="1" {CONFIRM_ENABLE} />{L_YES}&nbsp; &nbsp;<input type="radio" name="enable_confirm" value="0" {CONFIRM_DISABLE} />{L_NO}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_ALLOW_AUTOLOGIN}</span><br /><span class="BoardRowBLink">{L_ALLOW_AUTOLOGIN_EXPLAIN}</span></td>
		<td class="BoardRowB"><input type="radio" name="allow_autologin" value="1" {ALLOW_AUTOLOGIN_YES} />{L_YES}&nbsp; &nbsp;<input type="radio" name="allow_autologin" value="0" {ALLOW_AUTOLOGIN_NO} />{L_NO}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">Autologin Time </span><br /><span class="BoardRowBLink">{L_AUTOLOGIN_TIME_EXPLAIN}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" size="3" maxlength="4" name="max_autologin_time" value="{AUTOLOGIN_TIME}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_BOARD_EMAIL_FORM}</span><br /><span class="BoardRowBLink">{L_BOARD_EMAIL_FORM_EXPLAIN}</span></td>
		<td class="BoardRowB"><input type="radio" name="board_email_form" value="1" {BOARD_EMAIL_FORM_ENABLE} /> {L_ENABLED}&nbsp;&nbsp;<input type="radio" name="board_email_form" value="0" {BOARD_EMAIL_FORM_DISABLE} /> {L_DISABLED}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_FLOOD_INTERVAL} </span><br /><span class="BoardRowBLink">{L_FLOOD_INTERVAL_EXPLAIN}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" size="3" maxlength="4" name="flood_interval" value="{FLOOD_INTERVAL}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_SEARCH_FLOOD_INTERVAL}</span><br /><span class="BoardRowBLink">{L_SEARCH_FLOOD_INTERVAL_EXPLAIN}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" size="3" maxlength="4" name="search_flood_interval" value="{SEARCH_FLOOD_INTERVAL}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">Maximum Login Attempts{L_MAX_LOGIN_ATTEMPTS}</span><br /><span class="BoardRowBLink">{L_MAX_LOGIN_ATTEMPTS_EXPLAIN}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" size="3" maxlength="4" name="max_login_attempts" value="{MAX_LOGIN_ATTEMPTS}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_LOGIN_RESET_TIME}Login Reset Time</span><br /><span class="BoardRowBLink">{L_LOGIN_RESET_TIME_EXPLAIN}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" size="3" maxlength="4" name="login_reset_time" value="{LOGIN_RESET_TIME}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_TOPICS_PER_PAGE}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" name="topics_per_page" size="3" maxlength="4" value="{TOPICS_PER_PAGE}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_POSTS_PER_PAGE}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" name="posts_per_page" size="3" maxlength="4" value="{POSTS_PER_PAGE}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_HOT_THRESHOLD}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" name="hot_threshold" size="3" maxlength="4" value="{HOT_TOPIC}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_DEFAULT_STYLE}</span></td>
		<td class="BoardRowB">{STYLE_SELECT}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_OVERRIDE_STYLE}</span><br /><span class="BoardRowBLink">{L_OVERRIDE_STYLE_EXPLAIN}</span></td>
		<td class="BoardRowB"><input type="radio" name="override_user_style" value="1" {OVERRIDE_STYLE_YES} /> {L_YES}&nbsp;&nbsp;<input type="radio" name="override_user_style" value="0" {OVERRIDE_STYLE_NO} /> {L_NO}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_DEFAULT_LANGUAGE}</span></td>
		<td class="BoardRowB">{LANG_SELECT}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_DATE_FORMAT}</span><br /><span class="BoardRowBLink">{L_DATE_FORMAT_EXPLAIN}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" name="default_dateformat" value="{DEFAULT_DATEFORMAT}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_SYSTEM_TIMEZONE}</span></td>
		<td class="BoardRowB">{TIMEZONE_SELECT}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_ENABLE_GZIP}</span></td>
		<td class="BoardRowB"><input type="radio" name="gzip_compress" value="1" {GZIP_YES} /> {L_YES}&nbsp;&nbsp;<input type="radio" name="gzip_compress" value="0" {GZIP_NO} /> {L_NO}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_ENABLE_PRUNE}</span></td>
		<td class="BoardRowB"><input type="radio" name="prune_enable" value="1" {PRUNE_YES} /> {L_YES}&nbsp;&nbsp;<input type="radio" name="prune_enable" value="0" {PRUNE_NO} /> {L_NO}</td>
	</tr>
	<tr>
		<th class="BoardColumn" colspan="2">{L_COOKIE_SETTINGS}</th>
	</tr>
	<tr>
		<td class="BoardRowB" colspan="2"><span class="BoardRowBLink">{L_COOKIE_SETTINGS_EXPLAIN}</span></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_COOKIE_DOMAIN}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" maxlength="255" name="cookie_domain" value="{COOKIE_DOMAIN}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_COOKIE_NAME}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" maxlength="16" name="cookie_name" value="{COOKIE_NAME}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_COOKIE_PATH}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" maxlength="255" name="cookie_path" value="{COOKIE_PATH}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_COOKIE_SECURE}</span><br /><span class="BoardRowBLink">{L_COOKIE_SECURE_EXPLAIN}</span></td>
		<td class="BoardRowB"><input type="radio" name="cookie_secure" value="0" {S_COOKIE_SECURE_DISABLED} />{L_DISABLED}&nbsp; &nbsp;<input type="radio" name="cookie_secure" value="1" {S_COOKIE_SECURE_ENABLED} />{L_ENABLED}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_SESSION_LENGTH}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" maxlength="5" size="5" name="session_length" value="{SESSION_LENGTH}" /></td>
	</tr>
	<tr>
		<th class="BoardColumn" colspan="2">{L_PRIVATE_MESSAGING}</th>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_DISABLE_PRIVATE_MESSAGING}</span></td>
		<td class="BoardRowB"><input type="radio" name="privmsg_disable" value="0" {S_PRIVMSG_ENABLED} />{L_ENABLED}&nbsp; &nbsp;<input type="radio" name="privmsg_disable" value="1" {S_PRIVMSG_DISABLED} />{L_DISABLED}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_INBOX_LIMIT}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" maxlength="4" size="4" name="max_inbox_privmsgs" value="{INBOX_LIMIT}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_SENTBOX_LIMIT}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" maxlength="4" size="4" name="max_sentbox_privmsgs" value="{SENTBOX_LIMIT}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_SAVEBOX_LIMIT}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" maxlength="4" size="4" name="max_savebox_privmsgs" value="{SAVEBOX_LIMIT}" /></td>
	</tr>
	<tr>
	  <th class="BoardColumn" colspan="2">{L_ABILITIES_SETTINGS}</th>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_MAX_POLL_OPTIONS}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" name="max_poll_options" size="4" maxlength="4" value="{MAX_POLL_OPTIONS}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_ALLOW_HTML}</span></td>
		<td class="BoardRowB"><input type="radio" name="allow_html" value="1" {HTML_YES} /> {L_YES}&nbsp;&nbsp;<input type="radio" name="allow_html" value="0" {HTML_NO} /> {L_NO}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_ALLOWED_TAGS}</span><br /><span class="BoardRowBLink">{L_ALLOWED_TAGS_EXPLAIN}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" size="30" maxlength="255" name="allow_html_tags" value="{HTML_TAGS}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_ALLOW_BBCODE}</span></td>
		<td class="BoardRowB"><input type="radio" name="allow_bbcode" value="1" {BBCODE_YES} /> {L_YES}&nbsp;&nbsp;<input type="radio" name="allow_bbcode" value="0" {BBCODE_NO} /> {L_NO}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_ALLOW_SMILIES}</span></td>
		<td class="BoardRowB"><input type="radio" name="allow_smilies" value="1" {SMILE_YES} /> {L_YES}&nbsp;&nbsp;<input type="radio" name="allow_smilies" value="0" {SMILE_NO} /> {L_NO}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_SMILIES_PATH}</span> <br /><span class="BoardRowBLink">{L_SMILIES_PATH_EXPLAIN}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" size="20" maxlength="255" name="smilies_path" value="{SMILIES_PATH}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_ALLOW_SIG}</span></td>
		<td class="BoardRowB"><input type="radio" name="allow_sig" value="1" {SIG_YES} /> {L_YES}&nbsp;&nbsp;<input type="radio" name="allow_sig" value="0" {SIG_NO} /> {L_NO}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_MAX_SIG_LENGTH}</span><br /><span class="BoardRowBLink">{L_MAX_SIG_LENGTH_EXPLAIN}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" size="5" maxlength="4" name="max_sig_chars" value="{SIG_SIZE}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_ALLOW_NAME_CHANGE}</span></td>
		<td class="BoardRowB"><input type="radio" name="allow_namechange" value="1" {NAMECHANGE_YES} /> {L_YES}&nbsp;&nbsp;<input type="radio" name="allow_namechange" value="0" {NAMECHANGE_NO} /> {L_NO}</td>
	</tr>
	<tr>
	  <th class="BoardColumn" colspan="2">{L_AVATAR_SETTINGS}</th>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_ALLOW_LOCAL}</span></td>
		<td class="BoardRowB"><input type="radio" name="allow_avatar_local" value="1" {AVATARS_LOCAL_YES} /> {L_YES}&nbsp;&nbsp;<input type="radio" name="allow_avatar_local" value="0" {AVATARS_LOCAL_NO} /> {L_NO}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_ALLOW_REMOTE}</span> <br /><span class="BoardRowBLink">{L_ALLOW_REMOTE_EXPLAIN}</span></td>
		<td class="BoardRowB"><input type="radio" name="allow_avatar_remote" value="1" {AVATARS_REMOTE_YES} /> {L_YES}&nbsp;&nbsp;<input type="radio" name="allow_avatar_remote" value="0" {AVATARS_REMOTE_NO} /> {L_NO}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_ALLOW_UPLOAD}</span></td>
		<td class="BoardRowB"><input type="radio" name="allow_avatar_upload" value="1" {AVATARS_UPLOAD_YES} /> {L_YES}&nbsp;&nbsp;<input type="radio" name="allow_avatar_upload" value="0" {AVATARS_UPLOAD_NO} /> {L_NO}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_MAX_FILESIZE}</span><br /><span class="BoardRowBLink">{L_MAX_FILESIZE_EXPLAIN}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" size="4" maxlength="10" name="avatar_filesize" value="{AVATAR_FILESIZE}" /> Bytes</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_MAX_AVATAR_SIZE}</span> <br />
			<span class="BoardRowBLink">{L_MAX_AVATAR_SIZE_EXPLAIN}</span>
		</td>
		<td class="BoardRowB"><input class="InputSection" type="text" size="3" maxlength="4" name="avatar_max_height" value="{AVATAR_MAX_HEIGHT}" /> x <input class="InputSection" type="text" size="3" maxlength="4" name="avatar_max_width" value="{AVATAR_MAX_WIDTH}"></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_AVATAR_STORAGE_PATH}</span> <br /><span class="BoardRowBLink">{L_AVATAR_STORAGE_PATH_EXPLAIN}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" size="20" maxlength="255" name="avatar_path" value="{AVATAR_PATH}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_AVATAR_GALLERY_PATH}</span> <br /><span class="BoardRowBLink">{L_AVATAR_GALLERY_PATH_EXPLAIN}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" size="20" maxlength="255" name="avatar_gallery_path" value="{AVATAR_GALLERY_PATH}" /></td>
	</tr>
	<tr>
	  <th class="BoardColumn" colspan="2">{L_COPPA_SETTINGS}</th>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_COPPA_FAX}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" size="25" maxlength="100" name="coppa_fax" value="{COPPA_FAX}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_COPPA_MAIL}</span><br /><span class="BoardRowBLink">{L_COPPA_MAIL_EXPLAIN}</span></td>
		<td class="BoardRowB"><textarea class="InputNotes" name="coppa_mail" rows="5" cols="30">{COPPA_MAIL}</textarea></td>
	</tr>

	<tr>
	  <th class="BoardColumn" colspan="2">{L_EMAIL_SETTINGS}</th>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_ADMIN_EMAIL}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" size="25" maxlength="100" name="board_email" value="{EMAIL_FROM}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_EMAIL_SIG}</span><br /><span class="BoardRowBLink">{L_EMAIL_SIG_EXPLAIN}</span></td>
		<td class="BoardRowB"><textarea class="InputNotes" name="board_email_sig" rows="5" cols="30">{EMAIL_SIG}</textarea></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_USE_SMTP}</span><br /><span class="BoardRowBLink">{L_USE_SMTP_EXPLAIN}</span></td>
		<td class="BoardRowB"><input type="radio" name="smtp_delivery" value="1" {SMTP_YES} /> {L_YES}&nbsp;&nbsp;<input type="radio" name="smtp_delivery" value="0" {SMTP_NO} /> {L_NO}</td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_SMTP_SERVER}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" name="smtp_host" value="{SMTP_HOST}" size="25" maxlength="50" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_SMTP_USERNAME}</span><br /><span class="BoardRowBLink">{L_SMTP_USERNAME_EXPLAIN}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="text" name="smtp_username" value="{SMTP_USERNAME}" size="25" maxlength="255" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="SubjectLink">{L_SMTP_PASSWORD}</span><br /><span class="BoardRowBLink">{L_SMTP_PASSWORD_EXPLAIN}</span></td>
		<td class="BoardRowB"><input class="InputSection" type="password" name="smtp_password" value="{SMTP_PASSWORD}" size="25" maxlength="255" /></td>
	</tr>
	<tr>
		<td class="catBottom" colspan="2" align="center">{S_HIDDEN_FIELDS}<input type="submit" name="submit" value="{L_SUBMIT}" class="MainMenuRow" />&nbsp;&nbsp;<input type="reset" value="{L_RESET}" class="MainMenuRow" />
		</td>
	</tr>
</table></form>

<br clear="all" />
