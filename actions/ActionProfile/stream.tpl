{include file='header.tpl' menu='people'}


{include file='actions/ActionProfile/profile_top.tpl'}

{if count($aStreamEvents)}
	<ul class="unstyled stream-list" id="stream-list">
		{include file='actions/ActionStream/events.tpl'}
	</ul>

	{if !$bDisableGetMoreButton}
		<input type="hidden" id="stream_last_id" value="{$iStreamLastId}" />
		<a class="btn btn-large btn-block btn-primary" id="stream_get_more" href="javascript:ls.stream.getMoreByUser({$oUserProfile->getId()})">{$aLang.stream_get_more} &darr;</a>
	{/if}
{else}
	{$aLang.stream_no_events}
{/if}


{include file='footer.tpl'}
