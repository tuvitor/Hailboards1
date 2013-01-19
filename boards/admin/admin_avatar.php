<?php
/***************************************************************************
 *                             admin_avatar.php
 *                            -------------------
 *   begin                : Tuesday, May 3, 2005
 *   copyright            : (C) 2005 Hailboards
 *   email                : 
 *
 *   $Id: admin_avatar.php,v 1.0.0 2005/05/03 23:43:19 Exp $
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

define('IN_PHPBB', 1);

if( !empty($setmodules) )
{
	$file = basename(__FILE__);
	$module['General']['Avatars'] = $file;
	return;
}

//
// Load default header
//
$phpbb_root_path = "./../";
require($phpbb_root_path . 'extension.inc');
require('./pagestart.' . $phpEx);
include($phpbb_root_path . 'includes/functions_admin.'.$phpEx);

//
// Mode setting
//
if( isset($HTTP_POST_VARS['mode']) || isset($HTTP_GET_VARS['mode']) )
{
	$mode = ( isset($HTTP_POST_VARS['mode']) ) ? $HTTP_POST_VARS['mode'] : $HTTP_GET_VARS['mode'];
	$mode = htmlspecialchars($mode);
}
else
{
	$mode = "";
}

//
// Select main mode
//

if( isset($HTTP_POST_VARS['add_avatar']) || isset($HTTP_GET_VARS['add_avatar']) )
{
	//
	// Admin has selected to add an avatar.
	//

	$category_id = ( isset($HTTP_POST_VARS['category_id']) ) ? $HTTP_POST_VARS['category_id'] : $HTTP_GET_VARS['category_id'];

	$sql = "SELECT *
		FROM " . AVATAR_CATEGORY_TABLE . "
		ORDER BY display_order";
	$result = $db->sql_query($sql);

	if( !$result )
	{
		message_die(GENERAL_ERROR, 'Could not obtain category information', "", __LINE__, __FILE__, $sql);
	}

	$category_data = $db->sql_fetchrowset($result);

	$category_list = "";
	for( $i = 0; $i < count($category_data); $i++ )
	{
		if( $category_data[$i]['category_id'] == $category_id )
		{
			$category_selected = "selected=\"selected\"";
		}
		else
		{
			$category_selected = "";
		}

		$category_list .= '<option value="' . $category_data[$i]['category_id'] . '"' . $category_selected . '>' . $category_data[$i]['title'] . '</option>';
	}

	$template->set_filenames(array(
		"body" => "admin/avatar_avatar_add_body.tpl")
	);

	$s_hidden_fields = '<input type="hidden" name="mode" value="savenewavatar" />';

	$template->assign_vars(array(
		"AVATAR_CATEGORY" => $category_list,
		"DISPLAY_ORDER" => 1,

		"L_AVATAR_TITLE" => $lang['avatar_title'],
		"L_AVATAR_ADD" => $lang['avatar_add'],
		"L_AVATAR_EXPLAIN" => $lang['avatar_desc'],
		"L_TITLE" => $lang['Title'],
		"L_FILE_PATH" => $lang['file_path'],
		"L_AVATAR_CATEGORY" => $lang['avatar_category'],
		"L_DISPLAY_ORDER" => $lang['display_order'],
		"L_SUBMIT" => $lang['Submit'],
		"L_RESET" => $lang['Reset'],

		"S_AVATAR_ACTION" => append_sid("admin_avatar.$phpEx"), 
		"S_HIDDEN_FIELDS" => $s_hidden_fields)
	);

	$template->pparse("body");
}
else if( isset($HTTP_POST_VARS['add_avatar_group']) || isset($HTTP_GET_VARS['add_avatar_group']) )
{
	//
	// Admin has added a new category.
	//

	//
	// Get the submitted data being careful to ensure the the data
	// we recieve and process is only the data we are looking for.
	//
	$avatar_image = ( isset($HTTP_POST_VARS['avimage']) ) ? $HTTP_POST_VARS['avimage'] : $HTTP_GET_VARS['avimage'];
	$avatar_title = ( isset($HTTP_POST_VARS['avtitle']) ) ? $HTTP_POST_VARS['avtitle'] : $HTTP_GET_VARS['avtitle'];
	$avatar_category = ( isset($HTTP_POST_VARS['avcat']) ) ? $HTTP_POST_VARS['avcat'] : $HTTP_GET_VARS['avcat'];
	$do_image = ( isset($HTTP_POST_VARS['doimage']) ) ? $HTTP_POST_VARS['doimage'] : $HTTP_GET_VARS['doimage'];

	// If no code was entered complain ...
	if ($avatar_image == '' || $avatar_title == '' || $avatar_category == '' || $do_image == '')
	{
		message_die(MESSAGE, $lang['Fields_empty']);
	}

	//
	// Save the data to the avatar table.
	//
	foreach($do_image AS $path => $yes)
	{
		if ($yes)
		{
			$avatar_name = $avatar_title[$path];
			$file_path = $avatar_image[$path];
			$category_id = $avatar_category[$path];
			$display_order = 1;

			$sql = "INSERT INTO " . AVATAR_TABLE . " (title, avatar_path, category_id, display_order)
				VALUES ('" . str_replace("\'", "''", $avatar_name) . "', '" . str_replace("\'", "''", $file_path) . "', $category_id, $display_order)";
			$result = $db->sql_query($sql);
			if( !$result )
			{
				message_die(GENERAL_ERROR, "Couldn't insert new avatar", "", __LINE__, __FILE__, $sql);
			}
		}
	}

	$message = $lang['avatar_add_success'] . "<br /><br />" . sprintf($lang['click_return_avataradmin'], "<a href=\"" . append_sid("admin_avatar.$phpEx") . "\">", "</a>") . "<br /><br />" . sprintf($lang['Click_return_admin_index'], "<a href=\"" . append_sid("index.$phpEx?pane=right") . "\">", "</a>");

	message_die(GENERAL_MESSAGE, $message);
	break;
}
else if( isset($HTTP_POST_VARS['add_multiple_avatar']) || isset($HTTP_GET_VARS['add_multiple_avatar']) )
{
	//
	// Admin has selected to add multiple avatars.
	//

	$category_id = ( isset($HTTP_POST_VARS['avatar_category']) ) ? $HTTP_POST_VARS['avatar_category'] : $HTTP_GET_VARS['avatar_category'];
	$avatar_dir = ( isset($HTTP_POST_VARS['avatar_dir']) ) ? $HTTP_POST_VARS['avatar_dir'] : $HTTP_GET_VARS['avatar_dir'];
	$page_number = ( isset($HTTP_POST_VARS['page']) ) ? $HTTP_POST_VARS['page'] : $HTTP_GET_VARS['page'];

	if ( !$page_number )
	{
		$page_number = 1;
	}

	$start = ($page_number - 1) * 20;

	$sql = "SELECT *
		FROM " . AVATAR_CATEGORY_TABLE . "
		ORDER BY display_order";
	$result = $db->sql_query($sql);

	$category_data = $db->sql_fetchrowset($result);

	$file_path = $phpbb_root_path . $board_config['avatar_gallery_path'];

	$dir = @opendir($file_path);

	$avatar_images = array();

	$avatar_row_count = 0;

	while( $file = @readdir($dir) )
	{
		$directory = $board_config['avatar_gallery_path'] . '/' . $file;

		if( $directory != $avatar_dir )
		{
		}
		else
		{
			if( $file != '.' && $file != '..' && !is_file($file_path . '/' . $file) && !is_link($file_path . '/' . $file) )
			{
				$sub_dir = @opendir($file_path . '/' . $file);

				while( $sub_file = @readdir($sub_dir) )
				{
					if( preg_match('/(\.gif$|\.png$|\.jpg|\.jpeg)$/is', $sub_file) )
					{

						$avatar_images[$avatar_row_count] = $board_config['avatar_gallery_path'] . '/' . $file . '/' . $sub_file; 
						$avatar_u_images[$avatar_row_count] = $file_path . '/' . $file . '/' . $sub_file; 
						$avatar_name[$avatar_row_count] = ucfirst(str_replace("_", " ", preg_replace('/^(.*)\..*$/', '\1', $sub_file)));
						$avatar_option[$avatar_row_count] = $sub_file;

						$avatar_row_count++;

					}
				}
			}
		}
	}

	@closedir($dir);

	@ksort($avatar_images);
	@reset($avatar_images);

	for( $i = 0; $i < count($category_data); $i++ )
	{
		if( $category_data[$i]['category_id'] == $category_id )
		{
			$category_selected = "selected=\"selected\"";
		}
		else
		{
			$category_selected = "";
		}

		$s_categories .= '<option value="' . $category_data[$i]['category_id'] . '"' . $category_selected . '>' . $category_data[$i]['title'] . '</option>';
	}

	for($i = $start; $i < $start + 20; $i++)
	{
		if ( $i < count($avatar_images) )
		{
			$row_color = ( !($i % 2) ) ? $theme['td_color1'] : $theme['td_color2'];
			$row_class = ( !($i % 2) ) ? $theme['td_class1'] : $theme['td_class2'];

			$template->assign_block_vars("avatar_row", array(
					"ROW_COLOR" => "#" . $row_color,
					"ROW_CLASS" => $row_class,

					"AVATAR_IMAGE" => $avatar_images[$i], 
					"AVATAR_NAME" => $avatar_name[$i],
					"AVATAR_OPTION" => $avatar_option[$i],

					"U_AVATAR_IMAGE" => $avatar_u_images[$i])
				);
		}
	}

	$template->set_filenames(array(
		"body" => "admin/avatar_multiple_add_body.tpl")
	);

	$total = count($avatar_images);
	$total_pages = ceil($total/20);

	if ( $total_pages == 1 )
	{
		$pagination = "";
	}
	else
	{
		$on_page = $page_number;

		$page_string = '';
		if ( $total_pages > 10 )
		{
			$init_page_max = ( $total_pages > 3 ) ? 3 : $total_pages;

			for($i = 1; $i < $init_page_max + 1; $i++)
			{
				$page_string .= ( $i == $on_page ) ? '<input type="submit" class="button" name="page" value="' . $i . '" disabled="disabled" />' : '<input type="submit" class="button" name="page" value="' . $i . '" />';
				if ( $i <  $init_page_max )
				{
					$page_string .= " ";
				}
			}

			if ( $total_pages > 3 )
			{
				if ( $on_page > 1  && $on_page < $total_pages )
				{
					$page_string .= ( $on_page > 5 ) ? ' ... ' : ' ';

					$init_page_min = ( $on_page > 4 ) ? $on_page : 5;
					$init_page_max = ( $on_page < $total_pages - 4 ) ? $on_page : $total_pages - 4;

					for($i = $init_page_min - 1; $i < $init_page_max + 2; $i++)
					{
						$page_string .= ($i == $on_page) ? '<input type="submit" class="button" name="page" value="' . $i . '" disabled="disabled" />' : '<input type="submit" class="button" name="page" value="' . $i . '" />';
						if ( $i <  $init_page_max + 1 )
						{
							$page_string .= ' ';
						}
					}

					$page_string .= ( $on_page < $total_pages - 4 ) ? ' ... ' : ' ';
				}
				else
				{
					$page_string .= ' ... ';
				}

				for($i = $total_pages - 2; $i < $total_pages + 1; $i++)
				{
					$page_string .= ( $i == $on_page ) ? '<input type="submit" class="button" name="page" value="' . $i . '" disabled="disabled" />' : '<input type="submit" class="button" name="page" value="' . $i . '" />';
					if( $i <  $total_pages )
					{
						$page_string .= " ";
					}
				}
			}
		}
		else
		{
			for($i = 1; $i < $total_pages + 1; $i++)
			{
				$page_string .= ( $i == $on_page ) ? '<input type="submit" class="button" name="page" value="' . $i . '" disabled="disabled" />' : '<input type="submit" class="button" name="page" value="' . $i . '" />';
				if ( $i <  $total_pages )
				{
					$page_string .= ' ';
				}
			}
		}

		$pagination = $lang['Goto_page'] . ' ' . $page_string;
	}

	$s_hidden_fields = '<input type="hidden" name="add_multiple_avatar" value="1" /><input type="hidden" name="avatar_category" value="' . $category_id . '" /><input type="hidden" name="avatar_dir" value="' . $avatar_dir . '" />';

	$template->assign_vars(array(
		'PAGINATION' => $pagination,
		'PAGE_NUMBER' => sprintf($lang['Page_of'], ( floor( $start / 20 ) + 1 ), ceil( $total / 20 )),
		"L_AVATAR_TITLE" => $lang['avatar_title'],
		"L_AVATAR_ADD" => $lang['avatar_add_m'],
		"L_AVATAR_TEXT" => $lang['avatar_desc'],
		"L_TITLE" => $lang['Title'],
		"L_DISPLAY_ORDER" => $lang['display_order'],
		"L_SUBMIT" => $lang['Submit'],
		"L_RESET" => $lang['Reset'],
		"L_CATEGORY" => $lang['avatar_category'],
		"L_INCLUDE" => $lang['include'],

		"CATEGORIES" => $s_categories,

		"S_AVATAR_ACTION" => append_sid("admin_avatar.$phpEx"), 
		"S_HIDDEN_FIELDS" => $s_hidden_fields)
	);

	$template->pparse("body");
}
else if( isset($HTTP_POST_VARS['delete_avatar']) || isset($HTTP_GET_VARS['delete_avatar']) )
{
	//
	// Admin has deleted an avatar.
	//

	//
	// Get the submitted data being careful to ensure the the data
	// we recieve and process is only the data we are looking for.
	//
	$avatar_id = ( isset($HTTP_POST_VARS['avatar_id']) ) ? $HTTP_POST_VARS['avatar_id'] : $HTTP_GET_VARS['avatar_id'];

	//
	// Delete the data to the avatar table.
	//

	$sql = "DELETE FROM " . AVATAR_TABLE . "
		WHERE avatar_id = " . $avatar_id;
	$result = $db->sql_query($sql);

	if( !$result )
	{
		message_die(GENERAL_ERROR, 'Could not delete avatar information', "", __LINE__, __FILE__, $sql);
	}

	$message = $lang['avatar_delete_success'] . "<br /><br />" . sprintf($lang['click_return_avataradmin'], "<a href=\"" . append_sid("admin_avatar.$phpEx") . "\">", "</a>") . "<br /><br />" . sprintf($lang['Click_return_admin_index'], "<a href=\"" . append_sid("index.$phpEx?pane=right") . "\">", "</a>");

	message_die(GENERAL_MESSAGE, $message);
	break;
}
else if( isset($HTTP_POST_VARS['add_category']) || isset($HTTP_GET_VARS['add_category']) )
{
	//
	// Admin has selected to add a category.
	//

	$template->set_filenames(array(
		"body" => "admin/avatar_category_edit_body.tpl")
	);

	$s_hidden_fields = '<input type="hidden" name="mode" value="savenewcategory" />';

	$template->assign_vars(array(
		"L_CATEGORY_TITLE" => $lang['category_title'],
		"L_CATEGORY_ADD" => $lang['category_add'],
		"L_CATEGORY_EXPLAIN" => $lang['category_desc'],
		"L_TITLE" => $lang['Title'],
		"L_DISPLAY_ORDER" => $lang['display_order'],
		"L_SUBMIT" => $lang['Submit'],
		"L_RESET" => $lang['Reset'],

		"S_CATEGORY_ACTION" => append_sid("admin_avatar.$phpEx"), 
		"S_HIDDEN_FIELDS" => $s_hidden_fields)
	);

	$template->pparse("body");
}
else if( isset($HTTP_POST_VARS['save_order']) || isset($HTTP_GET_VARS['save_order']) )
{
	//
	// Admin has altered category order.
	//

	//
	// Get the submitted data being careful to ensure the the data
	// we recieve and process is only the data we are looking for.
	//
	$order = ( isset($HTTP_POST_VARS['order']) ) ? $HTTP_POST_VARS['order'] : $HTTP_GET_VARS['order'];

	// If no code was entered complain ...
	if ($order == '')
	{
		message_die(MESSAGE, $lang['Fields_empty']);
	}

	//
	// Save the data to the avatar category table.
	//

	if (is_array($order))
	{
		$sql = "SELECT category_id, display_order
			FROM " . AVATAR_CATEGORY_TABLE . "
			ORDER BY display_order";
		$categories = $db->sql_query($sql);

		while ($category = $db->sql_fetchrow($categories))
		{
			$displayorder = intval($order["$category[category_id]"]);
			if ($category['displayorder'] != $displayorder)
			{
				$sql_1 = "UPDATE " . AVATAR_CATEGORY_TABLE . " display_order
					SET display_order = $displayorder
					WHERE category_id = $category[category_id]";
				$result = $db->sql_query($sql_1);
				if( !($result = $db->sql_query($sql_1)) )
				{
					message_die(GENERAL_ERROR, "Couldn't update smilies info", "", __LINE__, __FILE__, $sql_1);
				}
			}
		}
	}

	$message = $lang['category_order_success'] . "<br /><br />" . sprintf($lang['click_return_avataradmin'], "<a href=\"" . append_sid("admin_avatar.$phpEx") . "\">", "</a>") . "<br /><br />" . sprintf($lang['Click_return_admin_index'], "<a href=\"" . append_sid("index.$phpEx?pane=right") . "\">", "</a>");

	message_die(GENERAL_MESSAGE, $message);
	break;
}
else if( isset($HTTP_POST_VARS['save_avatar_order']) || isset($HTTP_GET_VARS['save_avatar_order']) )
{
	//
	// Admin has altered avatar order.
	//

	//
	// Get the submitted data being careful to ensure the the data
	// we recieve and process is only the data we are looking for.
	//
	$order = ( isset($HTTP_POST_VARS['order']) ) ? $HTTP_POST_VARS['order'] : $HTTP_GET_VARS['order'];
	$category_id = ( isset($HTTP_POST_VARS['category_id']) ) ? $HTTP_POST_VARS['category_id'] : $HTTP_GET_VARS['category_id'];

	// If no code was entered complain ...
	if ($order == '')
	{
		message_die(MESSAGE, $lang['Fields_empty']);
	}

	//
	// Save the data to the avatar category table.
	//

	if (is_array($order))
	{
		$sql = "SELECT avatar_id, display_order
			FROM " . AVATAR_TABLE . "
			WHERE category_id = " . $category_id;
		$avatars = $db->sql_query($sql);

		while ($avatar = $db->sql_fetchrow($avatars))
		{
			$displayorder = intval($order["$avatar[avatar_id]"]);
			if ($avatar['displayorder'] != $displayorder)
			{
				$sql_1 = "UPDATE " . AVATAR_TABLE . " display_order
					SET display_order = $displayorder

					WHERE avatar_id = $avatar[avatar_id]";
				$result = $db->sql_query($sql_1);
				if( !($result = $db->sql_query($sql_1)) )
				{
					message_die(GENERAL_ERROR, "Couldn't update smilies info", "", __LINE__, __FILE__, $sql_1);
				}
			}
		}
	}


	$message = $lang['category_order_success'] . "<br /><br />" . sprintf($lang['click_return_avataradmin'], "<a href=\"" . append_sid("admin_avatar.$phpEx") . "\">", "</a>") . "<br /><br />" . sprintf($lang['Click_return_admin_index'], "<a href=\"" . append_sid("index.$phpEx?pane=right") . "\">", "</a>");

	message_die(GENERAL_MESSAGE, $message);
	break;
}
else if( isset($HTTP_POST_VARS['delete_category']) || isset($HTTP_GET_VARS['delete_category']) )
{
	//
	// Admin has deleted category.
	//

	//
	// Get the submitted data being careful to ensure the the data
	// we recieve and process is only the data we are looking for.
	//
	$category_id = ( isset($HTTP_POST_VARS['category_id']) ) ? $HTTP_POST_VARS['category_id'] : $HTTP_GET_VARS['category_id'];
	$delete_avatars = ( isset($HTTP_POST_VARS['delete_avatars']) ) ? $HTTP_POST_VARS['delete_avatars'] : $HTTP_GET_VARS['delete_avatars'];
	$dest_category_id = ( isset($HTTP_POST_VARS['dest_category']) ) ? $HTTP_POST_VARS['dest_category'] : $HTTP_GET_VARS['dest_category'];

	//
	// Delete the data to the avatar category table.
	//

	$sql = "DELETE FROM " . AVATAR_CATEGORY_TABLE . "
		WHERE category_id = " . $category_id;
	$result = $db->sql_query($sql);

	if( !$result )
	{
		message_die(GENERAL_ERROR, 'Could not delete category information', "", __LINE__, __FILE__, $sql);
	}

	if ($delete_avatars)
	{
		$sql = "DELETE FROM " . AVATAR_TABLE . "
			WHERE category_id = " . $category_id;
		$result = $db->sql_query($sql);
	}
	else
	{
		$sql = "UPDATE " . AVATAR_TABLE . "
			SET category_id = " . $dest_category_id . "
			WHERE category_id = " . $category_id;
		$result = $db->sql_query($sql);
	}

	$message = $lang['category_delete_success'] . "<br /><br />" . sprintf($lang['click_return_avataradmin'], "<a href=\"" . append_sid("admin_avatar.$phpEx") . "\">", "</a>") . "<br /><br />" . sprintf($lang['Click_return_admin_index'], "<a href=\"" . append_sid("index.$phpEx?pane=right") . "\">", "</a>");

	message_die(GENERAL_MESSAGE, $message);
	break;
}
else if ( $mode != "" )
{
	switch( $mode )
	{
		case "savenewavatar":
			//
			// Admin has added a new category.
			//

			//
			// Get the submitted data being careful to ensure the the data
			// we recieve and process is only the data we are looking for.
			//
			$avatar_name = ( isset($HTTP_POST_VARS['avatar_name']) ) ? $HTTP_POST_VARS['avatar_name'] : $HTTP_GET_VARS['avatar_name'];
			$file_path = ( isset($HTTP_POST_VARS['file_path']) ) ? $HTTP_POST_VARS['file_path'] : $HTTP_GET_VARS['file_path'];
			$category_id = ( isset($HTTP_POST_VARS['avatar_category']) ) ? $HTTP_POST_VARS['avatar_category'] : $HTTP_GET_VARS['avatar_category'];
			$display_order = ( isset($HTTP_POST_VARS['display_order']) ) ? $HTTP_POST_VARS['display_order'] : $HTTP_GET_VARS['display_order'];

			// If no code was entered complain ...
			if ($avatar_name == '' || $file_path == '' || $category_id == '' || $display_order == '')
			{
				message_die(MESSAGE, $lang['Fields_empty']);
			}

			//
			// Save the data to the avatar table.
			//
			$sql = "INSERT INTO " . AVATAR_TABLE . " (title, avatar_path, category_id, display_order)
				VALUES ('" . str_replace("\'", "''", $avatar_name) . "', '" . str_replace("\'", "''", $file_path) . "', $category_id, $display_order)";
			$result = $db->sql_query($sql);
			if( !$result )
			{
				message_die(GENERAL_ERROR, "Couldn't insert new avatar", "", __LINE__, __FILE__, $sql);
			}

			$message = $lang['avatar_add_success'] . "<br /><br />" . sprintf($lang['click_return_avataradmin'], "<a href=\"" . append_sid("admin_avatar.$phpEx") . "\">", "</a>") . "<br /><br />" . sprintf($lang['Click_return_admin_index'], "<a href=\"" . append_sid("index.$phpEx?pane=right") . "\">", "</a>");

			message_die(GENERAL_MESSAGE, $message);
			break;

		case "saveavatar":
			//
			// Admin has edited an avatar.
			//

			//
			// Get the submitted data being careful to ensure the the data
			// we recieve and process is only the data we are looking for.
			//
			$avatar_id = ( isset($HTTP_POST_VARS['avatar_id']) ) ? $HTTP_POST_VARS['avatar_id'] : $HTTP_GET_VARS['avatar_id'];
			$avatar_name = ( isset($HTTP_POST_VARS['avatar_name']) ) ? $HTTP_POST_VARS['avatar_name'] : $HTTP_GET_VARS['avatar_name'];
			$file_path = ( isset($HTTP_POST_VARS['file_path']) ) ? $HTTP_POST_VARS['file_path'] : $HTTP_GET_VARS['file_path'];
			$category_id = ( isset($HTTP_POST_VARS['avatar_category']) ) ? $HTTP_POST_VARS['avatar_category'] : $HTTP_GET_VARS['avatar_category'];
			$display_order = ( isset($HTTP_POST_VARS['display_order']) ) ? $HTTP_POST_VARS['display_order'] : $HTTP_GET_VARS['display_order'];

			// If no code was entered complain ...
			if ($avatar_name == '' || $file_path == '' || $category_id == '' || $display_order == '')
			{
				message_die(MESSAGE, $lang['Fields_empty']);
			}

			//
			// Save the data to the avatar table.
			//
			$sql = "UPDATE " . AVATAR_TABLE . "
				SET title = '" . str_replace("\'", "''", $avatar_name) . "', avatar_path = '" . str_replace("\'", "''", $file_path) . "', category_id = " . $category_id . ", display_order = " . $display_order . "
				WHERE avatar_id = " . $avatar_id;
			$result = $db->sql_query($sql);
			if( !$result )
			{
				message_die(GENERAL_ERROR, "Couldn't insert new avatar", "", __LINE__, __FILE__, $sql);
			}

			$message = $lang['avatar_add_success'] . "<br /><br />" . sprintf($lang['click_return_avataradmin'], "<a href=\"" . append_sid("admin_avatar.$phpEx") . "\">", "</a>") . "<br /><br />" . sprintf($lang['Click_return_admin_index'], "<a href=\"" . append_sid("index.$phpEx?pane=right") . "\">", "</a>");



			message_die(GENERAL_MESSAGE, $message);
			break;

		case 'deleteavatar':
			//
			// Admin has selected to delete an avatar.
			//

			$avatar_id = ( !empty($HTTP_POST_VARS['id']) ) ? $HTTP_POST_VARS['id'] : $HTTP_GET_VARS['id'];
			$avatar_id = intval($avatar_id);

			$sql = "SELECT title
				FROM " . AVATAR_TABLE;
			$result = $db->sql_query($sql);
			if( !$result )
			{
				message_die(GENERAL_ERROR, 'Could not obtain avatar information', "", __LINE__, __FILE__, $sql);
			}


			$avatar_data = $db->sql_fetchrow($result);

			$template->set_filenames(array(
				"body" => "admin/avatar_avatar_delete_body.tpl")
			);

			$s_hidden_fields = '<input type="hidden" name="avatar_id" value="' . $avatar_id . '" />';

			$template->assign_vars(array(
				"AVATAR_TITLE" => $avatar_data['title'],

				"L_AVATAR_TITLE" => $lang['avatar_title'],
				"L_AVATAR_DELETE" => $lang['avatar_delete'],
				"L_AVATAR_EXPLAIN" => $lang['avatar_desc'],
				"L_TITLE" => $lang['Title'],
				"L_SUBMIT" => $lang['Submit'],
				"L_RESET" => $lang['Reset'],

				"S_CATEGORY_ACTION" => append_sid("admin_avatar.$phpEx"), 
				"S_HIDDEN_FIELDS" => $s_hidden_fields)
			);

			$template->pparse("body");
			break;

		case "editavatar":
			//

			// Admin has edited an avatar.
			//

			//
			// Get the submitted data being careful to ensure the the data
			// we recieve and process is only the data we are looking for.
			//
			$avatar_id = ( !empty($HTTP_POST_VARS['id']) ) ? $HTTP_POST_VARS['id'] : $HTTP_GET_VARS['id'];
			$avatar_id = intval($avatar_id);

			$sql = "SELECT *
				FROM " . AVATAR_TABLE . "
				WHERE avatar_id = " . $avatar_id;
			$result = $db->sql_query($sql);
			if( !$result )
			{
				message_die(GENERAL_ERROR, 'Could not obtain avatar information', "", __LINE__, __FILE__, $sql);
			}
			$avatar_data = $db->sql_fetchrow($result);

			$sql = "SELECT *
				FROM " . AVATAR_CATEGORY_TABLE . "
				ORDER BY display_order";
			$result = $db->sql_query($sql);

			if( !$result )
			{
				message_die(GENERAL_ERROR, 'Could not obtain category information', "", __LINE__, __FILE__, $sql);
			}

			$category_data = $db->sql_fetchrowset($result);

			$category_list = "";
			for( $i = 0; $i < count($category_data); $i++ )
			{
				if( $category_data[$i]['category_id'] == $avatar_data['category_id'] )
				{
					$category_selected = "selected=\"selected\"";
				}
				else
				{
					$category_selected = "";
				}

				$category_list .= '<option value="' . $category_data[$i]['category_id'] . '"' . $category_selected . '>' . $category_data[$i]['title'] . '</option>';
			}

			$template->set_filenames(array(
				"body" => "admin/avatar_avatar_edit_body.tpl")
			);

			$s_hidden_fields = '<input type="hidden" name="mode" value="saveavatar" /><input type="hidden" name="avatar_id" value="' . $avatar_id . '" />';

			$template->assign_vars(array(
				"AVATAR_CATEGORY" => $category_list,
				"DISPLAY_ORDER" => $avatar_data['display_order'],
				"AVATAR_TITLE" => $avatar_data['title'],
				"FILE_PATH" => $avatar_data['avatar_path'],

				"L_AVATAR_TITLE" => $lang['avatar_title'],
				"L_AVATAR_ADD" => $lang['avatar_add'],
				"L_AVATAR_EXPLAIN" => $lang['avatar_desc'],
				"L_TITLE" => $lang['Title'],
				"L_FILE_PATH" => $lang['file_path'],
				"L_AVATAR_CATEGORY" => $lang['avatar_category'],
				"L_DISPLAY_ORDER" => $lang['display_order'],
				"L_SUBMIT" => $lang['Submit'],
				"L_RESET" => $lang['Reset'],

				"S_AVATAR_ACTION" => append_sid("admin_avatar.$phpEx"), 
				"S_HIDDEN_FIELDS" => $s_hidden_fields)
			);

			$template->pparse("body");

			break;

		case 'deletecategory':
			//
			// Admin has selected to delete a category.
			//

			$category_id = ( !empty($HTTP_POST_VARS['id']) ) ? $HTTP_POST_VARS['id'] : $HTTP_GET_VARS['id'];
			$category_id = intval($category_id);

			$sql = "SELECT *
				FROM " . AVATAR_CATEGORY_TABLE . "
				ORDER BY category_id";
			$result = $db->sql_query($sql);
			if( !$result )
			{
				message_die(GENERAL_ERROR, 'Could not obtain category information', "", __LINE__, __FILE__, $sql);
			}

			$category_data = $db->sql_fetchrowset($result);

			if( count($category_data) < 2 )
			{
				message_die(GENERAL_ERROR, 'Cannot delete last avatar category', "", __LINE__, __FILE__, $sql);
			}

			$destination_list = "";
			for( $i = 0; $i < count($category_data); $i++ )
			{
				if( $category_data[$i]['category_id'] == $category_id )
				{
					$delete_category = $category_data[$i]['title'];
				}
				else
				{
					$destination_list .= '<option value="' . $category_data[$i]['category_id'] . '">' . $category_data[$i]['title'] . '</option>';
				}
			}

			$template->set_filenames(array(
				"body" => "admin/avatar_category_delete_body.tpl")
			);

			$s_hidden_fields = '<input type="hidden" name="category_id" value="' . $category_id . '" />';

			$template->assign_vars(array(
				"CATEGORY_TITLE" => $delete_category,

				"L_CATEGORY_TITLE" => $lang['category_title'],
				"L_CATEGORY_DELETE" => $lang['category_delete'],
				"L_CATEGORY_EXPLAIN" => $lang['category_desc'],
				"L_TITLE" => $lang['Title'],
				"L_DELETE_AVATARS" => $lang['delete_avatars'],
				"L_DESTINATION_CATEGORY" => $lang['destination_category'],
				"L_SUBMIT" => $lang['Submit'],
				"L_RESET" => $lang['Reset'],

				"S_DESTINATION_OPTIONS" => $destination_list,
				"S_CATEGORY_ACTION" => append_sid("admin_avatar.$phpEx"), 
				"S_HIDDEN_FIELDS" => $s_hidden_fields)
			);

			$template->pparse("body");
			break;

		case "savenewcategory":
			//
			// Admin has added a new category.
			//

			//
			// Get the submitted data being careful to ensure the the data
			// we recieve and process is only the data we are looking for.
			//
			$category_name = ( isset($HTTP_POST_VARS['category_name']) ) ? $HTTP_POST_VARS['category_name'] : $HTTP_GET_VARS['category_name'];
			$display_order = ( isset($HTTP_POST_VARS['display_order']) ) ? $HTTP_POST_VARS['display_order'] : $HTTP_GET_VARS['display_order'];

			// If no code was entered complain ...
			if ($category_name == '' || $display_order == '')
			{
				message_die(MESSAGE, $lang['Fields_empty']);
			}

			//
			// Save the data to the avatar category table.
			//
			$sql = "INSERT INTO " . AVATAR_CATEGORY_TABLE . " (title, display_order)
				VALUES ('" . str_replace("\'", "''", $category_name) . "', $display_order)";
			$result = $db->sql_query($sql);
			if( !$result )
			{
				message_die(GENERAL_ERROR, "Couldn't insert new category", "", __LINE__, __FILE__, $sql);
			}

			$message = $lang['category_add_success'] . "<br /><br />" . sprintf($lang['click_return_avataradmin'], "<a href=\"" . append_sid("admin_avatar.$phpEx") . "\">", "</a>") . "<br /><br />" . sprintf($lang['Click_return_admin_index'], "<a href=\"" . append_sid("index.$phpEx?pane=right") . "\">", "</a>");

			message_die(GENERAL_MESSAGE, $message);
			break;

		case "savecategory":
			//
			// Admin has added a new category.
			//

			//
			// Get the submitted data being careful to ensure the the data
			// we recieve and process is only the data we are looking for.
			//
			$category_id = ( isset($HTTP_POST_VARS['category_id']) ) ? $HTTP_POST_VARS['category_id'] : $HTTP_GET_VARS['category_id'];
			$category_name = ( isset($HTTP_POST_VARS['category_name']) ) ? $HTTP_POST_VARS['category_name'] : $HTTP_GET_VARS['category_name'];
			$display_order = ( isset($HTTP_POST_VARS['display_order']) ) ? $HTTP_POST_VARS['display_order'] : $HTTP_GET_VARS['display_order'];

			// If no code was entered complain ...
			if ($category_name == '' || $display_order == '')
			{
				message_die(MESSAGE, $lang['Fields_empty']);
			}

			//
			// Save the data to the avatar category table.
			//
			$sql = "UPDATE " . AVATAR_CATEGORY_TABLE . "
				SET title = '" . str_replace("\'", "''", $category_name) . "', display_order = " . $display_order . "
				WHERE category_id = " . $category_id;
			$result = $db->sql_query($sql);
			if( !$result )
			{
				message_die(GENERAL_ERROR, "Couldn't insert new category", "", __LINE__, __FILE__, $sql);
			}

			$message = $lang['category_add_success'] . "<br /><br />" . sprintf($lang['click_return_avataradmin'], "<a href=\"" . append_sid("admin_avatar.$phpEx") . "\">", "</a>") . "<br /><br />" . sprintf($lang['Click_return_admin_index'], "<a href=\"" . append_sid("index.$phpEx?pane=right") . "\">", "</a>");

			message_die(GENERAL_MESSAGE, $message);
			break;

		case "editcategory":
			//
			// Admin has edited a category.
			//

			//
			// Get the submitted data being careful to ensure the the data
			// we recieve and process is only the data we are looking for.
			//
			$category_id = ( !empty($HTTP_POST_VARS['id']) ) ? $HTTP_POST_VARS['id'] : $HTTP_GET_VARS['id'];
			$category_id = intval($category_id);

			$sql = "SELECT *
				FROM " . AVATAR_CATEGORY_TABLE . "
				WHERE category_id = " . $category_id;
			$result = $db->sql_query($sql);
			if( !$result )
			{
				message_die(GENERAL_ERROR, 'Could not obtain category information', "", __LINE__, __FILE__, $sql);
			}
			$category_data = $db->sql_fetchrow($result);

			$template->set_filenames(array(
				"body" => "admin/avatar_category_edit_body.tpl")
			);

			$s_hidden_fields = '<input type="hidden" name="mode" value="savecategory" /><input type="hidden" name="category_id" value="' . $category_id . '" />';

			$template->assign_vars(array(
				"CATEGORY_TITLE" => $category_data['title'],
				"DISPLAY_ORDER" => $category_data['display_order'],

				"L_CATEGORY_TITLE" => $lang['category_title'],
				"L_CATEGORY_ADD" => $lang['category_add'],
				"L_CATEGORY_EXPLAIN" => $lang['category_desc'],
				"L_TITLE" => $lang['Title'],
				"L_DISPLAY_ORDER" => $lang['display_order'],
				"L_SUBMIT" => $lang['Submit'],
				"L_RESET" => $lang['Reset'],

				"S_CATEGORY_ACTION" => append_sid("admin_avatar.$phpEx"), 
				"S_HIDDEN_FIELDS" => $s_hidden_fields)
			);

			$template->pparse("body");

			break;

		case "showcategory":
			//
			// Admin is viewing a category.
			//

			//
			// Get the submitted data being careful to ensure the the data
			// we recieve and process is only the data we are looking for.
			//
			$category_id = ( !empty($HTTP_POST_VARS['id']) ) ? $HTTP_POST_VARS['id'] : $HTTP_GET_VARS['id'];
			$category_id = intval($category_id);

			$sql = "SELECT *
				FROM " . AVATAR_TABLE . "
				WHERE category_id = " . $category_id . "
				ORDER BY display_order";
			$result = $db->sql_query($sql);
			if( !$result )
			{
				message_die(GENERAL_ERROR, 'Could not obtain avatar information', "", __LINE__, __FILE__, $sql);
			}
			$avatar_data = $db->sql_fetchrowset($result);

			$sql = "SELECT title
				FROM " . AVATAR_CATEGORY_TABLE . "
				WHERE category_id = " . $category_id;
			$result = $db->sql_query($sql);
			if( !$result )
			{
				message_die(GENERAL_ERROR, 'Could not obtain category information', "", __LINE__, __FILE__, $sql);
			}
			$category_data = $db->sql_fetchrow($result);

			$template->set_filenames(array(
				"body" => "admin/avatar_category_view_body.tpl")
			);

			$s_hidden_fields = '<input type="hidden" name="category_id" value="' . $category_id . '" />';

			$template->assign_vars(array(
				"CATEGORY_TITLE" => $category_data['title'],

				"L_AVATAR_TITLE" => $lang['avatar_title'],
				"L_AVATAR_ADD" => $lang['avatar_add'],
				"L_AVATAR_TEXT" => $lang['avatar_desc'],
				"L_TITLE" => $lang['Title'],
				"L_IMAGE" => $lang['Image'],
				"L_DISPLAY_ORDER" => $lang['display_order'],
				"L_SUBMIT" => $lang['Submit'],
				"L_RESET" => $lang['Reset'],

				"S_AVATAR_ACTION" => append_sid("admin_avatar.$phpEx"), 
				"S_HIDDEN_FIELDS" => $s_hidden_fields)
			);

			//
			// Loop throuh the rows of avatars setting block vars for the template.
			//
			for($i = 0; $i < count($avatar_data); $i++)
			{
				$row_color = ( !($i % 2) ) ? $theme['td_color1'] : $theme['td_color2'];
				$row_class = ( !($i % 2) ) ? $theme['td_class1'] : $theme['td_class2'];

				$image_start = ((substr($avatar_data[$i]['avatar_path'], 0, 7) != 'http://' AND substr($avatar_data[$i]['avatar_path'], 0, 1) != '/') ? $phpbb_root_path : '');

				$template->assign_block_vars("avatars", array(
					"ROW_COLOR" => "#" . $row_color,
					"ROW_CLASS" => $row_class,

					"TITLE" => $avatar_data[$i]['title'],
					"ORDER" => $avatar_data[$i]['display_order'],
					"AVATAR_ID" => $avatar_data[$i]['avatar_id'],
			
					"U_AVATAR_IMAGE" => "$image_start" . $avatar_data[$i]['avatar_path'],
					"U_AVATAR_EDIT" => append_sid("admin_avatar.$phpEx?mode=editavatar&amp;id=" . $avatar_data[$i]['avatar_id']), 
					"U_AVATAR_DELETE" => append_sid("admin_avatar.$phpEx?mode=deleteavatar&amp;id=" . $avatar_data[$i]['avatar_id']))
				);
			}

			$template->pparse("body");

			break;
	}
}
else
{

	//
	// This is the main display of the page before the admin has selected
	// any options.
	//
	$sql = "SELECT categories.category_id AS category_id, categories.title AS title, categories.display_order AS display_order, COUNT(avatar.avatar_id) AS avatars
		FROM " . AVATAR_CATEGORY_TABLE . " AS categories
		LEFT JOIN " . AVATAR_TABLE . " AS avatar USING(category_id)
		GROUP BY category_id
		ORDER BY display_order";
	$result = $db->sql_query($sql);

	if( !$result )
	{
		message_die(GENERAL_ERROR, "Couldn't obtain avatar categories from database", "", __LINE__, __FILE__, $sql);
	}

	$category = $db->sql_fetchrowset($result);

	$template->set_filenames(array(

		"body" => "admin/avatar_category_body.tpl")
	);

	$template->assign_vars(array(
		"L_ACTION" => $lang['Action'],
		"L_CATEGORY_TITLE" => $lang['category_title'],
		"L_CATEGORY_TEXT" => $lang['category_desc'],
		"L_DELETE" => $lang['Delete'],
		"L_EDIT" => $lang['Edit'],
		"L_CATEGORY_ADD" => $lang['category_add'],
		"L_TITLE" => $lang['Title'],
		"L_CONTAINS" => $lang['Contains'],
		"L_DISPLAY_ORDER" => $lang['display_order'],
		"L_SAVE_ORDER" => $lang['save_order'],
		"L_AVATAR_ADD" => $lang['avatar_add'],
		

		"S_HIDDEN_FIELDS" => $s_hidden_fields, 
		"S_CATEGORY_ACTION" => append_sid("admin_avatar.$phpEx"))
	);

	//
	// Loop throuh the rows of categories setting block vars for the template.
	//
	for($i = 0; $i < count($category); $i++)
	{
		$row_color = ( !($i % 2) ) ? $theme['td_color1'] : $theme['td_color2'];
		$row_class = ( !($i % 2) ) ? $theme['td_class1'] : $theme['td_class2'];

		$template->assign_block_vars("categories", array(
			"ROW_COLOR" => "#" . $row_color,
			"ROW_CLASS" => $row_class,

			"TITLE" => $category[$i]['title'],
			"CONTAINS" => $category[$i]['avatars'] . ' Avatars',
			"ORDER" => $category[$i]['display_order'],
			"CATEGORY_ID" => $category[$i]['category_id'],
			
			"U_CATEGORY_TITLE" => append_sid("admin_avatar.$phpEx?mode=showcategory&amp;id=" . $category[$i]['category_id']),
			"U_CATEGORY_EDIT" => append_sid("admin_avatar.$phpEx?mode=editcategory&amp;id=" . $category[$i]['category_id']), 
			"U_CATEGORY_DELETE" => append_sid("admin_avatar.$phpEx?mode=deletecategory&amp;id=" . $category[$i]['category_id']))
		);
	}

	//
	// Spit out the page.
	//
	$template->pparse("body");
}


//
// Page Footer
//
include('./page_footer_admin.'.$phpEx);

?>