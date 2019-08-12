<!DOCTYPE html>
<html lang="<?= APP_LANG ?>">

<head>

	<meta charset="<?= APP_CHARSET ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title><?=PAGE_TITLE?></title>
	<meta name="description" content="<?= (defined('PAGE_DESCR'))?PAGE_DESCR : PAGE_DESCR_DEFAUT ?>">

	<!-- Bootstrap core CSS -->
	<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom fonts for this template -->
	<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

	<!-- Custom styles for this template -->
	<link href="css/clean-blog.min.css" rel="stylesheet">
	<!-- CSS PERSO -->
	<link href="css/mystyle.css" rel="stylesheet">

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="index.php">Blog à part</a>
			<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				Menu
				<i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link" href="index.php">Accueil</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">A propos</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Contact</a>
					</li>
					<?php
						if(!isset($_SESSION["user"])){
					?>
					<li class="nav-item">
						<a class="nav-link" href="index.php?module=utilisateur&action=login">Se connecter</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="index.php?module=utilisateur&action=register">S'inscrire</a>
					</li>
					<?php
						}else{
					?>
						<li class="nav-item dropdown no-arrow">
							<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="fa fa-eye" aria-hidden="true"></i>
								 &nbsp<em><?= $_SESSION["user"]["display_name"] ?></em>
							</a>
							<div class="dropdown-menu dropdown-menu-left" aria-labelledby="userDropdown">
								<a href="#"> &nbspProfil</a>
								<div class="dropdown-divider"></div>
								<a href="index.php?module=utilisateur&action=logout"> &nbspSe déconnecter</a>
							</div>
						</li>
					<?php
						}
					?>
				</ul>
			</div>
		</div>
	</nav>

	
	<!-- <div>
		<a href="index.php">HOME</a>
		<a href="index.php?module=commentaire&action=index">COMMENTAIRES</a>
	</div> -->
