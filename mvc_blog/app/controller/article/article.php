<?php
//die("ACTION détail article");
// var_dump($_GET);

include("../app/model/article/lire_article.php");
$article=lire_article($_GET["id"]);
// var_dump($article);

include("../app/model/commentaire/lire_commentaires_article.php");
$commentaires=lire_commentaires_article($_GET["id"]);
// var_dump($commentaires);
// exit;
define("PAGE_TITLE", $article["post_title"] . " [blog du cabinet de curiosité]");
define("PAGE_DESCR", substr($article["post_content"],0,165)."(...)");
include("../app/view/article/article.php");