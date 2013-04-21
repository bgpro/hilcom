<style type="text/css">
    @import url({"stylesheets/debug.css"|ezdesign(no)});
	@import url(http://fonts.googleapis.com/css?family=Unna&v2);
	@import url(http://fonts.googleapis.com/css?family=Droid+Sans:400,700&v2);
    {foreach ezini( 'StylesheetSettings', 'FrontendCSSFileList', 'design.ini' ) as $css_file}
    @import url({concat( 'stylesheets/', $css_file )|ezdesign});
    {/foreach}

</style>
<link rel="stylesheet" type="text/css" href={"stylesheets/print.css"|ezdesign} media="print" />
<link href='http://fonts.googleapis.com/css?family=Unna&v2' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700&v2' rel='stylesheet' type='text/css' />
<!-- IE conditional comments; for bug fixes for different IE versions -->
<!--[if IE 5]>     <style type="text/css"> @import url({"stylesheets/browsers/ie5.css"|ezdesign(no)});    </style> <![endif]-->
<!--[if lte IE 7]> <style type="text/css"> @import url({"stylesheets/browsers/ie7lte.css"|ezdesign(no)}); </style> <![endif]-->