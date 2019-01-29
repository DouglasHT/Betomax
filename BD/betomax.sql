-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.5.60 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para betomax
CREATE DATABASE IF NOT EXISTS `betomax` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `betomax`;

-- Copiando estrutura para tabela betomax.alugar
CREATE TABLE IF NOT EXISTS `alugar` (
  `nomeCliente` varchar(150) DEFAULT NULL,
  `nomeEquipamento` varchar(150) DEFAULT NULL,
  `dataInicial` varchar(50) DEFAULT NULL,
  `dataFinal` varchar(50) DEFAULT NULL,
  `ndias` int(11) DEFAULT NULL,
  `valorTotal` float DEFAULT NULL,
  `diaria` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela betomax.alugar: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `alugar` DISABLE KEYS */;
INSERT INTO `alugar` (`nomeCliente`, `nomeEquipamento`, `dataInicial`, `dataFinal`, `ndias`, `valorTotal`, `diaria`) VALUES
	('Fallen', 'Betoneira 1t', '0001-01-01', '0001-01-01', 1, 50, 50),
	('Jose Felizberto', 'Betoneira 1t', '2018-02-15', '2018-02-25', 10, 500, 50);
/*!40000 ALTER TABLE `alugar` ENABLE KEYS */;

-- Copiando estrutura para tabela betomax.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `nome` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `conta` varchar(15) NOT NULL,
  `senha` varchar(15) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `dataNascimento` varchar(15) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`conta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela betomax.clientes: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`nome`, `email`, `conta`, `senha`, `telefone`, `dataNascimento`, `endereco`, `cidade`, `estado`) VALUES
	('Coldzera', 'cold@hotmail.com', 'cold', '123', '456456', '2018-10-02', 'Rua Joao, 36', 'Guaranesia', 'MG'),
	('G.Fallen', 'gc@gmail.com', 'fallen', '123', '123123', '0001-01-01', 'Rua Maria,57', 'Guaxupe', 'MG'),
	('Jose Felizberto', 'jojo@yahoo.com.br', 'jose', '123', '789789', '1989-05-01', 'Rua.Jose,35', 'Tapiratiba', 'SP');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Copiando estrutura para tabela betomax.equipamentos
CREATE TABLE IF NOT EXISTS `equipamentos` (
  `nome` varchar(150) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  `diaria` float DEFAULT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela betomax.equipamentos: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `equipamentos` DISABLE KEYS */;
INSERT INTO `equipamentos` (`nome`, `foto`, `descricao`, `diaria`) VALUES
	('Andaime', './imagens/andaime.png', 'Andaime de aco', 16),
	('Betoneira 1t', 'imagens/betoneira.png', 'Betoneira para obras parrudas. Tempo mÃ©dio por massa de 1 tonelada 2 horas', 50),
	('Britadeira', './imagens/britadeira.png', 'Britadeira para quebrar coisas quebrÃ?Â¡veis que quebram', 45);
/*!40000 ALTER TABLE `equipamentos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
