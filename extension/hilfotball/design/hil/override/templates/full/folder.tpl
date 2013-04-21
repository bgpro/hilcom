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
	{if eq($node.data_map.show_childeren.content,1)}
		{def $children = fetch('content', 'list', hash(	'parent_node_id', $node.node_id,
														'sort_by', $sort_array
		))}
		
		{foreach $children as $child}
			{node_view_gui content_node=$child view='line'}
		{/foreach}
	
	{/if}
	
	{if eq($node.data_map.enable_comments,1)}        
        <div class="fb-comments" data-href="http://www.hvittingfoss-fotball.org" data-num-posts="5" data-width="470"></div>
	{/if}

</div>

<div class="content-left">
	{include uri='design:parts/left-sidebar.tpl'}
</div>


</div>

<div class="clear"></div>