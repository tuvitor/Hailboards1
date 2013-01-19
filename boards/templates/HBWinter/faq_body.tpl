<table width="100%" cellspacing="2" cellpadding="2" border="0" align="center" class="MainMenuRow"><tr><td>

<table width="100%" cellspacing="2" cellpadding="2" border="0" align="center" class="MainMenuRow">
	<tr>
		<td align="left"><span class="MainMenuLink"><a href="{U_INDEX}" class="MainMenuLink">{L_INDEX}</a>&nbsp;&raquo;&nbsp;Frequently Asked Questions</span></td>
	</tr>
</table>

<table class="BoardRowA" width="100%" cellspacing="1" cellpadding="3" border="0" align="center">
	<tr>
		<th class="thHead">{L_FAQ_TITLE}</th>
	</tr>
	<tr>
		<td class="row1">
			<!-- BEGIN faq_block_link -->
			<span class="gen"><b>{faq_block_link.BLOCK_TITLE}</b></span><br />
			<!-- BEGIN faq_row_link -->
			<span class="gen"><a href="{faq_block_link.faq_row_link.U_FAQ_LINK}" class="postlink">{faq_block_link.faq_row_link.FAQ_LINK}</a></span><br />
			<!-- END faq_row_link -->
			<br />
			<!-- END faq_block_link -->
		</td>
	</tr>
	<tr>
		<td class="catBottom" height="28">&nbsp;</td>
	</tr>
</table>

<!-- BEGIN faq_block -->
<table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr><td class="MainMenuRow">&nbsp;</td></tr>
</table>
<table class="BoardRowB" width="100%" cellspacing="1" cellpadding="3" border="0" align="center">
	<tr> 
		<td class="MainMenuRow" height="28" align="center"><span class="MainMenuLink">{faq_block.BLOCK_TITLE}</span></td>
	</tr>
	<!-- BEGIN faq_row -->  
	<tr> 
		<td class="{faq_block.faq_row.ROW_CLASS}" align="left" valign="top"><span class="postbody"><a name="{faq_block.faq_row.U_FAQ_ID}"></a><b>{faq_block.faq_row.FAQ_QUESTION}</b></span><br /><span class="postbody">{faq_block.faq_row.FAQ_ANSWER}<br /><br /><a class="BoardRowBLink" href="#top">{L_BACK_TO_TOP}</a></span></td>
	</tr>
	<tr>
		<td class="spaceRow" height="1"><img src="templates/subSilver/images/spacer.gif" alt="" width="1" height="1" /></td>
	</tr>
	<!-- END faq_row -->
</table>

<br clear="all" />
<!-- END faq_block -->

<table width="100%" cellspacing="2" border="0" align="center">
	<tr>
		<td align="right" valign="middle" nowrap="nowrap" class="MainMenuRow"><span class="MainMenuLink">{S_TIMEZONE}</span><br /><br />{JUMPBOX}</td> 
	</tr>
</table>

</tr>
</td>
</table>
