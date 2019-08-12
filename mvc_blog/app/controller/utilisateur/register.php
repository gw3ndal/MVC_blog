<?php
if($_SERVER["REQUEST_METHOD"]=="GET"){ 

	define("PAGE_TITLE", "Page d'inscription");
	include("../app/view/utilisateur/register.php");

}else{

	var_dump($_POST);
	include("../app/model/utilisateur/user_add.php");
	// var_dump($user);
	if(user_add($_POST)){
		header("Location:index.php?notif=registered");
		}else{
			header("Location:index.php?module=utilisateur&action=register&notif=nok");
		}
	}