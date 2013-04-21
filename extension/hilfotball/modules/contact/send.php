<?php

//include_once( 'lib/ezutil/classes/ezini.php' );
include_once( 'lib/ezdb/classes/ezdb.php' );
require_once( 'kernel/common/template.php' );

$module = $Params['Module'];
$http = eZHTTPTool::instance();
$tpl = templateInit();

if ($_POST['send']){

	$error = false;

	if (strlen($_POST['name']) == 0){
		$tpl->setVariable('error_name',1);
		$error = true;
	}
	
	if (strlen($_POST['email']) == 0 && strlen($_POST['telephone']) == 0){
		$tpl->setVariable('error_email_telephone',1);
		$error = true;
	}
	
	if (strlen($_POST['message']) == 0){
		$tpl->setVariable('error_message',1);
		$error = true;
	}
	
	if ($_POST['secret'] != 5){
	
		$tpl->setVariable('error_secret',1);
		$error 	= true;
	
	}
	
	$tpl->setVariable('error',$error);
	
	if (!$error){
	
		$mailbody = "<h3>Ny henvendelse fra hvittingfoss-fotball.org<h3>";
		$mailbody .= "<table width='500'>";
		$mailbody .= "<tr><td><b>Navn:</b></td><td>".$_POST['name']."</td></tr>";
		$mailbody .= "<tr><td><b>E-post:</b></td><td>".$_POST['email']."</td></tr>";
		$mailbody .= "<tr><td><b>Telefon:</b></td><td>".$_POST['telephone']."</td></tr>";
		$mailbody .= "<tr><td valign='top'><b>Melding:</b></td><td valign='top'>".$_POST['message']."</td></tr>";
		$mailbody .= "</table>";
		
		mail("bg@byte.no", "Ny henvendelse fra HIL-fotball.org", $mailbody, "FROM:noreply@hvittingfoss-fotball.org \nContent-Type: text/html; charset=utf-8\nMIME-version: 1.0\nContent-Transfer-Encoding: 8bit");
		mail("post@hvittingfoss-fotball.org", "Ny henvendelse fra HIL-fotball.org", $mailbody, "FROM:noreply@hvittingfoss-fotball.org \nContent-Type: text/html; charset=utf-8\nMIME-version: 1.0\nContent-Transfer-Encoding: 8bit");

	
	}	else	{
	
		$tpl->setVariable('name',$_POST['name']);
		$tpl->setVariable('email',$_POST['email']);
		$tpl->setVariable('telephone',$_POST['telephone']);
		$tpl->setVariable('message',$_POST['message']);
		$tpl->setVariable('secret',$_POST['secret']);
	
	}

}

$Result = array();
$Result['content'] = $tpl->fetch( "design:contact/send.tpl" );
$Result['content_info'] = array('persistent_variable' => array( 'extra_menu' => false ));
$Result['path'] = array( array( 'text' => 'Om HIL', 'url' => 'om-HIL' ),
						array('text' => 'Kontakt')
						);
?>