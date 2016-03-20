<div class="container-fluid">
    <!-- IF PAGINATION !== '' && PAGE_NUMBER !== 'Page <b>1</b> sur <b>0</b>' -->
    <div class="pagination well">{PAGINATION}</div>
    <!-- ENDIF -->
    <a href="{U_POST_NEW_TOPIC}" class="btn btn-success btn-lg btn-block">Nouveau sujet</a>
</div>

<hr>

<form method="post" action="{S_POST_DAYS_ACTION}">
<section id="subjects">
    <header>
        <a href="{U_VIEW_FORUM}">{FORUM_NAME}</a>
    </header>
    <!-- BEGIN topicrow -->
    <!-- IF topicrow.TOPIC_TITLE !== "" -->
    <a href="<!-- IF topicrow.VIEWS === "" -->{topicrow.U_VIEW_TOPIC}<!-- ELSE -->{topicrow.U_LAST_POST}<!-- ENDIF -->">
        <article class="subject<!-- IF topicrow.VIEWS === "" --> subforum<!-- ENDIF --><!-- IF topicrow.TOPIC_TYPE === "<b>Annonce Globale :</b> " || topicrow.TOPIC_TYPE === "<b>Annonce Globale :</b> <b>[ Sondage ]</b> " --> annonce-globale<!-- ELSEIF topicrow.TOPIC_TYPE === "<b>Annonce :</b> " || topicrow.TOPIC_TYPE === "<b>Annonce :</b> <b>[ Sondage ]</b> " --> annonce<!-- ELSEIF topicrow.TOPIC_TYPE === "<b>Post-it :</b> " || topicrow.TOPIC_TYPE === "<b>Post-it :</b> <b>[ Sondage ]</b> " --> post-it<!-- ENDIF -->">
            <div class="forum-img">
                <img src="{topicrow.TOPIC_FOLDER_IMG}" width="32" height="32" alt="{topicrow.L_TOPIC_FOLDER_ALT}">
            </div>
            <div class="forum-informations">
                <p class="forum-name">{topicrow.TOPIC_TITLE}</p>
                <!-- IF topicrow.VIEWS !== "" -->
                <p>
                    <small class="posts">{topicrow.REPLIES} réponses</small>
                    <small class="views">{topicrow.VIEWS} vues</small>
                </p>
                <p>
                    <!-- IF topicrow.REPLIES  !== "0" -->
                    <small class="last-post">Dernier message le {topicrow.LAST_POST_TIME}</small>
                    <!-- ELSE -->
                    <small class="last-post">Ce sujet ne comporte aucun message.</small>
                    <!-- ENDIF -->
                </p>
                <!-- ENDIF -->
            </div>
            <div class="clearfix"></div>
        </article>
    </a>
    <!-- ENDIF -->
    <!-- END topicrow -->
    <!-- BEGIN switch_no_topics -->
    <div class="container-fluid">
      <div class="alert alert-warning text-center" role="alert" style="margin-top:20px;"><b>Ce forum ne comporte aucun sujets.</b></div>
    </div>
    <!-- END switch_no_topics -->
    <div class="bottom_actions">
        <div class="topic-display">
            <span>{L_DISPLAY_TOPICS}:</span><br>
            {S_SELECT_TOPIC_DAYS}&nbsp;
            <button type="submit" class="btn btn-default btn-custom" name="submit">Go <i>!</i></button>
        </div>
    </div>
</section>
</form>