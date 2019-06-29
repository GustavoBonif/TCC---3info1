
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <title>Meu Site</title>
</head>
<body>

<form style="margin-left: 30%; margin-right: 30%; margin-top: 2%; border: solid; padding: 1%;">
    <h1 style="text-align: center;">Cadastro de Usuário</h1>
    <hr>
    <div class="form-group">
    <label for="exampleInputnome1">Nome</label>
    <input type="nome" class="form-control" id="exampleInputNome1" aria-describedby="nomeHelp" placeholder="Digite seu nome">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Digite seu email">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <p>Tipo De Usuário</p>
  <div class="form-group form-radio">
    <input type="radio" class="form-radio-input" id="exampleRadio1" name="tipuser">
    <label class="form-radio-label" for="exampleRadio1">Comum</label>
  </div>
  <div class="form-group form-radio">
    <input type="radio" class="form-radio-input" id="exampleRadio1" name="tipuser">
    <label class="form-radio-label" for="exampleRadio1">Funcionário</label>
  </div>
  <div class="form-group form-radio">
    <input type="radio" class="form-radio-input" id="exampleRadio1" name="tipuser">
    <label class="form-radio-label" for="exampleRadio1">Administrador</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

</body>
</html>