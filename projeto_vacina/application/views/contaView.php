<?php
    include('cabecalho.php');
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <title>Sua Conta</title>
  </head>
  <body>

    <!-- As a link -->

        <div class="container">
        <br>
        
        <br>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                <th scope="col">#</th>
                <th scope="col">Nome</th>
                <th scope="col">Email</th>               
                <th scope="col">Tipo</th>
                <th schope="col">Opções</th>
                
                </tr>
            </thead>
            <tbody>
                <?php foreach($result as $row) {?>
                <tr>
                    <th scope="row"><?php echo $row->coduser; ?></th>
                    <td><?php echo $row->nome; ?></td>
                    <td><?php echo $row->email; ?></td>
                    <td><?php 
                      if($row->codtipuser == 1){
                        echo 'comum';
                      }elseif($row->codtipuser == 2){
                        echo 'funcionário';
                      }elseif($row->codtipuser == 3){
                        echo 'administrador';
                      }
                    
                      ?></td>
                    <td> <a href="<?php echo site_url('CrudController/edit');?>/<?php echo $row->coduser;?>">Editar</a> | <a href="<?php echo site_url('CrudController/delete');?>/<?php echo $row->coduser;?>">Delete</a> </td>
                </tr>
                <?php } ?>
            </tbody>
        
    
<?php
    if(isset($_SESSION['user'])){
        if($_SESSION['user']['codtipuser'] == 3){ ?>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Adicionar Funcionário
        </button>
    <?php
    }
  }
?>


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
                          <input type="radio" class="form-radio-input" checked value="2" name="codtipuser" id="exampleRadio1">
                          <label class="form-radio-label" for="exampleRadio1">Funcionário</label>
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

      </table>
    </div>
  </body>
</html>