{if $oUserCurrent}
	<div id="favourite-form-tags" class="modal">
		<header class="modal-header">
			<button type="button" class="close jqmClose" data-dismiss="modal" aria-hidden="true">&times;</button>
			<h3>{$aLang.add_favourite_tags}</h3>
		</header>
		
		<div class="modal-body">
			<form onsubmit="return ls.favourite.saveTags(this);" class="modal-content">
				<input type="hidden" name="target_type" value="" id="favourite-form-tags-target-type">
				<input type="hidden" name="target_id" value="" id="favourite-form-tags-target-id">

				<p><input type="text" name="tags" value="" id="favourite-form-tags-tags" class="autocomplete-tags-sep input-block-level"></p>
				<button type="submit" name="" class="btn btn-primary" />{$aLang.favourite_form_tags_button_save}</button>
				<button type="submit" name="" class="btn jqmClose" />{$aLang.favourite_form_tags_button_cancel}</button>
			</form>
		</div>
	</div>
{/if}
