 
 
 --CREATE. CADASTRO. Comando para cadastrar um usuário do tipo comum(1)
 
 INSERT INTO `user` (`email`, `pwd`, `coduser`, `nome`, `codtipuser`) VALUES ('guilherme@gmail.com', 'coisa', default, 'Guilherme', '1');


 --LOGIN. Aqui, o email e senha que estão sendo conferidos serão substituidos por váriaveis $_POST['email'] e $_POST['senha']
 
 select email, pwd from user where email = 'guilherme@gmail.com' and pwd = 'coisa';
 
 
 --READ. SELECT DO USUARIO. Usar para quando o usuario for acessar as informações da propria conta
 
 select nome, email, pwd, coduser from user where email = 'guilherme@gmail.com' and pwd = 'coisa';


 --UPDATE. Quando o usuario quiser mudar algo na sua conta. No caso, muda a senha de "coisa" para "treco"
 
  UPDATE `user` SET `senha` = 'treco' WHERE `user`.`coduser` = 7;


 --DELETE. Quando o usuario quiser deletar a sua conta.
 
 DELETE FROM `user` WHERE `user`.`coduser` = 7;
