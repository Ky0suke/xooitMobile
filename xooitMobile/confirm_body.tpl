<div class="container-fluid">
  <h2 class="title">{MESSAGE_TITLE}</h2>
  <p class="text-center">{MESSAGE_TEXT}</p>
  <form action="{S_CONFIRM_ACTION}" method="post">
  <div class="btn-group btn-group-justified" role="group">
    <div class="btn-group" role="group">
      <input type="submit" name="confirm" class="btn btn-default btn-success btn-lg" value="{L_YES}">
    </div>
    <div class="btn-group" role="group">
      <input type="submit" name="cancel" class="btn btn-default btn-danger btn-lg" value="{L_NO}">
    </div>
  </div>
  {S_HIDDEN_FIELDS}
  </form>
</div>