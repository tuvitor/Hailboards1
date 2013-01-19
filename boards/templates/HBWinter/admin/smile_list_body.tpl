<table width="80%" cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
  <tr>
    <td class="BoardColumn" align="center">
       {L_SMILEY_TITLE} 
    </td>
  </tr>
  <tr>
    <td class="BoardRowB" align="center">
        <span class="BoardRowBLink">{L_SMILEY_TEXT}</span>
    </td>
  </tr>
</table><br /><br />

<form method="post" action="{S_SMILEY_ACTION}"><table cellspacing="1" cellpadding="4" border="0" align="center" class="MainTable">
	<tr>
		<th class="BoardColumn">{L_CODE}</th>
		<th class="BoardColumn">{L_SMILE}</th>
		<th class="BoardColumn">{L_EMOT}</th>
		<th colspan="2" class="BoardColumn">{L_ACTION}</th>
	</tr>
	<!-- BEGIN smiles -->
	<tr>
		<td class="BoardRowB" align="center"><span style="color: #750000; font-size: 7pt;">{smiles.CODE}</span></td>
		<td class="BoardRowA" align="center"><img src="{smiles.SMILEY_IMG}" alt="{smiles.CODE}" /></td>
		<td class="BoardRowB"><span class="BoardRowBLink">{smiles.EMOT}</span></td>
		<td class="BoardRowA"><a class="BoardRowBLink" href="{smiles.U_SMILEY_EDIT}">{L_EDIT}</a></td>
		<td class="BoardRowB"><a class="BoardRowBLink" href="{smiles.U_SMILEY_DELETE}">{L_DELETE}</a></td>
	</tr>
	<!-- END smiles -->
	<tr>
		<td class="BoardColumn" colspan="5" align="center">{S_HIDDEN_FIELDS}<input type="submit" name="add" value="{L_SMILEY_ADD}" class="MainMenuRow" />&nbsp;&nbsp;<input class="MainMenuRow" type="submit" name="import_pack" value="{L_IMPORT_PACK}">&nbsp;&nbsp;<input class="MainMenuRow" type="submit" name="export_pack" value="{L_EXPORT_PACK}"></td>
	</tr>
</table></form>
