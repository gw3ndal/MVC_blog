<?php
// AFFICHAGE liste des articles
// include ("../app/model/article/lire_nb_articles.php"); ******A PRESENT CET INCLUDE N'EST PLUS UTILE
include ("../app/model/article/lire_articles.php");

$nb_articles = lire_nb("blog_posts");
$pages = ceil($nb_articles / NB_PAR_PAGE);
// echo "nb de comment = ". lire_nb("blog_comments");

if ($nb_articles){
   // var_dump($nb_articles);
} else{
   die("ERREUR");
}
// echo "Nb de pages = " . $pages."<br>";
// echo "Nb Total d'articles = " . $nb_articles;

if(isset($_GET["page"])){
   $page_demandee = ($_GET["page"]);
   if ($_GET["page"] > $pages){
      $page_demandee = $pages;
   }
   if ($_GET["page"] <= 0){
      $page_demandee = 1;
   }
}else{
   $page_demandee = 1;  
}

$offset = ($page_demandee - 1) * NB_PAR_PAGE;
$articles = lire_articles($offset,NB_PAR_PAGE);
if ($articles){
   // var_dump($articles);
} else{
   die("ERREUR");
}
   // var_dump($articles);
foreach ($articles as $key => $article) {
   // echo " CLÉ = " . $key;
   // var_dump($article);
   $articles [$key]["post_date_f"]= ", publié en ".$article["post_date_f"];
}
define("PAGE_TITLE", "Liste des articles");
include ("../app/view/article/index.php");