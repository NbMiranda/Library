-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Tempo de geração: 19-Dez-2022 às 16:46
-- Versão do servidor: 5.7.40
-- versão do PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `library`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_name` varchar(45) NOT NULL,
  `genre` varchar(25) NOT NULL,
  `writer_id` int(11) DEFAULT NULL,
  `sinopse` longtext,
  `other_genre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `books`
--

INSERT INTO `books` (`id`, `book_name`, `genre`, `writer_id`, `sinopse`, `other_genre`) VALUES
(1, 'Percy Jackson e o Ladrao de Raios', 'Acao e aventura', 1, '', 'Mitologia Grega'),
(2, 'Percy Jackson e o Mar de Monstros', 'Acao e aventura', 1, '', ''),
(3, 'Percy Jackson a Furia de um Tita', 'Acao e aventura', 1, '', ''),
(4, 'Harry Potter e a Camara Secreta', 'Acao e aventura', 2, '', ''),
(5, 'Harry Potter e o Calice de Fogo ', 'Acao e aventura', 2, '', ''),
(6, 'Harry Potter e as Reliquias da Morte ', 'Acao e aventura', 2, '', ''),
(7, 'O Senhor dos Aneis', 'Acao e aventura', 3, '', ''),
(8, 'O Hobbit', 'Acao e aventura', 3, '', ''),
(9, 'A guerra dos Tronos', 'Acao e aventura', 4, '', ''),
(10, 'Fogo & Sangue', 'Acao e aventura', 4, '', ''),
(11, 'Harry Potter e o Prisioneiro de Azkaban', 'Acao e aventura', 2, '', ''),
(12, 'It a Coisa', 'Acao e aventura', 5, '', ''),
(13, 'Doutor sono', 'Acao e aventura', 5, '', ''),
(14, 'O Iluminado', 'Horror', 5, '', 'MistÃ©rio'),
(15, 'Carrie a Estranha', 'Acao e aventura', 5, '', ''),
(16, 'A Menina que Roubava Livros', 'Acao e aventura', 6, '', ''),
(17, 'Diario de um Banana', 'Acao e aventura', 7, '', ''),
(18, 'Diario de um Bananna Rodrick e o cara', 'Acao e aventura', 7, '', ''),
(19, 'Diario de um Bananna Dias de Cao', 'Acao e aventura', 7, '', ''),
(20, 'Outsider', 'Acao e aventura', 5, '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `book_genres`
--

CREATE TABLE `book_genres` (
  `id` int(11) NOT NULL,
  `book_genres` varchar(50) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `employers`
--

CREATE TABLE `employers` (
  `id` int(11) NOT NULL,
  `employer_name` varchar(30) NOT NULL,
  `position` varchar(45) DEFAULT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `genre` enum('M','F') DEFAULT NULL,
  `birth_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `employers`
--

INSERT INTO `employers` (`id`, `employer_name`, `position`, `phone_number`, `genre`, `birth_date`) VALUES
(1, 'José Vilas Boas', 'Manager', '14123456789', 'M', '1976-08-23'),
(2, 'Amanda Cristina', 'trainee', '1111', 'F', '2005-10-20'),
(3, 'Cristopher Nolan', 'Owner', '22222', 'M', '1970-07-30'),
(4, 'George Romero', 'Vice Manager', '33333', 'M', '1977-04-02'),
(5, 'Nayara da Silva', 'hired', '3442433', 'F', '2000-07-10'),
(6, 'Cecilia Ferreira', 'hired', '3442433', 'F', '2002-02-18'),
(7, 'Debora Guimarães', 'hired', '123334545', 'F', '1999-07-31'),
(8, 'Matheus Mendes', 'hired', ' 9987224', 'M', '2000-05-28'),
(9, 'Bruno Lopes', 'hired', '23242409', 'M', '2000-07-29'),
(10, 'João Pedro', 'hired', '98234729', 'M', '2003-05-12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `person_name` varchar(30) NOT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `employer_id` int(11) DEFAULT NULL,
  `profession` varchar(50) DEFAULT NULL,
  `cpf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `people`
--

INSERT INTO `people` (`id`, `person_name`, `phone_number`, `employer_id`, `profession`, `cpf`) VALUES
(1, 'Romero Brito', NULL, 2, NULL, 1111111),
(2, 'Vinicius Dias', NULL, 2, NULL, 222323),
(3, 'Regina Martins', NULL, 2, NULL, 3234334),
(4, 'Matheus Henrique', NULL, 10, NULL, 3423423),
(5, 'Roger Guedes', NULL, 6, NULL, 6436364),
(6, 'Claudia Machado', NULL, 2, NULL, 1231259),
(7, 'Paulo Ferreira', NULL, 4, NULL, 232452),
(8, 'Maria da Silva', NULL, 2, NULL, 23334827),
(9, 'Santiago Lima', NULL, 10, NULL, 89457361),
(10, 'Pedro Miguel', NULL, 5, NULL, 92837476);

-- --------------------------------------------------------

--
-- Estrutura da tabela `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `publisher_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `publishers`
--

INSERT INTO `publishers` (`id`, `publisher_name`) VALUES
(1, 'LeYa'),
(2, 'Rocco'),
(3, 'Intrínseca'),
(4, 'HarperCollins'),
(5, 'Suma'),
(6, 'Intrínseca'),
(7, 'VR Editora');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rentals`
--

CREATE TABLE `rentals` (
  `id` int(11) NOT NULL,
  `rent_date` date DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `rentals`
--

INSERT INTO `rentals` (`id`, `rent_date`, `person_id`, `book_id`) VALUES
(1, '2022-05-05', 5, 10),
(2, '2022-06-11', 7, 2),
(3, '2022-06-19', 4, 4),
(4, '2022-06-27', 3, 9),
(5, '2022-06-27', 3, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `writers`
--

CREATE TABLE `writers` (
  `id` int(11) NOT NULL,
  `writer_name` varchar(45) NOT NULL,
  `phone_number` varchar(25) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `writers`
--

INSERT INTO `writers` (`id`, `writer_name`, `phone_number`, `email`) VALUES
(1, 'Rick Riordan', NULL, NULL),
(2, 'Jk Rolling', NULL, NULL),
(3, 'J. R. R. Tolkien', NULL, NULL),
(4, 'George R. R. Martin', NULL, NULL),
(5, 'Stephen King', NULL, NULL),
(6, 'Markus zusak', NULL, NULL),
(7, 'Jeff Kinney', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `writer_publisher`
--

CREATE TABLE `writer_publisher` (
  `id` int(11) NOT NULL,
  `writer_id` int(11) NOT NULL,
  `publisher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `writer_publisher`
--

INSERT INTO `writer_publisher` (`id`, `writer_id`, `publisher_id`) VALUES
(13, 1, 3),
(14, 2, 2),
(15, 3, 4),
(16, 4, 1),
(17, 5, 5),
(18, 6, 6),
(19, 7, 7);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `writer_id` (`writer_id`),
  ADD KEY `genre_index` (`genre`);

--
-- Índices para tabela `book_genres`
--
ALTER TABLE `book_genres`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `employer_id` (`employer_id`);

--
-- Índices para tabela `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Índices para tabela `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `writers_index` (`writer_name`);

--
-- Índices para tabela `writer_publisher`
--
ALTER TABLE `writer_publisher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `writer_id` (`writer_id`),
  ADD KEY `publisher_id` (`publisher_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `employers`
--
ALTER TABLE `employers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `people`
--
ALTER TABLE `people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `writer_publisher`
--
ALTER TABLE `writer_publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `people`
--
ALTER TABLE `people`
  ADD CONSTRAINT `people_ibfk_1` FOREIGN KEY (`employer_id`) REFERENCES `employers` (`id`);

--
-- Limitadores para a tabela `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`),
  ADD CONSTRAINT `rentals_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Limitadores para a tabela `writer_publisher`
--
ALTER TABLE `writer_publisher`
  ADD CONSTRAINT `writer_publisher_ibfk_1` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`),
  ADD CONSTRAINT `writer_publisher_ibfk_2` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
