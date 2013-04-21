<div id="frontpage-wrapper">
    <div class="frontpage-left">
    	<h3 class="frontpage-header">// Kunngjøringer</h3>
		<div class="frontpage-box">
        {include uri='design:parts/frontpage/kunngjoringer.tpl'}
        </div>
    	<h3 class="frontpage-header">// Kampreferat</h3>
        <div class="frontpage-box">
        {include uri='design:parts/frontpage/kampreferat.tpl'}
        </div>
        
        <h3 class="frontpage-header">// Forum</h3>
        <div class="frontpage-box">
        {include uri='design:parts/frontpage/forum.tpl'}
        </div>
        
    </div>
    <div class="frontpage-right">
        <h3 class="frontpage-header"><a href={"Nyheter"|ezurl}>// Siste nytt</a></h3>
		{include uri='design:parts/frontpage/latest_news.tpl'}
		<p style="margin-top:20px; text-align:center;"><a href="https://www.norsk-tipping.no/grasrotandelen" target="_blank"><img src={"images/grasrotandel.jpg"|ezdesign} /></a></p>
    </div>
</div>