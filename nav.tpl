<nav class="nav navbar navbar-static-top">
	<div class="navbar-inner">
		<div class="container">
			{if $menu}
				{if in_array($menu,$aMenuContainers)}{$aMenuFetch.$menu}{else}{include file="menu.$menu.tpl"}{/if}
			{/if}
			
			{if $oUserCurrent}
				<ul class="nav">
					<li class="divider-vertical"></li>
					<li><a href="{router page='topic'}add/" class="btn-write" id="modal_write_show">{$aLang.block_create}</a></li>
					<li class="divider-vertical"></li>
				</ul>
			{/if}
			
			<form action="{router page='search'}topics/" class="navbar-search pull-right">
				<input type="text" placeholder="{$aLang.search}" maxlength="255" name="q" class="search-query">
			</form>
		</div>
	</div>
</nav>
