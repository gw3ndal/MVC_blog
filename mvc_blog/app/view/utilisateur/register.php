<?php include("../app/view/layout/header.inc.php");?>

  <!-- Page Header -->
  <header class="masthead" style="background-image: url('https://i.etsystatic.com/19462334/r/il/da5f07/1783454794/il_794xN.1783454794_jyfq.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <div class="container-fluid">                 
              <?php
                if (isset($_GET["notif"])){
                  if($_GET["notif"] =="nok"){
              ?>              
                    <div class="alert alert-danger" role="alert">
                      <i class="fas fa-fire-alt"></i></i> Oups! Il y'a quelque chose qui coince. Merci de retenter ton coup <i class="fas fa-fire-alt"></i>
                    </div>
              <?php
                  }                  
                }
              ?>
            </div>            
            <h1>Inscrivez-vous</h1>
            <span class="subheading"><em>Que l'on se pende à vos lèvres...</em></span>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Main Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">
        <p></p>
        <form action="index.php?module=utilisateur&action=register" method="post" name="sentMessage" id="contactForm">
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label for="display_name">Pseudo</label>
              <input type="text" name="display_name"  id="display_name" class="form-control" placeholder="Entrez votre Pseudo"required data-validation-required-message="Entrez votre Pseudo">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label for="user_email">Email</label>
              <input type="email" name="user_email" id="user_email" class="form-control" placeholder="et votre email" required data-validation-required-message="et votre email">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label for="user_login">Identifiant</label>
              <input type="text" name="user_login" id="name" class="form-control" placeholder="Créer votre identifiant" required data-validation-required-message="Créer votre identifiant">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label for="user_login">Mot de Passe</label>
              <input type="password" name="user_pass" id="user_login" class="form-control" placeholder="et votre mot de passe" required data-validation-required-message="Please enter your email address.">
              <p class="et votre Mot de Passe"></p>
            </div>
          </div>
          <br>
          <div id="success"></div>
          <div class="form-group">
            <button type="submit" class="btn btn-primary" id="inscription">S'INSCRIRE</button>
          </div>
        </form>
      </div>
    </div>
  </div>

<?php include("../app/view/layout/footer.inc.php");?>