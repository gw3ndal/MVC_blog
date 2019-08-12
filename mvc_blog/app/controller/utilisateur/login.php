<?php
if($_SERVER["REQUEST_METHOD"]=="GET"){ 

	define("PAGE_TITLE", "Page de Login");
	include("../app/view/utilisateur/login.php");

}else{

	var_dump($_POST);
	include("../app/model/utilisateur/check_login.php");
	$user=check_login($_POST);
	// var_dump($user);
	if($user){
		$_SESSION["user"]=$user;
		header("Location:index.php?notif=ok");
		}else{
			header("Location:index.php?module=utilisateur&action=login&notif=nok");
		}
	}

