<?php
session_start();
include ("../app/config/config.inc.php");
include ("../core/pdo.inc.php");
include ("../core/core.php");
include ("../app/app.php");

if(!isset($_GET["module"])){
	$module=DEFAULT_MODULE;
}else{
	$module=$_GET["module"];
}
if(!isset($_GET["action"])){
	$action=DEFAULT_ACTION;
}else{
	$action=$_GET["action"];
}
// echo "MODULE demandé = " . $module;
// echo "<br>ACTION demandée = " . $action;

$file='../app/controller/' . $module .'/' . $action . '.php';
if(file_exists($file)){
	include ($file);
}else{
	die(" Page ERREUR 404");
//****** MEME CODE QUE LE PRECEDENT******
// if($module=="article"){
// 	if ($action=="index") {
// 		include ("../app/controller/article/index.php");
// 	}else if($action=="article"){
// 		include ("../app/controller/article/article.php");
// 	}else{
// 		die(" Page ERREUR 404");
// 	}
}

// var_dump($pdo);
?>
<link href="css/mystyle.css" rel="stylesheet">