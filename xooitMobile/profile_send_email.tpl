<script type="text/javascript">
<!--
function checkForm(formObj) {

  formErrors = false;

  if (formObj.message.value.length < 2) {
    formErrors = "{L_EMPTY_MESSAGE_EMAIL}";
  }
  else if ( formObj.subject.value.length < 2)
  {
    formErrors = "{L_EMPTY_SUBJECT_EMAIL}";
  }

  if (formErrors) {
    alert(formErrors);
    return false;
  }
}
//-->
</script>

<form action="{S_POST_ACTION}" method="post" name="post" onsubmit="return checkForm(this)" role="form">

{ERROR_BOX}

<table class="table" id="write-message">
    <tr>
        <td class="primary"><input type="text" readonly placeholder="{L_RECIPIENT}" value="{USERNAME}" /></td>
    </tr>
    <tr>
        <td class="primary"><input type="text" name="subject" maxlength="100" placeholder="{L_SUBJECT}" value="{SUBJECT}" /></td>
    </tr>
    <tr>
      <td>
        <textarea name="message" placeholder="Rédigez votre message ...">{MESSAGE}</textarea>
      </td>
    </tr>
    <tr>
      <td>
        <div class="checkbox">
          <label style="display: block;font-size: 20px;font-weight: bold;font-family: 'Raleway', sans-serif;">
            <input type="checkbox" name="cc_email"  value="1" style="vertical-align: middle;" checked> {L_CC_EMAIL}
          </label>
        </div>
      </td>
    </tr>
  </table>
  {S_HIDDEN_FORM_FIELDS}
  <div class="container-fluid">
    <div class="form-group">
      <input type="submit" accesskey="s" tabindex="6" name="submit" class="btn btn-success btn-block btn-lg" value="{L_SEND_EMAIL}">
    </div>
  </div>
</form>