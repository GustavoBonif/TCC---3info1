<?php
include ('cabecalho.php');
?>
<!DOCTYPE HTML>

<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<body>
    <div class="paginaLogin" style="background-image: url('imagens/fundologin.jpg');
    background-repeat: no-repeat;
    background-size:100%;
    bottom: 0;
    
    left: 0;
    overflow: auto;
    padding: 3em;
    position: absolute;
    right: 0;
    text-align: center;
    top: 0;
    margin-top: 5%;
    content: '';
    background-size: cover;
    opacity: .7;
    background: #167ce9;
    background: -moz-linear-gradient(45deg, #167ce9 0%, #79efb4 100%);
    background: -webkit-gradient(left bottom, right top, color-stop(0%, #167ce9), color-stop(100%, #79efb4));
    background: -webkit-linear-gradient(45deg, #167ce9 0%, #79efb4 100%);
    background: -o-linear-gradient(45deg, #167ce9 0%, #79efb4 100%);
    background: -ms-linear-gradient(45deg, #167ce9 0%, #79efb4 100%);
    background: linear-gradient(45deg, #167ce9 0%, #79efb4 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#167ce9', endColorstr='#79efb4', GradientType=1 );
}
    "
    >

   <form class="form-login">
      <p class="tituloLogin">LOGIN</p>
      <div class="form-group ">
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email">
      </div>
      <div class="form-group">
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Senha">
      </div>
      <a href="cadastro.php" style="color:white;">Ainda não possui conta? Cadastre-se</a>
      <button type="submit" class="btn btn-primary" style="margin-top: 2%">Logar</button>
    </form>

    </div>

     <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Add
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Cadastro de Usuário</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form method="post" action="<?php echo site_url('CrudController/create')?>">
                        <div class="modal-body">        
                            <div class="form-group">
                                <label for="exampleInputnome1">Nome</label>
                                <input type="nome" class="form-control" name="nome" id="exampleInputNome1" aria-describedby="nomeHelp" placeholder="Digite seu nome">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email</label>
                                <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Digite seu email">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputSenha1">Senha</label>
                                <input type="senha" class="form-control" name="senha" id="exampleInputSenha1" placeholder="Senha">
                            </div>
                            <p>Tipo De Usuário</p>
                            <div class="form-group form-radio">
                                <input type="radio" class="form-radio-input" value="1" name="codtipuser" id="exampleRadio1">
                                <label class="form-radio-label" for="exampleRadio1">Comum</label>
                            </div>
                            <div class="form-group form-radio">
                                <input type="radio" class="form-radio-input" value="2" name="codtipuser" id="exampleRadio1">
                                <label class="form-radio-label" for="exampleRadio1">Funcionário</label>
                            </div>
                            <div class="form-group form-radio">
                                <input type="radio" class="form-radio-input" value="3" name="codtipuser" id="exampleRadio1">
                                <label class="form-radio-label" for="exampleRadio1">Administrador</label>
                            </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                <button type="submit" class="btn btn-primary" value="save">Enviar</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>




</body>
</html>