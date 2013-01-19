<table width="80%" cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
  <tr>
    <td class="BoardColumn" align="center">
        {L_WORDS_TITLE}
    </td>
  </tr>
  <tr>
    <td class="BoardRowB" align="center">
        <span class="BoardRowBLink">{L_WORDS_TEXT}</span>
    </td>
  </tr>
</table><br /><br />

<form method="post" action="{S_WORDS_ACTION}"><table cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
	<tr>
		<th class="BoardColumn">{L_WORD}</th>
		<th class="BoardColumn">{L_REPLACEMENT}</th>
		<th colspan="2" class="BoardColumn">{L_ACTION}</th>
	</tr>
	<!-- BEGIN words -->
	<tr>
		<td class="BoardRowB" align="center"><span class="BoardRowBLink">{words.WORD}</span></td>
		<td class="BoardRowA" align="center"><span class="BoardRowBLink">{words.REPLACEMENT}</span></td>
		<td class="BoardRowB"><a href="{words.U_WORD_EDIT}" class="BoardRowBLink">{L_EDIT}</a></td>
		<td class="BoardRowA"><a href="{words.U_WORD_DELETE}" class="BoardRowBLink">{L_DELETE}</a></td>
	</tr>
	<!-- END words -->
	<tr>
		<td colspan="5" align="center" class="BoardColumn">{S_HIDDEN_FIELDS}<input type="submit" name="add" value="{L_ADD_WORD}" class="MainMenuRow" /></td>
	</tr>
</table></form>
