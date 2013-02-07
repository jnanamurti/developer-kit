{include file='header.tpl'}


<h2 class="page-header">{$aLang.user_field_admin_title}</h2>

<div class="modal" id="userfield_form">
	<header class="modal-header">
		<button type="button" class="close jqmClose" data-dismiss="modal" aria-hidden="true">&times;</button>
		<h3>{$aLang.user_field_admin_title_add}</h3>
	</header>
	
	<div class="modal-body">
		<form>
			<label for="user_fields_form_type">{$aLang.userfield_form_type}:</label>
			<select id="user_fields_form_type" class="input-block-level">
				<option value=""></option>
				{foreach from=$aUserFieldTypes item=sFieldType}
					<option value="{$sFieldType}">{$sFieldType}</option>
				{/foreach}
			</select>

			<label for="user_fields_form_name">{$aLang.userfield_form_name}:</label>
			<input type="text" id="user_fields_form_name" class="input-block-level" />
		
			<label for="user_fields_form_title">{$aLang.userfield_form_title}:</label>
			<input type="text" id="user_fields_form_title" class="input-block-level" />
		
			<p><label for="user_fields_form_pattern">{$aLang.userfield_form_pattern}:</label>
			<input type="text" id="user_fields_form_pattern" class="input-block-level" /></p>
		
			<input type="hidden" id="user_fields_form_action" />
			<input type="hidden" id="user_fields_form_id" />
		
			<button type="button" onclick="ls.userfield.applyForm(); return false;" class="btn btn-primary">{$aLang.user_field_add}</button>
		</form>
	</div>
</div>

 
<a href="javascript:ls.userfield.showAddForm()" class="link-dotted" id="userfield_form_show">{$aLang.user_field_add}</a>
<br /><br />

<ul class="unstyled userfield-list" id="user_field_list">
	{foreach from=$aUserFields item=oField}
		<li id="field_{$oField->getId()}"><strong class="userfield_admin_name">{$oField->getName()|escape:"html"}</strong>
			/ <span class="userfield_admin_title">{$oField->getTitle()|escape:"html"}</span>
            / <span class="userfield_admin_type">{$oField->getType()|escape:"html"}</span>
            / <span class="userfield_admin_pattern">{$oField->getPattern()|escape:"html"}</span>

			<div class="pull-right userfield-actions">
				<a href="javascript:ls.userfield.showEditForm({$oField->getId()})" title="{$aLang.user_field_update}" class="icon-edit"></a> 
				<a href="javascript:ls.userfield.deleteUserfield({$oField->getId()})" title="{$aLang.user_field_delete}" class="icon-remove"></a>
			</div>
		</li>
	{/foreach}
</ul>
	

{include file='footer.tpl'}
