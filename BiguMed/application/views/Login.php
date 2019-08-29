<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html>
<head>
  <!--Import Google Icon Font-->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!--Import materialize.css-->
  <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>

<body>

  <main><div class="container">
    <div class="row">
      <div class="col s8 offset-s2">

        <div class="card card-login" style="display: flex;">
          <div class="card-login-splash">
            <div class="wrapper">
              <h3>Conta BiguMed</h3>
              <a class="btn" href="#!">Cadastrar</a>
            </div>
          </div>
          <div class="card-content">
            <span class="card-title">Entrar</span>
            <form>
              <div class="input-field">
                <input id="username" type="text" class="validate">
                <label for="username">CPF</label>
              </div>
              <div class="input-field">
                <input id="password" type="password" class="validate">
                <label for="password">Senha</label>
              </div>

              <a href="#!">Esqueceu a senha?</a>

              <br><br>
              <div>
                <input class="btn right" type="submit" value="Entrar">
              </div>

            </form>
          </div>
        </div>

      </div>
    </div>
  </div>
</main>

<!--JavaScript at end of body for optimized loading-->
<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>