{def $ref = fetch('content', 'list', hash('parent_node_id', 109,
											'class_filter_type', include,
                                            'class_filter_array', array('forum_topic', 'forum_reply'),
                                            'sort_by', array( 'published', false() ),
                                            'limit', 3,
                                            'depth',15))}

{*$ref|attribute(show)*}

{foreach $ref as $r} 

<div class="line-element"> 

{if eq($r.class_identifier,'forum_topic')} 
<a href={$r.parent.url_alias|ezurl} class="label">{$r.parent.name|wash()}</a>                                         
<a href={$r.url_alias|ezurl} class="header">{$r.name|wash()}</a>

{else}
<a href={$r.parent.parent.url_alias|ezurl} class="label">{$r.parent.parent.name|wash()}</a>
<a href={$r.parent.url_alias|ezurl} class="header">{$r.name|wash()}</a>

{/if}                                          
<div class="text">{$r.data_map.message.content|shorten(200)}</div>
</div>
{/foreach}  
{undef $ref}        