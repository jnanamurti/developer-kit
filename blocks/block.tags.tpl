<section class="block">
	<header class="block-header">
		<h3>{$aLang.block_tags}</h3>
		<a id="block-more" class="icon-search tags-search" title="{$aLang.tags_name_search}" href=""></a>
	</header>
	
	
	<div class="block-content">
		{if $oUserCurrent}
			<ul class="nav nav-pills">
				<li class="active js-block-tags-item" data-type="all"><a href="#">{$aLang.topic_favourite_tags_block_all}</a></li>
				<li class="js-block-tags-item" data-type="user"><a href="#">{$aLang.topic_favourite_tags_block_user}</a></li>

				{hook run='block_tags_nav_item'}
			</ul>
		{/if}

		<div id="block-more-content" style="display: none;">
			<form action="" method="GET" class="js-tag-search-form search-tags">
				<input type="text" name="tag" placeholder="{$aLang.block_tags_search}" value="" class="input-block-level autocomplete-tags js-tag-search" />
			</form>
		</div>

		<div class="js-block-tags-content" data-type="all">
			{if $aTags}
				<ul class="unstyled inline tag-cloud word-wrap">
					{foreach from=$aTags item=oTag}
						<li><a class="tag-size-{$oTag->getSize()}" href="{router page='tag'}{$oTag->getText()|escape:'url'}/">{$oTag->getText()|escape:'html'}</a></li>
					{/foreach}
				</ul>
			{else}
				<div class="notice-empty">{$aLang.block_tags_empty}</div>
			{/if}
		</div>

		{if $oUserCurrent}
			<div class="js-block-tags-content" data-type="user" style="display: none;">
				{if $aTagsUser}
					<ul class="unstyled inline tag-cloud word-wrap">
						{foreach from=$aTagsUser item=oTag}
							<li><a class="tag-size-{$oTag->getSize()}" href="{router page='tag'}{$oTag->getText()|escape:'url'}/">{$oTag->getText()|escape:'html'}</a></li>
						{/foreach}
					</ul>
				{else}
					<p class="muted">{$aLang.block_tags_empty}</p>
				{/if}
			</div>
		{/if}
	</div>
</section>
