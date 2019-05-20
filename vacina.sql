-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE tipuser (
descricao varchar(200),
codtipuser int not null auto_increment PRIMARY KEY
);

CREATE TABLE usercomum (
rg int,
cpf int not null PRIMARY KEY,
coduser int
);

CREATE TABLE noticias (
nome varchar(200),
texto varchar(2000),
codnoticia int not null auto_increment PRIMARY KEY
);

CREATE TABLE publica (
coduser int,
codnoticia int,
FOREIGN KEY(codnoticia) REFERENCES noticias (codnoticia)
);

CREATE TABLE user (
email varchar(200),
pwd varchar(20),
coduser int not null auto_increment PRIMARY KEY,
nome varchar(100),
codtipuser int,
FOREIGN KEY(codtipuser) REFERENCES tipuser (codtipuser)
);

CREATE TABLE vacinacao (
codfunc int,
codvacina int,
cpf int,
data date,
dose int,
FOREIGN KEY(cpf) REFERENCES usercomum (cpf)
);

CREATE TABLE userfuncionario (
horariotrab time,
codfunc int not null auto_increment PRIMARY KEY,
coduser int,
FOREIGN KEY(coduser) REFERENCES user (coduser)
);

CREATE TABLE vacina (
descricao varchar(220),
nome varchar(100),
codvacina int not null auto_increment PRIMARY KEY,
dose int,
idade int,
coduser int,
FOREIGN KEY(coduser) REFERENCES user (coduser)
);

ALTER TABLE usercomum ADD FOREIGN KEY(coduser) REFERENCES user (coduser);
ALTER TABLE publica ADD FOREIGN KEY(coduser) REFERENCES user (coduser);
ALTER TABLE vacinacao ADD FOREIGN KEY(codfunc) REFERENCES userfuncionario (codfunc);
ALTER TABLE vacinacao ADD FOREIGN KEY(codvacina) REFERENCES vacina (codvacina);
