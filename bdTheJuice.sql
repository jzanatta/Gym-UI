CREATE DATABASE  IF NOT EXISTS `thejuice` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `thejuice`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: thejuice
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `Nascimento` varchar(50) NOT NULL,
  `CPF` varchar(15) NOT NULL,
  `Telefone` varchar(14) NOT NULL,
  `Senha` varchar(50) NOT NULL,
  `Registro` timestamp NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Regiane Bolinha','29/01/1980','773.498.321-11','(11)97894-4415','seila','2023-10-30 22:27:31'),(2,'João Nascimento','07/10/2001','464.042.118-40','(11)97539-7249','seila1','2023-10-30 22:27:49'),(3,'Alex Mota','25/09/1999','145.789.141-91','(18)91148-3975','seila2','2023-10-30 22:27:57'),(4,'Henrique Krigen','18/12/2004','982.344.741-74','(18)91148-3975','seila3','2023-10-30 22:28:04'),(5,'Yago Zanatta','20/04/2010','352.982.648-55','(11)94405-8559','seila4','2023-10-30 22:28:09'),(6,'Kaike Brunelli','24/06/2008','377.325.411-01','(18)91148-3975','seila5','2023-10-30 22:28:14'),(7,'Thiago Felipe','27/01/1987','000.777.411-12','(11)97254-7415','seila','2023-10-30 22:33:23'),(8,'Nathan da Silva','14/10/2008','111.002.789-01','(11)99859-7743','seila1','2023-10-30 22:33:28'),(9,'Gabriel Martineli','15/01/1999','222.874.513-00','(18)91635-8985','seila2','2023-10-30 22:33:33'),(10,'Daiana dos Santos','06/10/2000','303.344.741-70','(18)78548-3985','seila3','2023-10-30 22:33:38'),(11,'Rebeca Andrade','29/07/1989','344.999.852-15','(11)99785-8576','seila4','2023-10-30 22:33:41'),(12,'Isabella Bozelli','02/07/2001','554.891.456-05','(18)91228-3975','seila5','2023-10-30 22:33:45'),(13,'Arnod Chuiaisnaguer','27/04/1970','111.222.333-44','(11)97254-7415','seila','2023-10-30 22:36:03'),(14,'Cris Bumpstad','14/10/2008','124.456.789-41','(11)99859-7743','seila1','2023-10-30 22:36:03'),(15,'Ramo Dinoo','15/01/1999','292.874.893-60','(18)91635-8985','seila2','2023-10-30 22:36:03');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-30 19:46:20
