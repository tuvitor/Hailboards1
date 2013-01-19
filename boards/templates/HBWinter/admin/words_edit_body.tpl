<table width="80%" cellspacing="1" cellpadding="4" border="0" align="center">
  <tr>
    <td class="BoardColumn" align="center">
        <span class="BoardColumnLink">{L_WORDS_TITLE}</span>
    </td>
  </tr>
  <tr>
    <td class="BoardRowB">
        <br />
        <span class="BoardRowBLink">{L_WORDS_TEXT}</span><br /><br />

    </td>
  </tr>
</table>
<br /><br />

<form method="post" action="{S_WORDS_ACTION}"><table cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
	<tr>
		<th colspan="2" class="BoardColumn">{L_WORD_CENSOR}</th>
	</tr>
	<tr>
		<td class="BoardRowA">{L_WORD}</td>
		<td class="BoardRowB"><input class="post" type="text" name="word" value="{WORD}" /></td>
	</tr>
	<tr>
		<td class="BoardRowA">{L_REPLACEMENT}</td>
		<td class="BoardRowB"><input class="post" type="text" name="replacement" value="{REPLACEMENT}" /></td>
	</tr>
	<tr>
		<td class="catBottom" colspan="2" align="center">{S_HIDDEN_FIELDS}<input type="submit" name="save" value="{L_SUBMIT}" class="mainoption" /></td>
	</tr>
</table></form>
