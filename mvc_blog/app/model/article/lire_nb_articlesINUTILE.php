<?php
function lire_nb_articles(){
	global $pdo;
	// var_dump ($pdo);
	try {
		$query= "SELECT count(*) AS nombre
					FROM blog_posts";
		// die($query);

		//ENVOI de la requête
		$req = $pdo->prepare($query);
		//EXÉCUTION de la requête
		$req->execute();
		//RÉCUPÉRATION de tous les résultats
		$req->setFetchMode(PDO::FETCH_ASSOC);
		$data = $req->fetch();
		// var_dump($data);exit;
		$req->closeCursor();
		//RETOUR de tous les articles sélectionnés
		return $data ["nombre"];
	 }catch (Exception $e) {
		// die("Erreur MySQL :". utf8_encode($e->getMessage()));
		return false;
	}
}