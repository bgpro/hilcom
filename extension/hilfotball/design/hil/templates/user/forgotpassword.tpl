<div class="folder-wrapper">
<div class="content-right">
<div class="user-forgotpassword">

{if $link}
<div class="intro">
{"An email has been sent to the following address: %1. It contains a link you need to click so that we can confirm that the correct user has received the new password."|i18n('design/ezwebin/user/forgotpassword',,array($email))}
</div>
{else}
   {if $wrong_email}
   <div class="warning">
   <h2>{"There is no registered user with that email address."|i18n('design/ezwebin/user/forgotpassword')}</h2>
   </div>
   {/if}
   {if $generated}
	<div class="intro">
   {"Password was successfully generated and sent to: %1"|i18n('design/ezwebin/user/forgotpassword',,array($email))}
   </div>
   {else}
      {if $wrong_key}
      <div class="warning">
      <h2>{"The key is invalid or has been used. "|i18n('design/ezwebin/user/forgotpassword')}</h2>
      </div>
      {else}
      <form method="post" name="forgotpassword" action={"/user/forgotpassword/"|ezurl}>

      <div class="attribute-header">
      <h1 class="long">{"Have you forgotten your password?"|i18n('design/ezwebin/user/forgotpassword')}</h1>
      </div>

      <div class="intro">
      {"If you have forgotten your password, enter your email address and we will create a new password and send it to you."|i18n('design/ezwebin/user/forgotpassword')}
      </div>

      <div class="block">
      <label for="email">{"Email"|i18n('design/ezwebin/user/forgotpassword')}:</label>
      <div class="labelbreak"></div>
      <input class="halfbox" type="text" name="UserEmail" size="40" value="{$wrong_email|wash}" />
      </div>

      <div class="buttonblock">
      <input class="button" type="submit" name="GenerateButton" value="{'Generate new password'|i18n('design/ezwebin/user/forgotpassword')}" />
      </div>
      </form>
      {/if}
   {/if}
{/if}

</div>
</div>

<div class="content-left">
	{include uri='design:parts/left-sidebar-section-user.tpl'}

</div>
</div>