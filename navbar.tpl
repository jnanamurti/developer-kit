<nav class="navbar navbar-fixed-top navbar-inverse">
	<div class="navbar-inner">
		<div class="container">
		
			<a class="brand" href="{cfg name='path.root.web'}">{cfg name='view.name'}</a>
		
			{hook run='userbar_nav'}
			
			{*
				<form action="{router page='search'}topics/" class="navbar-search pull-left search">
					<input type="text" placeholder="{$aLang.search}" maxlength="255" name="q" class="input-text">
					<input type="submit" value="" title="{$aLang.search_submit}" class="input-submit icon icon-search">
				</form>
			*}
			
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
					<li class="nav-userbar-username">
						<a href="{$oUserCurrent->getUserWebPath()}" class="username">
							<img src="{$oUserCurrent->getProfileAvatarPath(24)}" alt="avatar" class="avatar" />
							{$oUserCurrent->getLogin()}
						</a>
					</li>
					<li><a href="{router page='talk'}" {if $iUserCurrentCountTalkNew}class="new-messages"{/if} id="new_messages" title="{if $iUserCurrentCountTalkNew}{$aLang.user_privat_messages_new}{/if}">{$aLang.user_privat_messages}{if $iUserCurrentCountTalkNew} ({$iUserCurrentCountTalkNew}){/if}</a></li>
					<li><a href="{router page='settings'}profile/">{$aLang.user_settings}</a></li>
					{hook run='userbar_item'}
					<li><a href="{router page='login'}exit/?security_ls_key={$LIVESTREET_SECURITY_KEY}">{$aLang.exit}</a></li>
				{else}
					{hook run='userbar_item'}
					<li><a href="{router page='login'}" class="js-login-form-show">{$aLang.user_login_submit}</a></li>
					<li><a href="{router page='registration'}" class="js-registration-form-show">{$aLang.registration_submit}</a></li>
				{/if}
			</ul>
			
		</div>
	</div>
</nav>
