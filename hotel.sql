-- MySQL dump 10.13  Distrib 5.1.37, for Win32 (ia32)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	5.1.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `hotel`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hotel2` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hotel`;

--
-- Table structure for table `hospede`
--

DROP TABLE IF EXISTS `hospede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospede` (
  `id_hospede` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) NOT NULL,
  `telefone` varchar(10) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  PRIMARY KEY (`id_hospede`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospede`
--

LOCK TABLES `hospede` WRITE;
/*!40000 ALTER TABLE `hospede` DISABLE KEYS */;
INSERT INTO `hospede` VALUES (1,'Jose Saramago','2322','1949-02-19'),(2,'Alice no Pais das Maravilhas','34455','1996-02-05'),(3,'Rob o Robo','2322','1929-12-19'),(4,'Galinha Pintadinha',NULL,'2001-05-05'),(5,'Xuxa',NULL,'1959-12-27'),(6,'Chaves','5454','1919-03-19'),(7,'Cebolinha','2322','1989-12-19'),(8,'Maria Joaquina','9898','1979-02-19'),(9,'Bob Esponja',NULL,'2008-07-13'),(10,'Renato Russo','7656','1949-12-25'),(11,'Fulano de Tal','2322','2009-09-30');
/*!40000 ALTER TABLE `hospede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocupacao`
--

DROP TABLE IF EXISTS `ocupacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ocupacao` (
  `id_ocupacao` int(11) NOT NULL AUTO_INCREMENT,
  `data_entrada` date NOT NULL,
  `data_saida` date DEFAULT NULL,
  `id_hospede` int(11) DEFAULT NULL,
  `id_quarto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ocupacao`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocupacao`
--

LOCK TABLES `ocupacao` WRITE;
/*!40000 ALTER TABLE `ocupacao` DISABLE KEYS */;
INSERT INTO `ocupacao` VALUES (1,'2013-02-04','2013-02-12',5,1),(2,'2013-02-06','2013-02-13',6,2),(3,'2013-01-03','2013-01-10',5,2),(4,'2013-01-04','2013-01-11',6,3),(5,'2013-01-03',NULL,3,8),(6,'2013-01-03',NULL,4,4),(7,'2013-01-03','2013-01-10',5,2),(8,'2013-01-03','2013-01-10',8,2),(9,'2013-01-03',NULL,9,3),(10,'2013-01-03',NULL,10,12),(11,'2013-01-03',NULL,11,13);
/*!40000 ALTER TABLE `ocupacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quarto`
--

DROP TABLE IF EXISTS `quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quarto` (
  `id_quarto` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `id_situacao_quarto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_quarto`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quarto`
--

LOCK TABLES `quarto` WRITE;
/*!40000 ALTER TABLE `quarto` DISABLE KEYS */;
INSERT INTO `quarto` VALUES (1,101,1),(2,102,1),(3,303,2),(4,302,2),(5,304,1),(6,103,1),(7,104,3),(8,105,2),(9,106,4),(10,107,1),(11,108,1),(12,201,2),(13,202,2),(14,203,1),(15,204,3),(16,205,1),(17,206,4),(18,301,2);
/*!40000 ALTER TABLE `quarto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `situacao_quarto`
--

DROP TABLE IF EXISTS `situacao_quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `situacao_quarto` (
  `id_situacao_quarto` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(30) NOT NULL,
  PRIMARY KEY (`id_situacao_quarto`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situacao_quarto`
--

LOCK TABLES `situacao_quarto` WRITE;
/*!40000 ALTER TABLE `situacao_quarto` DISABLE KEYS */;
INSERT INTO `situacao_quarto` VALUES (1,'disponivel'),(2,'limpando'),(3,'ocupado'),(4,'manutencao');
/*!40000 ALTER TABLE `situacao_quarto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-02-19 19:30:49
