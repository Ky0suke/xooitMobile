<form method="POST" action="{S_POLL_ACTION}">
<span class="poll-title text-center">{POLL_QUESTION}</span>
<div class="container-fluid">
  <!-- BEGIN poll_option -->
  <label class="poll-option">
      <input type="radio" name="vote_id" value="{poll_option.POLL_OPTION_ID}" />
      <span class="poll-option-text">{poll_option.POLL_OPTION_CAPTION}</span>
  </label>
  <!-- END poll_option -->
</div>
<div class="container-fluid">
  <div class="row">
    <div class="col-xs-6">
      <input type="submit" name="submit" value="{L_SUBMIT_VOTE}" class="btn btn-success btn-block" />
    </div>
    <div class="col-xs-6">
      <a href="{U_VIEW_RESULTS}" class="btn btn-default btn-block">Résultats</a>
    </div>
  </div>
</div>
{S_HIDDEN_FIELDS}
</form>
<hr>