<section id="login">
  <form action="{S_LOGIN_ACTION}" method="post" role="form">
    <div class="relative">
      <label class="fa fa-user"></label>
      <input type="text" name="username" placeholder="Identifiant" maxlength="40" value="{USERNAME}" required>
    </div>
    <div class="relative">
      <label class="fa fa-key"></label>
      <input type="password" name="password" placeholder="Mot de passe" maxlength="32" required>
    </div>
    <div class="container-fluid" style="padding: 15px 15px 0;">
        <label class="ios-checkbox ios-label" style="line-height: 30px;">
            Se souvenir
            <input type="checkbox" name="autologin" checked>
            <span></span>
        </label>
    </div>
    <hr>
    <div class="container-fluid" style="margin-top: 15px;">
      {S_HIDDEN_FIELDS}
      <input type="submit" name="login" class="btn btn-success btn-block btn-lg" value="{L_LOGIN}">
      <a href="{U_SEND_PASSWORD}" class="btn btn-block btn-lg">{L_SEND_PASSWORD}</a>
    </div>
  </form>
</section>