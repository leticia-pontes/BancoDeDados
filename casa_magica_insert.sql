-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Out-2024 às 02:02
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `casa_magica`
--

CREATE DATABASE casa_magica_insert;

USE casa_magica_insert;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `ID_Cliente` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Telefone` varchar(15) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`ID_Cliente`, `Nome`, `Email`, `Telefone`, `Endereco`) VALUES
(1, 'João Silva', 'joao@gmail.com', '11999999999', 'Rua A, 123'),
(2, 'Maria Oliveira', 'maria@gmail.com', '21988888888', 'Rua B, 456'),
(3, 'Carlos Sousa', 'carlos@gmail.com', '31977777777', 'Rua C, 789'),
(4, 'Ana Costa', 'ana@gmail.com', '41966666666', 'Rua D, 1011'),
(5, 'Pedro Mendes', 'pedro@gmail.com', '51955555555', 'Rua E, 1213'),
(6, 'Fernanda Lima', 'fernanda@gmail.com', '61944444444', 'Rua F, 1415'),
(7, 'Lucas Pereira', 'lucas@gmail.com', '71933333333', 'Rua G, 1617'),
(8, 'Mariana Borges', 'mariana@gmail.com', '81922222222', 'Rua H, 1819'),
(9, 'Gabriel Rocha', 'gabriel@gmail.com', '91911111111', 'Rua I, 2021'),
(10, 'Juliana Ferreira', 'juliana@gmail.com', '21912345678', 'Rua J, 223'),
(11, 'Felipe Martins', 'felipe@gmail.com', '11923456789', 'Rua K, 456'),
(12, 'Sofia Albuquerque', 'sofia@gmail.com', '21987654321', 'Rua L, 789'),
(13, 'Bruno Almeida', 'bruno@gmail.com', '31954321678', 'Rua M, 1122'),
(14, 'Beatriz Dias', 'beatriz@gmail.com', '41965432123', 'Rua N, 1345'),
(15, 'Vinícius Ramos', 'vinicius@gmail.com', '51978965432', 'Rua O, 1567');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `ID_Fornecedor` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `CNPJ` varchar(18) DEFAULT NULL,
  `Telefone` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`ID_Fornecedor`, `Nome`, `CNPJ`, `Telefone`, `Email`) VALUES
(1, 'Sony', '12.345.678/0001-12', '1133333333', 'contato@sony.com'),
(2, 'Microsoft', '23.456.789/0001-23', '1233444444', 'contato@microsoft.com'),
(3, 'Nintendo', '34.567.890/0001-34', '2133555555', 'contato@nintendo.com'),
(4, 'Ubisoft', '45.678.901/0001-45', '3133666666', 'contato@ubisoft.com'),
(5, 'EA Games', '56.789.012/0001-56', '4133777777', 'contato@ea.com'),
(6, 'Activision', '67.890.123/0001-67', '5133888888', 'contato@activision.com'),
(7, 'Capcom', '78.901.234/0001-78', '6133999999', 'contato@capcom.com'),
(8, 'Square Enix', '89.012.345/0001-89', '7134000000', 'contato@squareenix.com'),
(9, 'Konami', '90.123.456/0001-90', '8134111111', 'contato@konami.com'),
(10, 'Valve', '01.234.567/0001-01', '9134222222', 'contato@valve.com'),
(11, 'Rockstar Games', '23.345.678/0001-12', '1234443333', 'contato@rockstar.com'),
(12, 'Blizzard Entertainment', '34.456.789/0001-23', '2234554444', 'contato@blizzard.com'),
(13, 'Bandai Namco', '45.567.890/0001-34', '3234665555', 'contato@bandainamco.com'),
(14, 'Bethesda Softworks', '56.678.901/0001-45', '4234776666', 'contato@bethesda.com'),
(15, 'Sega', '67.789.012/0001-56', '5234887777', 'contato@sega.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `ID_Funcionario` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Cargo` varchar(50) DEFAULT NULL,
  `Data_Admissao` date DEFAULT NULL,
  `Salario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`ID_Funcionario`, `Nome`, `Cargo`, `Data_Admissao`, `Salario`) VALUES
(1, 'Carlos Eduardo', 'Vendedor', '2023-01-15', '2500.00'),
(2, 'Fernanda Souza', 'Gerente', '2022-05-10', '4500.00'),
(3, 'Lucas Pereira', 'Vendedor', '2023-03-20', '2500.00'),
(4, 'Ana Beatriz', 'Caixa', '2022-12-01', '2000.00'),
(5, 'Marcos Vinícius', 'Vendedor', '2023-07-07', '2500.00'),
(6, 'Juliana Moura', 'Caixa', '2023-02-15', '2000.00'),
(7, 'Gabriel Santos', 'Gerente', '2022-04-30', '4500.00'),
(8, 'Amanda Oliveira', 'Vendedor', '2023-06-01', '2500.00'),
(9, 'Vinícius Lima', 'Vendedor', '2023-08-10', '2500.00'),
(10, 'Bruna Ferreira', 'Caixa', '2023-09-05', '2000.00'),
(11, 'Felipe Alves', 'Vendedor', '2023-10-12', '2500.00'),
(12, 'Larissa Dias', 'Caixa', '2023-11-01', '2000.00'),
(13, 'Matheus Costa', 'Vendedor', '2023-07-15', '2500.00'),
(14, 'Joana Martins', 'Gerente', '2022-06-05', '4500.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `ID_Genero` int(11) NOT NULL,
  `Nome_Genero` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`ID_Genero`, `Nome_Genero`) VALUES
(1, 'Ação'),
(2, 'Aventura'),
(3, 'RPG'),
(4, 'Esportes'),
(5, 'Corrida'),
(6, 'Estratégia'),
(7, 'Simulação'),
(8, 'Terror'),
(9, 'Plataforma'),
(10, 'FPS'),
(11, 'Puzzle'),
(12, 'Musical'),
(13, 'Luta'),
(14, 'MOBA'),
(15, 'MMORPG');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_venda`
--

CREATE TABLE `item_venda` (
  `ID_Item_Venda` int(11) NOT NULL,
  `ID_Venda` int(11) DEFAULT NULL,
  `ID_Jogo` int(11) DEFAULT NULL,
  `Quantidade` int(11) DEFAULT NULL,
  `Preco_Total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `item_venda`
--

INSERT INTO `item_venda` (`ID_Item_Venda`, `ID_Venda`, `ID_Jogo`, `Quantidade`, `Preco_Total`) VALUES
(1, 1, 1, 1, '299.90'),
(2, 1, 2, 1, '249.90'),
(3, 2, 3, 1, '349.90'),
(4, 2, 4, 1, '199.90'),
(5, 3, 5, 1, '299.90'),
(6, 3, 6, 1, '259.90'),
(7, 4, 7, 1, '199.90'),
(8, 4, 8, 1, '299.90'),
(9, 5, 9, 1, '179.90'),
(10, 5, 10, 1, '0.00'),
(11, 6, 11, 1, '249.90'),
(12, 6, 12, 1, '149.90'),
(13, 7, 13, 1, '99.90'),
(14, 7, 14, 1, '149.90'),
(15, 8, 15, 1, '89.90'),
(16, 8, 1, 1, '299.90'),
(17, 9, 2, 1, '249.90'),
(18, 9, 3, 1, '349.90'),
(19, 10, 4, 1, '199.90'),
(20, 10, 5, 1, '299.90'),
(21, 11, 6, 1, '259.90'),
(22, 11, 7, 1, '199.90'),
(23, 12, 8, 1, '299.90'),
(24, 12, 9, 1, '179.90'),
(25, 13, 10, 1, '0.00'),
(26, 13, 11, 1, '249.90'),
(27, 14, 12, 1, '149.90'),
(28, 14, 13, 1, '99.90'),
(29, 15, 14, 1, '149.90'),
(30, 15, 15, 1, '89.90');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo`
--

CREATE TABLE `jogo` (
  `ID_Jogo` int(11) NOT NULL,
  `Titulo` varchar(100) DEFAULT NULL,
  `Preco` decimal(10,2) DEFAULT NULL,
  `Classificacao_Etaria` varchar(10) DEFAULT NULL,
  `ID_Fornecedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogo`
--

INSERT INTO `jogo` (`ID_Jogo`, `Titulo`, `Preco`, `Classificacao_Etaria`, `ID_Fornecedor`) VALUES
(1, 'God of War Ragnarok', '299.90', '18+', 1),
(2, 'Halo Infinite', '249.90', '16+', 2),
(3, 'The Legend of Zelda: Breath of the Wild', '349.90', '10+', 3),
(4, 'Assassin’s Creed Valhalla', '199.90', '18+', 4),
(5, 'FIFA 24', '299.90', '12+', 5),
(6, 'Call of Duty: Modern Warfare II', '259.90', '18+', 6),
(7, 'Resident Evil Village', '199.90', '18+', 7),
(8, 'Final Fantasy XVI', '299.90', '16+', 8),
(9, 'Metal Gear Solid V', '179.90', '18+', 9),
(10, 'Counter-Strike: Global Offensive', '0.00', '16+', 10),
(11, 'Red Dead Redemption 2', '249.90', '18+', 11),
(12, 'World of Warcraft', '149.90', '12+', 12),
(13, 'Tekken 7', '99.90', '12+', 13),
(14, 'The Elder Scrolls V: Skyrim', '149.90', '16+', 14),
(15, 'Sonic Mania', '89.90', '10+', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo_genero`
--

CREATE TABLE `jogo_genero` (
  `ID_Jogo` int(11) NOT NULL,
  `ID_Genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogo_genero`
--

INSERT INTO `jogo_genero` (`ID_Jogo`, `ID_Genero`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 10),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(5, 4),
(6, 1),
(6, 10),
(7, 8),
(8, 3),
(9, 1),
(9, 2),
(10, 1),
(10, 10),
(11, 1),
(11, 2),
(12, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo_plataforma`
--

CREATE TABLE `jogo_plataforma` (
  `ID_Jogo` int(11) NOT NULL,
  `ID_Plataforma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogo_plataforma`
--

INSERT INTO `jogo_plataforma` (`ID_Jogo`, `ID_Plataforma`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 1),
(4, 3),
(5, 2),
(5, 4),
(6, 6),
(7, 1),
(7, 6),
(8, 6),
(9, 1),
(9, 6),
(10, 6),
(11, 1),
(11, 3),
(12, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `plataforma`
--

CREATE TABLE `plataforma` (
  `ID_Plataforma` int(11) NOT NULL,
  `Nome_Plataforma` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `plataforma`
--

INSERT INTO `plataforma` (`ID_Plataforma`, `Nome_Plataforma`) VALUES
(1, 'PlayStation 5'),
(2, 'PlayStation 4'),
(3, 'Xbox Series X'),
(4, 'Xbox One'),
(5, 'Nintendo Switch'),
(6, 'PC'),
(7, 'PS Vita'),
(8, 'Nintendo 3DS'),
(9, 'Stadia'),
(10, 'Xbox 360'),
(11, 'PlayStation 3'),
(12, 'Wii U'),
(13, 'Wii'),
(14, 'PC VR'),
(15, 'Mobile');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `ID_Venda` int(11) NOT NULL,
  `Data` date DEFAULT NULL,
  `ID_Cliente` int(11) DEFAULT NULL,
  `ID_Funcionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`ID_Venda`, `Data`, `ID_Cliente`, `ID_Funcionario`) VALUES
(1, '2024-01-15', 1, 1),
(2, '2024-01-16', 2, 2),
(3, '2024-01-17', 3, 3),
(4, '2024-01-18', 4, 4),
(5, '2024-01-19', 5, 1),
(6, '2024-01-20', 6, 2),
(7, '2024-01-21', 7, 3),
(8, '2024-01-22', 8, 4),
(9, '2024-01-23', 9, 1),
(10, '2024-01-24', 10, 2),
(11, '2024-01-25', 11, 3),
(12, '2024-01-26', 12, 4),
(13, '2024-01-27', 13, 1),
(14, '2024-01-28', 14, 2),
(15, '2024-01-29', 15, 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_Cliente`);

--
-- Índices para tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`ID_Fornecedor`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`ID_Funcionario`);

--
-- Índices para tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`ID_Genero`);

--
-- Índices para tabela `item_venda`
--
ALTER TABLE `item_venda`
  ADD PRIMARY KEY (`ID_Item_Venda`),
  ADD KEY `ID_Venda` (`ID_Venda`),
  ADD KEY `ID_Jogo` (`ID_Jogo`);

--
-- Índices para tabela `jogo`
--
ALTER TABLE `jogo`
  ADD PRIMARY KEY (`ID_Jogo`),
  ADD KEY `ID_Fornecedor` (`ID_Fornecedor`);

--
-- Índices para tabela `jogo_genero`
--
ALTER TABLE `jogo_genero`
  ADD PRIMARY KEY (`ID_Jogo`,`ID_Genero`),
  ADD KEY `ID_Genero` (`ID_Genero`);

--
-- Índices para tabela `jogo_plataforma`
--
ALTER TABLE `jogo_plataforma`
  ADD PRIMARY KEY (`ID_Jogo`,`ID_Plataforma`),
  ADD KEY `ID_Plataforma` (`ID_Plataforma`);

--
-- Índices para tabela `plataforma`
--
ALTER TABLE `plataforma`
  ADD PRIMARY KEY (`ID_Plataforma`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`ID_Venda`),
  ADD KEY `ID_Cliente` (`ID_Cliente`),
  ADD KEY `ID_Funcionario` (`ID_Funcionario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `ID_Fornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `ID_Funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `genero`
--
ALTER TABLE `genero`
  MODIFY `ID_Genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `item_venda`
--
ALTER TABLE `item_venda`
  MODIFY `ID_Item_Venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `jogo`
--
ALTER TABLE `jogo`
  MODIFY `ID_Jogo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `plataforma`
--
ALTER TABLE `plataforma`
  MODIFY `ID_Plataforma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `ID_Venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `item_venda`
--
ALTER TABLE `item_venda`
  ADD CONSTRAINT `item_venda_ibfk_1` FOREIGN KEY (`ID_Venda`) REFERENCES `venda` (`ID_Venda`),
  ADD CONSTRAINT `item_venda_ibfk_2` FOREIGN KEY (`ID_Jogo`) REFERENCES `jogo` (`ID_Jogo`);

--
-- Limitadores para a tabela `jogo`
--
ALTER TABLE `jogo`
  ADD CONSTRAINT `jogo_ibfk_1` FOREIGN KEY (`ID_Fornecedor`) REFERENCES `fornecedor` (`ID_Fornecedor`);

--
-- Limitadores para a tabela `jogo_genero`
--
ALTER TABLE `jogo_genero`
  ADD CONSTRAINT `jogo_genero_ibfk_1` FOREIGN KEY (`ID_Jogo`) REFERENCES `jogo` (`ID_Jogo`),
  ADD CONSTRAINT `jogo_genero_ibfk_2` FOREIGN KEY (`ID_Genero`) REFERENCES `genero` (`ID_Genero`);

--
-- Limitadores para a tabela `jogo_plataforma`
--
ALTER TABLE `jogo_plataforma`
  ADD CONSTRAINT `jogo_plataforma_ibfk_1` FOREIGN KEY (`ID_Jogo`) REFERENCES `jogo` (`ID_Jogo`),
  ADD CONSTRAINT `jogo_plataforma_ibfk_2` FOREIGN KEY (`ID_Plataforma`) REFERENCES `plataforma` (`ID_Plataforma`);

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`),
  ADD CONSTRAINT `venda_ibfk_2` FOREIGN KEY (`ID_Funcionario`) REFERENCES `funcionario` (`ID_Funcionario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
