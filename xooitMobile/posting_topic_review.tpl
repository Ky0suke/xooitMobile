<section id="subject">
    <header>
        <span>{L_TOPIC_REVIEW}</span>
    </header>
    <!-- BEGIN postrow -->
{postrow.QUOTE_IMG}
    <article class="message" style="padding-top: 40px; border-bottom: 0;">
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