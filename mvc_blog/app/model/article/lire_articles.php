<?php
function lire_articles($offset, $limite){
	global $pdo;
	// var_dump ($pdo);
	try {
		$query= "SELECT  post_ID, post_title,  DATE_FORMAT(post_date,'%d.%c.%Y à %H:%i') AS post_date_f, post_img_url, LEFT(post_content, " . POST_TR . ") AS post_content, display_name, cat_descr
					FROM blog_posts, blog_users, blog_categories
					WHERE post_author=ID
						AND post_category=cat_id
					ORDER BY post_date DESC
					LIMIT :offset, :limite";
		// die($query);

		//ENVOI de la requête
		$req = $pdo->prepare($query);
		//INITIALISATION des paramètres
		$req->bindParam(":offset", $offset, PDO::PARAM_INT);
		$req->bindParam(":limite", $limite, PDO::PARAM_INT);
		//EXÉCUTION de la requête
		$req->execute();
		//RÉCUPÉRATION de tous les résultats
		$req->setFetchMode(PDO::FETCH_ASSOC);
		$articles = $req->fetchAll();
		// var_dump($data);exit;
		$req->closeCursor();
		//RETOUR de tous les articles sélectionnés
		return $articles;
	 }catch (Exception $e) {
		// die("Erreur MySQL :". utf8_encode($e->getMessage()));
		return false;
	}
}