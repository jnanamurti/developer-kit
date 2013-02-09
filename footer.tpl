				{hook run='content_end'}
			</div> <!-- /content -->

			{if !$noSidebar && $sidebarPosition != 'left'}
				{include file='sidebar.tpl'}
			{/if}
		</div> <!-- /wrapper -->
	</div> <!-- /container -->


	<footer class="footer">
		<div class="container">
	
			<div class="span3 pull-right copyright">
				{hook run='copyright'}
				<br />
				Автор шаблона &mdash; <a href="http://webtown.by/profile/vOFFka/">вOFFка</a>
			</div>
		
			{hook run='footer_end'}
		</div>
	</footer>


	{include file='toolbar.tpl'}

	{hook run='body_end'}

</body>
</html>
