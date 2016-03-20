<section id="viewonline">
  <header>
    <div class="container-fluid">
      <div class="row">
        <div class="col-xs-6 col-sm-4"><span>{L_USERNAME}</span></div>
        <div class="hidden-xs col-sm-4"><span>{L_LAST_UPDATE}</span></div>
        <div class="col-xs-6 col-sm-4"><span>{L_FORUM_LOCATION}</span></div>
      </div>
    </div>
  </header>
  <div class="container-fluid">
    <!-- BEGIN reg_user_row -->
      <div class="row user">
        <div class="col-xs-6 col-sm-4 text-center"><a href="{reg_user_row.U_USER_PROFILE}">{reg_user_row.USERNAME}</a></div>
        <div class="hidden-xs col-sm-4 text-center">{reg_user_row.LASTUPDATE}</div>
        <div class="col-xs-6 col-sm-4 text-center"><a href="{reg_user_row.U_FORUM_LOCATION}">{reg_user_row.FORUM_LOCATION}</a></div>
      </div>
    <!-- END reg_user_row -->
    <!-- BEGIN guest_user_row -->
      <div class="row user">
        <div class="col-xs-6 col-sm-4 text-center">{guest_user_row.USERNAME}</div>
        <div class="hidden-xs col-sm-4 text-center">{guest_user_row.LASTUPDATE}</div>
        <div class="col-xs-6 col-sm-4 text-center"><a href="{guest_user_row.U_FORUM_LOCATION}">{guest_user_row.FORUM_LOCATION}</a></div>
      </div>
    <!-- END guest_user_row -->
  </div>
</section>

<div class="container-fluid">
  <div class="panel panel-default stats no-margin">
    <div class="panel-heading text-center">A savoir :</div>
    <div class="panel-body text-center">{L_ONLINE_EXPLAIN}</div>
  </div>
</div>