  <!-- Path content: START -->
<strong>Du er her:</strong>
<a href={'/'|ezurl}>Forsiden</a> <span class="path-separator">/</span>

{foreach $pagedata.path_array as $path}
	{if and(ne($path.node_id,2),ne($path.node_id,60),ne($path.node_id,65))}

		{if $path.url}

		<a href={cond( is_set( $path.url_alias ), $path.url_alias,

											$path.url )|ezurl}>{$path.text|wash}</a>
                                            <span class="path-separator">/</span>

		{else}

		<span class="path-text">{$path.text|wash}</span>

		{/if}

		
	{/if}
    
    

{/foreach}
  <!-- Path content: END -->