<?php
function lire_commentaires_article($id_article){
   global $pdo;
   // var_dump ($pdo);
   try {
      $query= "SELECT *
               FROM blog_comments, blog_users
               WHERE comment_author=ID
                  AND comment_post_ID=:comment_post_ID
               ORDER BY comment_date DESC";
      // die($query);

      //ENVOI de la requête
      $req = $pdo->prepare($query);
      $req->bindParam(":comment_post_ID", $id_article, PDO::PARAM_INT);
      //EXÉCUTION de la requête
      $req->execute();
      //RÉCUPÉRATION de tous les résultats
      $req->setFetchMode(PDO::FETCH_ASSOC);
      $data = $req->fetchAll();
      // var_dump($data);exit;
      $req->closeCursor();
      //RETOUR de tous les articles sélectionnés
      return $data;
    }catch (Exception $e) {
      // die("Erreur MySQL :". utf8_encode($e->getMessage()));
      return false;
   }
}


