<?php include("../app/view/layout/header.inc.php");?>

  <!-- Page Header -->
  <header class="masthead" style="background-image: url('http://media-cache-ak0.pinimg.com/736x/51/f7/2c/51f72c48906a53887496cd7bee002d6d.jpg')">
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
            <h1>Connectez-vous</h1>
            <span class="subheading"><em>En toutes discrétions...</em></span>
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
        <form action="index.php?module=utilisateur&action=login" method="post" name="sentMessage" id="contactForm">
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label>Identifiant</label>
              <input type="text" name="user_login" class="form-control" placeholder="Identifiant" id="name" required data-validation-required-message="Please enter your name.">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label>Mot de Passe</label>
              <input type="password" name="user_pass" class="form-control" placeholder="Mot de Passe" id="email" required data-validation-required-message="Please enter your email address.">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <br>
          <div id="success"></div>
          <div class="form-group">
            <button type="submit" class="btn btn-primary" id="sendMessageButton">M'IDENTIFIER</button>
          </div>
        </form>
      </div>
    </div>
  </div>

<?php include("../app/view/layout/footer.inc.php");?>