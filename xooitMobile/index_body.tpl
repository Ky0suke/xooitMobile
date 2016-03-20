<!-- BEGIN switch_user_logged_in -->
<div class="container-fluid">
    <div class="btn-group btn-group-justified">
      <a href="{U_SEARCH_NEW}" class="btn btn-default">Nouveaux messages</a>
      <a href="{U_SEARCH_SELF}" class="btn btn-default">Mes messages</a>
      <a href="{U_SEARCH_UNANSWERED}" class="btn btn-default hidden-xs">Message sans réponses</a>
    </div>
</div>
<hr>
<!-- END switch_user_logged_in -->

<!-- BEGIN switch_user_logged_out -->
<div class="container-fluid">
  <div class="alert alert-info text-center" role="alert">
    <b>Bienvenue !</b> <a href="{U_REGISTER}">Inscrivez-vous</a> ou <a href="{U_LOGIN_LOGOUT}">connectez-vous</a> pour pouvoir profiter de toutes les fonctionnalités du forum.
  </div>
</div>
<!-- END switch_user_logged_out -->


<section id="categories">
    <!-- BEGIN catrow -->
    <article class="categorie" id="cat-{catrow.FORUM_ID}">
        <header class="relative">
            <label class="ios-checkbox normal" data-categorie="{catrow.FORUM_ID}">
                <input type="checkbox" checked>
                <span></span>
            </label>
            <a href="{catrow.U_VIEWCAT}">{catrow.CAT_DESC}</a>
        </header>
        <div class="subforums-wrapper">
            <!-- BEGIN forumrow -->
            <a href="{catrow.forumrow.U_VIEWFORUM}">
                <div class="forum">
                    <div class="forum-img">
                        <img src="{catrow.forumrow.FORUM_FOLDER_IMG}" width="32" height="32" alt="{catrow.forumrow.L_FORUM_FOLDER_ALT}">
                    </div>
                    <div class="forum-informations">
                        <p class="forum-name">{catrow.forumrow.FORUM_NAME}</p>
                        <p>
                            <small class="subjects">{catrow.forumrow.TOPICS} sujets</small>
                            <small class="posts">{catrow.forumrow.POSTS} réponses</small>
                        </p>
                        <p>
                            <!-- IF catrow.forumrow.TOPICS  !== "0" -->
                            <small class="last-post">Dernier message le {catrow.forumrow.LAST_POST_TIME}</small>
                            <!-- ELSE -->
                            <small class="last-post">Ce forum ne comporte aucun sujets.</small>
                            <!-- ENDIF -->
                        </p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </a>
            <!-- END forumrow -->
        </div>
    </article>
    <!-- END catrow -->
</section>

<hr>

<div class="container-fluid">
    <a href="{U_MARK_READ}" class="btn btn-default btn-block btn-lg">Marquer les forums comme lus</a>
</div>

<hr>

<div class="container-fluid">
    <div class="panel panel-default stats">
        <div class="panel-heading text-center">Statistiques du forum :</div>
        <div class="panel-body text-center">{TOTAL_POSTS} - {TOTAL_USERS} - {NEWEST_USER}</div>
    </div>
</div>

<div class="container-fluid">
    <div class="panel panel-default whosonline no-margin">
        <div class="panel-heading text-center">Qui est en ligne ?</div>
        <div class="panel-body text-center">
            <p>{TOTAL_USERS_ONLINE}</p>
            <a href="{U_VIEWONLINE}" class="btn btn-default btn-block">Plus d'informations</a>
        </div>
    </div>
</div>