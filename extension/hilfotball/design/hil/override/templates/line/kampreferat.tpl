<div class="linewrapper">
	<h3><a href={$node.url_alias|ezurl}>{$node.name|wash()}</a></h3>
    <div class="sub">
    	{$node.data_map.result.content} ({$node.data_map.result_pause.content}) - {$node.data_map.matchdate.content.timestamp|datetime('custom', '%d %M %Y')}
    </div>
    <div class="text">
    	{if $node.data_map.intro.has_content}
        	{attribute_view_gui attribute=$node.data_map.intro}
        {else}
        	{$node.data_map.description.content.output.aliased_handler.input_xml|wash()|shorten(200)}
        {/if}    
    </div>
    
</div>