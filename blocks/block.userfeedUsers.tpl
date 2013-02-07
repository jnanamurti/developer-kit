{if $oUserCurrent}
	{literal}
	<script language="JavaScript" type="text/javascript">
		jQuery(document).ready( function() {
			jQuery('#userfeed_users_complete').keydown(function (event) {
				if (event.which == 13) {
					ls.userfeed.appendUser()
				}
			});
		 });
	</script>
	{/literal}


	<section class="block block-type-activity">
		<header class="block-header">
			<h3>{$aLang.userfeed_block_users_title}</h3>
		</header>
		
		<div class="block-content">
			<p class="muted"><small>{$aLang.userfeed_settings_note_follow_user}</small></p>
			
			<div class="stream-settings-userlist">
				<div class="input-append">
					<input type="text" id="userfeed_users_complete" autocomplete="off" class="span2 autocomplete-users input-text input-width-150" />
					<a href="javascript:ls.userfeed.appendUser()" class="btn">{$aLang.userfeed_block_users_append}</a>
				</div>
				
				{if count($aUserfeedSubscribedUsers)}
					<ul id="userfeed_block_users_list" class="unstyled max-height-200">
						{foreach from=$aUserfeedSubscribedUsers item=oUser}
							{assign var=iUserId value=$oUser->getId()}
							
							{if !isset($aUserfeedFriends.$iUserId)}
								<li>
									<label class="checkbox">
										<input class="userfeedUserCheckbox input-checkbox"
												type="checkbox"
												id="usf_u_{$iUserId}"
												checked="checked"
												onClick="if (jQuery(this).prop('checked')) { ls.userfeed.subscribe('users',{$iUserId}) } else { ls.userfeed.unsubscribe('users',{$iUserId}) } " />
										<a href="{$oUser->getUserWebPath()}">{$oUser->getLogin()}</a>
									</label>
								</li>
							{/if}
						{/foreach}
					 </ul>
				{else}
					<ul id="userfeed_block_users_list" class="unstyled max-height-200"></ul>
				{/if}
			</div>
		</div>
	</section>
	
	
	{if count($aUserfeedFriends)}
		<section class="block block-type-activity">
			<header class="block-header">
				<h3>{$aLang.userfeed_block_users_friends}</h3>
			</header>
			
			<div class="block-content">
				<p class="muted"><small>{$aLang.userfeed_settings_note_follow_friend}</small></p>
				
				<ul class="unstyled stream-settings-friends max-height-200">
					{foreach from=$aUserfeedFriends item=oUser}
						{assign var=iUserId value=$oUser->getId()}
						
						<li>
							<label class="checkbox">
								<input class="userfeedUserCheckbox input-checkbox"
										type="checkbox"
										id="usf_u_{$iUserId}"
										{if isset($aUserfeedSubscribedUsers.$iUserId)} checked="checked"{/if}
										onClick="if (jQuery(this).prop('checked')) { ls.userfeed.subscribe('users',{$iUserId}) } else { ls.userfeed.unsubscribe('users',{$iUserId}) } " />
								<a href="{$oUser->getUserWebPath()}">{$oUser->getLogin()}</a>
							</label>
						</li>
					{/foreach}
				</ul>
			</div>
		</section>
	{/if}
{/if}
