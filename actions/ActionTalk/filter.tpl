<section class="block block-type-foldable block-type-talk-search">
	<header class="block-header">
		<a href="#" class="link-dotted" onclick="jQuery('#block_talk_search_content').toggle(); return false;">{$aLang.talk_filter_title}</a>
	</header>
	
	<div class="block-content" id="block_talk_search_content" {if $_aRequest.submit_talk_filter}style="display:block;" {/if}>
		<form action="{router page='talk'}" method="GET" name="talk_filter_form">
			<p><label for="talk_filter_sender">{$aLang.talk_filter_label_sender}:</label>
			<input type="text" id="talk_filter_sender" name="sender" value="{$_aRequest.sender}" class="input-block-level" />
			<span class="help-block"><small>{$aLang.talk_filter_notice_sender}</small></span></p>

			<p><label for="talk_filter_keyword">{$aLang.talk_filter_label_keyword}:</label>
			<input type="text" id="talk_filter_keyword" name="keyword" value="{$_aRequest.keyword}" class="input-block-level" />
			<span class="help-block"><small>{$aLang.talk_filter_notice_keyword}</small></span></p>

			<p><label for="talk_filter_keyword_text">{$aLang.talk_filter_label_keyword_text}:</label>
			<input type="text" id="talk_filter_keyword_text" name="keyword_text" value="{$_aRequest.keyword_text}" class="input-block-level" />
			<span class="help-block"><small>{$aLang.talk_filter_notice_keyword}</small></span></p>
			

			<p><label for="talk_filter_start">{$aLang.talk_filter_label_date}:</label>
			<input type="text" id="talk_filter_start" name="start" value="{$_aRequest.start}" class="span3 date-picker" readonly="readonly" /> &mdash; 
			<input type="text" id="talk_filter_end" name="end" value="{$_aRequest.end}" class="span3 date-picker" readonly="readonly" /></p>

			<p><label for="talk_filter_favourite" class="checkbox"><input type="checkbox" {if $_aRequest.favourite}checked="checked" {/if} class="input-checkbox" name="favourite" value="1" id="talk_filter_favourite" />
			{$aLang.talk_filter_label_favourite}</label></p>
			<br />

			<input type="submit" name="submit_talk_filter" value="{$aLang.talk_filter_submit}" class="btn btn-primary" />
			<input type="submit" name="" value="{$aLang.talk_filter_submit_clear}" class="btn" onclick="return ls.talk.clearFilter();" />
		</form>
	</div>
</section>
