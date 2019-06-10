<?php
include ('cabecalho.php');
?>
<!DOCTYPE HTML>

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
  <button type="submit" class="btn btn-primary">Logar</button>
</form>
    </div>




</body>
</html>