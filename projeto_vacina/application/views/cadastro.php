<?php 
	include('cabecalho.php');
?>
		<div style="margin: 5% 10% 0 10%">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Cadastro de Usuário</h5>
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
                    <input type="radio" class="form-radio-input" value="1" name="codtipuser" checked id="exampleRadio1">
                    <label class="form-radio-label" for="exampleRadio1">Comum</label>
                </div>
<!--                 <div class="form-group form-radio">
                    <input type="radio" class="form-radio-input" value="2" name="codtipuser" id="exampleRadio1">
                    <label class="form-radio-label" for="exampleRadio1">Funcionário</label>
                </div> -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                    <button type="submit" class="btn btn-primary" value="save">Enviar</button>
                </div>
            </div>
        </form>
    </div>
    </div>