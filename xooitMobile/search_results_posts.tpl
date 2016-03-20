<div class="container-fluid">
  <div class="alert alert-info" role="alert">{L_SEARCH_MATCHES}</div>
</div>

<hr>

<!-- IF PAGE_NUMBER !== 'Page <b>1</b> sur <b>0</b>' && PAGINATION !== '' -->
<div class="container-fluid">
  <div class="pagination well text-center">{PAGINATION}</div>
</div>
<hr>
<!-- ENDIF -->

<section id="read-message">
  <!-- BEGIN searchresults -->
  <article class="message">
      <div class="message-info search-result primary">
        <ul class="list-unstyled search-result-information">
          <li>
            <span class="fa fa-user"></span>
            <!-- IF searchresults.POSTER_NAME === '<a href="profile.php?mode=viewprofile&amp;u=&amp;theme=test"></a>' -->
            <a href="https://google.fr">Google</a>
            <!-- ELSEIF searchresults.POSTER_NAME === 'Invité'  -->
            <a href="#" onClick="alert('Les invités n\'ont pas de profil. :)'); return false;">Invité</a>
            <!-- ELSE -->
            {searchresults.POSTER_NAME}
            <!-- ENDIF -->
          </li>
          <li><span class="fa fa-clock-o"></span> <span class="date">{searchresults.POST_DATE}</span></li>
          <li><span class="fa fa-tag"></span> <a href="{searchresults.U_POST}">{searchresults.POST_SUBJECT}</a></li>
        </ul>
      </div>
      <div class="message-content seach-result-message postbody">
          {searchresults.MESSAGE}
      </div>
  </article>
  <!-- END searchresults -->
</section>

<!-- IF PAGE_NUMBER !== 'Page <b>1</b> sur <b>0</b>' && PAGINATION !== '' -->
<hr>
<div class="container-fluid">
  <div class="pagination well text-center">{PAGINATION}</div>
</div>
<!-- ENDIF -->