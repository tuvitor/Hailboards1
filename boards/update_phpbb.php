<?php
/***************************************************************************
 *                               update_phpbb.php
 *                            -------------------
 *   copyright            : (C)2005 SPIRE 
 *   built for            : phpBB 2.0.19+ to HailBoards 1.0 Upgrade 
 *   note		  : Use upgrade_to_latest.php first to upgrade your
 *                          phpBB database to current first.  The files
 *			    should be just fine. -ai-T
 *
 ***************************************************************************/

/***************************************************************************
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 2 of the License, or
 *   (at your option) any later version.
 *
 ***************************************************************************/

define('IN_PHPBB', true);
$phpbb_root_path = './';
include($phpbb_root_path . 'extension.inc');
include($phpbb_root_path . 'common.'.$phpEx);

//
// Start session management
//
$userdata = session_pagestart($user_ip, PAGE_INDEX);
init_userprefs($userdata);
//
// End session management
//


if( !$userdata['session_logged_in'] )
{
   $header_location = ( @preg_match('/Microsoft|WebSTAR|Xitami/', getenv('SERVER_SOFTWARE')) ) ? 'Refresh: 0; URL=' : 'Location: ';
   header($header_location . append_sid('login.'.$phpEx.'?redirect=update_phpbb.'.$phpEx, true));
   exit;
}

if( $userdata['user_level'] != ADMIN )
{
   message_die(GENERAL_MESSAGE, 'You are not authorised to access this page');
}


$page_title = 'Updating the database';
include($phpbb_root_path . 'includes/page_header.'.$phpEx);

echo '<table width="100%" cellspacing="1" cellpadding="2" border="0" class="BoardRowB">';
echo '<tr><th class="BoardColumn"><span class="BoardColumnLink">Updating the database</span></th></tr><tr><td><span class="BoardRowBLink"><ul type="circle">';


$sql = array();
// Set HailBoards and phpBB Version Values
$sql[] = "INSERT INTO `" . $table_prefix . "config` ( `config_name` , `config_value` ) VALUES ( 'hb_version', '1.2.rc2' );";
$sql[] = "UPDATE `" . $table_prefix . "config` SET `config_value` = '.0.20' WHERE `config_name` = 'version' LIMIT 1;";

// Required phpBB database updates (for versions 2.0.11+)

// $sql[] = "ALTER TABLE " . $table_prefix . "sessions ADD COLUMN session_admin tinyint(2) DEFAULT '0' NOT NULL";
// $sql[] = "ALTER TABLE " . $table_prefix . "users ADD COLUMN user_login_tries smallint(5) UNSIGNED DEFAULT '0' NOT NULL";
// $sql[] = "ALTER TABLE " . $table_prefix . "users ADD COLUMN user_last_login_try int(11) DEFAULT '0' NOT NULL";

$sql[] = "ALTER TABLE " . $table_prefix . "sessions ADD COLUMN session_admin tinyint(2) DEFAULT '0' NOT NULL;";
$sql[] = "INSERT INTO " . $table_prefix . "config (config_name, config_value) VALUES ('max_login_attempts', '5');";
$sql[] = "INSERT INTO " . $table_prefix . "config (config_name, config_value) VALUES ('login_reset_time', '15');";
$sql[] = "ALTER TABLE " . $table_prefix . "users   ADD COLUMN user_login_tries smallint(5) UNSIGNED DEFAULT '0' NOT NULL;";
$sql[] = "ALTER TABLE " . $table_prefix . "users   ADD COLUMN user_last_login_try int(11) DEFAULT '0' NOT NULL;";
$sql[] = "CREATE TABLE `" . $table_prefix . "sessions_keys` ( `key_id` varchar(32) NOT NULL default '0', `user_id` mediumint(8) NOT NULL default '0', `last_ip` varchar(8) NOT NULL default '0', `last_login` int(11) NOT NULL default '0', PRIMARY KEY  (`key_id`,`user_id`), KEY `last_login` (`last_login`) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;";
$sql[] = "ALTER TABLE " . $table_prefix . "search_results ADD COLUMN search_time int(11) DEFAULT '0' NOT NULL";



// Add tables to support HailBoards features
$sql[] = "CREATE TABLE " . $table_prefix . "buddies (user_id mediumint(8) unsigned NOT NULL default '0', buddy_id mediumint(8) unsigned NOT NULL default '0') TYPE=MyISAM;";
$sql[] = "ALTER TABLE " . $table_prefix . "ranks ADD tag_open VARCHAR(255) NOT NULL AFTER rank_image;";
$sql[] = "ALTER TABLE " . $table_prefix . "ranks ADD tag_close VARCHAR(255) NOT NULL AFTER tag_open;";
$sql[] = "ALTER TABLE " . $table_prefix . "users ADD user_real_name VARCHAR(255) AFTER user_from;";
$sql[] = "ALTER TABLE " . $table_prefix . "users ADD user_gender VARCHAR(16) AFTER user_real_name;";
$sql[] = "ALTER TABLE " . $table_prefix . "users ADD user_company VARCHAR(255) AFTER user_gender;";
$sql[] = "ALTER TABLE " . $table_prefix . "users ADD user_picture VARCHAR(255) AFTER user_company;";
$sql[] = "ALTER TABLE " . $table_prefix . "users ADD user_bio TEXT AFTER user_picture;";
$sql[] = "ALTER TABLE " . $table_prefix . "users ADD user_bio_bbcode_uid char(10) after user_bio;";
$sql[] = "ALTER TABLE " . $table_prefix . "forums ADD forum_announce TEXT after forum_name;";
$sql[] = "CREATE TABLE " . $table_prefix . "avatar_category ( category_id smallint(5) NOT NULL auto_increment, title varchar(255) NOT NULL DEFAULT '', display_order smallint(5) NOT NULL DEFAULT '1', PRIMARY KEY (category_id) );"; 
$sql[] = "CREATE TABLE " . $table_prefix . "avatar ( avatar_id mediumint(8) NOT NULL auto_increment, title varchar(100) NOT NULL DEFAULT '', avatar_path varchar(100) NOT NULL DEFAULT '', category_id smallint(5) NOT NULL DEFAULT '1', display_order smallint(5) NOT NULL DEFAULT '1', PRIMARY KEY (avatar_id) );"; 
$sql[] = "INSERT INTO " . $table_prefix . "config VALUES('avatars_per_page', 25);";
$sql[] = "ALTER TABLE `" . $table_prefix . "users` CHANGE `username` `username` VARCHAR(20) NOT NULL;";
$sql[] = "CREATE TABLE " . $table_prefix . "attachments_config (config_name varchar(255) NOT NULL, config_value varchar(255) NOT NULL, PRIMARY KEY (config_name) );";
$sql[] = "CREATE TABLE " . $table_prefix . "forbidden_extensions (ext_id mediumint(8) UNSIGNED NOT NULL auto_increment, extension varchar(100) NOT NULL, PRIMARY KEY (ext_id) );";
$sql[] = "CREATE TABLE " . $table_prefix . "extension_groups (group_id mediumint(8) NOT NULL auto_increment, group_name char(20) NOT NULL, cat_id tinyint(2) DEFAULT '0' NOT NULL, allow_group tinyint(1) DEFAULT '0' NOT NULL, download_mode tinyint(1) UNSIGNED DEFAULT '1' NOT NULL, upload_icon varchar(100) DEFAULT '', max_filesize int(20) DEFAULT '0' NOT NULL, forum_permissions varchar(255) default '' NOT NULL, PRIMARY KEY group_id (group_id) );";
$sql[] = "CREATE TABLE " . $table_prefix . "extensions (ext_id mediumint(8) UNSIGNED NOT NULL auto_increment, group_id mediumint(8) UNSIGNED DEFAULT '0' NOT NULL, extension varchar(100) NOT NULL, comment varchar(100), PRIMARY KEY ext_id (ext_id) );";
$sql[] = "CREATE TABLE " . $table_prefix . "attachments_desc (attach_id mediumint(8) UNSIGNED NOT NULL auto_increment, physical_filename varchar(255) NOT NULL, real_filename varchar(255) NOT NULL, download_count mediumint(8) UNSIGNED DEFAULT '0' NOT NULL, comment varchar(255), extension varchar(100), mimetype varchar(100), filesize int(20) NOT NULL, filetime int(11) DEFAULT '0' NOT NULL, thumbnail tinyint(1) DEFAULT '0' NOT NULL, PRIMARY KEY (attach_id), KEY filetime (filetime), KEY physical_filename (physical_filename(10)), KEY filesize (filesize) );";

$sql[] = "CREATE TABLE " . $table_prefix . "attachments (attach_id mediumint(8) UNSIGNED DEFAULT '0' NOT NULL, post_id mediumint(8) UNSIGNED DEFAULT '0' NOT NULL, privmsgs_id mediumint(8) UNSIGNED DEFAULT '0' NOT NULL, user_id_1 mediumint(8) NOT NULL, user_id_2 mediumint(8) NOT NULL, KEY attach_id_post_id (attach_id, post_id), KEY attach_id_privmsgs_id (attach_id, privmsgs_id), KEY post_id (post_id), KEY privmsgs_id (privmsgs_id) );";

$sql[] = "CREATE TABLE " . $table_prefix . "quota_limits (quota_limit_id mediumint(8) unsigned NOT NULL auto_increment, quota_desc varchar(20) NOT NULL default '', quota_limit bigint(20) unsigned NOT NULL default '0', PRIMARY KEY  (quota_limit_id) );";

$sql[] = "CREATE TABLE " . $table_prefix . "attach_quota (user_id mediumint(8) unsigned NOT NULL default '0', group_id mediumint(8) unsigned NOT NULL default '0', quota_type smallint(2) NOT NULL default '0', quota_limit_id mediumint(8) unsigned NOT NULL default '0', KEY quota_type (quota_type) );";

$sql[] = "ALTER TABLE " . $table_prefix . "forums ADD auth_download TINYINT(2) DEFAULT '0' NOT NULL;";

$sql[] = "ALTER TABLE " . $table_prefix . "auth_access ADD auth_download TINYINT(1) DEFAULT '0' NOT NULL;";

$sql[] = "ALTER TABLE " . $table_prefix . "posts ADD post_attachment TINYINT(1) DEFAULT '0' NOT NULL;";

$sql[] = "ALTER TABLE " . $table_prefix . "topics ADD topic_attachment TINYINT(1) DEFAULT '0' NOT NULL;";

$sql[] = "ALTER TABLE " . $table_prefix . "privmsgs ADD privmsgs_attachment TINYINT(1) DEFAULT '0' NOT NULL;";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('upload_dir','files');";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('upload_img','images/icon_clip.gif');";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('topic_icon','images/icon_clip.gif');";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('display_order','0');";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('max_filesize','262144');";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('attachment_quota','52428800');";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('max_filesize_pm','262144');";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('max_attachments','3');";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('max_attachments_pm','1');";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('disable_mod','0');";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('allow_pm_attach','1');";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('attachment_topic_review','0');";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('allow_ftp_upload','0');";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('show_apcp','0');";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('attach_version','2.4.1');";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('default_upload_quota', '0');";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('default_pm_quota', '0');";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('ftp_server','');";
$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('ftp_path','');";
$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('download_path','');";
$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('ftp_user','');";
$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('ftp_pass','');";
$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('ftp_pasv_mode','1');";

$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('img_display_inlined','1');";
$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('img_max_width','0');";
$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('img_max_height','0');";
$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('img_link_width','0');";
$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('img_link_height','0');";
$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('img_create_thumbnail','0');";
$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('img_min_thumb_filesize','12000');";
$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('img_imagick', '');";
$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('use_gd2','0');";
$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('wma_autoplay','0');";
$sql[] = "INSERT INTO " . $table_prefix . "attachments_config (config_name, config_value) VALUES ('flash_autoplay','0');";
$sql[] = "INSERT INTO " . $table_prefix . "forbidden_extensions (ext_id, extension) VALUES (1,'php');";
$sql[] = "INSERT INTO " . $table_prefix . "forbidden_extensions (ext_id, extension) VALUES (2,'php3');";
$sql[] = "INSERT INTO " . $table_prefix . "forbidden_extensions (ext_id, extension) VALUES (3,'php4');";
$sql[] = "INSERT INTO " . $table_prefix . "forbidden_extensions (ext_id, extension) VALUES (4,'phtml');";
$sql[] = "INSERT INTO " . $table_prefix . "forbidden_extensions (ext_id, extension) VALUES (5,'pl');";
$sql[] = "INSERT INTO " . $table_prefix . "forbidden_extensions (ext_id, extension) VALUES (6,'asp');";
$sql[] = "INSERT INTO " . $table_prefix . "forbidden_extensions (ext_id, extension) VALUES (7,'cgi');";
$sql[] = "INSERT INTO " . $table_prefix . "extension_groups (group_id, group_name, cat_id, allow_group, download_mode, upload_icon, max_filesize, forum_permissions) VALUES (1,'Images',1,1,1,'',0,'');";
$sql[] = "INSERT INTO " . $table_prefix . "extension_groups (group_id, group_name, cat_id, allow_group, download_mode, upload_icon, max_filesize, forum_permissions) VALUES (2,'Archives',0,1,1,'',0,'');";
$sql[] = "INSERT INTO " . $table_prefix . "extension_groups (group_id, group_name, cat_id, allow_group, download_mode, upload_icon, max_filesize, forum_permissions) VALUES (3,'Plain Text',0,0,1,'',0,'');";
$sql[] = "INSERT INTO " . $table_prefix . "extension_groups (group_id, group_name, cat_id, allow_group, download_mode, upload_icon, max_filesize, forum_permissions) VALUES (4,'Documents',0,0,1,'',0,'');";
$sql[] = "INSERT INTO " . $table_prefix . "extension_groups (group_id, group_name, cat_id, allow_group, download_mode, upload_icon, max_filesize, forum_permissions) VALUES (5,'Real Media',0,0,2,'',0,'');";
$sql[] = "INSERT INTO " . $table_prefix . "extension_groups (group_id, group_name, cat_id, allow_group, download_mode, upload_icon, max_filesize, forum_permissions) VALUES (6,'Streams',2,0,1,'',0,'');";
$sql[] = "INSERT INTO " . $table_prefix . "extension_groups (group_id, group_name, cat_id, allow_group, download_mode, upload_icon, max_filesize, forum_permissions) VALUES (7,'Flash Files',3,0,1,'',0,'');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (1, 1,'gif', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (2, 1,'png', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (3, 1,'jpeg', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (4, 1,'jpg', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (5, 1,'tif', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (6, 1,'tga', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (7, 2,'gtar', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (8, 2,'gz', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (9, 2,'tar', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (10, 2,'zip', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (11, 2,'rar', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (12, 2,'ace', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (13, 3,'txt', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (14, 3,'c', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (15, 3,'h', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (16, 3,'cpp', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (17, 3,'hpp', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (18, 3,'diz', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (19, 4,'xls', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (20, 4,'doc', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (21, 4,'dot', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (22, 4,'pdf', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (23, 4,'ai', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (24, 4,'ps', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (25, 4,'ppt', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (26, 5,'rm', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (27, 6,'wma', '');";
$sql[] = "INSERT INTO " . $table_prefix . "extensions (ext_id, group_id, extension, comment) VALUES (28, 7,'swf', '');";
$sql[] = "INSERT INTO " . $table_prefix . "quota_limits (quota_limit_id, quota_desc, quota_limit) VALUES (1, 'Low', 262144);";
$sql[] = "INSERT INTO " . $table_prefix . "quota_limits (quota_limit_id, quota_desc, quota_limit) VALUES (2, 'Medium', 2097152);";
$sql[] = "INSERT INTO " . $table_prefix . "quota_limits (quota_limit_id, quota_desc, quota_limit) VALUES (3, 'High', 5242880);";
$sql[] = "ALTER TABLE " . $table_prefix . "users ADD user_regip CHAR(8) NOT NULL DEFAULT '0';";

for( $i = 0; $i < count($sql); $i++ )
{
   if( !$result = $db->sql_query ($sql[$i]) )
   {
      $error = $db->sql_error();

      echo '<li>' . $sql[$i] . '<br /> +++ <font color="#FF0000"><b>Error:</b></font> ' . $error['message'] . '</li><br />';
   }
   else
   {
      echo '<li>' . $sql[$i] . '<br /> +++ <font color="#00AA00"><b>Success!</b></font></li><br />';
   }
}


echo '</ul></span></td></tr><tr><td class="BoardRowA" height="28">&nbsp;</td></tr>';
echo '<tr><th class="BoardColumn"><span class="BoardColumnLink">End</BoardColumn></th></tr><tr><td class="BoardColumnLink"><span class="BoardRowBLink">Installation is now finished. Please be sure to delete this file now.<br />If you have run into any errors, please visit the <a href="http://hailboards.sf.net/" target="_hb">HailBoards support forums</a> and ask someone for help.  Be sure to add the HBWinter theme and set it to your default now.</span></td></tr>';
echo '<tr><td class="BoardColumn" height="28" align="center"><a href="' . append_sid("index.$phpEx") . '" class="BoardColumnLink">Have a nice day</a></td></table>';

include($phpbb_root_path . 'includes/page_tail.'.$phpEx);

?>
