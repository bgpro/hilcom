{def $articles = fetch('content', 'list', hash('parent_node_id', 1047,
												'class_filter_type', include,
												'class_filter_array', array('article'),
												'attribute_filter', array('and',array(
																							'article/publish_date', '<=', currentdate()
																						)),
												'sort_by', array('attribute', false(), 'article/publish_date'),									
												'depth', 2,
												'limit', 3
))}
{foreach $articles as $article}
<div class="article-line">
	<div class="image">
		<a href={$article.url_alias|ezurl}>
			{attribute_view_gui attribute=$article.data_map.image image_class='listitem'}
		</a>	
	</div>
	<div class="content">
		<h2><a href={$article.url_alias|ezurl}>{$article.name}</a></h2>
		<div class="intro">
			{attribute_view_gui attribute=$article.data_map.intro}
		</div>
		{if $article.data_map.body.has_content}
		<div class="readmore"><a href={$article.url_alias|ezurl} class="label">Les mer</a></div>
		{/if}
	</div>
	<div class="clear"></div>
</div>

{/foreach}