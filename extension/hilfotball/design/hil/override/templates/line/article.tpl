<div class="article-line">
	<div class="image">
		<a href={$node.url_alias|ezurl}>
			{attribute_view_gui attribute=$node.data_map.image image_class='listitem'}
		</a>	
	</div>
	<div class="content">
		<h2><a href={$node.url_alias|ezurl}>{$node.name}</a></h2>
		<div class="intro">
			{attribute_view_gui attribute=$node.data_map.intro}
		</div>
		{if $node.data_map.body.has_content}
		<div class="readmore"><a href={$node.url_alias|ezurl} class="label">Les mer</a></div>
		{/if}
	</div>
	<div class="clear"></div>
</div>