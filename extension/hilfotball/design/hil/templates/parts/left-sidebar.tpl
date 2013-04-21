<div class="sidebar-left">
{def $archiveArray = array(1047,72)}

{if $archiveArray|contains($node.path_array.3)}
{def $counter=0}
{def $used_node = fetch('content', 'node', hash('node_id', $node.path_array.3))}
    	<ul>
			{if eq($node.path_array.3,1047)}
				{def $class_identifier = 'article'}
				{def $timestamp_class_identifier = 'publish_date'}
			{else}
				{def $class_identifier = 'referat'}
				{def $timestamp_class_identifier = 'publication_date'}
			{/if}
				{foreach ezarchive( $class_identifier, $used_node.node_id, $timestamp_class_identifier) as $archive}
				{set $counter=$counter|inc(1)}
				<li class="{if ge($counter,11)}hidden-menu-item{/if}{if and(eq($view_parameters.month, $archive.month), eq($view_parameters.year, $archive.year))} active {/if}"><a href={concat( $used_node.url_alias, "/(month)/", $archive.month, "/(year)/", $archive.year )|ezurl} title="{$used_node.name} - {$archive.timestamp|datetime( 'custom', '%F %Y' )}">{$archive.timestamp|datetime( 'custom', '%F %Y' )}</a></li>
				{/foreach}	

			<li class="show-hidden-menu-items"><a style="cursor:pointer;">Vis eldre {$used_node.name|wash()}</a></li>
		</ul>
        

        <script type="text/javascript">
{literal}
$(document).ready(function(){	
	
	$('.hidden-menu-item').hide();

	$('.show-hidden-menu-items').click(function(){
		
		$('.show-hidden-menu-items').hide();
		
		$('.hidden-menu-item').slideDown('slow');	
		
	});
})
{/literal}
</script>

{else}
{def $main_node = fetch('content', 'node', hash('node_id', $node.path_array.3))}
{def $sub_menu = fetch('content', 'list', hash(	'parent_node_id', $node.path_array.3,
												'sort_by', $main_node.sort_array
))}

{if $sub_menu|count()}
<ul>

{foreach $sub_menu as $sm}

	{if eq($sm.class_identifier,'link')}
		<li><a target="_blank" href={$sm.data_map.location.content}>{$sm.name|wash()}</a></li>
	{else}
		<li><a href={$sm.url_alias|ezurl}>{$sm.name|wash()}</a></li>
	{/if}
{/foreach}

</ul>
{/if}

{/if}
</div>