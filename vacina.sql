-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02-Dez-2019 às 14:23
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
  `nome_noticias` varchar(200) DEFAULT NULL,
  `texto_noticias` varchar(3000) DEFAULT NULL,
  `imagem_noticias` varchar(255) NOT NULL,
  `link_noticias` varchar(300) NOT NULL,
  `pk_codnoticia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`nome_noticias`, `texto_noticias`, `imagem_noticias`, `link_noticias`, `pk_codnoticia`) VALUES
('Municípios vão ser premiados por alcançar metas de vacinação', 'Os primeiros 15 municípios que alcançarem as metas até 30 de março de 2020 serão contemplados com câmaras refrigeradas com capacidade de 340l.', 'a3961b732f314dc9264ab2e126ad1768.jpg', 'https://oimparcial.com.br/saude/2019/11/municipios-vao-ser-premiados-por-alcancar-metas-de-vacinacao/', 9),
('Vacinação de sarampo em crianças menores de 9 meses é segura e eficaz?', 'Sarampo é uma doença viral aguda altamente contagiosa e que pode causar complicações potencialmente fatais. Embora considerado livre da doença em 2016, o Brasil viu, nos últimos anos, um aumento importante no número de casos, com alguns estados vivendo epidemias ativas.', '3ada82470df16c388ad7b9376e5eae69.jpg', 'https://pebmed.com.br/vacinacao-de-sarampo-em-criancas-menores-de-9-meses-e-segura-e-eficaz/', 10),
('Comunicado: vacinação contra o sarampo', 'A Secretaria Municipal de Saúde de Araquari convoca o público que esteve presente no show da dupla Jorge e Mateus, em Araquari, no dia 8 de novembro, para verificar a situação vacinal.', '4152d863b99dd7d865301b6dd7c3496e.jpg', 'https://araquari.sc.gov.br/noticia/3514/comunicado-vacinacao-contra-o-sarampo', 12),
('Com um caso confirmado, Saúde reforça vacinação contra o sarampo', 'Na próxima segunda-feira, dia 18 de novembro, inicia a segunda fase da Campanha Nacional de Vacinação contra o Sarampo. Desta vez, o foco está nos jovens e adultos entre 20 e 29 anos. No sábado, 30 de novembro, será o Dia D e em Araquari, as seis salas de vacinação estarão abertas das 8h às 17h.', 'bec07f6835fe33baa26ef7671a42fd7c.jpg', 'https://araquari.sc.gov.br/noticia/3509/com-um-caso-confirmado-saude-reforca-vacinacao-contra-o-sarampo', 13),
('Participantes de Enem e Festa das Flores precisam se vacinar contra o sarampo em Joinville', 'Secretaria da Saúde divulgou ainda outros três eventos em que os participantes precisam se imunizar', '0bcb819e3f53891f726fd04202c149e1.jpg', 'https://www.nsctotal.com.br/noticias/participantes-de-enem-e-festa-das-flores-precisam-se-vacinar-contra-o-sarampo-em-joinville', 14);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipuser`
--

CREATE TABLE `tipuser` (
  `descricao_tipuser` varchar(200) DEFAULT NULL,
  `pk_codtipuser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipuser`
--

INSERT INTO `tipuser` (`descricao_tipuser`, `pk_codtipuser`) VALUES
('user_comum', 1),
('user_funcionario', 2),
('user_adm', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `email_user` varchar(200) DEFAULT NULL,
  `senha_user` varchar(20) DEFAULT NULL,
  `pk_coduser` int(11) NOT NULL,
  `nome_user` varchar(100) DEFAULT NULL,
  `fk_codtipuser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`email_user`, `senha_user`, `pk_coduser`, `nome_user`, `fk_codtipuser`) VALUES
('admin@gmail.com', 'admin', 3, 'Administrador', 3),
('jeni@gmail.com', 'jeni', 33, 'Jenifer', 2),
('gustavo@gmail.com', '123', 38, 'Gustavo Bonifacio', 2),
('claudia@gmail.com', '123', 39, 'Claudia Huber', 1),
('ze@gmail.com', '123', 41, 'José', 1),
('aaa@gmail.com', '123', 67, 'aaa', 2),
('comum@gmail.com', '123', 83, 'comum', 1),
('func@gmail.com', '123', 84, 'Func', 2),
('nha@gmail.com', '123', 85, 'nha', 2),
('teste@gmail.com', '123', 106, 'teste silva', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usercomum`
--

CREATE TABLE `usercomum` (
  `rg_usercomum` varchar(11) DEFAULT NULL,
  `pk_cpf_usercomum` bigint(11) NOT NULL,
  `fk_coduser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usercomum`
--

INSERT INTO `usercomum` (`rg_usercomum`, `pk_cpf_usercomum`, `fk_coduser`) VALUES
('421312', 414312, 106),
('8828282', 919191, 39),
('412763821', 41294728, 83),
('11919919', 2147483647, 41);

-- --------------------------------------------------------

--
-- Estrutura da tabela `userfuncionario`
--

CREATE TABLE `userfuncionario` (
  `localtrab_userfunc` varchar(50) DEFAULT NULL,
  `pk_codfunc` int(11) NOT NULL,
  `fk_coduser` int(11) DEFAULT NULL,
  `cpf_userfunc` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `userfuncionario`
--

INSERT INTO `userfuncionario` (`localtrab_userfunc`, `pk_codfunc`, `fk_coduser`, `cpf_userfunc`) VALUES
('Posto de Saúde Itinga', 5, 33, '992817238'),
('Posto de Saúde de Araquari', 7, 38, '37812732718'),
('Posto de Saúde Itinga', 72, 84, '412791'),
('Posto de Saúde de Araquari', 73, 85, '123214');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vacina`
--

CREATE TABLE `vacina` (
  `descricao_vacina` varchar(400) DEFAULT NULL,
  `nome_vacina` varchar(100) DEFAULT NULL,
  `pk_codvacina` int(11) NOT NULL,
  `dose_vacina` int(11) DEFAULT NULL,
  `idade_vacina` varchar(50) DEFAULT NULL,
  `fk_coduser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vacina`
--

INSERT INTO `vacina` (`descricao_vacina`, `nome_vacina`, `pk_codvacina`, `dose_vacina`, `idade_vacina`, `fk_coduser`) VALUES
('previne as formas graves de tuberculose, principalmente miliar e meníngea', 'BCG', 1, 1, '0.1', NULL),
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
('previne a Hepatite B', 'Hepatite B', 14, 3, '10/ 15/ 18/ gestante', NULL),
('previne difteria e tétano', 'Dupla Adulto', 15, 6, 'a cada 10 anos / gestantes', NULL),
('previne pneumonia, otite, meningite e outras doenças causadas pelo Pneumococo', 'Pneumocócica 23 Valente', 16, 1, '14', NULL),
('não te deixa morrer', 'Vacina teste', 17, 2, '2', NULL),
('Previne contra herpes zóster, causado pela reativação do vírus da catapora.', 'Herpes Zóster', 22, 1, '60', NULL),
('Previne contra a febre amarela, causada pela picada de mosquitos infectados.', 'Febre amarela', 23, 6, '10 até 60', NULL),
('Previne contra os diferentes vírus da gripe.', 'Influenza', 24, 1, '60+ / gestantes', NULL),
('previne contra depressão', 'amor', 26, 1, '2', NULL),
('coisacoisacoisa', 'coisas', 27, 1, '2', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vacinacao`
--

CREATE TABLE `vacinacao` (
  `fk_codfunc` int(11) DEFAULT NULL,
  `fk_codvacina` int(11) DEFAULT NULL,
  `fk_cpf` bigint(11) DEFAULT NULL,
  `data_vacinacao` varchar(50) DEFAULT NULL,
  `dose_vacinacao` int(11) DEFAULT NULL,
  `pk_codvacinacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vacinacao`
--

INSERT INTO `vacinacao` (`fk_codfunc`, `fk_codvacina`, `fk_cpf`, `data_vacinacao`, `dose_vacinacao`, `pk_codvacinacao`) VALUES
(7, 9, 2147483647, '0222-02-22', 3, 15),
(7, 1, 2147483647, '2019-02-28', 2, 22),
(7, 9, 2147483647, '0022-02-22', 1, 31),
(5, 13, 919191, '12/11/2019', 1, 50),
(7, 5, 919191, '0022-02-22', 1, 51),
(7, 6, 2147483647, '25/11/2019', 1, 55),
(7, 7, 2147483647, '27/11/2019', 2, 56),
(72, 3, 41294728, '2019-11-11', 1, 59),
(72, 6, 2147483647, '02/12/2019', 2, 60),
(72, 10, 2147483647, '02/12/2019', 1, 61),
(72, 8, 2147483647, '02/12/2019', 2, 62),
(72, 15, 2147483647, '02/12/2019', 1, 63);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`pk_codnoticia`);

--
-- Indexes for table `tipuser`
--
ALTER TABLE `tipuser`
  ADD PRIMARY KEY (`pk_codtipuser`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`pk_coduser`),
  ADD KEY `codtipuser` (`fk_codtipuser`);

--
-- Indexes for table `usercomum`
--
ALTER TABLE `usercomum`
  ADD PRIMARY KEY (`pk_cpf_usercomum`),
  ADD KEY `coduser` (`fk_coduser`);

--
-- Indexes for table `userfuncionario`
--
ALTER TABLE `userfuncionario`
  ADD PRIMARY KEY (`pk_codfunc`),
  ADD KEY `coduser` (`fk_coduser`);

--
-- Indexes for table `vacina`
--
ALTER TABLE `vacina`
  ADD PRIMARY KEY (`pk_codvacina`),
  ADD KEY `coduser` (`fk_coduser`);

--
-- Indexes for table `vacinacao`
--
ALTER TABLE `vacinacao`
  ADD PRIMARY KEY (`pk_codvacinacao`),
  ADD KEY `codvacina` (`fk_codvacina`),
  ADD KEY `cpf` (`fk_cpf`),
  ADD KEY `codfunc` (`fk_codfunc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `pk_codnoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tipuser`
--
ALTER TABLE `tipuser`
  MODIFY `pk_codtipuser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `pk_coduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `userfuncionario`
--
ALTER TABLE `userfuncionario`
  MODIFY `pk_codfunc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `vacina`
--
ALTER TABLE `vacina`
  MODIFY `pk_codvacina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `vacinacao`
--
ALTER TABLE `vacinacao`
  MODIFY `pk_codvacinacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`fk_codtipuser`) REFERENCES `tipuser` (`pk_codtipuser`);

--
-- Limitadores para a tabela `usercomum`
--
ALTER TABLE `usercomum`
  ADD CONSTRAINT `usercomum_ibfk_1` FOREIGN KEY (`fk_coduser`) REFERENCES `user` (`pk_coduser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `userfuncionario`
--
ALTER TABLE `userfuncionario`
  ADD CONSTRAINT `userfuncionario_ibfk_1` FOREIGN KEY (`fk_coduser`) REFERENCES `user` (`pk_coduser`);

--
-- Limitadores para a tabela `vacina`
--
ALTER TABLE `vacina`
  ADD CONSTRAINT `vacina_ibfk_1` FOREIGN KEY (`fk_coduser`) REFERENCES `user` (`pk_coduser`);

--
-- Limitadores para a tabela `vacinacao`
--
ALTER TABLE `vacinacao`
  ADD CONSTRAINT `vacinacao_ibfk_1` FOREIGN KEY (`fk_codvacina`) REFERENCES `vacina` (`pk_codvacina`),
  ADD CONSTRAINT `vacinacao_ibfk_2` FOREIGN KEY (`fk_cpf`) REFERENCES `usercomum` (`pk_cpf_usercomum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vacinacao_ibfk_3` FOREIGN KEY (`fk_codfunc`) REFERENCES `userfuncionario` (`pk_codfunc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
