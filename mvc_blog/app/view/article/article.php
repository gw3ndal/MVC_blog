<!-- HEADER -->
<?php include("../app/view/layout/header.inc.php");?>
<!-- Page Header -->
	<header class="masthead" style="background-image: url('<?= $article["post_img_url"] ?>')">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<div class="post-heading">
						<h1><?= $article["post_title"] ?></h1>
						<span class="meta">par
							<a href="#"><?= $article["display_name"] ?></a></span>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Post Content -->
	<article>
		<div class="container">
			<div class="row">
				<a href="#">
					<img class="img-fluid" src="<?= $article["post_img_url"] ?>" alt="">
				</a>
				<div class="col-lg-8 col-md-10 mx-auto">
					<em>Posté le <?= $article["post_date"] ?></em>
					<p><?= $article["post_content"] ?></p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
							<ul class="list-group mx-auto" style="max-width: 900px;">
								<?php
									if (count($commentaires)==0){
								;?>
										<h4>Soyez le ou la premier.e à lâcher votre com'</h4>
								<?php } ?>	
								<?php
									foreach($commentaires as $commentaire){ ?>
								<li class="list-group-item list-group-item bg-dark text-white d-flex flex-column small">	
									<?= $commentaire["comment_content"]?><br>
									<div class="badge badge-danger badge-pill align-self-end m-1 "><p><?= $commentaire["display_name"]?>,<br>
										<span class="text-dark align-self-end m-1">le <?= $commentaire["comment_date"]?></span></div>
								</li>
								<?php } ?>
							</ul>
				</div>
			</div>
		</div>
	</article>
<!-- COMMENTAIRES -->
	<div>
	</div>
<!-- FOOTER -->
<?php include("../app/view/layout/footer.inc.php");?>