<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		
			<a class="brand" href="{cfg name='path.root.web'}">{cfg name='view.name'}</a>
		
			{hook run='userbar_nav'}
			
			<div class="nav-collapse collapse">
				<ul class="nav">
					<li {if $sMenuHeadItemSelect=='blog'}class="active"{/if}><a href="{cfg name='path.root.web'}">{$aLang.topic_title}</a></li>
					<li {if $sMenuHeadItemSelect=='blogs'}class="active"{/if}><a href="{router page='blogs'}">{$aLang.blogs}</a></li>
					<li {if $sMenuHeadItemSelect=='people'}class="active"{/if}><a href="{router page='people'}">{$aLang.people}</a></li>
					<li {if $sMenuHeadItemSelect=='stream'}class="active"{/if}><a href="{router page='stream'}">{$aLang.stream_menu}</a></li>

					{hook run='main_menu_item'}
				</ul>
		
				{hook run='main_menu'}
			
			
				<ul class="nav pull-right">
					{if $oUserCurrent}
						{if $iUserCurrentCountTalkNew}
							<li>
								<a href="{router page='talk'}" class="new-messages" title="{if $iUserCurrentCountTalkNew}{$aLang.user_privat_messages_new}{/if}">
									{$iUserCurrentCountTalkNew} <i class="icon-envelope icon-white"></i>
								</a>
							</li>
						{/if}
						<li class="dropdown nav-userbar-username">
							<a data-toggle="dropdown" data-target="#" href="{$oUserCurrent->getUserWebPath()}" class="dropdown-toggle username">
								<img src="{$oUserCurrent->getProfileAvatarPath(24)}" alt="avatar" class="avatar" />
								{$oUserCurrent->getLogin()}
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li><a href="{$oUserCurrent->getUserWebPath()}">{$aLang.user_menu_profile}</a></li>
								<li><a href="{router page='talk'}" id="new_messages" title="{if $iUserCurrentCountTalkNew}{$aLang.user_privat_messages_new}{/if}">{$aLang.user_privat_messages}{if $iUserCurrentCountTalkNew} ({$iUserCurrentCountTalkNew}){/if}</a></li>
								<li><a href="{$oUserCurrent->getUserWebPath()}favourites/topics/">{$aLang.user_menu_profile_favourites}</a></li>
								<li><a href="{router page='settings'}profile/">{$aLang.user_settings}</a></li>
								{hook run='userbar_item'}
								<li class="divider"></li>
								<li><a href="{router page='login'}exit/?security_ls_key={$LIVESTREET_SECURITY_KEY}">{$aLang.exit}</a></li>
						</li>
					{else}
						{hook run='userbar_item'}
						<li><a href="{router page='login'}" class="js-login-form-show">{$aLang.user_login_submit}</a></li>
						<li><a href="{router page='registration'}" class="js-registration-form-show">{$aLang.registration_submit}</a></li>
					{/if}
				</ul>
			</div>
		</div>
	</div>
</nav>
