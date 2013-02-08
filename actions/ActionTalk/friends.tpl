<section class="block block-type-foldable block-type-talk-friends">
	<header class="block-header">
		<a href="#" class="link-dotted" onclick="jQuery('#block_talk_friends_content').toggle(); return false;">{$aLang.block_friends}</a>
	</header>

	<div class="block-content" id="block_talk_friends_content">
		{if $aUsersFriend}
			<ul class="unstyled" id="friends">
				{foreach from=$aUsersFriend item=oFriend}
					<li>
						<label class="checkbox">
							<input id="talk_friend_{$oFriend->getId()}" type="checkbox" name="friend[{$oFriend->getId()}]" class="input-checkbox" /> 
							<label for="talk_friend_{$oFriend->getId()}" id="talk_friend_{$oFriend->getId()}_label">{$oFriend->getLogin()}</label>
						</label>
					</li>
				{/foreach}
			</ul>
			
			<footer>
				<a href="#" id="friend_check_all" class="link-dotted">{$aLang.block_friends_check}</a> | 
				<a href="#" id="friend_uncheck_all" class="link-dotted">{$aLang.block_friends_uncheck}</a>
			</footer>
		{else}
			<div class="notice-empty">{$aLang.block_friends_empty}</div>
		{/if}
	</div>
</section>
