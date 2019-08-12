<?php
include("../app/view/layout/header.inc.php");
?>

<h2>Liste des Commentaires</h2>
<ul>
<?php 
// var_dump($commentaires);
foreach ($commentaires as $commentaire) {
?>
   <li>
      Le <?=$commentaire["comment_date"]?><br>
      <?=$commentaire["display_name"]?><br>
      <?=$commentaire["comment_content"]?>
   </li>
<?php
}
?>
</ul>
<?php
include("../app/view/layout/footer.inc.php");
?>