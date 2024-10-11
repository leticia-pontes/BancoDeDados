-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Tempo de geração: 02-Out-2024 às 00:39
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.1.17


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca`
--

-- --------------------------------------------------------

CREATE DATABASE biblioteca;
USE biblioteca;

--
-- Estrutura da tabela `autores`
--

CREATE TABLE `autores` (
  `AutorID` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Pais` varchar(100) DEFAULT NULL,
  `DataNascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `autores`
--

INSERT INTO `autores` (`AutorID`, `Nome`, `Pais`, `DataNascimento`) VALUES
(1, 'J.R.R. Tolkien', 'Reino Unido', '1892-01-03'),
(2, 'Miguel de Cervantes', 'Espanha', '1547-09-29'),
(3, 'George Orwell', 'Reino Unido', '1903-06-25'),
(4, 'Gabriel García Márquez', 'Colômbia', '1927-03-06'),
(5, 'Antoine de Saint-Exupéry', 'França', '1900-06-29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `CategoriaID` int(11) NOT NULL,
  `NomeCategoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`CategoriaID`, `NomeCategoria`) VALUES
(1, 'Fantasia'),
(2, 'Romance Clássico'),
(3, 'Distopia'),
(4, 'Realismo Mágico'),
(5, 'Infantil');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimos`
--

CREATE TABLE `emprestimos` (
  `EmprestimoID` int(11) NOT NULL,
  `MembroID` int(11) NOT NULL,
  `LivroID` int(11) NOT NULL,
  `DataEmprestimo` date DEFAULT NULL,
  `DataDevolucao` date DEFAULT NULL,
  `DataDevolucaoPrevista` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `emprestimos`
--

INSERT INTO `emprestimos` (`EmprestimoID`, `MembroID`, `LivroID`, `DataEmprestimo`, `DataDevolucao`, `DataDevolucaoPrevista`) VALUES
(2, 2, 2, '2024-09-22', NULL, '2024-10-22'),
(3, 3, 3, '2024-09-23', NULL, '2024-10-23'),
(4, 4, 4, '2024-09-25', NULL, '2024-10-25'),
(5, 5, 5, '2024-09-26', NULL, '2024-10-26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `LivroID` int(11) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `AutorID` int(11) NOT NULL,
  `CategoriaID` int(11) NOT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `AnoPublicacao` int(11) DEFAULT NULL,
  `CopiasDisponiveis` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`LivroID`, `Titulo`, `AutorID`, `CategoriaID`, `ISBN`, `AnoPublicacao`, `CopiasDisponiveis`) VALUES
(2, 'O Senhor dos Anéis', 1, 1, '978-0007525546', 1954, 5),
(3, 'Dom Quixote', 2, 2, '978-0199537898', 1605, 3),
(4, '1984', 3, 3, '978-0451524935', 1949, 10),
(5, 'Cem Anos de Solidão', 4, 4, '978-0307389732', 1967, 7),
(6, 'O Pequeno Príncipe', 5, 5, '978-0156012195', 1943, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `membros`
--

CREATE TABLE `membros` (
  `MembroID` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `DataRegistro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `membros`
--

INSERT INTO `membros` (`MembroID`, `Nome`, `Endereco`, `Telefone`, `Email`, `DataRegistro`) VALUES
(1, 'João Silva', 'Rua A, 123', '11999999999', 'joao.silva@email.com', '2024-01-10'),
(2, 'Maria Souza', 'Rua B, 456', '11988888888', 'maria.souza@email.com', '2024-01-15'),
(3, 'Carlos Pereira', 'Rua C, 789', '11977777777', 'carlos.pereira@email.com', '2024-02-05'),
(4, 'Ana Oliveira', 'Rua D, 1011', '11966666666', 'ana.oliveira@email.com', '2024-03-12'),
(5, 'Pedro Santos', 'Rua E, 1314', '11955555555', 'pedro.santos@email.com', '2024-04-07');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`AutorID`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`CategoriaID`);

--
-- Índices para tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD PRIMARY KEY (`EmprestimoID`),
  ADD KEY `MembroID` (`MembroID`),
  ADD KEY `LivroID` (`LivroID`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`LivroID`),
  ADD UNIQUE KEY `ISBN` (`ISBN`),
  ADD KEY `AutorID` (`AutorID`),
  ADD KEY `CategoriaID` (`CategoriaID`);

--
-- Índices para tabela `membros`
--
ALTER TABLE `membros`
  ADD PRIMARY KEY (`MembroID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autores`
--
ALTER TABLE `autores`
  MODIFY `AutorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `CategoriaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  MODIFY `EmprestimoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `LivroID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `membros`
--
ALTER TABLE `membros`
  MODIFY `MembroID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD CONSTRAINT `emprestimos_ibfk_1` FOREIGN KEY (`MembroID`) REFERENCES `membros` (`MembroID`),
  ADD CONSTRAINT `emprestimos_ibfk_2` FOREIGN KEY (`LivroID`) REFERENCES `livros` (`LivroID`);

--
-- Limitadores para a tabela `livros`
--
ALTER TABLE `livros`
  ADD CONSTRAINT `livros_ibfk_1` FOREIGN KEY (`AutorID`) REFERENCES `autores` (`AutorID`),
  ADD CONSTRAINT `livros_ibfk_2` FOREIGN KEY (`CategoriaID`) REFERENCES `categorias` (`CategoriaID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
