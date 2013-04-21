{def $ref = fetch('content', 'list', hash('parent_node_id', 72,
											'class_filter_type', include,
                                            'class_filter_array', array('referat'),
                                            'sort_by', array('attribute', false(), 348),
                                            'limit', 1))}
                                            
<a href={$ref.0.url_alias|ezurl} class="header">{$ref.0.name|wash()}</a>
<p class="small">Resultat: {attribute_view_gui attribute=$ref.0.data_map.result} ({attribute_view_gui attribute=$ref.0.data_map.result_pause}) - {$ref.0.data_map.matchdate.content.timestamp|datetime('custom', '%d %M %Y')}</p>                                          
<div class="text">{if $ref.0.data_map.intro.has_content}
        	{attribute_view_gui attribute=$ref.0.data_map.intro}
        {else}
        	{$ref.0.data_map.description.content.output.aliased_handler.input_xml|wash()|shorten(200)}
        {/if}</div>
        
{undef $ref}        