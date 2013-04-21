<div class="folder-wrapper">

<div class="content-right">

	<h1>{$node.name|wash()}</h1>
	
	<div style="float:right; margin-bottom:20px; width:290px; position:relative;">
			<div style="margin-right:-20px;">{include uri='design:parts/social-buttons.tpl'}</div>
			<div class="clear"></div>
	{if $node.data_map.result.has_content}		
	<div class="infobox">
     <h4>Kampfakta</h4>
     <table cellpadding="3" cellspacing="3" width="100%">
     	<tr>
        	<td valign="top">Resultat</td>
            <td valign="top">{$node.data_map.result.content} ({$node.data_map.result_pause.content})</td>
        </tr>
        <tr>
        	<td valign="top">Matchdato</td>
            <td valign="top">{$node.data_map.matchdate.content.timestamp|datetime('custom', '%d %M %Y %H:%i')}</td>
        </tr>
        <tr>
        	<td valign="top">Stadion</td>
            <td valign="top">{$node.data_map.stadion.content}</td>
        </tr>
        <tr>
        	<td valign="top">Hjemmelag</td>
            <td valign="top">{$node.data_map.hometeam.content}</td>
        </tr>
        <tr>
        	<td valign="top">Bortelag</td>
            <td valign="top">{$node.data_map.awayteam.content}</td>
        </tr>
        <tr>
        	<td valign="top">Dommer</td>
            <td valign="top">?</td>
        </tr>
  
     </table>
    </div>	
	{/if}
	</div>

	<div class="author" style="margin-top:10px;">
		<table cellspacing="3" cellpadding="3">
		{if ne($node.data_map.author.content.author_list.0.name, "Anonymous User")}
			<tr>
				<td>Av&nbsp;</td>
				<td><a href="mailto:$node.data_map.author.content.author_list.0.email}" title="{$node.data_map.author.content.author_list.0.email}">{attribute_view_gui attribute=$node.data_map.author}</a></td>
			</tr>
		{/if}	
		{if gt($node.data_map.publication_date.content.timestamp,0)}		
			<tr>	
				<td>Publisert&nbsp;</td>
				<td>{$node.data_map.publication_date.content.timestamp|datetime('custom', '%d.%m.%Y %H:%i')}</td>
			</tr>
		{/if}	
		</table>				
	</div>

		
    
	
	

    <div class="intro">{attribute_view_gui attribute=$node.data_map.intro}</div>
    
    <div class="description">{attribute_view_gui attribute=$node.data_map.description}</div>
        
	{if eq($node.data_map.enable_comments.content,1)}
		{include uri='design:parts/facebookcomments.tpl' width=640 posts=10}
	{/if}	
</div>

<div class="content-left">
	{include uri='design:parts/left-sidebar.tpl'}
</div>


</div>

<div class="clear"></div>