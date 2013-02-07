{assign var="noSidebar" value=true}
{include file='header.tpl'}

<script type="text/javascript">
	jQuery(document).ready(function($){
		$('#login-form').bind('submit',function(){
			ls.user.login('login-form');
			return false;
		});
		$('#login-form-submit').attr('disabled',false);
	});
</script>

<h2 class="page-header">{$aLang.user_authorization}</h2>

{hook run='login_begin'}

<form action="{router page='login'}" method="POST" id="login-form">
	{hook run='form_login_begin'}

	<p><label for="login">{$aLang.user_login}</label>
	<input type="text" id="login" name="login" class="span3" /></p>
	
	<p><label for="password">{$aLang.user_password}</label>
	<input type="password" id="password" name="password" class="span3" />
	<small class="validate-error-hide validate-error-login"></small></p>
	
	<p><label class="checkbox"><input type="checkbox" name="remember" checked class="input-checkbox" />{$aLang.user_login_remember}</label></p>
	
	{hook run='form_login_end'}

	<button type="submit" name="submit_login" class="btn btn-primary" id="login-form-submit" disabled="disabled">{$aLang.user_login_submit}</button>

	<br />
	<br />
	<a href="{router page='registration'}">{$aLang.user_registration}</a><br />
	<a href="{router page='login'}reminder/">{$aLang.user_password_reminder}</a>
</form>


{if $oConfig->GetValue('general.reg.invite')}
	<br /><br />
	<form action="{router page='registration'}invite/" method="POST">
		<h3>{$aLang.registration_invite}</h3>

		<p><label>{$aLang.registration_invite_code}<br />
		<input type="text" name="invite_code" class="span3" /></label></p>
		<input type="submit" name="submit_invite" value="{$aLang.registration_invite_check}" class="btn" />
	</form>
{/if}

{hook run='login_end'}

{include file='footer.tpl'}
