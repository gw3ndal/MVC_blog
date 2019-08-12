<!-- HEADER -->
<?php include("../app/view/layout/header.inc.php");?>
<!-- Page Header -->
	<header class="masthead" style="background-image: url('https://missiongalleryart.com/images/detailed/1/Watanabe_Suavite.jpg')">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<div class="site-heading">
						<div class="container-fluid">									
							<?php
								if (isset($_GET["notif"])){
									if($_GET["notif"] =="nok"){
							?>							
										<div class="alert alert-danger" role="alert">
			  							<i class="fas fa-fire-alt"></i></i> Oups! Il y'a quelque chose qui coince. Merci de retenter ton coup <i class="fas fa-fire-alt"></i>
										</div>
							<?php
									}
									if($_GET["notif"] =="registered"){
							?>
										<div class="alert alert-success" role="alert">							
			  							<i class="fas fa-pepper-hot"></i> Inscription terminée. Tu peux te connecter <i class="fas fa-pepper-hot"></i>
										</div>
							<?php
									}  
								}
							?>
						</div>						
						<h1><?=SITE_NAME?></h1>
						<span class="subheading"><em>le sexe est un sujet sérieux qu'il faut traiter avec légèreté et inversement.</em></span>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Main Content -->
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">            
					<?php
						foreach($articles as $article){
					?>
				<div class="post-preview">
					<a href="index.php?module=article&action=article&id=<?=$article ['post_ID']?>">
						<img class="img-fluid" src="<?= $article["post_img_url"] ?>" alt="">
						<h2 class="post-title">
							<span class="meta"><?= $article["post_title"]?></span>
						</h2>
					</a>
					<span class="post-meta">
						Posté par 
						<a href="#"><?= $article["display_name"]?></a>
						<?= $article["post_date_f"]?>
					</span>
					<p class="post-subtitle">
						<?= $article["post_content"]?> (...)
					</p>
					<p class="post-meta">
					<span class="post-meta"><i class="fas fa-cube"></i> <?= $article["cat_descr"] ?></span>
					</p>
				</div>
				<hr>            
					<?php
						}
					?>
				<!-- Pager --><!-- 
				<div class="clearfix">
					<a class="btn btn-primary float-right" href="#">Older Posts &rarr;</a>
				</div> -->
				<nav aria-label="Page navigation example">
				  <ul class="pagination">
					 <li class="page-item"><a class="page-link" href="index.php?module=article&action=index&page=<?= $page_demandee - 1 ?>">Précédent</a></li>
					<?php
					   for ($i=1; $i <=$pages ; $i++) {
					?>
					<?php
					   if($i != $page_demandee) {
					?>
					 <li class="page-item"><a class="page-link" href="index.php?module=article&action=index&page=<?= $i ?>"><?= $i ?></a></li>
					<?php
						}else {
					?>
					 <li class="page-item active"><span class="page-link"><?= $i ?></span></li>					   
					<?php
					      } 
					?>
					<?php
					   } 
					?>
					 <li class="page-item"><a class="page-link" href="index.php?module=article&action=index&page=<?= $page_demandee + 1 ?>">Suivant</a></li>
				  </ul>
				</nav>
			</div>
		</div>
	</div>
<!-- FOOTER -->
<?php include("../app/view/layout/footer.inc.php");?>