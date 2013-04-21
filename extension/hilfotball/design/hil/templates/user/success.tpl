<div class="folder-wrapper">
<div class="content-right">
<div class="user-success">

{if $verify_user_email}
<div class="attribute-header">
    <h1 class="long">{"User registered"|i18n("design/ezwebin/user/success")}</h1>
</div>

<div class="feedback">
<div class="intro">
{'Your account was successfully created. An email will be sent to the specified address. Follow the instructions in that email to activate your account.'|i18n('design/ezwebin/user/success')}
</div>
</div>
{else}
<div class="attribute-header">
    <h1 class="long">{"User registered"|i18n("design/ezwebin/user/success")}</h1>
</div>

<div class="feedback">
    <h2>{"Your account was successfully created."|i18n("design/ezwebin/user/success")}</h2>
</div>
{/if}

</div>
</div>

<div class="content-left">
	{include uri='design:parts/left-sidebar-section-user.tpl'}

</div>
</div>
