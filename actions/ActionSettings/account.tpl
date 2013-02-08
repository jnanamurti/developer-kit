{include file='header.tpl'}
{include file='menu.settings.tpl'}


{hook run='settings_account_begin'}

<form method="post" enctype="multipart/form-data" class="wrapper-content">
	{hook run='form_settings_account_begin'}

	<input type="hidden" name="security_ls_key" value="{$LIVESTREET_SECURITY_KEY}">
	
	<fieldset>
		<legend>{$aLang.settings_account}</legend>
		
		<dl class="dl-horizontal">
			<dt><label for="mail">{$aLang.settings_profile_mail}:</label></dt>
			<dd>	
				<input type="email" name="mail" id="mail" value="{$oUserCurrent->getMail()|escape:'html'}" class="span4" required />
				<span class="help-block"><small>{$aLang.settings_profile_mail_notice}</small></span></p>
			</dd>
		</dl>

	</fieldset>
	
	<br />
		
	<fieldset>
		<legend>{$aLang.settings_account_password}</legend>
		
		<span class="help-block"><small>{$aLang.settings_account_password_notice}</small></span>
			
		<dl class="dl-horizontal">
			<dt><label for="password_now">{$aLang.settings_profile_password_current}:</label></dt>
			<dd><input type="password" name="password_now" id="password_now" value="" class="span4" /></dd>
		</dl>
		
		<dl class="dl-horizontal">
			<dt><label for="password">{$aLang.settings_profile_password_new}:</label></dt>
			<dd><input type="password" id="password" name="password" value="" class="span4" /></dd>
		</dl>
		
		<dl class="dl-horizontal">
			<dt><label for="password_confirm">{$aLang.settings_profile_password_confirm}:</label></dt>
			<dd><input type="password" id="password_confirm" name="password_confirm" value="" class="span4" /></dd>
		</dl>
	</fieldset>
	
	{hook run='form_settings_account_end'}
	<br />
	
	<button type="submit" name="submit_account_edit" class="btn btn-primary" />{$aLang.settings_profile_submit}</button>
</form>

{hook run='settings_account_end'}


{include file='footer.tpl'}
