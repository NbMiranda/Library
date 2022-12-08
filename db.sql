-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Tempo de geração: 08-Dez-2022 às 11:44
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
-- Banco de dados: `app_dev`
--
CREATE DATABASE IF NOT EXISTS `app_dev` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `app_dev`;
--
-- Banco de dados: `cadastro`
--
CREATE DATABASE IF NOT EXISTS `cadastro` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cadastro`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(30) DEFAULT 'Brasil'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`) VALUES
(1, 'Nathan', '2002-06-16', 'M', '90.20', '1.90', 'Brasil'),
(2, 'Luis', '1998-06-07', 'M', '90.20', '1.90', 'Brasil'),
(3, 'Alisson', '1994-06-07', 'M', '104.20', '1.88', 'Peru'),
(4, 'Maria Eduarda', '2003-04-23', 'F', '62.20', '1.55', 'Brasil'),
(5, 'Otavio', '2003-11-21', 'M', '58.20', '1.74', 'Loud'),
(6, 'Tubarão', '2003-02-17', 'M', '96.20', '1.85', 'Mar'),
(7, 'Neto', '2001-10-21', 'M', '69.20', '1.70', 'Alemanha');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` text,
  `carga` int(11) DEFAULT NULL,
  `totaulas` int(11) DEFAULT NULL,
  `ano` year(4) DEFAULT '2022'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id`, `nome`, `descricao`, `carga`, `totaulas`, `ano`) VALUES
(1, 'HTML5', 'Curso de HTML5', 40, 37, 2014),
(2, 'Algoritimos', 'Lógica de Programação', 20, 15, 2014),
(3, 'Photoshop', 'Dicas de Photoshop CC', 10, 8, 2014),
(4, 'PHP', 'Curso de PHP para iniciantes', 40, 20, 2015),
(5, 'Java', 'Introdução a linguagem Java', 40, 29, 2015),
(6, 'MySQL', 'Banco de dados MySQL', 30, 16, 2016),
(7, 'Word', 'Curso completo de Word', 40, 30, 2016);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Banco de dados: `exer`
--
CREATE DATABASE IF NOT EXISTS `exer` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `exer`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `idcurso` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(30) NOT NULL,
  `descricao` text,
  `carga` int(10) UNSIGNED DEFAULT NULL,
  `totaulas` int(10) UNSIGNED DEFAULT NULL,
  `ano` year(4) DEFAULT '2016'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`idcurso`, `nome`, `descricao`, `carga`, `totaulas`, `ano`) VALUES
(1, 'HTML5', 'Curso de HTML5', 40, 37, 2014),
(2, 'Algoritmos', 'Lógica de Programação', 20, 15, 2014),
(3, 'Photoshop5', 'Dicas de Photoshop CC', 10, 8, 2014),
(4, 'PHP', 'Curso de PHP para iniciantes', 40, 20, 2015),
(5, 'Java', 'Introdução à Linguagem Java', 40, 29, 2015),
(6, 'MySQL', 'Bancos de Dados MySQL', 30, 15, 2016),
(7, 'Word', 'Curso completo de Word', 40, 30, 2016),
(8, 'Python', 'Curso de Python', 40, 18, 2017),
(9, 'POO', 'Curso de Programação Orientada a Objetos', 60, 35, 2016),
(10, 'Excel', 'Curso completo de Excel', 40, 30, 2017),
(11, 'Responsividade', 'Curso de Responsividade', 30, 15, 2018),
(12, 'C++', 'Curso de C++ com Orientação a Objetos', 40, 25, 2017),
(13, 'C#', 'Curso de C#', 30, 12, 2017),
(14, 'Android', 'Curso de Desenvolvimento de Aplicativos para Android', 60, 30, 2018),
(15, 'JavaScript', 'Curso de JavaScript', 35, 18, 2017),
(16, 'PowerPoint', 'Curso completo de PowerPoint', 30, 12, 2018),
(17, 'Swift', 'Curso de Desenvolvimento de Aplicativos para iOS', 60, 30, 2019),
(18, 'Hardware', 'Curso de Montagem e Manutenção de PCs', 30, 12, 2017),
(19, 'Redes', 'Curso de Redes para Iniciantes', 40, 15, 2016),
(20, 'Segurança', 'Curso de Segurança', 15, 8, 2018),
(21, 'SEO', 'Curso de Otimização de Sites', 30, 12, 2017),
(22, 'Premiere', 'Curso de Edição de Vídeos com Premiere', 20, 10, 2017),
(23, 'After Effects', 'Curso de Efeitos em Vídeos com After Effects', 20, 10, 2018),
(24, 'WordPress', 'Curso de Criação de Sites com WordPress', 60, 30, 2019),
(25, 'Joomla', 'Curso de Criação de Sites com Joomla', 60, 30, 2019),
(26, 'Magento', 'Curso de Criação de Lojas Virtuais com Magento', 50, 25, 2019),
(27, 'Modelagem de Dados', 'Curso de Modelagem de Dados', 30, 12, 2020),
(28, 'HTML4', 'Curso Básico de HTML, versão 4.0', 20, 9, 2010),
(29, 'PHP7', 'Curso de PHP, versão 7.0', 40, 20, 2020),
(30, 'PHP4', 'Curso de PHP, versão 4.0', 30, 11, 2010);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gafanhotos`
--

CREATE TABLE `gafanhotos` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `profissao` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gafanhotos`
--

INSERT INTO `gafanhotos` (`id`, `nome`, `profissao`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`) VALUES
(1, 'Daniel Morais', 'Auxiliar Administrat', '1984-01-02', 'M', '78.50', '1.83', 'Brasil'),
(2, 'Talita Nascimento', 'Farmacêutico', '1999-12-30', 'F', '55.20', '1.65', 'Portugal'),
(3, 'Emerson Gabriel', 'Programador', '1920-12-30', 'M', '50.20', '1.65', 'Moçambique'),
(4, 'Lucas Damasceno', 'Auxiliar Administrat', '1930-11-02', 'M', '63.20', '1.75', 'Irlanda'),
(5, 'Leila Martins', 'Farmacêutico', '1975-04-22', 'F', '99.00', '2.15', 'Brasil'),
(6, 'Letícia Neves', 'Programador', '1999-12-03', 'F', '87.00', '2.00', 'Brasil'),
(7, 'Janaína Couto', 'Auxiliar Administrat', '1987-11-12', 'F', '75.40', '1.66', 'EUA'),
(8, 'Carlisson Rosa', 'Professor', '2010-08-01', 'M', '78.22', '1.98', 'Brasil'),
(9, 'Jackson Telles', 'Programador', '1999-01-23', 'M', '55.75', '1.33', 'Portugal'),
(10, 'Danilo Araujo', 'Dentista', '1975-12-10', 'M', '99.21', '1.87', 'EUA'),
(11, 'Andreia Delfino', 'Auxiliar Administrat', '1975-07-01', 'F', '48.64', '1.54', 'Irlanda'),
(12, 'Valter Vilmerson', 'Ator', '1985-10-12', 'M', '88.55', '2.03', 'Brasil'),
(13, 'Allan Silva', 'Programador', '1993-11-11', 'M', '76.99', '1.55', 'Brasil'),
(14, 'Rosana Kunz', 'Professor', '1935-01-16', 'F', '55.24', '1.87', 'Brasil'),
(15, 'Josiane Dutra', 'Empreendedor', '1950-01-20', 'F', '98.70', '1.04', 'Portugal'),
(16, 'Elvis Schwarz', 'Dentista', '2011-05-07', 'M', '66.69', '1.76', 'EUA'),
(17, 'Paulo Narley', 'Auxiliar Administrat', '1997-03-17', 'M', '120.10', '2.22', 'Brasil'),
(18, 'Joade Assis', 'Médico', '1930-12-01', 'M', '65.88', '1.78', 'França'),
(19, 'Nara Matos', 'Programador', '1978-03-17', 'F', '65.90', '1.33', 'Brasil'),
(20, 'Marcos Dissotti', 'Empreendedor', '2010-01-01', 'M', '53.79', '1.54', 'Portugal'),
(21, 'Ana Carolina Mendes', 'Ator', '2000-12-15', 'F', '88.30', '1.54', 'Brasil'),
(22, 'Guilherme de Sousa', 'Dentista', '2001-05-18', 'M', '132.70', '1.97', 'Moçambique'),
(23, 'Bruno Torres', 'Auxiliar Administrat', '2000-01-30', 'M', '44.65', '1.65', 'Brasil'),
(24, 'Yuji Homa', 'Empreendedor', '1996-12-25', 'M', '33.90', '1.22', 'Japão'),
(25, 'Raian Porto', 'Programador', '1989-05-05', 'M', '54.89', '1.54', 'Brasil'),
(26, 'Paulo Batista', 'Ator', '1999-03-15', 'M', '110.12', '1.87', 'Portugal'),
(27, 'Monique Precivalli', 'Auxiliar Administrat', '2013-12-30', 'F', '48.20', '1.22', 'Brasil'),
(28, 'Herisson Silva', 'Auxiliar Administrat', '1965-10-10', 'M', '74.65', '1.56', 'EUA'),
(29, 'Tiago Ulisses', 'Dentista', '1993-04-22', 'M', '150.30', '2.35', 'Brasil'),
(30, 'Anderson Rafael', 'Programador', '1989-12-01', 'M', '64.22', '1.44', 'Irlanda'),
(31, 'Karine Ribeiro', 'Empreendedor', '1988-10-01', 'F', '42.10', '1.65', 'Brasil'),
(32, 'Roberto Luiz Debarba', 'Ator', '2007-01-09', 'M', '77.44', '1.56', 'Brasil'),
(33, 'Jarismar Andrade', 'Dentista', '2000-06-23', 'F', '63.70', '1.33', 'Brasil'),
(34, 'Janaina Oliveira', 'Professor', '1955-03-12', 'F', '52.90', '1.76', 'Canadá'),
(35, 'Márcio Mello', 'Programador', '2011-11-20', 'M', '54.11', '1.55', 'EUA'),
(36, 'Robson Rodolpho', 'Auxiliar Administrat', '2000-08-08', 'M', '110.10', '1.76', 'Brasil'),
(37, 'Daniele Moledo', 'Empreendedor', '2006-08-11', 'F', '101.30', '1.99', 'Brasil'),
(38, 'Neto Sophiate', 'Ator', '1996-05-17', 'M', '59.28', '1.65', 'Portugal'),
(39, 'Neriton Dias', 'Auxiliar Administrat', '2009-10-30', 'M', '48.99', '1.29', 'Brasil'),
(40, 'André Schmidt', 'Programador', '1993-07-26', 'M', '55.37', '1.22', 'Angola'),
(41, 'Isaias Buscarino', 'Dentista', '2001-01-07', 'M', '99.90', '1.55', 'Moçambique'),
(42, 'Rafael Guimma', 'Empreendedor', '1968-04-11', 'M', '88.88', '1.54', 'Brasil'),
(43, 'Ana Carolina Hernandes', 'Ator', '1970-10-11', 'F', '65.40', '2.08', 'EUA'),
(44, 'Luiz Paulo', 'Professor', '1984-11-01', 'M', '75.12', '1.38', 'Portugal'),
(45, 'Bruna Teles', 'Programador', '1980-11-07', 'F', '55.10', '1.86', 'Brasil'),
(46, 'Diogo Padilha', 'Auxiliar Administrat', '2000-03-03', 'M', '54.34', '1.88', 'Angola'),
(47, 'Bruno Miltersteiner', 'Dentista', '1986-02-19', 'M', '77.45', '1.65', 'Alemanha'),
(48, 'Elaine Nunes', 'Programador', '1998-08-15', 'F', '35.90', '2.00', 'Canadá'),
(49, 'Silvio Ricardo', 'Programador', '2012-03-12', 'M', '65.99', '1.23', 'EUA'),
(50, 'Denilson Barbosa da Silva', 'Empreendedor', '2000-01-08', 'M', '97.30', '2.00', 'Brasil'),
(51, 'Jucinei Teixeira', 'Professor', '1977-11-22', 'F', '44.80', '1.76', 'Portugal'),
(52, 'Bruna Santos', 'Auxiliar Administrat', '1991-12-01', 'F', '76.30', '1.45', 'Canadá'),
(53, 'André Vitebo', 'Médico', '1970-07-01', 'M', '44.11', '1.55', 'Brasil'),
(54, 'Andre Santini', 'Programador', '1991-08-15', 'M', '66.00', '1.76', 'Itália'),
(55, 'Ruan Valente', 'Programador', '1998-03-19', 'M', '101.90', '1.76', 'Canadá'),
(56, 'Nailton Mauricio', 'Médico', '1992-04-25', 'M', '86.01', '1.43', 'EUA'),
(57, 'Rita Pontes', 'Professor', '1999-09-02', 'F', '54.10', '1.35', 'Angola'),
(58, 'Carlos Camargo', 'Programador', '2005-02-22', 'M', '124.65', '1.33', 'Brasil'),
(59, 'Philppe Oliveira', 'Auxiliar Administrat', '2000-05-23', 'M', '105.10', '2.19', 'Brasil'),
(60, 'Dayana Dias', 'Professor', '1993-05-30', 'F', '88.30', '1.66', 'Angola'),
(61, 'Silvana Albuquerque', 'Programador', '1999-05-22', 'F', '56.00', '1.50', 'Brasil');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idcurso`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `gafanhotos`
--
ALTER TABLE `gafanhotos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `gafanhotos`
--
ALTER TABLE `gafanhotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- Banco de dados: `inventory`
--
CREATE DATABASE IF NOT EXISTS `inventory` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `inventory`;
--
-- Banco de dados: `inventory2`
--
CREATE DATABASE IF NOT EXISTS `inventory2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `inventory2`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `buyers`
--

CREATE TABLE `buyers` (
  `id` int(11) NOT NULL,
  `buyer_name` varchar(50) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `buyers`
--

INSERT INTO `buyers` (`id`, `buyer_name`, `email`) VALUES
(1, 'Claudo Damasceno', NULL),
(2, 'Regina Barbosa', NULL),
(3, 'Sergio Sette Camara', NULL),
(4, 'Rubens Martins', NULL),
(5, 'Felipe Diaz', NULL),
(6, 'Silvia Pelegrini', NULL),
(7, 'Ana Mendonça', NULL),
(8, 'Carlos Diniz', NULL),
(9, 'Maria Aparecida', NULL),
(10, 'Emerson Cruz', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `employers`
--

CREATE TABLE `employers` (
  `id` int(11) NOT NULL,
  `employer_name` varchar(40) NOT NULL,
  `genre` enum('M','F') DEFAULT NULL,
  `position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `employers`
--

INSERT INTO `employers` (`id`, `employer_name`, `genre`, `position`) VALUES
(1, 'Romero Carvalho', 'M', 'Hired'),
(2, 'Carmen da Siva', 'F', 'Supervisor'),
(3, 'Marcia dos Santos', 'F', 'Hired'),
(4, 'James Junior', 'M', 'Manager'),
(5, 'Geore Ribeiro', 'M', 'Machine Operator'),
(6, 'Mariana Dias', 'F', 'Trainee	'),
(7, 'Claudia Mazzini', 'F', 'Machine Operator'),
(8, 'Silvio Santos', 'M', 'Owner'),
(9, 'Ubeber Carmelito', 'M', 'Hired'),
(10, 'Ana Caroline', 'F', 'Experience');

-- --------------------------------------------------------

--
-- Estrutura da tabela `employer_registers`
--

CREATE TABLE `employer_registers` (
  `id` int(11) NOT NULL,
  `register_date` date DEFAULT NULL,
  `employer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `employer_registers`
--

INSERT INTO `employer_registers` (`id`, `register_date`, `employer_id`) VALUES
(1, '2022-11-01', 6),
(2, '2022-11-01', 3),
(3, '2022-11-02', 3),
(4, '2022-11-02', 10),
(5, '2022-11-02', 6),
(6, '2022-11-02', 6),
(7, '2022-11-03', 3),
(8, '2022-11-03', 10),
(9, '2022-11-03', 9),
(10, '2022-11-05', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `makers`
--

CREATE TABLE `makers` (
  `id` int(11) NOT NULL,
  `maker_name` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone_number` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `makers`
--

INSERT INTO `makers` (`id`, `maker_name`, `email`, `phone_number`) VALUES
(1, 'Jensen Huang', NULL, NULL),
(2, 'Joe Hsieh', NULL, NULL),
(3, 'Daniel Borel Pierluigi', NULL, NULL),
(4, 'Min-Liang Tan', NULL, NULL),
(5, 'John Tu ', NULL, NULL),
(6, 'Jason Chen ', NULL, NULL),
(7, 'Lisa Su', NULL, NULL),
(8, 'Gabriel Toledo', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `categorie` varchar(40) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `product_name`, `categorie`, `price`) VALUES
(1, 'Rtx 4090ti 24gb Galaxy', 'Graphics Card', '18890.89'),
(2, 'Mouse Logitech G Pro', 'Peripherals', '549.99'),
(3, 'Keyboard Razer BlackWidow RGB', 'Peripherals', '328.98'),
(4, 'Pendrive Kingston 16gb USB 3.0', 'Data Device', '24.90'),
(5, 'Asus Zenfone 5 128gb', 'Mobile Phone', '1483.89'),
(6, 'Headset HyperX Pulsefire', 'Peripherals', '239.23'),
(7, 'Laptop Acer Aspire Nitro 5', 'Laptops', '5237.89'),
(8, 'Moupad Fallen 50x50cm', 'Peripherals', '108.19'),
(9, 'Ryzen 5 3500x', 'CPU', '989.78'),
(10, 'Monitor Asus 4K 240hz', 'Video', '3788.78');

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_makers`
--

CREATE TABLE `product_makers` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `maker_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `product_makers`
--

INSERT INTO `product_makers` (`id`, `product_id`, `maker_id`) VALUES
(1, 1, 1),
(2, 5, 2),
(3, 10, 2),
(4, 2, 3),
(5, 3, 4),
(6, 4, 5),
(7, 7, 6),
(8, 9, 7),
(9, 8, 8),
(10, 6, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `providers`
--

CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `provider_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `providers`
--

INSERT INTO `providers` (`id`, `provider_name`) VALUES
(1, 'Logitech'),
(2, 'Asus'),
(3, 'Acer'),
(4, 'Razer'),
(5, 'AMD'),
(6, 'Nvidia'),
(7, 'HyperX'),
(8, 'Kingston'),
(9, 'Fallen');

-- --------------------------------------------------------

--
-- Estrutura da tabela `registers`
--

CREATE TABLE `registers` (
  `id` int(11) NOT NULL,
  `register_day` date DEFAULT NULL,
  `register_hour` time DEFAULT NULL,
  `employer_register_id` int(11) DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `registers`
--

INSERT INTO `registers` (`id`, `register_day`, `register_hour`, `employer_register_id`, `provider_id`, `product_id`) VALUES
(1, '2019-10-10', NULL, 6, 1, 2),
(2, '2019-10-13', NULL, 6, 4, 3),
(3, '2022-05-15', NULL, 10, 6, 1),
(4, '2022-05-15', NULL, 10, 2, 10),
(5, '2022-06-16', NULL, 3, 4, 3),
(6, '2022-06-16', NULL, 3, 1, 2),
(7, '2022-06-16', NULL, 3, 9, 8),
(8, '2022-06-16', NULL, 3, 7, 6),
(9, '2022-06-16', NULL, 3, 8, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `sale_date` date DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `product_id`, `buyer_id`) VALUES
(11, '2022-11-01', 7, 6),
(12, '2022-11-01', 9, 8),
(13, '2022-11-02', 5, 6),
(14, '2022-11-03', 2, 7),
(15, '2022-11-03', 7, 1),
(16, '2022-11-03', 4, 9),
(17, '2022-11-05', 3, 8),
(18, '2022-11-05', 5, 3),
(19, '2022-11-06', 1, 1),
(20, '2022-11-06', 3, 2),
(21, '2021-02-01', 6, 3),
(22, '2022-11-01', 8, 9),
(23, '2022-11-02', 6, 5),
(24, '2020-11-03', 7, 2),
(25, '2022-03-13', 1, 7),
(26, '2020-11-03', 9, 4),
(27, '2019-06-16', 8, 3),
(28, '2022-09-05', 3, 5),
(29, '2019-01-12', 1, 5),
(30, '2018-07-31', 2, 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `employer_registers`
--
ALTER TABLE `employer_registers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employer_id` (`employer_id`);

--
-- Índices para tabela `makers`
--
ALTER TABLE `makers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `product_makers`
--
ALTER TABLE `product_makers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `maker_id` (`maker_id`);

--
-- Índices para tabela `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employer_register_id` (`employer_register_id`),
  ADD KEY `provider_id` (`provider_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Índices para tabela `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `buyers`
--
ALTER TABLE `buyers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `employer_registers`
--
ALTER TABLE `employer_registers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `makers`
--
ALTER TABLE `makers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `product_makers`
--
ALTER TABLE `product_makers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `registers`
--
ALTER TABLE `registers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `employer_registers`
--
ALTER TABLE `employer_registers`
  ADD CONSTRAINT `employer_registers_ibfk_1` FOREIGN KEY (`employer_id`) REFERENCES `employers` (`id`);

--
-- Limitadores para a tabela `product_makers`
--
ALTER TABLE `product_makers`
  ADD CONSTRAINT `product_makers_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_makers_ibfk_2` FOREIGN KEY (`maker_id`) REFERENCES `makers` (`id`);

--
-- Limitadores para a tabela `registers`
--
ALTER TABLE `registers`
  ADD CONSTRAINT `registers_ibfk_1` FOREIGN KEY (`employer_register_id`) REFERENCES `employer_registers` (`id`),
  ADD CONSTRAINT `registers_ibfk_2` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`),
  ADD CONSTRAINT `registers_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Limitadores para a tabela `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`);
--
-- Banco de dados: `inventorytrue`
--
CREATE DATABASE IF NOT EXISTS `inventorytrue` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `inventorytrue`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `buyers`
--

CREATE TABLE `buyers` (
  `id` int(11) NOT NULL,
  `buyer_name` varchar(50) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `buyers`
--

INSERT INTO `buyers` (`id`, `buyer_name`, `email`) VALUES
(1, 'Claudo Damasceno', NULL),
(2, 'Regina Barbosa', NULL),
(3, 'Sergio Sette Camara', NULL),
(4, 'Rubens Martins', NULL),
(5, 'Felipe Diaz', NULL),
(6, 'Silvia Pelegrini', NULL),
(7, 'Ana Mendonça', NULL),
(8, 'Carlos Diniz', NULL),
(9, 'Maria Aparecida', NULL),
(10, 'Emerson Cruz', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `employers`
--

CREATE TABLE `employers` (
  `id` int(11) NOT NULL,
  `employer_name` varchar(40) NOT NULL,
  `genre` enum('M','F') DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `employers`
--

INSERT INTO `employers` (`id`, `employer_name`, `genre`, `position`) VALUES
(1, 'Romero Carvalho', 'M', 'Hired'),
(2, 'Carmen da Siva', 'F', 'Supervisor'),
(3, 'Marcia dos Santos', 'F', 'Hired'),
(4, 'James Junior', 'M', 'Manager'),
(5, 'Geore Ribeiro', 'M', 'Machine Operator'),
(6, 'Mariana Dias', 'F', 'Trainee	'),
(7, 'Claudia Mazzini', 'F', 'Machine Operator'),
(8, 'Silvio Santos', 'M', 'Owner'),
(9, 'Ubeber Carmelito', 'M', 'Hired'),
(10, 'Ana Caroline', 'F', 'Experience');

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `categorie` varchar(40) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `product_name`, `categorie`, `price`) VALUES
(1, 'Rtx 4090ti 24gb Galaxy', 'Graphics Card', '18890.89'),
(2, 'Mouse Logitech G Pro', 'Peripherals', '549.99'),
(3, 'Keyboard Razer BlackWidow RGB', 'Peripherals', '328.98'),
(4, 'Pendrive Kingston 16gb USB 3.0', 'Data Device', '24.90'),
(5, 'Asus Zenfone 5 128gb', 'Mobile Phone', '1483.89'),
(6, 'Headset HyperX Pulsefire', 'Peripherals', '239.23'),
(7, 'Laptop Acer Aspire Nitro 5', 'Laptops', '5237.89'),
(8, 'Moupad Fallen 50x50cm', 'Peripherals', '108.19'),
(9, 'Ryzen 5 3500x', 'CPU', '989.78'),
(10, 'Monitor Asus 4K 240hz', 'Video', '3788.78');

-- --------------------------------------------------------

--
-- Estrutura da tabela `providers`
--

CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `provider_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `providers`
--

INSERT INTO `providers` (`id`, `provider_name`) VALUES
(1, 'Logitech'),
(2, 'Asus'),
(3, 'Acer'),
(4, 'Razer'),
(5, 'AMD'),
(6, 'Nvidia'),
(7, 'HyperX'),
(8, 'Kingston'),
(9, 'Fallen');

-- --------------------------------------------------------

--
-- Estrutura da tabela `provider_products`
--

CREATE TABLE `provider_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `sale_date` date DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `employer_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `product_id`, `employer_id`, `buyer_id`) VALUES
(1, '2021-01-01', 6, 7, 3),
(2, '2022-11-01', 8, 9, 9),
(3, '2022-12-02', 6, 5, 9),
(4, '2022-09-03', 7, 2, 1),
(5, '2022-05-08', 1, 7, 5),
(6, '2022-11-25', 9, 4, 3),
(7, '2022-08-21', 8, 3, 8),
(8, '2022-02-15', 3, 5, 4),
(9, '2022-11-06', 1, 1, 1),
(10, '2022-11-06', 2, 3, 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `provider_products`
--
ALTER TABLE `provider_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `provider_id` (`provider_id`);

--
-- Índices para tabela `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `employer_id` (`employer_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `buyers`
--
ALTER TABLE `buyers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `provider_products`
--
ALTER TABLE `provider_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `provider_products`
--
ALTER TABLE `provider_products`
  ADD CONSTRAINT `provider_products_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `provider_products_ibfk_2` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`);

--
-- Limitadores para a tabela `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`employer_id`) REFERENCES `employers` (`id`),
  ADD CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`);
--
-- Banco de dados: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_name` varchar(45) NOT NULL,
  `genre` varchar(25) NOT NULL,
  `writer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `books`
--

INSERT INTO `books` (`id`, `book_name`, `genre`, `writer_id`) VALUES
(1, 'Percy Jackson e o Ladrão de Raios', 'Aventura', 1),
(2, 'Percy Jackson e o Mar de Monstros', 'Aventura', 1),
(3, 'Percy Jackson a Furia de um Titã', 'Aventura', 1),
(4, 'Harry Potter e a Camara Secreta ', 'Fantasia', 2),
(5, 'Harry Potter e o Calice de Fogo ', 'Fantasia', 2),
(6, 'Harry Potter e as Reliquias da Morte ', 'Fantasia', 2),
(7, 'O Senhor dos Anéis', 'Fantasia', 3),
(8, 'O Hobbit', 'Fantasia', 3),
(9, 'A guerra dos Tronos', 'Fantasia', 4),
(10, 'Fogo & Sangue', 'Fantasia', 4),
(11, 'Harry Potter e o Prisioneiro de Azkaban', 'Fantasia', 2),
(12, 'It a Coisa', 'Horror', 5),
(13, 'Doutor sono', 'Horror', 5),
(14, 'O Iluminado', 'Horror', 5),
(15, 'Carrie a Estranha', 'Horror', 5),
(16, 'A Menina que Roubava Livros', 'Ficção', 6),
(17, 'Diario de um Banana', 'Humor', 7),
(18, 'Diario de um Bananna Rodrick é o cara', 'Humor', 7),
(19, 'Diario de um Bananna Dias de Cão', 'Humor', 7),
(20, 'Outsider', 'Suspense', 5);

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
-- Limitadores para a tabela `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`);

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
