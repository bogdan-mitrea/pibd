-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: 432d_mitrea_bogdan_89
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `idClient` int NOT NULL AUTO_INCREMENT,
  `Nume` varchar(45) DEFAULT NULL,
  `Prenume` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Vin','Josh','yourjoshsir@gmail.com','0723654892'),(4,'Ravanelli','Florin','rava4226@cosa.com','0762845136'),(5,'Costin','Dani','salondanicosti@yahoo.com','0777362490'),(6,'Dennis','Man','parmaboy98@gmail.it','0785749261'),(7,'Nutuca','Mataru','dresordel3i@gmail.com','0793128476'),(8,'Maticiuc','Codin','spitalecodin@gmail.com','0704682159'),(9,'Mitrea','Bogdan','mitreabogdan2002@gmail.com','0724000081'),(14,'Stan','Rares','raresstan01@gmail.com','0744564000'),(15,'Copil','Marian','copilco665@outlook.com','0724561119'),(24,'NUam','Dormit','deloc@pentru.pibd','0722456789');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shops` (
  `idShop` int NOT NULL AUTO_INCREMENT,
  `NumeMagazin` varchar(45) DEFAULT NULL,
  `Localitate` varchar(45) DEFAULT NULL,
  `ContactEmail` varchar(45) DEFAULT NULL,
  `ContactPhone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idShop`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES (1,'Lidl','Bucuresti','lidlbuch@lidl.ro','0756123456'),(2,'Kaufland','Brasov','kclasicbv@gmail.com','0767345678'),(3,'La Cocos','Ploiesti','lacocosfcp@yahoo.ro','0748234567'),(5,'Selgros','Bucuresti','engroselbuc@gmail.com','0738567121'),(7,'Profi','Bucuresti','profibuc@profi.ro','0789003456'),(9,'Mega Image','Pitesti','megaarg@yahoo.ro','0772901346'),(11,'Auchan','Bucuresti Sector 6','auchanafi@contactau.ro','0722004562'),(13,'Diax','Ploiesti','diaxcom@gmail.com','0770562911'),(14,'Lidl','Cluj','lidlcj@gmail.com','0723114555'),(15,'Florarie','Urlati','flowersurl@gmai.com','0723145009');
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `idTranzactie` int NOT NULL AUTO_INCREMENT,
  `idShop` int DEFAULT NULL,
  `idClient` int DEFAULT NULL,
  `PurchaseDate` date DEFAULT NULL,
  `TotalSpent` float DEFAULT NULL,
  PRIMARY KEY (`idTranzactie`),
  KEY `FK1_idx` (`idClient`),
  KEY `FK2_idx` (`idShop`),
  CONSTRAINT `FK1` FOREIGN KEY (`idClient`) REFERENCES `clients` (`idClient`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK2` FOREIGN KEY (`idShop`) REFERENCES `shops` (`idShop`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (4,13,6,'2020-11-15',1000.01),(5,5,15,'2021-03-04',245.67),(36,1,7,'2024-01-05',12.59),(38,3,9,'2023-02-04',100.17),(39,2,15,'2022-09-15',156.5);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-07 18:43:45
