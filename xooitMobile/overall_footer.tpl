      <hr>
      <div class="container-fluid text-center">
        <button class="go-to-top fast"></button>
      </div>
      <div class="container-fluid text-center copyright<!-- IF S_USER_LEVEL === 'ADMIN' --> admin<!-- ENDIF -->">
        <p>Réalisé avec <span class="fa fa-heart"></span> par Kyosuke.</p>
      <!-- IF S_USER_LEVEL === 'ADMIN' -->
        <a href="login.php?redirect=admin/index.php&admin=1&theme=test" class="btn btn-block">Panneau d'administration</a>
      <!-- ENDIF -->
      </div>
  </div>
  <div class="loading"></div>
  <!-- IF ADMIN_LINK --><!-- ELSE -->{ADMIN_LINK}<!-- ENDIF -->
  <script>
      var version = "prod_1",
      username = '{L_LOGIN_LOGOUT}',
      scriptName = '{SCRIPT_NAME}',
      privateMsgs = '{PRIVATE_MESSAGE_INFO}',
      id;
  </script>
<script src="https://dl.dropboxusercontent.com/s/8h324eimmb0bc2w/xooitMobileApp.js"></script>
</body>
</html>