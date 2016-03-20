<script>
  function select_switch (status) {
    for (i = 0; i < document.privmsg_list.length; i++) {
      document.privmsg_list.elements[i].checked = status;
    }
  }
</script>

<div class="container-fluid">
  <div class="row privmsgs-menu">
    <div class="col-xs-3">{INBOX_IMG}</div>
    <div class="col-xs-3">{SENTBOX_IMG}</div>
    <div class="col-xs-3">{OUTBOX_IMG}</div>
    <div class="col-xs-3">{SAVEBOX_IMG}</div>
  </div>
  <hr>
  <!-- BEGIN switch_box_size_notice -->
  <p><b>{BOX_SIZE_STATUS}</b></p>
  <div class="progress">
    <div class="progress-bar" role="progressbar" aria-valuenow="{INBOX_LIMIT_PERCENT}" aria-valuemin="0" aria-valuemax="100" style="width: {INBOX_LIMIT_PERCENT}%;">
      {INBOX_LIMIT_PERCENT}%
    </div>
  </div>
  <hr>
  <!-- END switch_box_size_notice -->
</div>

<form method="post" name="privmsg_list" action="{S_PRIVMSGS_ACTION}">

<div class="container-fluid">
  <div class="row">
    <div class="col-xs-6">
      <a href="javascript:select_switch(true);" class="btn btn-default btn-block">Tout cocher</a>
    </div>
    <div class="col-xs-6">
      <a href="javascript:select_switch(false);" class="btn btn-default btn-block">Tout décocher</a>
    </div>
  </div>
</div>

<hr>

<div class="container-fluid">
  <a href="privmsg.php?mode=post&theme=test" class="btn btn-success btn-block btn-lg">Nouveau message</a>
</div>

<hr>

<section id="privmsgs">
  <header>
    <div class="container-fluid">
      <div class="row">
        <div class="hidden-xs col-sm-1"><span>#</span></div>
        <div class="col-xs-8 col-sm-6"><span>{L_SUBJECT}</span></div>
        <div class="col-xs-4 col-sm-5"><span>{L_MARK}</span></div>
      </div>
    </div>
  </header>
  <div class="container-fluid">
    <!-- BEGIN listrow -->
    <div class="row message<!-- IF listrow.L_PRIVMSG_FOLDER_ALT === 'Message Non-lu' --> new<!-- ENDIF -->">
      <div class="hidden-xs col-sm-1 text-center" style="padding: 12px 0;">
        <img src="{listrow.PRIVMSG_FOLDER_IMG}" alt="{listrow.L_PRIVMSG_FOLDER_ALT}" height="26" width="26">
      </div>
      <div class="col-xs-8 col-sm-6 text-left">
        <p class="message-subject">
            <a href="{listrow.U_READ}">{listrow.SUBJECT}</a>
        </p>
        <span class="sender"><span class="fa fa-user"></span> <a href="{listrow.U_FROM_USER_PROFILE}">{listrow.FROM}</a></span>
        <span class="date"><span class="fa fa-clock-o"></span> {listrow.DATE}</span>
      </div>
      <div class="col-xs-4 col-sm-5 text-right" style="padding: 12px 0;">
        <label class="ios-checkbox normal">
            <input type="checkbox" name="mark[]2" value="{listrow.S_MARK_ID}">
            <span></span>
        </label>
    </div>
    </div>
    <!-- END listrow -->
    <!-- BEGIN switch_no_messages -->
    <div class="container-fluid">
      <div class="alert alert-warning text-center" role="alert" style="margin-top:20px;"><b>{L_NO_MESSAGES}</b></div>
    </div>
    <!-- END switch_no_messages -->
  </div>
  <div class="bottom_actions">
    <div class="message-display">
        {S_HIDDEN_FIELDS}
        <form method="post" action="{S_MODE_ACTION}">
            <div class="container-fluid">
              <div class="row">
                  <div class="col-sm-4">
                    <input type="submit" name="save" value="{L_SAVE_MARKED}" class="btn btn-default btn-custom btn-block" />
                  </div>
                  <div class="col-sm-4">
                    <input type="submit" name="delete" value="{L_DELETE_MARKED}" class="btn btn-default btn-custom btn-block" />
                  </div>
                  <div class="col-sm-4">
                    <input type="submit" name="deleteall" value="{L_DELETE_ALL}" class="btn btn-default btn-custom btn-block" />
                  </div>
              </div>
            </div>
        </form>
    </div>
  </div>
</section>

<hr>

<div class="container-fluid">
  <a href="privmsg.php?mode=post&theme=test" class="btn btn-success btn-block btn-lg">Nouveau message</a>
</div>

<hr>
<!-- IF PAGE_NUMBER !== 'Page <b>1</b> sur <b>0</b>' && PAGINATION !== '' -->
<div class="container-fluid">
  <div class="pagination well">{PAGINATION}</div>
</div>
<hr>
<!-- ENDIF -->

<div class="container-fluid">
  <div class="form-group">
    <label class="text-center">{L_DISPLAY_MESSAGES}:</label>
    <select name="msgdays" class="form-control" style="width: 100%;">{S_SELECT_MSG_DAYS}</select><br>
    <input type="submit" value="{L_GO}" name="submit_msgdays" class="btn btn-default btn-block" />
  </div>
</div>

</form>