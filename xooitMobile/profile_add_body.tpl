<form action="{S_PROFILE_ACTION}" {S_FORM_ENCTYPE} method="post" class="form-horizontal" role="form">
  <section id="register">
    <div class="container-fluid">
      <div class="form-group form-group-lg">
        <!-- BEGIN switch_namechange_disallowed -->
        <label class="col-sm-2 control-label" for="user-name">{L_USERNAME}: *</label>
        <div class="col-sm-10">
          <input type="text" id="user-name" class="form-control" value="{USERNAME}" autocomplete="off" readonly required>
          <input type="hidden" name="username" value="{USERNAME}">
        </div>
        <!-- END switch_namechange_disallowed -->
        <!-- BEGIN switch_namechange_allowed -->
        <label class="col-sm-2 control-label" for="user-name">{L_USERNAME}: *</label>
        <div class="col-sm-10">
          <input type="text" id="user-name" name="username" class="form-control" value="{USERNAME}" maxlength="25" autocomplete="off" required>
        </div>
        <!-- END switch_namechange_allowed -->
      </div>
      <div class="form-group form-group-lg">
        <label class="col-sm-2 control-label" for="email">{L_EMAIL_ADDRESS}: *</label>
        <div class="col-sm-10">
          <input type="email" id="email" name="email" class="form-control" value="{EMAIL}" maxlength="255" autocomplete="off" required>
        </div>
      </div>
      <!-- BEGIN switch_edit_profile -->
      <div class="form-group form-group-lg">
        <label class="col-sm-2 control-label" for="cur_password">{L_CURRENT_PASSWORD}:</label>
        <div class="col-sm-10">
          <input type="password" id="cur_password" name="cur_password" class="form-control" value="{CUR_PASSWORD}" maxlength="32" autocomplete="off">
        </div>
      </div>
      <!-- END switch_edit_profile -->
      <div class="form-group form-group-lg">
        <label class="col-sm-2 control-label" for="new_password">{L_NEW_PASSWORD}:<!-- IF L_NEW_PASSWORD === 'Mot de passe' --> *<!-- ENDIF --></label>
        <div class="col-sm-10">
          <input type="password" id="new_password" name="new_password" class="form-control" value="{NEW_PASSWORD}" maxlength="32" autocomplete="off"<!-- IF L_NEW_PASSWORD === 'Mot de passe' --> required<!-- ENDIF -->>
        </div>
      </div>
      <div class="form-group form-group-lg">
        <label class="col-sm-2 control-label" for="password_confirm">{L_CONFIRM_PASSWORD}: <!-- IF L_NEW_PASSWORD === 'Mot de passe' --> *<!-- ENDIF --></label>
        <div class="col-sm-10">
          <input type="password" id="password_confirm" name="password_confirm" class="form-control" value="{PASSWORD_CONFIRM}" maxlength="32" autocomplete="off"<!-- IF L_NEW_PASSWORD === 'Mot de passe' --> required<!-- ENDIF -->>
        </div>
      </div>
      <!-- BEGIN switch_avatar_block -->
      <!-- BEGIN switch_avatar_local_upload -->
      <div class="form-group form-group-lg">
        <label class=" avatar-upload col-sm-12 control-label" for="avatar" style="width: 100%;">
            Avatar :
            <div class="upload <!-- IF AVATAR === '' -->no-avatar <!-- ENDIF -->pull-right">
                    {AVATAR}
            </div>
        </label>
      </div>
      <a href="#" class="toggleInformations btn btn-block btn-lg">Comment modifier mon avatar ?</a>
      <div class="panel panel-default informationWrapper" style="display: none;">
        <div class="panel-body text-center" style="font-size: 17px;">
          Cliquez sur l'avatar pour le modifier.<br>{L_AVATAR_EXPLAIN}
        </div>
      </div>
      <!-- END switch_avatar_local_upload -->
      <!-- END switch_avatar_block -->
      <div>
        <input type="submit" name="submit" value="{L_SUBMIT}" class="btn btn-success btn-block btn-lg" />
      </div>
    </div>
    <div class="useless-things">
      <input type="hidden" name="aim" value="{AIM}">
      <input type="hidden" name="msn" value="{MSN}">
      <input type="hidden" name="yim" value="{YIM}">
      <input type="hidden" name="website" value="{WEBSITE}">
      <input type="hidden" name="location" value="{LOCATION}">
      <input type="hidden" name="occupation" value="{OCCUPATION}">
      <input type="hidden" name="interests" value="{INTERESTS}">
      <input type="hidden" name="signature" value="{SIGNATURE}">
      <input type="hidden" name="MAX_FILE_SIZE" value="{AVATAR_SIZE}">
      <input type="file" id="avatar" name="avatar" accept="image/*">
      <div class="hidden">
        <p>
          <input type="radio" name="viewemail" value="1" {VIEW_EMAIL_YES}>
          <input type="radio" name="viewemail" value="0" {VIEW_EMAIL_NO}>
        </p>
        <p>
          <input type="radio" name="hideonline" value="1" {HIDE_USER_YES}>
          <input type="radio" name="hideonline" value="0" {HIDE_USER_NO}>
        </p>
        <p>
          <input type="radio" name="notifyreply" value="1" {NOTIFY_REPLY_YES}>
          <input type="radio" name="notifyreply" value="0" {NOTIFY_REPLY_NO}>
        </p>
        <p>
          <input type="radio" name="notifypm" value="1" {NOTIFY_PM_YES}>
          <input type="radio" name="notifypm" value="0" {NOTIFY_PM_NO}>
        </p>
        <p>
          <input type="radio" name="popup_pm" value="1" {POPUP_PM_YES}>
          <input type="radio" name="popup_pm" value="0" {POPUP_PM_NO}>
        </p>
        <p>
          <input type="radio" name="attachsig" value="1" {ALWAYS_ADD_SIGNATURE_YES}>
          <input type="radio" name="attachsig" value="0" {ALWAYS_ADD_SIGNATURE_NO}>
        </p>
        <p>
          <input type="radio" name="allowbbcode" value="1" {ALWAYS_ALLOW_BBCODE_YES}>
          <input type="radio" name="allowbbcode" value="0" {ALWAYS_ALLOW_BBCODE_NO}>
        </p>
        <p>
          <input type="radio" name="allowhtml" value="1" {ALWAYS_ALLOW_HTML_YES}>
          <input type="radio" name="allowhtml" value="0" {ALWAYS_ALLOW_HTML_NO}>
        </p>
        <p>
          <input type="radio" name="allowsmilies" value="1" {ALWAYS_ALLOW_SMILIES_YES}>
          <input type="radio" name="allowsmilies" value="0" {ALWAYS_ALLOW_SMILIES_NO}>
        </p>
        <p>
          {LANGUAGE_SELECT}
          {STYLE_SELECT}
          {TIMEZONE_SELECT}
          <input type="text" name="dateformat" value="{DATE_FORMAT}" maxlength="14">
        </p>
      </div>
    </div>
  </section>
{S_HIDDEN_FIELDS}
</form>