<div class="folder-wrapper">

{if eq($node.node_id,71)}
	{def $sort_array = array('attribute', false(), 'article/publish_date')}

{else}	
	
	{def $sort_array = $node.sort_array}
	
{/if}

<div class="content-right">

	<h1>{$node.name|wash()}</h1>
	
	<div class="short_description">
		{attribute_view_gui attribute=$node.data_map.short_description}
	</div>
	
	<div class="description">
		{attribute_view_gui attribute=$node.data_map.description}
	</div>

	<div class="contact-form">
		<form name="contact_form" method="post" action={"contact/send"|ezurl}>
			<label for="name">Navn</label>
			<input type="text" name="name" id="name" />
			<label for="email">E-post</label>
			<input type="text" name="email" id="email" />
			<label for="telephone">Telefon</label>
			<input type="text" name="telephone" id="telephone" />
			<label for="message">Melding</label>
			<textarea rows="10" cols="40" name="message" id="message"></textarea>
			<label for="secret">For å unngå spam, vennligst legg inn summen av 4+1 i feltet nedenfor</label>
			<input type="text" name="secret" id="secret" />
			<p><input type="submit" name="send" value="Send" class="submitblack" /></p>
		</form>
	</div>
	
	{if eq($node.data_map.enable_comments,1)}        
        <div class="fb-comments" data-href="http://www.hvittingfoss-fotball.org" data-num-posts="5" data-width="470"></div>
	{/if}

</div>

<div class="content-left">
	{include uri='design:parts/left-sidebar.tpl'}
</div>


</div>

<div class="clear"></div>