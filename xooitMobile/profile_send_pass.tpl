<section id="login">
  <form action="{S_PROFILE_ACTION}" method="post" role="form">
    <div class="relative">
      <label class="fa fa-user"></label>
      <input type="text" name="username" placeholder="Identifiant" maxlength="40" value="{USERNAME}" required>
    </div>
    <div class="relative">
      <label class="fa fa-at"></label>
      <input type="email" name="email" placeholder="Adresse Email" maxlength="255" value="{EMAIL}" required>
    </div>
    <div class="container-fluid" style="margin-top: 15px;">
      {S_HIDDEN_FIELDS}
      <input type="submit" name="submit" class="btn btn-success btn-block btn-lg" value="{L_SUBMIT}">
    </div>
  </form>
</section>