{include file='header.tpl'}
{include file='menu.settings.tpl'}


<span class="help-block"><small>{$aLang.settings_invite_notice} "{$aLang.settings_invite_submit}"</small></span>

{hook run='settings_invite_begin'}

<form action="" method="POST" enctype="multipart/form-data" class="wrapper-content">
	{hook run='form_settings_invite_begin'}
	<input type="hidden" name="security_ls_key" value="{$LIVESTREET_SECURITY_KEY}" />

	<p>
		{$aLang.settings_invite_available}: <strong>{if $oUserCurrent->isAdministrator()}{$aLang.settings_invite_many}{else}{$iCountInviteAvailable}{/if}</strong><br />
		{$aLang.settings_invite_used}: <strong>{$iCountInviteUsed}</strong>
	</p>

	<p><label for="invite_mail">{$aLang.settings_invite_mail}:</label>
	<input type="text" name="invite_mail" id="invite_mail" class="span4" /><br />
	<span class="help-block"><small>{$aLang.settings_invite_mail_notice}</small></span></p>

	{hook run='form_settings_invite_end'}
	<br />
	
	<button type="submit" name="submit_invite" class="btn btn-primary" />{$aLang.settings_invite_submit}</button>
</form>

{hook run='settings_invite_end'}


{include file='footer.tpl'}
