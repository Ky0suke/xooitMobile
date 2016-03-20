<script type="text/javascript">
<!--
// Startup variables
var imageTag = false;
var theSelection = false;

// Check for Browser & Platform for PC & IE specific bits
// More details from: http://www.mozilla.org/docs/web-developer/sniffer/browser_type.html
var clientPC = navigator.userAgent.toLowerCase(); // Get client info
var clientVer = parseInt(navigator.appVersion); // Get browser version

var is_ie = ((clientPC.indexOf("msie") != -1) && (clientPC.indexOf("opera") == -1));
var is_nav = ((clientPC.indexOf('mozilla')!=-1) && (clientPC.indexOf('spoofer')==-1)
                && (clientPC.indexOf('compatible') == -1) && (clientPC.indexOf('opera')==-1)
                && (clientPC.indexOf('webtv')==-1) && (clientPC.indexOf('hotjava')==-1));
var is_moz = 0;

var is_win = ((clientPC.indexOf("win")!=-1) || (clientPC.indexOf("16bit") != -1));
var is_mac = (clientPC.indexOf("mac")!=-1);

// Helpline messages
b_help = "{L_BBCODE_B_HELP}";
i_help = "{L_BBCODE_I_HELP}";
u_help = "{L_BBCODE_U_HELP}";
q_help = "{L_BBCODE_Q_HELP}";
c_help = "{L_BBCODE_C_HELP}";
l_help = "{L_BBCODE_L_HELP}";
o_help = "{L_BBCODE_O_HELP}";
p_help = "{L_BBCODE_P_HELP}";
w_help = "{L_BBCODE_W_HELP}";
a_help = "{L_BBCODE_A_HELP}";
s_help = "{L_BBCODE_S_HELP}";
f_help = "{L_BBCODE_F_HELP}";

// Define the bbCode tags
bbcode = new Array();
bbtags = new Array('[b]','[/b]','[i]','[/i]','[u]','[/u]','[quote]','[/quote]','[code]','[/code]','[list]','[/list]','[list=]','[/list]','[img]','[/img]','[url]','[/url]');
imageTag = false;

// Shows the help messages in the helpline window
function helpline(help) {
    document.post.helpbox.value = eval(help + "_help");
}


// Replacement for arrayname.length property
function getarraysize(thearray) {
    for (i = 0; i < thearray.length; i++) {
        if ((thearray[i] == "undefined") || (thearray[i] == "") || (thearray[i] == null))
            return i;
        }
    return thearray.length;
}

// Replacement for arrayname.push(value) not implemented in IE until version 5.5
// Appends element to the array
function arraypush(thearray,value) {
    thearray[ getarraysize(thearray) ] = value;
}

// Replacement for arrayname.pop() not implemented in IE until version 5.5
// Removes and returns the last element of an array
function arraypop(thearray) {
    thearraysize = getarraysize(thearray);
    retval = thearray[thearraysize - 1];
    delete thearray[thearraysize - 1];
    return retval;
}


function checkForm() {

    formErrors = false;

    if (document.post.message.value.length < 2) {
        formErrors = "{L_EMPTY_MESSAGE}";
    }

    if (formErrors) {
        alert(formErrors);
        return false;
    } else {
        bbstyle(-1);
        //formObj.preview.disabled = true;
        //formObj.submit.disabled = true;
        return true;
    }
}

function emoticon(text) {
    var txtarea = document.post.message;
    text = ' ' + text + ' ';
    if (txtarea.createTextRange && txtarea.caretPos) {
        var caretPos = txtarea.caretPos;
        caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ? caretPos.text + text + ' ' : caretPos.text + text;
        txtarea.focus();
    } else {
        txtarea.value  += text;
        txtarea.focus();
    }
}

function bbfontstyle(bbopen, bbclose) {
    var txtarea = document.post.message;

    if ((clientVer >= 4) && is_ie && is_win) {
        theSelection = document.selection.createRange().text;
        if (!theSelection) {
            txtarea.value += bbopen + bbclose;
            txtarea.focus();
            return;
        }
        document.selection.createRange().text = bbopen + theSelection + bbclose;
        txtarea.focus();
        return;
    }
    else if (txtarea.selectionEnd && (txtarea.selectionEnd - txtarea.selectionStart > 0))
    {
        mozWrap(txtarea, bbopen, bbclose);
        return;
    }
    else
    {
        txtarea.value += bbopen + bbclose;
        txtarea.focus();
    }
    storeCaret(txtarea);
}


function bbstyle(bbnumber) {
    var txtarea = document.post.message;

    txtarea.focus();
    donotinsert = false;
    theSelection = false;
    bblast = 0;

    if (bbnumber == -1) { // Close all open tags & default button names
        while (bbcode[0]) {
            butnumber = arraypop(bbcode) - 1;
            txtarea.value += bbtags[butnumber + 1];
            buttext = eval('document.post.addbbcode' + butnumber + '.value');
            eval('document.post.addbbcode' + butnumber + '.value ="' + buttext.substr(0,(buttext.length - 1)) + '"');
        }
        imageTag = false; // All tags are closed including image tags :D
        txtarea.focus();
        return;
    }

    if ((clientVer >= 4) && is_ie && is_win)
    {
        theSelection = document.selection.createRange().text; // Get text selection
        if (theSelection) {
            // Add tags around selection
            document.selection.createRange().text = bbtags[bbnumber] + theSelection + bbtags[bbnumber+1];
            txtarea.focus();
            theSelection = '';
            return;
        }
    }
    else if (txtarea.selectionEnd && (txtarea.selectionEnd - txtarea.selectionStart > 0))
    {
        mozWrap(txtarea, bbtags[bbnumber], bbtags[bbnumber+1]);
        return;
    }

    // Find last occurance of an open tag the same as the one just clicked
    for (i = 0; i < bbcode.length; i++) {
        if (bbcode[i] == bbnumber+1) {
            bblast = i;
            donotinsert = true;
        }
    }

    if (donotinsert) {      // Close all open tags up to the one just clicked & default button names
        while (bbcode[bblast]) {
                butnumber = arraypop(bbcode) - 1;
                txtarea.value += bbtags[butnumber + 1];
                buttext = eval('document.post.addbbcode' + butnumber + '.value');
                eval('document.post.addbbcode' + butnumber + '.value ="' + buttext.substr(0,(buttext.length - 1)) + '"');
                imageTag = false;
            }
            txtarea.focus();
            return;
    } else { // Open tags

        if (imageTag && (bbnumber != 14)) {     // Close image tag before adding another
            txtarea.value += bbtags[15];
            lastValue = arraypop(bbcode) - 1;   // Remove the close image tag from the list
            document.post.addbbcode14.value = "Img";    // Return button back to normal state
            imageTag = false;
        }

        // Open tag
        txtarea.value += bbtags[bbnumber];
        if ((bbnumber == 14) && (imageTag == false)) imageTag = 1; // Check to stop additional tags after an unclosed image tag
        arraypush(bbcode,bbnumber+1);
        eval('document.post.addbbcode'+bbnumber+'.value += "*"');
        txtarea.focus();
        return;
    }
    storeCaret(txtarea);
}

// From http://www.massless.org/mozedit/
function mozWrap(txtarea, open, close)
{
    var selLength = txtarea.textLength;
    var selStart = txtarea.selectionStart;
    var selEnd = txtarea.selectionEnd;
    if (selEnd == 1 || selEnd == 2)
        selEnd = selLength;

    var s1 = (txtarea.value).substring(0,selStart);
    var s2 = (txtarea.value).substring(selStart, selEnd)
    var s3 = (txtarea.value).substring(selEnd, selLength);
    txtarea.value = s1 + open + s2 + close + s3;
    return;
}

// Insert at Claret position. Code from
// http://www.faqts.com/knowledge_base/view.phtml/aid/1052/fid/130
function storeCaret(textEl) {
    if (textEl.createTextRange) textEl.caretPos = document.selection.createRange().duplicate();
}

//-->
</script>

<!-- BEGIN privmsg_extensions -->
<table border="0" cellspacing="0" cellpadding="0" align="center" width="100%">
  <tr>
    <td valign="top" align="center" width="100%">
      <table height="40" cellspacing="2" cellpadding="2" border="0">
        <tr valign="middle">
          <td>{INBOX_IMG}</td>
          <td><span class="cattitle">{INBOX_LINK}&nbsp;&nbsp;</span></td>
          <td>{SENTBOX_IMG}</td>
          <td><span class="cattitle">{SENTBOX_LINK}&nbsp;&nbsp;</span></td>
          <td>{OUTBOX_IMG}</td>
          <td><span class="cattitle">{OUTBOX_LINK}&nbsp;&nbsp;</span></td>
          <td>{SAVEBOX_IMG}</td>
          <td><span class="cattitle">{SAVEBOX_LINK}&nbsp;&nbsp;</span></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<!-- END privmsg_extensions -->

<form action="{S_POST_ACTION}" method="post" name="post" onsubmit="return checkForm(this)" role="form">
{ERROR_BOX}
<table class="table" id="write-message">
    <!-- BEGIN switch_username_select -->
    <tr>
        <td colspan="2" class="primary">
            <input type="text" name="username" maxlength="25" placeholder="{L_USERNAME}" value="{USERNAME}" autocomplete="off">
        </td>
    </tr>
    <!-- END switch_username_select -->
    <!-- BEGIN switch_privmsg -->
    <tr>
        <td colspan="2" class="primary relative">
          <input type="text" id="username_input" name="username" maxlength="25" placeholder="{L_USERNAME}" value="{USERNAME}" autocomplete="off">
          <ul class="search-results list-unstyled" style="display: none;">
          </ul>
        </td>
    </tr>
    <!-- END switch_privmsg -->
    <tr>
      <td colspan="2" class="primary">
        <input type="text" name="subject" maxlength="60" placeholder="{L_SUBJECT}" value="{SUBJECT}" autocomplete="off">
      </td>
    </tr>
    <tr>
       <td colspan="2" class="primary" style="padding: 0;">
          <ul id="bbcode" class="list-unstyled list-inline">
          <li data-bbcode="bold"><span class="fa fa-bold"></span></li><li data-bbcode="italic"><span class="fa fa-italic"></span></li><li data-bbcode="underline"><span class="fa fa-underline"></span></li><li data-bbcode="link"><span class="fa fa-link"></span></li><li data-bbcode="emoji"><span class="fa fa-smile-o"></span></li>
          </ul>
       </td>
    </tr>
    <tr>
      <td class="hidden">
        <table>
          <tr>
            <td>
              <table>
                <!-- BEGIN smilies_row -->
                <tr>
                  <!-- BEGIN smilies_col -->
                  <td><a href="javascript:emoticon('{smilies_row.smilies_col.SMILEY_CODE}')"><img src="{smilies_row.smilies_col.SMILEY_IMG}" border="0" alt="{smilies_row.smilies_col.SMILEY_DESC}" title="{smilies_row.smilies_col.SMILEY_DESC}" /></a></td>
                  <!-- END smilies_col -->
                </tr>
                <!-- END smilies_row -->
                <!-- BEGIN switch_smilies_extra -->
                <tr>
                  <td><span class="nav"><a href="{U_MORE_SMILIES}" onclick="window.open('{U_MORE_SMILIES}', '_phpbbsmilies', 'HEIGHT=300,resizable=yes,scrollbars=yes,WIDTH=250');return false;" target="_phpbbsmilies" class="nav">{L_MORE_SMILIES}</a></span></td>
                </tr>
                <!-- END switch_smilies_extra -->
              </table>
            </td>
          </tr>
        </table>
      </td>
      <td colspan="2">
        <textarea id="message" name="message" placeholder="Rédigez votre message ..." autocomplete="off" required>{MESSAGE}</textarea>
      </td>
    </tr>
    <!-- BEGIN switch_username_select -->
    <tr>
        <td colspan="2">
          <div class="container-fluid">
            <div class="pull-left">
              <img src="http://img.xooimage.com/files110/3/2/7/chargement-48a1bcd.gif" id="antiflood-captcha" width="200" height="40">
            </div>
            <div style="margin-left: 200px;">
              <input type="text" name="antiflood" placeholder="Recopiez le code anti-flood" maxlength="8" autocomplete="off" required>
              <input type="hidden" name="antiflood_id" id="antiflood-id" required>
            </div>
          </div>
        </td>
    </tr>
    <!-- END switch_username_select -->
    <tr>
      <td class="hidden">
        <span class="gen"><b>{L_OPTIONS}</b></span><br>
        <span class="gensmall">{HTML_STATUS}<br>
        {BBCODE_STATUS}<br>{SMILIES_STATUS}</span>
      </td>
      <td colspan="2">
        <table cellspacing="0" cellpadding="1" border="0" width="100%">
          <!-- BEGIN switch_html_checkbox -->
          <tr class="hidden">
            <td>
              <input type="checkbox" name="disable_html" {S_HTML_CHECKED} />
            </td>
            <td><span class="gen">{L_DISABLE_HTML}</span></td>
          </tr>
          <!-- END switch_html_checkbox -->
          <!-- BEGIN switch_bbcode_checkbox -->
          <tr class="hidden">
            <td>
              <input type="checkbox" name="disable_bbcode" {S_BBCODE_CHECKED} />
            </td>
            <td><span class="gen">{L_DISABLE_BBCODE}</span></td>
          </tr>
          <!-- END switch_bbcode_checkbox -->
          <!-- BEGIN switch_smilies_checkbox -->
          <tr class="hidden">
            <td>
              <input type="checkbox" name="disable_smilies" {S_SMILIES_CHECKED} />
            </td>
            <td><span class="gen">{L_DISABLE_SMILIES}</span></td>
          </tr>
          <!-- END switch_smilies_checkbox -->
          <!-- BEGIN switch_signature_checkbox -->
          <tr class="hidden">
            <td>
              <input type="checkbox" name="attach_sig" {S_SIGNATURE_CHECKED} />
            </td>
            <td><span class="gen">{L_ATTACH_SIGNATURE}</span></td>
          </tr>
          <!-- END switch_signature_checkbox -->
          <!-- BEGIN switch_notify_checkbox -->
          <tr class="hidden">
            <td>
              <input type="checkbox" name="notify" {S_NOTIFY_CHECKED} />
            </td>
            <td><span class="gen">{L_NOTIFY_ON_REPLY}</span></td>
          </tr>
          <!-- END switch_notify_checkbox -->
          <!-- BEGIN switch_delete_checkbox -->
          <tr class="hidden">
            <td>
              <input type="checkbox" name="delete" />
            </td>
            <td><span class="gen">{L_DELETE_POST}</span></td>
          </tr>
          <!-- END switch_delete_checkbox -->
          <!-- BEGIN switch_type_toggle -->
          <tr>
            <td>
              <div class="container-fluid topic-type">
                {S_TYPE_TOGGLE}
              </div>
              </td>
          </tr>
          <!-- END switch_type_toggle -->
        </table>
      </td>
    </tr>
  </table>
  {S_HIDDEN_FORM_FIELDS}
  <div class="container-fluid">
      <input type="submit" accesskey="s" tabindex="6" name="post" class="btn btn-success btn-block btn-lg" value="{L_SUBMIT}" />
  </div>
</form>

<hr>

{TOPIC_REVIEW_BOX}