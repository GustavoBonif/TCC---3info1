-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11-Ago-2019 às 23:52
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
('11', '222', 1);

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
('admin@gmail.com', 'admin', 3, 'Administrador', 3),
('jeni@gmail.com', 'jeni', 33, 'Jenifer', 2),
('gustavo@gmail.com', '123', 38, 'Gustavo', 2),
('claudia@gmail.com', '123', 39, 'Claudia Huber', 1),
('ze@gmail.com', '123', 41, 'José da Silva', 1),
('teste@gmail.com', '123', 42, 'Teste', 1),
('luci@gmail.com', '123', 43, 'Luci da Silva Bonifácio', 1);

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
(2222, 1111, 42),
(8828282, 919191, 39),
(2020202, 929292929, 43),
(11919919, 2147483647, 41);

-- --------------------------------------------------------

--
-- Estrutura da tabela `userfuncionario`
--

CREATE TABLE `userfuncionario` (
  `localtrab` varchar(50) DEFAULT NULL,
  `codfunc` int(11) NOT NULL,
  `coduser` int(11) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `userfuncionario`
--

INSERT INTO `userfuncionario` (`localtrab`, `codfunc`, `coduser`, `cpf`) VALUES
('Posto de Saúde de Araquari', 5, 33, 82828282),
('Posto de Saúde de Araquari', 7, 38, NULL);

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
('previne as formas graves de tuberculose, principalmente miliar e meníngea', 'BCG', 1, 1, '0', NULL),
('previne difteria, tétano, coqueluche, hepatite B e meningite e infecções por HiB', 'Pentavalente', 2, 3, '9', NULL),
('previne a doença meningocócica C', 'Meningocócica C ', 3, 5, '0.3/ 0.5/ 1/ 11/ 14 ', NULL),
('previne a poliomielite ou paralisia infantil', 'VIP', 4, 3, '0.2/ 0.4/ 0,6', NULL),
('previne pneumonia, otite, meningite e outras doenças causadas pelo Pneumococo', 'Pneumocócica 10 Valente', 5, 3, '0.2/ 0.4/ 1', NULL),
('previne diarreia por rotavírus', 'Rotavírus', 6, 2, '0.2/ 0.4', NULL),
('previne sarampo, caxumba e rubéola', 'Tríplice viral', 7, 2, '1/ 10', NULL),
('Difteria, tétano e coqueluche', 'DTP ', 8, 2, '1.3/ 4', NULL),
('previne poliomielite ou paralisia infantil', 'VOP', 9, 2, '1.3/ 4', NULL),
('previne a hepatite A ', 'Hepatite A ', 10, 1, '1.3', NULL),
('previne sarampo, rubéola, caxumba e varicela/catapora', 'Tetra viral', 11, 1, '1.3', NULL),
('previne varicela/catapora', 'Varicela atenuada', 12, 1, '4', NULL),
('previne o papiloma, vírus humano que causa cânceres e verrugas genitais', 'HPV ', 13, 2, '11/ 11.6', NULL),
('previne a Hepatite B', 'Hepatite B', 14, 3, '10/ 15/ 18', NULL),
('previne difteria e tétano', 'Dupla Adulto', 15, 0, 'a cada 10 anos', NULL),
('(previne pneumonia, otite, meningite e outras doenças causadas pelo Pneumococo', 'Pneumocócica 23 Valente', 16, 1, '14', NULL),
('não te deixa morrer', 'Vacina teste', 17, 1, '2', NULL),
(NULL, NULL, 18, NULL, NULL, NULL),
(NULL, NULL, 19, NULL, NULL, NULL),
(NULL, NULL, 20, NULL, NULL, NULL),
(NULL, NULL, 21, NULL, NULL, NULL),
(NULL, NULL, 22, NULL, NULL, NULL),
(NULL, NULL, 23, NULL, NULL, NULL),
(NULL, NULL, 24, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vacinacao`
--

CREATE TABLE `vacinacao` (
  `codfunc` int(11) DEFAULT NULL,
  `codvacina` int(11) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `dose` int(11) DEFAULT NULL,
  `codvacinacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vacinacao`
--

INSERT INTO `vacinacao` (`codfunc`, `codvacina`, `cpf`, `data`, `dose`, `codvacinacao`) VALUES
(7, 17, 1111, '2019-07-29', 1, 3),
(NULL, 2, NULL, '2019-07-30', 2, 4),
(5, 7, 929292929, '2019-07-23', 1, 5),
(NULL, 3, NULL, '2019-07-24', 2, 6),
(NULL, 8, NULL, '2222-02-22', 1, 9),
(7, 10, 919191, '0005-05-05', 3, 10),
(7, 3, 919191, '0033-03-31', 2, 14),
(7, 9, 2147483647, '0022-02-22', 3, 15);

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
  ADD PRIMARY KEY (`codvacinacao`),
  ADD KEY `codvacina` (`codvacina`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codfunc` (`codfunc`);

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
  MODIFY `coduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `userfuncionario`
--
ALTER TABLE `userfuncionario`
  MODIFY `codfunc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vacina`
--
ALTER TABLE `vacina`
  MODIFY `codvacina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `vacinacao`
--
ALTER TABLE `vacinacao`
  MODIFY `codvacinacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  ADD CONSTRAINT `vacinacao_ibfk_1` FOREIGN KEY (`codvacina`) REFERENCES `vacina` (`codvacina`),
  ADD CONSTRAINT `vacinacao_ibfk_2` FOREIGN KEY (`cpf`) REFERENCES `usercomum` (`cpf`),
  ADD CONSTRAINT `vacinacao_ibfk_3` FOREIGN KEY (`codfunc`) REFERENCES `userfuncionario` (`codfunc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
