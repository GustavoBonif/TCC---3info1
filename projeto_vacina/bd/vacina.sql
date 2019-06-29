-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25-Jun-2019 às 02:25
-- Versão do servidor: 10.1.40-MariaDB
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vacina`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `nome` varchar(200) DEFAULT NULL,
  `texto` varchar(3000) DEFAULT NULL,
  `codnoticia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`nome`, `texto`, `codnoticia`) VALUES
('Campanha ocorre na cidade', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `publica`
--

CREATE TABLE `publica` (
  `coduser` int(11) DEFAULT NULL,
  `codnoticia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipuser`
--

CREATE TABLE `tipuser` (
  `descricao` varchar(200) DEFAULT NULL,
  `codtipuser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipuser`
--

INSERT INTO `tipuser` (`descricao`, `codtipuser`) VALUES
('user_comum', 1),
('user_funcionario', 2),
('user_adm', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `email` varchar(200) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL,
  `coduser` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `codtipuser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`email`, `senha`, `coduser`, `nome`, `codtipuser`) VALUES
('boni@gmail.com', 'boni', 1, 'Bonifacio', 1),
('fulano@gmail.com', '123', 2, 'Fulano', 2),
('jeni@gmail.com', '123', 3, 'Jeni', 2),
('dimitri@gmail.com', '123', 5, 'Dimitri', 1),
('luci@gmail.com', 'luci', 32, 'luci', 1),
('alan@gmail.com', 'alan', 35, 'alan', 3),
('deltrano@gmail.com', '123', 36, 'deltrano', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usercomum`
--

CREATE TABLE `usercomum` (
  `rg` int(11) DEFAULT NULL,
  `cpf` int(11) NOT NULL,
  `coduser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usercomum`
--

INSERT INTO `usercomum` (`rg`, `cpf`, `coduser`) VALUES
(555555, 22222, 5),
(123123, 123213, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `userfuncionario`
--

CREATE TABLE `userfuncionario` (
  `horariotrab` time DEFAULT NULL,
  `codfunc` int(11) NOT NULL,
  `coduser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `userfuncionario`
--

INSERT INTO `userfuncionario` (`horariotrab`, `codfunc`, `coduser`) VALUES
('01:00:00', 1, 2),
('03:00:00', 2, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vacina`
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
-- Extraindo dados da tabela `vacina`
--

INSERT INTO `vacina` (`descricao`, `nome`, `codvacina`, `dose`, `idade`, `coduser`) VALUES
('indicada para a profilaxia contra o tétano causado pelo C. tetani, difteria causada pelo C. diphtheriae e a coqueluche causada pela B. ', 'Tétano', 1, 3, '4', 3),
('utilizada na prevenção da febre amarela, doença causada por um arbovírus da família Flaviviridae, do gênero Flavivírus.', 'Febre Amarela', 2, 1, '1', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vacinacao`
--

CREATE TABLE `vacinacao` (
  `codfunc` int(11) DEFAULT NULL,
  `codvacina` int(11) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `dose` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vacinacao`
--

INSERT INTO `vacinacao` (`codfunc`, `codvacina`, `cpf`, `data`, `dose`) VALUES
(1, 1, 123213, '2019-05-24', 1),
(2, 2, 22222, '2019-05-03', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`codnoticia`);

--
-- Indexes for table `publica`
--
ALTER TABLE `publica`
  ADD KEY `codnoticia` (`codnoticia`),
  ADD KEY `coduser` (`coduser`);

--
-- Indexes for table `tipuser`
--
ALTER TABLE `tipuser`
  ADD PRIMARY KEY (`codtipuser`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`coduser`),
  ADD KEY `codtipuser` (`codtipuser`);

--
-- Indexes for table `usercomum`
--
ALTER TABLE `usercomum`
  ADD PRIMARY KEY (`cpf`),
  ADD KEY `coduser` (`coduser`);

--
-- Indexes for table `userfuncionario`
--
ALTER TABLE `userfuncionario`
  ADD PRIMARY KEY (`codfunc`),
  ADD KEY `coduser` (`coduser`);

--
-- Indexes for table `vacina`
--
ALTER TABLE `vacina`
  ADD PRIMARY KEY (`codvacina`),
  ADD KEY `coduser` (`coduser`);

--
-- Indexes for table `vacinacao`
--
ALTER TABLE `vacinacao`
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codfunc` (`codfunc`),
  ADD KEY `codvacina` (`codvacina`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `codnoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tipuser`
--
ALTER TABLE `tipuser`
  MODIFY `codtipuser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `coduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `userfuncionario`
--
ALTER TABLE `userfuncionario`
  MODIFY `codfunc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vacina`
--
ALTER TABLE `vacina`
  MODIFY `codvacina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `publica`
--
ALTER TABLE `publica`
  ADD CONSTRAINT `publica_ibfk_1` FOREIGN KEY (`codnoticia`) REFERENCES `noticias` (`codnoticia`),
  ADD CONSTRAINT `publica_ibfk_2` FOREIGN KEY (`coduser`) REFERENCES `user` (`coduser`);

--
-- Limitadores para a tabela `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`codtipuser`) REFERENCES `tipuser` (`codtipuser`);

--
-- Limitadores para a tabela `usercomum`
--
ALTER TABLE `usercomum`
  ADD CONSTRAINT `usercomum_ibfk_1` FOREIGN KEY (`coduser`) REFERENCES `user` (`coduser`);

--
-- Limitadores para a tabela `userfuncionario`
--
ALTER TABLE `userfuncionario`
  ADD CONSTRAINT `userfuncionario_ibfk_1` FOREIGN KEY (`coduser`) REFERENCES `user` (`coduser`);

--
-- Limitadores para a tabela `vacina`
--
ALTER TABLE `vacina`
  ADD CONSTRAINT `vacina_ibfk_1` FOREIGN KEY (`coduser`) REFERENCES `user` (`coduser`);

--
-- Limitadores para a tabela `vacinacao`
--
ALTER TABLE `vacinacao`
  ADD CONSTRAINT `vacinacao_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `usercomum` (`cpf`),
  ADD CONSTRAINT `vacinacao_ibfk_2` FOREIGN KEY (`codfunc`) REFERENCES `userfuncionario` (`codfunc`),
  ADD CONSTRAINT `vacinacao_ibfk_3` FOREIGN KEY (`codvacina`) REFERENCES `vacina` (`codvacina`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
