<!-- IF PAGINATION !== "&nbsp;" -->
<div class="container-fluid">
    <div class="pagination well">{PAGINATION}</div>
</div>
<hr>
<!-- ENDIF -->
<section id="memberslist">
  <header>
    <div class="container-fluid">
      <div class="row">
        <div class="col-xs-2 col-sm-1"><span>#</span></div>
        <div class="col-xs-10 col-sm-3"><span>{L_USERNAME}</span></div>
        <div class="hidden-xs col-sm-3"><span>{L_JOINED}</span></div>
        <div class="hidden-xs col-sm-3"><span>{L_POSTS}</span></div>
        <div class="hidden-xs col-sm-2"><span>Contacter</span></div>
      </div>
    </div>
  </header>
  <!-- BEGIN memberrow -->
  <div class="container-fluid">
    <div class="row member">
      <div class="col-xs-2 col-sm-1 text-center"><span class="badge alert-info">{memberrow.ROW_NUMBER}</span></div>
      <div class="col-xs-10 col-sm-3 text-center"><a href="{memberrow.U_VIEWPROFILE}">{memberrow.USERNAME}</a></div>
      <div class="hidden-xs col-sm-3 text-center">{memberrow.JOINED}</div>
      <div class="hidden-xs col-sm-3 text-center">
        <!-- IF memberrow.POSTS !== '<span class="gensmall"></span>' -->
        {memberrow.POSTS}
        <!-- ELSE -->
        Non connue
        <!-- ENDIF -->
      </div>
      <div class="hidden-xs col-sm-2 text-center">{memberrow.PM_IMG}</div>
    </div>
  </div>
  <!-- END memberrow -->
  <div class="bottom_actions">
    <div class="member-display">
        <form method="post" action="{S_MODE_ACTION}">
            <span>{L_SELECT_SORT_METHOD}:</span><br>
            <div class="container-fluid">
              <div class="row">
                  <div class="col-sm-4">{S_MODE_SELECT}</div>
                  <div class="col-sm-4">{S_ORDER_SELECT}</div>
                  <div class="col-sm-4"><button type="submit" class="btn btn-default btn-custom btn-block" name="submit" style="height: 50px;">Go <i>!</i></button></div>
              </div>
            </div>
        </form>
    </div>
  </div>
</section>
<!-- IF PAGINATION !== "&nbsp;" -->
<hr>
<div class="container-fluid">
    <div class="pagination well">{PAGINATION}</div>
</div>
<!-- ENDIF -->