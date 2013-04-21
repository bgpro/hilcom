<div class="folder-wrapper">

	<div class="content-right">
	
		<div class="image">{attribute_view_gui attribute=$node.data_map.image image_class="reference"}</div>
		<div class="caption">{$node.data_map.image.content.alternative_text}</div>

		<h1>{$node.name|wash()}</h1>
		<div class="social-buttons-wrapper-right">
		{include uri='design:parts/social-buttons.tpl'}
		</div>
		<div class="author">
			<table cellspacing="3" cellpadding="3">
				<tr>
					<td>Av&nbsp;</td>
					<td><a href="mailto:$node.data_map.author.content.author_list.0.email}" title="{$node.data_map.author.content.author_list.0.email}">{attribute_view_gui attribute=$node.data_map.author}</a></td>
				</tr>
				<tr>	
					<td>Publisert&nbsp;</td>
					<td>{$node.data_map.publish_date.content.timestamp|datetime('custom', '%d.%m.%Y %H:%i')}</td>
				</tr>
			</table>				
		</div>
		<div class="intro">{attribute_view_gui attribute=$node.data_map.intro}</div>
		<div class="description">{attribute_view_gui attribute=$node.data_map.body}</div>

		{if eq($node.data_map.enable_comments.content,1)}
			{include uri='design:parts/facebookcomments.tpl' width=640 posts=10}
		{/if}
		
	</div>

	<div class="content-left">
		{include uri='design:parts/left-sidebar.tpl'}
	</div>


</div>

<div class="clear"></div>