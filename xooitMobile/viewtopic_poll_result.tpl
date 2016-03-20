<span class="poll-title text-center">{POLL_QUESTION}</span>
<div class="container-fluid">
  <!-- BEGIN poll_option -->
  <div class="row poll-option">
    <div class="poll-option-text">
      <b>{poll_option.POLL_OPTION_CAPTION}</b>
    </div>
    <div class="poll-option-percent">
      <div class="progress">
        <div class="progress-bar progress-{poll_option.POLL_OPTION_PCT}" role="progressbar" aria-valuenow="{poll_option.POLL_OPTION_PCT}" aria-valuemin="0" aria-valuemax="100" style="width: {poll_option.POLL_OPTION_PERCENT};">
          {poll_option.POLL_OPTION_PERCENT} ({poll_option.POLL_OPTION_RESULT})
        </div>
      </div>
    </div>
  </div>
  <!-- END poll_option -->
  <p class="poll-result text-center">{L_TOTAL_VOTES} : {TOTAL_VOTES}</p>
</div>