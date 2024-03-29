<table width="80%" cellspacing="1" cellpadding="4" border="0" align="center">
  <tr>
    <td class="BoardColumn" align="center">
        <span class="BoardColumnLink">{L_RANKS_TITLE}</span>
    </td>
  </tr>
  <tr>
    <td class="BoardRowB">
        <br />
        <span class="BoardRowBLink">{L_RANKS_TEXT}</span><br /><br />

    </td>
  </tr>
</table><br /><br />

<form action="{S_RANK_ACTION}" method="post"><table class="MainTable" cellpadding="4" cellspacing="1" border="0" align="center">
	<tr>
		<th class="BoardColumn" colspan="2">{L_RANKS_TITLE}</th>
	</tr>
	<tr>
		<td class="BoardRowA" width="38%"><span class="gen">{L_RANK_TITLE}:</span></td>
		<td class="BoardRowB"><input class="post" type="text" name="title" size="35" maxlength="40" value="{RANK}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA"><span class="gen">{L_RANK_SPECIAL}</span></td>
		<td class="BoardRowB"><input type="radio" name="special_rank" value="1" {SPECIAL_RANK} />{L_YES} &nbsp;&nbsp;<input type="radio" name="special_rank" value="0" {NOT_SPECIAL_RANK} /> {L_NO}</td>
	</tr>
	<tr>
		<td class="BoardRowA" width="38%"><span class="gen">{L_RANK_MINIMUM}:</span></td>
		<td class="BoardRowB"><input class="post" type="text" name="min_posts" size="5" maxlength="10" value="{MINIMUM}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA" width="38%"><span class="gen">{L_RANK_IMAGE}:</span><br />
		<span class="gensmall">{L_RANK_IMAGE_EXPLAIN}</span></td>
		<td class="BoardRowB"><input class="post" type="text" name="rank_image" size="40" maxlength="255" value="{IMAGE}" /><br />{IMAGE_DISPLAY}</td>
	</tr>
	   <tr>
     <td class="BoardRowA" width="38%"><span class="gen">{L_TAG_OPEN}:</span></td>
     <td class="BoardRowB" width="62%">
        <input type="text" class="post" name="tag_open" size="51" value="{TAG_OPEN}" />
   </tr>
   <tr>
     <td class="BoardRowA" width="38%"><span class="gen">{L_TAG_CLOSE}:</span></td>
     <td class="BoardRowB" width="62%">
        <input type="text" class="post" name="tag_close" size="51" value="{TAG_CLOSE}" />
   </tr> 
	<tr>
		<td class="catBottom" colspan="2" align="center"><input type="submit" name="submit" value="{L_SUBMIT}" class="mainoption" />&nbsp;&nbsp;<input type="reset" value="{L_RESET}" class="liteoption" /></td>
	</tr>
</table>
{S_HIDDEN_FIELDS}</form>
