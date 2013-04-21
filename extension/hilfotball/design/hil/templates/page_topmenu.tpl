{def $top-menu = fetch('content', 'list', hash('parent_node_id', 65, 'class_filter_type', 'include', 'class_filter_array', array('folder', 'forums', 'frontpage'), 'sort_by', array('priority', true())))}
{def $counter = 0}
<div id="top-menu">
<ul>
	{def $url = ''}
	{foreach $top-menu as $tm}
		{set $url = $tm.url}
    	{set $counter = $counter|inc(1)}
		
    	<li><a href={$url|ezurl} class="{if eq($pagedata.path_array.2.node_id, $tm.node_id)}active{/if} {if eq($counter, $top-menu|count)}last{/if}">{$tm.name}</a></li>
    {/foreach}
</ul>
</div>

{undef $top-menu $counter}