<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{SITENAME} : {PAGE_TITLE}</title>
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://dl.dropboxusercontent.com/s/9q7hxkqr60jhd7m/xooitMobile.css">
    <link rel="stylesheet" href="templates/XooitMobile/{T_HEAD_STYLESHEET}">
    <script src="https://dl.dropboxusercontent.com/s/imptid1e5k9nw7w/xooitMobileCheck.js"></script>
    <!-- META XOOIT DEBUT -->
    {META}
    <!-- META XOOIT END -->
    <link rel="apple-touch-icon" sizes="57x57" href="https://dl.dropboxusercontent.com/s/hcflxtxpavce2lt/apple-touch-icon-57x57.png?dl=0">
    <link rel="apple-touch-icon" sizes="114x114" href="https://dl.dropboxusercontent.com/s/as9k8d84zelaa9i/apple-touch-icon-114x114.png?dl=0">
    <link rel="apple-touch-icon" sizes="72x72" href="https://dl.dropboxusercontent.com/s/5wnbxlx7bw3ej7w/apple-touch-icon-72x72.png?dl=0">
    <link rel="apple-touch-icon" sizes="144x144" href="https://dl.dropboxusercontent.com/s/qqgy68v5tsk0dej/apple-touch-icon-144x144.png?dl=0">
    <link rel="apple-touch-icon" sizes="60x60" href="https://dl.dropboxusercontent.com/s/zd371c25yeyo2ge/apple-touch-icon-60x60.png?dl=0">
    <link rel="apple-touch-icon" sizes="120x120" href="https://dl.dropboxusercontent.com/s/ryordxgb8eyricw/apple-touch-icon-120x120.png?dl=0">
    <link rel="apple-touch-icon" sizes="76x76" href="https://dl.dropboxusercontent.com/s/8vzxqcdqalvp0zy/apple-touch-icon-76x76.png?dl=0">
    <link rel="apple-touch-icon" sizes="152x152" href="https://dl.dropboxusercontent.com/s/1rjdh9agm6j49q6/apple-touch-icon-152x152.png?dl=0">
    <link rel="apple-touch-icon" sizes="180x180" href="https://dl.dropboxusercontent.com/s/r6fzsag3ni3pf6y/apple-touch-icon-180x180.png?dl=0">
    <link rel="icon" type="image/png" href="https://dl.dropboxusercontent.com/s/zame6jx0i5fk5zp/favicon-192x192.png?dl=0" sizes="192x192">
    <link rel="icon" type="image/png" href="https://dl.dropboxusercontent.com/s/7n4xmb9vst1ozp8/favicon-160x160.png?dl=0" sizes="160x160">
    <link rel="icon" type="image/png" href="https://dl.dropboxusercontent.com/s/9kgt5oad2u5i7e0/favicon-96x96.png?dl=0" sizes="96x96">
    <link rel="icon" type="image/png" href="https://dl.dropboxusercontent.com/s/gxcxwf0fr75hlsw/favicon-16x16.png?dl=0" sizes="16x16">
    <link rel="icon" type="image/png" href="https://dl.dropboxusercontent.com/s/of2g67b2y29yu8u/favicon-32x32.png?dl=0" sizes="32x32">
    <meta name="msapplication-TileColor" content="#2d89ef">
    <meta name="msapplication-TileImage" content="https://dl.dropboxusercontent.com/s/k5cgp2lovbvi7hw/mstile-144x144.png?dl=0">
</head>
<body class="blue">
<header id="header">
    <div class="container-fluid">
    <button id="mainMenuBtn" class="relative pull-left"><span class="fa fa-bars fa-3x"></span></button>
    <button id="browseBtn" class="pull-right"><span class="fa fa-ellipsis-h fa-3x"></span></button>
    </div>
</header>
<nav id="menu">
    <ul class="fast list-unstyled">
      <li class="search relative">
        <form method="get" action="search.php">
          <div class="container-fluid">
            <label for="search" class="normal">
              <span class="fa fa-search"></span>
            </label>
            <input type="text" id="search" class="slow" placeholder="Rechercher" name="q" autocomplete="off">
            <span class="fa fa-times-circle erase fast"></span>
            <input type="hidden" name="theme" value="test">
            <input type="hidden" name="show_results" value="topics">
          </div>
        </form>
      </li>
      <li><a href="{U_INDEX}"><span class="fa fa-home"></span><span class="txt">Accueil</span></a></li><li><a href="{U_FAQ}"><span class="fa fa-question"></span><span class="txt">FAQ</span></a></li><!-- BEGIN switch_user_logged_in --><li><a href="{U_MEMBERLIST}"><span class="fa fa-users"></span><span class="txt">Membres</span></a></li><li><a href="{U_PRIVATEMSGS}"><span class="fa fa-envelope-o"></span><span class="txt">Messagerie</span></a></li><li><a href="{U_PROFILE}"><span class="fa fa-user"></span><span class="txt">Profil</span></a></li><li><a href="{U_INDEX}&chat=1"><span class="fa fa-comments-o"></span><span class="txt">Chat</span></a></li><!-- END switch_user_logged_in --><!-- BEGIN switch_user_logged_in --><li class="full-width"><a href="{U_LOGIN_LOGOUT}"><span class="fa fa-sign-out"></span><span class="txt">Déconnexion</span></a></li><!-- END switch_user_logged_in --><!-- BEGIN switch_user_logged_out --><li><a href="{U_LOGIN_LOGOUT}"><span class="fa fa-sign-in"></span><span class="txt">Connexion</span></a></li><li><a href="{U_REGISTER}"><span class="fa fa-key"></span>Inscription</a></li><!-- END switch_user_logged_out -->
    </ul>
</nav>
<div id="app-wrapper" class="fast" role="main">
    <div id="app-illustration">&nbsp;</div>
    <div class="pageTitle">
        <h1>{PAGE_TITLE}</h1>
    </div>