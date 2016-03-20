<div class="container-fluid">
    <!-- IF PAGINATION !== "" -->
    <div class="pagination well text-center">{PAGINATION}</div>
    <!-- ENDIF -->
    <div class="row">
        <div class="col-xs-6">
            <a href="{U_POST_NEW_TOPIC}" class="btn btn-default btn-lg btn-block">Nouveau</a>
        </div>
        <div class="col-xs-6">
            <a href="{U_POST_REPLY_TOPIC}" class="btn btn-success btn-lg btn-block">Répondre</a>
        </div>
    </div>
</div>

<hr>

<section id="subject">
    <header>
        <span>Lire le sujet :</span>
    </header>
    <!-- IF POLL_DISPLAY !== "" -->
    <div class="poll">
        {POLL_DISPLAY}
    </div>
    <!-- ENDIF -->
    <!-- BEGIN postrow -->
    <!-- IF postrow.POSTER_ID !== "" &&  postrow.POSTER_NAME !== "Publicité" -->
    <ul class="actions unstyled text-center">
      <!-- IF postrow.QUOTE_IMG !== '' -->
      <li>
          {postrow.QUOTE_IMG}
      </li>
      <!-- ENDIF -->
      <!-- IF postrow.EDIT_IMG !== '' -->
      <li>
          {postrow.EDIT_IMG}
      </li>
      <!-- ENDIF -->
      <li class="like">
          {postrow.ILIKE_IMG}
      </li>
      <!-- IF postrow.DELETE_IMG !== '' -->
      <li>
          {postrow.DELETE_IMG}
      </li>
      <!-- ENDIF -->
    </ul>
    <article class="message">
        <header class="message-informations">
            <span class="user-avatar">{postrow.POSTER_AVATAR}</span>
            <span class="username">{postrow.POSTER_NAME}</span>
        </header>
        <div class="message-wrapper">
          <div class="message-content">
              {postrow.MESSAGE}
          </div>
        </div>
        <div class="clearfix"></div>
        <p class="date text-center">
            <span>
                <span class="fa fa-clock-o"></span> {postrow.POST_DATE}
            </span>
        </p>
    </article>
    <!-- ENDIF -->
    <!-- END postrow -->
    <div class="bottom_actions">
        <div class="post-display">
            <form method="post" action="{S_POST_DAYS_ACTION}">
                <span>{L_DISPLAY_POSTS}:</span>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-4">{S_SELECT_POST_DAYS}</div>
                        <div class="col-sm-4">{S_SELECT_POST_ORDER}</div>
                        <div class="col-sm-4"><button type="submit" class="btn btn-default btn-custom btn-block" name="submit" style="height: 50px;">Go <i>!</i></button></div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>

<hr>

<div class="container-fluid">
    <div class="row">
        <div class="col-xs-6">
            <a href="{U_POST_NEW_TOPIC}" class="btn btn-default btn-lg btn-block">Nouveau</a>
        </div>
        <div class="col-xs-6">
            <a href="{U_POST_REPLY_TOPIC}" class="btn btn-success btn-lg btn-block">Répondre</a>
        </div>
    </div>
    <!-- IF PAGINATION !== "" -->
    <div class="pagination well">{PAGINATION}</div>
    <!-- ENDIF -->
</div>

<hr>

<div class="container-fluid">
  <div class="topic-moderation text-center">
      {S_TOPIC_ADMIN}
  </div>
</div>