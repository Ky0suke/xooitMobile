<div class="container-fluid">
  <div class="alert alert-info" role="alert">{L_SEARCH_MATCHES}</div>
</div>

<hr>

<!-- IF PAGE_NUMBER !== 'Page <b>1</b> sur <b>0</b>' && PAGINATION !== '' -->
<div class="container-fluid">
  <div class="pagination well">{PAGINATION}</div>
</div>
<hr>
<!-- ENDIF -->

<section id="search-results">
    <!-- BEGIN searchresults -->
    <article class="topic<!-- IF topicrow.TOPIC_TYPE === "<b>Annonce Globale :</b> " || topicrow.TOPIC_TYPE === "<b>Annonce Globale :</b> <b>[ Sondage ]</b> " --> annonce-globale<!-- ELSEIF topicrow.TOPIC_TYPE === "<b>Annonce :</b> " || topicrow.TOPIC_TYPE === "<b>Annonce :</b> <b>[ Sondage ]</b> " --> annonce<!-- ELSEIF topicrow.TOPIC_TYPE === "<b>Post-it :</b> " || topicrow.TOPIC_TYPE === "<b>Post-it :</b> <b>[ Sondage ]</b> " --> post-it<!-- ENDIF -->">
        <a href="{searchresults.U_LAST_POST}">
            <div class="forum">
                <div class="forum-img">
                    <img src="{searchresults.TOPIC_FOLDER_IMG}" width="32" height="32" alt="{searchresults.L_TOPIC_FOLDER_ALT}">
                </div>
                <div class="forum-informations">
                    <p class="forum-name">{searchresults.TOPIC_TITLE}</p>
                    <p>
                        <small class="subjects"><!-- IF searchresults.REPLIES !== '0' -->{searchresults.REPLIES} réponses<!-- ELSE -->Aucune réponse<!-- ENDIF --></small>
                        <!-- IF searchresults.VIEWS !== '-' --><small class="posts">{searchresults.VIEWS} vues</small><!-- ENDIF -->
                    </p>
                    <p>
                        <small class="last-post">Dernier message le {searchresults.LAST_POST_TIME}</small>
                    </p>
                </div>
                <div class="clearfix"></div>
            </div>
        </a>
    </article>
    <!-- END searchresults -->
</section>

<!-- IF PAGE_NUMBER !== 'Page <b>1</b> sur <b>0</b>' && PAGINATION !== '' -->
<hr>
<div class="container-fluid">
  <div class="pagination well">{PAGINATION}</div>
</div>
<!-- ENDIF -->