<?php

include ('cabecalho.php');

?>

<div class="col-9" style="margin: 6% 15% 0 15%">
        <div class="tab-content" id="v-pills-tabContent">
          <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                <div class="jumbotron" style="background-color: white">
                  <h1 class="display-4">Ops...</h1>
                  <p class="lead">Você não está logado</p>
                  <hr class="my-4">
                  <p>Caso ainda não seja um usuário do site faça seu cadastro agora <a href="<?php echo site_url('InicioController/header_cadastro');?>">clicando aqui</a></p>
                  <a class="btn btn-primary btn-lg text1Departamento" data-toggle="modal" data-target="#loginModal" href="#" role="button" style="border-radius: 40px">Logar</a>
                </div>              
          </div>
          </div>