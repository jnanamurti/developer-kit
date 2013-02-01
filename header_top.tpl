<header class="header" role="banner">
	<div class="container">
	
		{hook run='header_banner_begin'}
		
		<hgroup class="site-info">
			<h1 class="site-name"><a href="{cfg name='path.root.web'}">{cfg name='view.name'}</a></h1>
			<p class="lead">{cfg name='view.description'}</p>
		</hgroup>
		
		<ul class="nav nav-main">
			<li {if $sMenuHeadItemSelect=='blog'}class="active"{/if}><a href="{cfg name='path.root.web'}">{$aLang.topic_title}</a></li>
			<li {if $sMenuHeadItemSelect=='blogs'}class="active"{/if}><a href="{router page='blogs'}">{$aLang.blogs}</a></li>
			<li {if $sMenuHeadItemSelect=='people'}class="active"{/if}><a href="{router page='people'}">{$aLang.people}</a></li>
			<li {if $sMenuHeadItemSelect=='stream'}class="active"{/if}><a href="{router page='stream'}">{$aLang.stream_menu}</a></li>

			{hook run='main_menu_item'}
		</ul>
		
		{hook run='main_menu'}
		{hook run='header_banner_end'}
		
	</div>
</header>