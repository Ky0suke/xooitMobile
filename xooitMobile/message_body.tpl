<div class="container-fluid">
  <!-- IF MESSAGE_TITLE === 'Système de vérification CAPTCHA' -->
  <div class="panel panel-default captcha">
      <div class="panel-heading"><b>Veuillez saisir le captcha :</b></div>
      <div class="panel-body">
        {MESSAGE_TEXT}
      </div>
  </div>
  <!-- ELSE -->
  <div class="alert alert-info text-center" role="alert">
    {MESSAGE_TEXT}
  </div>
  <!-- ENDIF -->
</div>