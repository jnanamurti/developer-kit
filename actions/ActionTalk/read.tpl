{include file='header.tpl'}
{include file='menu.talk.tpl'}


{assign var="oUser" value=$oTalk->getUser()}

<article class="topic topic-type-talk">
	<header class="topic-header">
		<h1 class="topic-title">{$oTalk->getTitle()|escape:'html'}</h1>
		
		<div class="topic-info">

			<time datetime="{date_format date=$oTalk->getDate() format='c'}" pubdate>
				{date_format date=$oTalk->getDate() format="j F Y, H:i"}
			</time>
			
			<ul class="unstyled inline actions">								   
				<li class="delete"><a href="{router page='talk'}delete/{$oTalk->getId()}/?security_ls_key={$LIVESTREET_SECURITY_KEY}" onclick="return confirm('{$aLang.talk_inbox_delete_confirm}');" class="text-error">{$aLang.delete}</a></li>
			</ul>
		</div>
	</header>

	<div class="topic-content text">
		{$oTalk->getText()}
	</div>
	
	{include file='actions/ActionTalk/speakers.tpl'}

	<footer class="topic-footer">
		<ul class="unstyled inline topic-info">
			<li class="topic-info-author"><a href="{$oUser->getUserWebPath()}" class="author">{$oUser->getLogin()}</a></li>
			<li class="topic-info-favourite"><a href="#" onclick="return ls.favourite.toggle({$oTalk->getId()},this,'talk');" class="favourite {if $oTalk->getIsFavourite()}active{/if}"></a></li>
			{hook run='talk_read_info_item' talk=$oTalk}
		</ul>
	</footer>
</article>

{assign var="oTalkUser" value=$oTalk->getTalkUser()}

{if !$bNoComments}
{include
	file='comment_tree.tpl'
	iTargetId=$oTalk->getId()
	sTargetType='talk'
	iCountComment=$oTalk->getCountComment()
	sDateReadLast=$oTalkUser->getDateLast()
	sNoticeCommentAdd=$aLang.topic_comment_add
	bNoCommentFavourites=true}
{/if}


{include file='footer.tpl'}
