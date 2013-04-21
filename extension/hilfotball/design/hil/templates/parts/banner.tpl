{def $node = fetch('content', 'node', hash('node_id', $node_id))}

{def $slides = fetch( 'content', 'list', hash( 	'parent_node_id', $node.data_map.banner.content.main_node_id,
												'sort_by', array('priority', true()) ) )}


<div id="page-banner">
{if gt($slides|count(),0)}


		
         <ul id="frontpage-slider">
            {foreach $slides as $slide}
                <li id="slide-{$slide.node_id}">
                {if $slide.data_map.textline_1.has_content}
                    <div class="slider-text">
                        {attribute_view_gui attribute=$slide.data_map.textline_1}
                    </div>
                {/if}  
                {if $slide.data_map.textline_2.has_content}
                    <div class="slider-text-2">
                        {attribute_view_gui attribute=$slide.data_map.textline_2}
                    </div>
                {/if}    
                    <div class="slider-image">
                    {if $slide.data_map.relation.has_content}
                            <a class="readmore" href={$slide.data_map.relation.content.main_node.url|ezurl}>{attribute_view_gui attribute=$slide.data_map.image image_class='billboard'}</a>
                    {else}
                    
                    	{attribute_view_gui attribute=$slide.data_map.image image_class='billboard'}        
                            
                    {/if}
                       	
                    </div>
                </li>
            {/foreach}
        </ul>
{/if}
</div>