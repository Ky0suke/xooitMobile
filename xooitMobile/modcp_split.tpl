<div class="container-fluid">
  <div class="alert alert-info text-center" role="alert">
    {L_SPLIT_TOPIC_EXPLAIN}
  </div>
  <hr style="margin-top: 0;">
</div>

<form method="post" action="{S_SPLIT_ACTION}" role="form">
  <table class="table" id="write-message">
    <tr>
      <td colspan="2" class="primary">
        <input type="text" name="subject" maxlength="60" placeholder="{L_SPLIT_SUBJECT}" autocomplete="off">
      </td>
    </tr>
    <tr>
      <td colspan="2" class="primary">
        {S_FORUM_SELECT}
      </td>
    </tr>
  </table>

  <hr>

  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-6">
        <input class="btn btn-default btn-block btn-lg" type="submit" name="split_type_all" value="{L_SPLIT_POSTS}">
      </div>
      <div class="col-sm-6">
        <input class="btn btn-default btn-block btn-lg" type="submit" name="split_type_beyond" value="{L_SPLIT_AFTER}">
      </div>
    </div>
  </div>

  <section id="subject" style="margin-top: 25px; margin-bottom: 25px; border-top: 1px solid #E2E2E2;">
      <!-- BEGIN postrow -->
      <ul class="actions unstyled text-center">
        <li style="padding: 10px;">
          <label class="ios-checkbox ios-label" style="line-height: 30px;">
              Sélectionner
              <input type="checkbox" name="post_id_list[]" value="{postrow.POST_ID}">
              <span></span>
          </label>
        </li>
      </ul>
      <article class="message">
          <header class="message-informations">
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
      <!-- END postrow -->
  </section>

  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-6">
        <input class="btn btn-default btn-block btn-lg" type="submit" name="split_type_all" value="{L_SPLIT_POSTS}">
      </div>
      <div class="col-sm-6">
        <input class="btn btn-default btn-block btn-lg" type="submit" name="split_type_beyond" value="{L_SPLIT_AFTER}">
      </div>
    </div>
  </div>

  {S_HIDDEN_FIELDS}
</form>