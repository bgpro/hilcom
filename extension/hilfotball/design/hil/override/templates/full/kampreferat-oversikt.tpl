{if and(gt($view_parameters.year,0), gt($view_parameters.month,0))}

	{def $from_date = makedate($view_parameters.month, 1, $view_parameters.year)}
    
    {def $to_date 	= makedate(sum($view_parameters.month,1), 1, $view_parameters.year)}

	{def $list = fetch('content', 'list', hash('parent_node_id', $node.path_array.3,
    											'class_filter_type', 'include',
                                                'class_filter_array', array('referat'),
                                                'sort_by', array('attribute', false(), 'referat/matchdate'),
                                                'attribute_filter', array('and', array('referat/publication_date', '>=', $from_date),array('referat/publication_date', '<', $to_date))
                                                ))}

{else}
	{def $list = fetch('content', 'list', hash('parent_node_id', $node.path_array.3,
    											'class_filter_type', 'include',
                                                'class_filter_array', array('referat'),
                                                'sort_by', array('attribute', false(), 'referat/matchdate'),
                                                'limit', 10))}
{/if}
<div class="folder-wrapper">

<div class="content-right">

	<h1>{$node.name|wash()}</h1>
    
    {foreach $list as $item}
    	{node_view_gui content_node=$item view=line}
    {/foreach}
        
</div>

<div class="content-left">
	{include uri='design:parts/left-sidebar.tpl'}
</div>


</div>

<div class="clear"></div>
{undef $list}