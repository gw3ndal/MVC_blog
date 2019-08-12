<?php
function lire_article($id){
   global $pdo;
   // var_dump ($pdo);
   try {
      $query= "SELECT *
               FROM blog_posts A, blog_users B, blog_categories C
               WHERE A.post_author=B.ID
                  AND post_category=cat_id
                  AND post_ID=:id
                  AND post_author=ID";
      // die($query);

      //ENVOI de la requête
      $req = $pdo->prepare($query);
      //INITIALISATION des paramètres
      $req->bindParam(":id", $id, PDO::PARAM_INT);
      //EXÉCUTION de la requête
      $req->execute();
      //RÉCUPÉRATION de tous les résultats
      $req->setFetchMode(PDO::FETCH_ASSOC);
      $data = $req->fetch();
      // var_dump($data);exit;
      $req->closeCursor();
      //RETOUR de tous les articles sélectionnés
      return $data;
    }catch (Exception $e) {
      // die("Erreur MySQL :". utf8_encode($e->getMessage()));
      return false;
   }
}