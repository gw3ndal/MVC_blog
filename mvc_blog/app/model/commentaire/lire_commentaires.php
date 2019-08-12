<?php
function lire_commentaires(){
   global $pdo;
   // var_dump ($pdo);
   try {
      $query= "SELECT *
               FROM blog_comments, blog_users
               WHERE comment_author=ID
               ORDER BY comment_date DESC";
      // die($query);

      //ENVOI de la requête
      $req = $pdo->prepare($query);
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


