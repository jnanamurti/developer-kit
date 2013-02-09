{assign var="oBlog" value=$oTopic->getBlog()}
{assign var="oUser" value=$oTopic->getUser()}
{assign var="oVote" value=$oTopic->getVote()}

<article class="topic topic-type-{$oTopic->getType()} js-topic">
	<header class="topic-header">
		{if $bTopicList}<h2 class="topic-title">{else}<h1 class="topic-title">{/if}
			{if $bTopicList}
				<a href="{$oTopic->getUrl()}">{$oTopic->getTitle()|escape:'html'}</a>
			{else}
				{$oTopic->getTitle()|escape:'html'}
			{/if}
			
			{if $oTopic->getPublish() == 0}   
				<i class="icon-file" title="{$aLang.topic_unpublish}"></i>
			{/if}
			
			{if $oTopic->getType() == 'link'} 
				<i class="icon-globe" title="{$aLang.topic_link}"></i>
			{/if}
		{if $bTopicList}</h2>{else}</h1>{/if}

		<div class="topic-info">
			<a href="{$oBlog->getUrlFull()}" class="topic-blog">{$oBlog->getTitle()|escape:'html'}</a>
			
			<time datetime="{date_format date=$oTopic->getDateAdd() format='c'}" title="{date_format date=$oTopic->getDateAdd() format='j F Y, H:i'}">
				{date_format date=$oTopic->getDateAdd() format="j F Y, H:i"}
			</time>
			
			<ul class="unstyled inline actions">								   
				{if $oUserCurrent and ($oUserCurrent->getId()==$oTopic->getUserId() or $oUserCurrent->isAdministrator() or $oBlog->getUserIsAdministrator() or $oBlog->getUserIsModerator() or $oBlog->getOwnerId()==$oUserCurrent->getId())}
					<li><a href="{cfg name='path.root.web'}/{$oTopic->getType()}/edit/{$oTopic->getId()}/" title="{$aLang.topic_edit}" class="text-success">{$aLang.topic_edit}</a></li>
				{/if}
				
				{if $oUserCurrent and ($oUserCurrent->isAdministrator() or $oBlog->getUserIsAdministrator() or $oBlog->getOwnerId()==$oUserCurrent->getId())}
					<li><a href="{router page='topic'}delete/{$oTopic->getId()}/?security_ls_key={$LIVESTREET_SECURITY_KEY}" title="{$aLang.topic_delete}" onclick="return confirm('{$aLang.topic_delete_confirm}');" class="text-error">{$aLang.topic_delete}</a></li>
				{/if}
			</ul>
		</div>
	</header>
