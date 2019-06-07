-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 07/06/2019 às 10:27
-- Versão do servidor: 5.7.25-0ubuntu0.18.04.2
-- Versão do PHP: 7.2.17-1+ubuntu18.04.1+deb.sury.org+3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `vacina 2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `noticias`
--

CREATE TABLE `noticias` (
  `nome` varchar(200) DEFAULT NULL,
  `texto` varchar(3000) DEFAULT NULL,
  `codnoticia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `noticias`
--

INSERT INTO `noticias` (`nome`, `texto`, `codnoticia`) VALUES
('Campanha ocorre na cidade', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `publica`
--

CREATE TABLE `publica` (
  `coduser` int(11) DEFAULT NULL,
  `codnoticia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipuser`
--

CREATE TABLE `tipuser` (
  `descricao` varchar(200) DEFAULT NULL,
  `codtipuser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tipuser`
--

INSERT INTO `tipuser` (`descricao`, `codtipuser`) VALUES
('user_comum', 1),
('user_funcionario', 2),
('user_adm', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE `user` (
  `email` varchar(200) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `coduser` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `codtipuser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `user`
--

INSERT INTO `user` (`email`, `pwd`, `coduser`, `nome`, `codtipuser`) VALUES
('gustavo@gmail.com', '123', 1, 'Gustavo', 1),
('fulano@gmail.com', '123', 2, 'Fulano', 2),
('jeni@gmail.com', '123', 3, 'Jeni', 2),
('gabi@gmail.com', '123', 4, 'Gabi', 3),
('dimitri@gmail.com', '123', 5, 'Dimitri', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usercomum`
--

CREATE TABLE `usercomum` (
  `rg` int(11) DEFAULT NULL,
  `cpf` int(11) NOT NULL,
  `coduser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `usercomum`
--

INSERT INTO `usercomum` (`rg`, `cpf`, `coduser`) VALUES
(555555, 22222, 5),
(123123, 123213, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `userfuncionario`
--

CREATE TABLE `userfuncionario` (
  `horariotrab` time DEFAULT NULL,
  `codfunc` int(11) NOT NULL,
  `coduser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `userfuncionario`
--

INSERT INTO `userfuncionario` (`horariotrab`, `codfunc`, `coduser`) VALUES
('01:00:00', 1, 2),
('03:00:00', 2, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vacina`
--

CREATE TABLE `vacina` (
  `descricao` varchar(400) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `codvacina` int(11) NOT NULL,
  `dose` int(11) DEFAULT NULL,
  `idade` varchar(20) DEFAULT NULL,
  `coduser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `vacina`
--

INSERT INTO `vacina` (`descricao`, `nome`, `codvacina`, `dose`, `idade`, `coduser`) VALUES
('indicada para a profilaxia contra o tétano causado pelo C. tetani, difteria causada pelo C. diphtheriae e a coqueluche causada pela B. ', 'Tétano', 1, 3, '4', 3),
('utilizada na prevenção da febre amarela, doença causada por um arbovírus da família Flaviviridae, do gênero Flavivírus.', 'Febre Amarela', 2, 1, '1', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vacinacao`
--

CREATE TABLE `vacinacao` (
  `codfunc` int(11) DEFAULT NULL,
  `codvacina` int(11) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `dose` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `vacinacao`
--

INSERT INTO `vacinacao` (`codfunc`, `codvacina`, `cpf`, `data`, `dose`) VALUES
(1, 1, 123213, '2019-05-24', 1),
(2, 2, 22222, '2019-05-03', 1);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`codnoticia`);

--
-- Índices de tabela `publica`
--
ALTER TABLE `publica`
  ADD KEY `codnoticia` (`codnoticia`),
  ADD KEY `coduser` (`coduser`);

--
-- Índices de tabela `tipuser`
--
ALTER TABLE `tipuser`
  ADD PRIMARY KEY (`codtipuser`);

--
-- Índices de tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`coduser`),
  ADD KEY `codtipuser` (`codtipuser`);

--
-- Índices de tabela `usercomum`
--
ALTER TABLE `usercomum`
  ADD PRIMARY KEY (`cpf`),
  ADD KEY `coduser` (`coduser`);

--
-- Índices de tabela `userfuncionario`
--
ALTER TABLE `userfuncionario`
  ADD PRIMARY KEY (`codfunc`),
  ADD KEY `coduser` (`coduser`);

--
-- Índices de tabela `vacina`
--
ALTER TABLE `vacina`
  ADD PRIMARY KEY (`codvacina`),
  ADD KEY `coduser` (`coduser`);

--
-- Índices de tabela `vacinacao`
--
ALTER TABLE `vacinacao`
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codfunc` (`codfunc`),
  ADD KEY `codvacina` (`codvacina`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `codnoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `tipuser`
--
ALTER TABLE `tipuser`
  MODIFY `codtipuser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `coduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `userfuncionario`
--
ALTER TABLE `userfuncionario`
  MODIFY `codfunc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `vacina`
--
ALTER TABLE `vacina`
  MODIFY `codvacina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `publica`
--
ALTER TABLE `publica`
  ADD CONSTRAINT `publica_ibfk_1` FOREIGN KEY (`codnoticia`) REFERENCES `noticias` (`codnoticia`),
  ADD CONSTRAINT `publica_ibfk_2` FOREIGN KEY (`coduser`) REFERENCES `user` (`coduser`);

--
-- Restrições para tabelas `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`codtipuser`) REFERENCES `tipuser` (`codtipuser`);

--
-- Restrições para tabelas `usercomum`
--
ALTER TABLE `usercomum`
  ADD CONSTRAINT `usercomum_ibfk_1` FOREIGN KEY (`coduser`) REFERENCES `user` (`coduser`);

--
-- Restrições para tabelas `userfuncionario`
--
ALTER TABLE `userfuncionario`
  ADD CONSTRAINT `userfuncionario_ibfk_1` FOREIGN KEY (`coduser`) REFERENCES `user` (`coduser`);

--
-- Restrições para tabelas `vacina`
--
ALTER TABLE `vacina`
  ADD CONSTRAINT `vacina_ibfk_1` FOREIGN KEY (`coduser`) REFERENCES `user` (`coduser`);

--
-- Restrições para tabelas `vacinacao`
--
ALTER TABLE `vacinacao`
  ADD CONSTRAINT `vacinacao_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `usercomum` (`cpf`),
  ADD CONSTRAINT `vacinacao_ibfk_2` FOREIGN KEY (`codfunc`) REFERENCES `userfuncionario` (`codfunc`),
  ADD CONSTRAINT `vacinacao_ibfk_3` FOREIGN KEY (`codvacina`) REFERENCES `vacina` (`codvacina`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
