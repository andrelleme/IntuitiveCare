-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.11-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para teste03_bancodedados
CREATE DATABASE IF NOT EXISTS `teste03_bancodedados` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `teste03_bancodedados`;

-- Copiando estrutura para tabela teste03_bancodedados.ano2020
CREATE TABLE IF NOT EXISTS `ano2020` (
  `CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `DATA` date DEFAULT NULL,
  `REG_ANS` int(11) DEFAULT NULL,
  `CD_CONTA_CONTABIL` varchar(200) DEFAULT NULL,
  `DESCRICAO` text DEFAULT NULL,
  `VL_SALDO_FINAL` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=2128527 DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela teste03_bancodedados.ano2021
CREATE TABLE IF NOT EXISTS `ano2021` (
  `CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `DATA` date DEFAULT NULL,
  `REG_ANS` int(11) DEFAULT NULL,
  `CD_CONTA_CONTABIL` varchar(200) DEFAULT NULL,
  `DESCRICAO` text DEFAULT NULL,
  `VL_SALDO_FINAL` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=2249835 DEFAULT CHARSET=utf8mb4;

-- Exportação de dados foi desmarcado.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
