-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05-Set-2019 às 03:26
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bigumed`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `medicamento`
--

CREATE TABLE `medicamento` (
  `id_medicamento` int(11) NOT NULL,
  `nomepopular` varchar(50) DEFAULT NULL,
  `nometecnico` varchar(50) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `composicao` varchar(200) DEFAULT NULL,
  `contraindicacoes` varchar(200) DEFAULT NULL,
  `indicacao` varchar(100) DEFAULT NULL,
  `posologia` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `medicamentoprescricao`
--

CREATE TABLE `medicamentoprescricao` (
  `id` int(11) NOT NULL,
  `id_prescricao` int(11) DEFAULT NULL,
  `id_medicamento` int(11) DEFAULT NULL,
  `data_prescricao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `medico`
--

CREATE TABLE `medico` (
  `cpf` char(11) NOT NULL,
  `crm` varchar(20) NOT NULL,
  `especialidade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `medico`
--

INSERT INTO `medico` (`cpf`, `crm`, `especialidade`) VALUES
('04053085071', '0102030405', 'pediatra');

-- --------------------------------------------------------

--
-- Estrutura da tabela `prescricao`
--

CREATE TABLE `prescricao` (
  `id_prescricao` int(11) NOT NULL,
  `periodicidade` varchar(100) DEFAULT NULL,
  `quantidade` int(20) DEFAULT NULL,
  `duração` varchar(50) DEFAULT NULL,
  `observacao` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `cpf` char(11) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `nomecompleto` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`cpf`, `senha`, `nomecompleto`) VALUES
('04053085071', '12345', 'Diego Santos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medicamento`
--
ALTER TABLE `medicamento`
  ADD PRIMARY KEY (`id_medicamento`);

--
-- Indexes for table `medicamentoprescricao`
--
ALTER TABLE `medicamentoprescricao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prescricao` (`id_prescricao`),
  ADD KEY `id_medicamento` (`id_medicamento`);

--
-- Indexes for table `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`cpf`,`crm`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Indexes for table `prescricao`
--
ALTER TABLE `prescricao`
  ADD PRIMARY KEY (`id_prescricao`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cpf`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `medicamentoprescricao`
--
ALTER TABLE `medicamentoprescricao`
  ADD CONSTRAINT `medicamentoprescricao_ibfk_1` FOREIGN KEY (`id_prescricao`) REFERENCES `prescricao` (`id_prescricao`),
  ADD CONSTRAINT `medicamentoprescricao_ibfk_2` FOREIGN KEY (`id_medicamento`) REFERENCES `medicamento` (`id_medicamento`);

--
-- Limitadores para a tabela `medico`
--
ALTER TABLE `medico`
  ADD CONSTRAINT `medico_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `usuario` (`cpf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
