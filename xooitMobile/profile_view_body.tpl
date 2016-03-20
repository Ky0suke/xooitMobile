<section id="profile">
	<header>
		<div class="user-informations">
			<h2 class="title">
				<p>{USERNAME}</p>
				<p>
					<!-- IF AVATAR_IMG !== '' -->
					{AVATAR_IMG}
					<!-- ELSE -->
					<img src="http://img.xooimage.com/files56/2/9/c/no_avatar-395a455.gif" alt="{USERNAME}">
					<!-- ENDIF -->
				</p>
			</h2>
		</div>
		<div class="user-actions container-fluid">
			<div class="row">
				<div class="<!-- IF S_USER_LEVEL === 'ADMIN' -->col-xs-4<!-- ELSE -->col-xs-12<!-- ENDIF -->">
					<button class="btn btn-custom btn-block btn-lg" onClick="window.location = 'privmsg.php?mode=post&u=' + window.id + '&theme=test'; return false;"><span class="fa fa-envelope-o"></span></button>
				</div>
				<!-- IF S_USER_LEVEL === 'ADMIN' -->
				<div class="col-xs-4">
					<button class="btn btn-custom btn-block btn-lg" onClick="window.location = 'profile.php?mode=email&u=' + window.id + '&theme=test'; return false;"><span class="fa fa-at"></span></button>
				</div>
				<div class="col-xs-4">
					<button class="btn btn-custom btn-block btn-lg" onClick="window.location = 'login.php?redirect=admin/admin_users.php&admin=1&mode=edit&u=' + window.id + '&rci=&theme=test'; return false;"><span class="fa fa-cog"></span></button>
				</div>
				<!-- ENDIF -->
			</div>
		</div>
	</header>
	<div class="container-fluid">
		<!-- IF POSTER_RANK !== '' -->
		<div class="panel panel-default text-center">
			<div class="panel-heading"><b>Rang du membre :</b></div>
			<div class="panel-body">
				{POSTER_RANK}
			</div>
		</div>
		<!-- ENDIF -->
		<div class="panel panel-default text-center">
			<div class="panel-heading"><b>{L_JOINED}</b></div>
			<div class="panel-body">
				{JOINED}
			</div>
		</div>
		<div class="panel panel-default text-center">
			<div class="panel-heading"><b>{L_TOTAL_POSTS}</b></div>
			<div class="panel-body">
				<!-- IF POSTS === '0' -->
				Cet utilisateur n'a posté aucun message.
				<!-- ELSE -->
				{POSTS} <small>({POST_DAY_STATS})</small>
				<!-- ENDIF -->
			</div>
		</div>
	</div>
</section>

<div class="container-fluid">
	<a href="{U_SEARCH_USER}" class="btn btn-default btn-block btn-lg">Rechercher tous ses messages</a>
</div>

<!-- NE RETIREZ PAS CETTE LIGNE ! -->
<table class="hidden"><tr><td>{L_EMAIL_ADDRESS}:</td></tr></table>