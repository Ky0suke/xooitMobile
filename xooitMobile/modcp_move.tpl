<form action="{S_MODCP_ACTION}" method="post" role="form" class="form-horizontal">
  <div class="container-fluid">
    <div class="form-group form-group-lg">
      <label class="col-sm-2 control-label">Déplacer vers</label>
      <div class="col-sm-10 modcp-select">
        {S_FORUM_SELECT}
      </div>
    </div>
    <hr>
    <div class="col-sm-12">
      <label class="ios-checkbox ios-label" style="line-height: 30px;">
        Sujet traceur
        <input type="checkbox" name="move_leave_shadow">
        <span></span>
      </label>
    </div>
    <hr>
    <p class="text-center">{MESSAGE_TEXT}</p>
    <div class="btn-group btn-group-justified" role="group">
      <div class="btn-group" role="group">
        <input type="submit" name="confirm" class="btn btn-default btn-success btn-lg" value="{L_YES}">
      </div>
      <div class="btn-group" role="group">
        <input type="submit" name="cancel" class="btn btn-default btn-danger btn-lg" value="{L_NO}">
      </div>
    </div>
    {S_HIDDEN_FIELDS}
  </div>
</form>