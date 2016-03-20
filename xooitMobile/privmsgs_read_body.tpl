<div class="container-fluid">
  <div class="row privmsgs-menu">
    <div class="col-xs-3">{INBOX_IMG}</div>
    <div class="col-xs-3">{SENTBOX_IMG}</div>
    <div class="col-xs-3">{OUTBOX_IMG}</div>
    <div class="col-xs-3">{SAVEBOX_IMG}</div>
  </div>
  <hr>
  <!-- IF EDIT_PM_IMG === '' -->
  <button class="btn btn-success btn-block btn-lg" onClick="window.location = 'privmsg.php?mode=reply&p='+ window.id +'&theme=test'; return false;">Répondre</button>
  <!-- ELSE -->
  <button class="btn btn-success btn-block btn-lg" onClick="window.location = 'privmsg.php?mode=edit&p='+ window.id +'&theme=test'; return false;">Editer</button>
  <!-- ENDIF -->
  <hr>
</div>

<form method="post" action="{S_PRIVMSGS_ACTION}">
<section id="read-message">
    <article class="private-message">
        <div class="message-info primary">Envoyé par : {MESSAGE_FROM}</div>
        <div class="message-info primary">Sujet : {POST_SUBJECT}</div>
        <div class="message-info primary">{L_POSTED} {POST_DATE}</div>
        <div class="message-content postbody">
            {MESSAGE}
        </div>
    </article>
    <hr>
    <div class="container-fluid">
      <div class="row">
          <div class="col-xs-6"><input type="submit" name="save" value="Sauvegarder" class="btn btn-default btn-block" /></div>
          <div class="col-xs-6"><input type="submit" name="delete" value="Supprimer" class="btn btn-default btn-block" /></div>
      </div>
    </div>
    {S_HIDDEN_FIELDS}
</section>
</form>

<div class="container-fluid">
  <hr>
  <!-- IF EDIT_PM_IMG === '' -->
  <button class="btn btn-success btn-block btn-lg" onClick="window.location = 'privmsg.php?mode=reply&p='+ window.id +'&theme=test'; return false;">Répondre</button>
  <!-- ELSE -->
  <button class="btn btn-success btn-block btn-lg" onClick="window.location = 'privmsg.php?mode=edit&p='+ window.id +'&theme=test'; return false;">Editer</button>
  <!-- ENDIF -->
</div>

<hr>