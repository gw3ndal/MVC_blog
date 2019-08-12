<?php
function user_add($form){
   global $pdo;
   // var_dump ($pdo);
   try {
      $query="INSERT INTO blog_users
      (user_login, user_email, user_pass, display_name)       
     
            VALUES (:login, :email, :password, :name)";
                     
      // die($query);

      //ENVOI de la requête
      $req = $pdo->prepare($query);
      //INITIALISATION des paramètres
      $req->bindParam(":login", $form["user_login"], PDO::PARAM_STR);
      $req->bindParam(":email", $form["user_email"], PDO::PARAM_STR);
      $req->bindParam(":password", md5($form["user_pass"]), PDO::PARAM_STR);
      $req->bindParam(":name", $form["display_name"], PDO::PARAM_STR);
      //EXÉCUTION de la requête
      $req->execute();
      //RÉCUPÉRATION de tous les résultats
      // $req->setFetchMode(PDO::FETCH_ASSOC);
      // $data = $req->fetch();
      // var_dump($data);exit;
      // $req->closeCursor();
      // if($data){

      //RETOUR de tous les articles sélectionnés
      return true;
    }catch (Exception $e) {
   // die ("SQL Erreur : " . utf8_encode($e->getMessage()));
      // die("Erreur MySQL :". utf8_encode($e->getMessage()));
      return false; //soit USER pas trouvé soit erreur SQL
      //return "catch" // USER non trouvé
   }
}