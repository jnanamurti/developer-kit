<section class="block block-type-foldable block-type-favourite-topic">
	<header class="block-header">
		<a href="#" class="link-dotted" onclick="jQuery('#block_favourite_topic_content').toggle(); return false;">{$aLang.topic_favourite_tags_block}</a>
	</header>
	
	
	<div class="block-content" id="block_favourite_topic_content">
		<ul class="nav nav-pills">
			<li class="active js-block-favourite-topic-tags-item" data-type="all"><a href="#">{$aLang.topic_favourite_tags_block_all}</a></li>
			<li class="js-block-favourite-topic-tags-item" data-type="user"><a href="#">{$aLang.topic_favourite_tags_block_user}</a></li>

			{hook run='block_favourite_topic_tags_nav_item'}
		</ul>
		
		
		<div class="js-block-favourite-topic-tags-content" data-type="all">
			{if $aFavouriteTopicTags}
				<ul class="unstyled inline tag-cloud word-wrap">
					{foreach from=$aFavouriteTopicTags item=oTag}
						<li><a class="tag-size-{$oTag->getSize()} {if $sFavouriteTag==$oTag->getText()}tag-current{/if}" title="{$oTag->getCount()}" href="{$oFavouriteUser->getUserWebPath()}favourites/topics/tag/{$oTag->getText()|escape:'url'}/">{$oTag->getText()}</a></li>
					{/foreach}
				</ul>
			{else}
				<p class="muted">{$aLang.block_tags_empty}</p>
			{/if}
		</div>
		
		<div class="js-block-favourite-topic-tags-content" data-type="user" style="display: none;">
			{if $aFavouriteTopicUserTags}
				<ul class="unstyled inline tag-cloud word-wrap">
					{foreach from=$aFavouriteTopicUserTags item=oTag}
						<li><a class="tag-size-{$oTag->getSize()}" title="{$oTag->getCount()}" href="{$oFavouriteUser->getUserWebPath()}favourites/topics/tag/{$oTag->getText()|escape:'url'}/">{$oTag->getText()}</a></li>
					{/foreach}
				</ul>
			{else}
				<p class="muted">{$aLang.block_tags_empty}</p>
			{/if}
		</div>
	</div>
</section>
