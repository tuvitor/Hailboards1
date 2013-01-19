<table width="100%" cellpadding="3" cellspacing="0" border="0">
  <tr>
    <td width="80%" align="left" class="MainMenuRow"><a class="MainMenuLink" href="{U_VIEW_FORUM}">{FORUM_NAME}</a>&nbsp;&raquo;&nbsp;<a class="MainMenuLink" href="{U_VIEW_TOPIC}">{TOPIC_TITLE}</a><br />
    <td align="right" class="MainMenuRow">{HB_PAGINATION}</td>
  </tr>
</table>
<table width="100%" cellpadding="3" cellspacing="0" border="0">

  <tr>
    
    <td width="20%" class="BoardColumn">Author</td>
    <td width="80%" class="BoardColumn">Topic: {TOPIC_TITLE}</td>

  </tr>
</table>
{POLL_DISPLAY}
<!-- BEGIN postrow -->
<table width="100%" cellpadding="3" cellspacing="1" border="0">
  <tr>

    <td width="20%" rowspan="3" class="BoardRowA" valign="top" align="left">
	<div><a href="{postrow.HB_PROFILE}" alt="View {postrow.HB_POSTER_NAME}'s Profile">{postrow.POSTER_NAME}</a>&nbsp;{postrow.HB_RANK_IMAGE}</div>
    	<span style='font-size: 8pt;'>
    	<b>Title</b>: {postrow.POSTER_RANK}<br>
    	<span style='font-weight: bold;'>{postrow.POSTER_POSTS}</span><br>
    	<span style='font-weight: bold;'>{postrow.POSTER_JOINED}</span><br>
    	{postrow.POSTER_AVATAR}
    	</p>
    </td>
    <td width="80%" class="BoardRowA">
	<a name="{postrow.U_POST_ID}"></a>
	<span style='font-weight: bold;'>Date Posted:</span> <span style='font-weight: normal;'>{postrow.POST_DATE}</span>
	<span style='font-weight: bold;'>Subject:</span> <span style='font-weight: normal;'>{postrow.POST_SUBJECT} {postrow.HB_EDITED_MESSAGE}</span>

    </td>
  </tr>
  <tr>
  	<td width="100%" class="BoardRowB">
		{postrow.MESSAGE}<br><br>
		{postrow.ATTACHMENTS}<span class="SignatureText">{postrow.SIGNATURE}</span>

		<br>
	</td>
  </tr>
  <tr>
  	<td class="BoardRowB" align="right">
        	<span class="BoardRowBLink"><a href="{U_POST_REPLY_TOPIC}">Post Reply</a>&nbsp;|&nbsp;{postrow.HB_QUOTE}{postrow.HB_EDIT}{postrow.HB_DELETE}{postrow.HB_PM}{postrow.HB_IP}
		</span>
	</td>
  </tr>
<!-- END postrow -->                                                                                    
        <!-- BEGIN switch_my_quick_reply -->
        <script type="text/javascript">
        function checkForm() {
                formErrors = false;
                document.post.message.value = '';
                if (document.post.input.value.length < 2) {
                        formErrors = '{MQR_EMPTY_MESSAGE}';
                }
                if (formErrors) {
                        alert(formErrors);
                        return false;
                } else {
                        if (document.post.quick_quote.checked) {
                                document.post.message.value = document.post.last_msg.value;
                        }
                        document.post.message.value += document.post.input.value;
                        return true;
                }
        }
        </script>
        <form action="{MQR_FORM_ACTION}" method="post" name="post" onsubmit="return checkForm()">
        <tbody id="qr_open" style="display:none; position:relative;">
        <tr>
                <th class="BoardColumn" height="26" nowrap="nowrap" width="150">{MQR_LANG_OPTIONS}</th>
                <th class="BoardColumn" nowrap="nowrap">{MQR_LANG_QUICK_REPLY}</th>
        </tr>
        <tr>
                <td class="BoardRowA gensmall" align="left" valign="middle" width="150">
                        <a href="{MQR_SMILIES_URL}" onclick="window.open('{MQR_SMILIES_URL}', '_phpbbsmilies', 'HEIGHT=300,resizable=yes,scrollbars=yes,WIDTH=250');return false;" target="_phpbbsmilies">{MQR_LANG_SHOW_SMILIES}</a><br /><br />
                        <input type="checkbox" name="quick_quote" />{MQR_QUOTE_LAST_POST}<br />
                        <input type="checkbox" name="attach_sig" checked="checked" />{MQR_ATTACH_SIG}<br />
                </td>
                <input type="hidden" name="mode" value="reply" />
                <input type="hidden" name="sid" value="{MQR_SESSION_ID}" />
                <input type="hidden" name="t" value="{MQR_TOPIC_ID}" />
                <input type="hidden" name="message" value="" />
                <input type="hidden" name="notify" value="{MQR_NOTIFY_USER}" />
                <input type="hidden" name="last_msg" value='{MQR_LAST_MSG}' />
                <td class="BoardRowA" valign="top">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                        <td class="BoardRowA" valign="top">
                                                <textarea name="input" cols="70" rows="7" wrap="virtual" style="width:100%" class="post"></textarea>
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr align="center">
                                                        <td>
                                                                <input type="submit" name="preview" class="liteoption" value="{MQR_LANG_PREVIEW}" />&nbsp;<input type="submit" name="post" class="mainoption" value="{MQR_LANG_SUBMIT}" />
                                                        </td>
                                                        </tr>
                                                </table>
                                        </td>
                                </tr>
                        </table>
                </td>
        </tr>
        </tbody>
        </form>
	</table>
        <!-- END switch_my_quick_reply -->
  <table width="100%" cellspacing="0" border="0" align="center" cellpadding="2">
        <tr>
	<td align="left" colspan="2" class="BoardColumn">
        <!-- BEGIN switch_my_quick_reply -->
	<a href="javascript:qr_show_hide();" class="BoardColumn">Quick Reply</a>
	<!-- END switch_my_quick_reply -->
	</td>
	<td class="BoardColumn" colspan="1">&nbsp;</td>
	</tr>
	<tr> 
          <td align="left" valign="middle" width="100%" class="MainMenuRow"><a href="{U_INDEX}" class="MainMenuLink">{L_INDEX}</a>&nbsp;&raquo;&nbsp;<a class="MainMenuLink" href="{U_VIEW_FORUM}">{FORUM_NAME}</a></td>
          <td align="right" valign="middle" class="MainMenuRow">&nbsp;</td>
          <td align="right" valign="middle" nowrap="nowrap" class="MainMenuRow"><span class="MainMenuLink">{S_TIMEZONE}<br />{HB_PAGINATION}</span> 
                </td> 
        </tr>
	<tr>  
          <td align="left" colspan="2" class="MainMenuRow">{PAGE_NUMBER}</td>
	  <td align="right" colspan="1" class="MainMenuRow">&nbsp;{S_TOPIC_ADMIN}</td>
	</tr>
	<tr>
	  <td align="right" colspan="3" class="MainMenuRow"><span class='VersionText'>{S_AUTH_LIST}</span></td>
	</tr>  

</table>
