{*Fetching contact node*}
{def $node = fetch('content', 'node', hash('node_id', 74))}
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

	<div class="description contact-form">
	
		{if $error}
			<h5 style="color:red;">Ett eller flere felter er ikke fylt ut:</h5>
		
			<form name="contact_form" method="post" action={"contact/send"|ezurl}>
			<label for="name">Navn</label>
			<input type="text" name="name" id="name" value="{$name|wash()}" {if eq($error_name,1)} style="border:1px solid red;"{/if} />
			<label for="email">E-post</label>
			<input type="text" name="email" id="email" value="{$email|wash()}" {if eq($error_email_telephone,1)} style="border:1px solid red;"{/if} />
			<label for="telephone">Telefon</label>
			<input type="text" name="telephone" id="telephone" value="{$telephone|wash()}" {if eq($error_email_telephone,1)} style="border:1px solid red;"{/if} />
			<label for="message">Melding</label>
			<textarea rows="10" cols="40" name="message" id="message" {if eq($error_message,1)} style="border:1px solid red;"{/if}>{$message|wash()}</textarea>
			<label for="secret">For å unngå spam, vennligst legg inn summen av 4+1 i feltet nedenfor</label>
			<input type="text" name="secret" id="secret" value="{$secret|wash()}" {if eq($error_secret,1)} style="border:1px solid red;"{/if} />
			<p><input type="submit" name="send" value="Send" class="submitblack" /></p>
		</form>
		{else}
		
		<h3>Takk!</h3>
		<p>Din melding er nå sendt, vi kontakter deg snarlig.</p>
		
		{/if}
		
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