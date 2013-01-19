<table width="80%" cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
  <tr>
    <td class="BoardColumn" align="center">
        {L_SMILEY_TITLE}
    </td>
  </tr>
  <tr>
    <td class="BoardRowB" align="center">
        <span class="BoardRowBLink">{L_SMILEY_EXPLAIN}</span>
    </td>
  </tr>
</table><br /><br />

<script language="javascript" type="text/javascript">
<!--
function update_smiley(newimage)
{
	document.smiley_image.src = "{S_SMILEY_BASEDIR}/" + newimage;
}
//-->
</script>

<form method="post" action="{S_SMILEY_ACTION}"><table class="MainTable" cellspacing="1" cellpadding="4" border="0" align="center">
	<tr>
		<th class="BoardColumn" colspan="2">{L_SMILEY_CONFIG}</th>
	</tr>
	<tr>
		<td class="BoardRowB">{L_SMILEY_CODE}</td>
		<td class="BoardRowB"><input class="post" type="text" name="smile_code" value="{SMILEY_CODE}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA">{L_SMILEY_URL}</td>
		<td class="BoardRowA"><select name="smile_url" onchange="update_smiley(this.options[selectedIndex].value);">{S_FILENAME_OPTIONS}</select> &nbsp; <img name="smiley_image" src="{SMILEY_IMG}" border="0" alt="" /> &nbsp;</td>
	</tr>
	<tr>
		<td class="BoardRowB">{L_SMILEY_EMOTION}</td>
		<td class="BoardRowB"><input class="post" type="text" name="smile_emotion" value="{SMILEY_EMOTICON}" /></td>
	</tr>
	<tr>
		<td class="catBottom" colspan="2" align="center">{S_HIDDEN_FIELDS}<input class="mainoption" type="submit" value="{L_SUBMIT}" /></td>
	</tr>
</table></form>
