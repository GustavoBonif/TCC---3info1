<?php

?>

<!DOCTYPE html>
<html>
<head>
	<title>Vacinas Online</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/estilo.css')?>">

   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<header>

  <ul class="nav justify-content" style="margin: 1% 0 1% 0">
  <img src="<?php echo base_url('assets/imagens/logo.png');?>" style="width:200px; height: 40px; margin: 0 22% 0 15%">

  <?php
    if(isset($_SESSION['user'])){
      if($_SESSION['user']['codtipuser'] == 1){
        echo '<h5 style="margin-left: -15%; margin-right: 1%; margin-top: 0.5%;">Usuário Comum</h5>';
      }elseif($_SESSION['user']['codtipuser'] == 2){
        echo '<h5 style="margin-left: -15%; margin-right: 1%; margin-top: 0.5%;">Usuário Funcionário</h5>';
      }elseif($_SESSION['user']['codtipuser'] == 3){
        echo '<h5 style="margin-left: -15%; margin-right: 1%; margin-top: 0.5%;">Usuário adm</h5>';
      }
    }
  ?>

  <li class="nav-item">
    <a class="nav-link active" href="<?php echo site_url('InicioController/index');?>">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link menu-texto" href="#">Notícias</a>
  </li>
  <li class="nav-item">
    <a class="nav-link menu-texto" href="#" >Carteirinha Online</a>
  </li>

  <?php
    if(isset($_SESSION['user'])){
  ?>
    <li class="nav-item">
      <a class="nav-link menu-texto" href="<?php echo site_url('InicioController/contaView');?>" >Minha Conta</a>
    </li>
    <li class="nav-item">
      <a class="nav-link menu-texto login" href="<?php echo site_url('User/logout');?>" >Sair</a>
    </li>

<?php
    }else{
  ?>
    <li class="nav-item">
      <a class="nav-link menu-texto" href="<?php echo site_url('InicioController/header_cadastro');?>" >Cadastro</a>
    </li>
    <li class="nav-item">
      <a class="nav-link menu-texto login" data-toggle="modal" data-target="#loginModal" href="<?php echo site_url('InicioController/header_login');?>" >Login</a>
    </li>


  <?php }?>




  <!-- Modal -->
  <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Login de Usuário</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <form method="post" action="<?php echo site_url('User/login')?>"> <!--LOGIN INICIO -->
            <div class="modal-body">        
              <div class="form-group">
                <label for="exampleInputemail1">Email</label>
                <input type="email" class="form-control" name='email' id="exampleInputemail1" aria-describedby="emailHelp" placeholder="Digite seu email">
              </div>
              <div class="form-group">
                <label for="exampleInputSenha1">Senha</label>
                <input type="password" class="form-control" name='senha' id="exampleInputSenha1" placeholder="Senha">
              </div>

            </div>
              <div class="modal-footer">
                <a href="<?php echo site_url('InicioController/header_cadastro');?>" style="">Ainda não possui conta? Cadastre-se</a>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                <button type="submit" class="btn btn-primary">Logar</button>
                <?php
                  echo $this->session->flashdata("erro");
                ?>
              </div>
            </div>
          </form>
        </div>
    </div>
</ul>
</header>
</body>

<?php
	include('rodape.php');

?>

</html>

