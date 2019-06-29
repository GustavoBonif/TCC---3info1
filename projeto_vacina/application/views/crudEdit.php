<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Crud CI</title>
  </head>
  <body>

    <div class="container">
        <form method="post" action="<?php echo site_url('CrudController/update')?>/<?php echo $row->coduser; ?>">       
            <div class="form-group">
                <label for="exampleInputNome1">Nome</label>
                <input type="nome" class="form-control" name="nome" value="<?php echo $row->nome;?>" id="exampleInputNome1" aria-describedby="nomeHelp" placeholder="Digite seu nome">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Email</label>
                <input type="email" class="form-control" name="email" value="<?php echo $row->email;?>" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Digite seu email">
            </div>
            <div class="form-group">
                <label for="exampleInputSenha1">Senha</label>
                <input type="senha" class="form-control" name="senha" value="<?php echo $row->senha;?>"id="exampleInputSenha1" placeholder="Senha">
            </div>
            <p>Tipo De Usuário</p>
            <div class="form-group form-radio">
                <input type="radio" class="form-radio-input" value="<?php echo $row->codtipuser;?>" name="codtipuser" id="exampleRadio1">
                <label class="form-radio-label" for="exampleRadio1">Comum</label>
            </div>
            <div class="form-group form-radio">
                <input type="radio" class="form-radio-input" value="<?php echo $row->codtipuser;?>" name="codtipuser" id="exampleRadio1">
                <label class="form-radio-label" for="exampleRadio1">Funcionário</label>
            </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                <button type="submit" class="btn btn-primary" value="save">Enviar</button>
            </div>
        </form>
    </div>

  </body>
</html>