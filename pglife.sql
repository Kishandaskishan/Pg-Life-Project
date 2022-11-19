-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: pglife
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminlogin` (
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlogin`
--

LOCK TABLES `adminlogin` WRITE;
/*!40000 ALTER TABLE `adminlogin` DISABLE KEYS */;
INSERT INTO `adminlogin` VALUES ('sanu@gmail.com','sanu');
/*!40000 ALTER TABLE `adminlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking-log`
--

DROP TABLE IF EXISTS `booking-log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking-log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pgid` int DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `uemail` varchar(255) DEFAULT NULL,
  `umobileno` varchar(255) DEFAULT NULL,
  `pgownername` varchar(255) DEFAULT NULL,
  `pgownermobileno` varchar(255) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking-log`
--

LOCK TABLES `booking-log` WRITE;
/*!40000 ALTER TABLE `booking-log` DISABLE KEYS */;
INSERT INTO `booking-log` VALUES (3,11,'cuttack','1000','sanu','sanu@gmail.com','4566789','sanu','34567890','Pay during Checkin');
/*!40000 ALTER TABLE `booking-log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pglist`
--

DROP TABLE IF EXISTS `pglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pglist` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `pgname` varchar(255) DEFAULT NULL,
  `pgdetails` varchar(255) DEFAULT NULL,
  `ownername` varchar(255) DEFAULT NULL,
  `owneremail` varchar(255) DEFAULT NULL,
  `ownermobile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pglist`
--

LOCK TABLES `pglist` WRITE;
/*!40000 ALTER TABLE `pglist` DISABLE KEYS */;
INSERT INTO `pglist` VALUES (1,'Bhubaneswar','1000','','bermunda','Amarendra','sanu@gmail.com','5677'),(2,'Bhubaneswar','1200','kishan','nayapali','kishan','kishan@123','45667'),(3,'Bhubaneswar','2212','Situ house','bbsr','Chinmaya','situ@chinmayakumarbiswal.in',NULL),(4,'Bhubaneswar','2212','Situ house','bbsr','Chinmaya','situ@chinmayakumarbiswal.in','6370183009'),(5,'Bhubaneswar','1000','chinmaya','chilika','sanu','sanu@gmail.com','null'),(6,'Bhubaneswar','213','dcs','sdcc','sanu','sanu@gmail.com','null'),(7,'Bhubaneswar','21000','Amarendra Sahoo','At/po-kumarpur','sanu','sanu@gmail.com','34567890'),(8,'Bhubaneswar','21000','Amarendra Sahoo','At/po-kumarpur','sanu','sanu@gmail.com','34567890'),(9,'Bhubaneswar','1000','null','null','null','null','null'),(10,'Bhubaneswar','1200','null','null','null','null','null'),(11,'cuttack','1000','demo','At/po-kumarpur','sanu','sanu@gmail.com','34567890'),(12,'Bhubaneswar','5000','Chinmaya Test','<p>This PG is only for couple.</p>\r\n<p>18+ only</p>\r\n<p>Address - CUTM back side near to girls hostel.</p>','sanu','sanu@gmail.com','34567890'),(13,'Balasowre','3333','Basanti','<p>Kumarpur</p>','sanu','sanu@gmail.com','34567890'),(14,'Sambalpur','5000','Ganesh','<p>Basudevpur</p>','sanu','sanu@gmail.com','34567890'),(15,'Sambalpur','2222','Centurion','<p>jatani</p>','sanu','sanu@gmail.com','34567890'),(16,'cuttack','3333','Jkbk','<p>link road</p>','sanu','sanu@gmail.com','34567890'),(17,'Rourkela','1000','NIT','<p>Hanuman batika</p>','sanu','sanu@gmail.com','34567890'),(18,'Bhubaneswar','2222','kitt','<p>Bhubaneswar</p>','sanu','sanu@gmail.com','34567890'),(19,'Rourkela','1980','Devid','<p>Badambadi</p>','sanu','sanu@gmail.com','34567890'),(20,'Rourkela','2650','Omm Sai','<p>Amenties</p>\r\n<p>A/C</p>\r\n<p>Wifi</p>\r\n<p>Single Bed&nbsp;</p>','Debashree','deba@gmail.com','9777322419'),(21,'Rourkela','2500','Sai Krishna','<p>Amenities</p>\r\n<p>Kitchen facilities, like: fridge, coffee maker and microwave.</p>\r\n<p>TV with cable</p>\r\n<p>Tissue box</p>','Debashree','deba@gmail.com','9777322419');
/*!40000 ALTER TABLE `pglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pgowner_registration`
--

DROP TABLE IF EXISTS `pgowner_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pgowner_registration` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Uname` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Confirm_Password` varchar(255) DEFAULT NULL,
  `Mobile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pgowner_registration`
--

LOCK TABLES `pgowner_registration` WRITE;
/*!40000 ALTER TABLE `pgowner_registration` DISABLE KEYS */;
INSERT INTO `pgowner_registration` VALUES (1,'kishan','kishan@123','1234','1234','8984307377'),(2,'rosy','rosy@gmail.com','1234','1234',NULL),(3,'sanu','sanu@gmail.com','1234','1234','34567890'),(4,'rosy','rosy@gmail.com','1234','1234',NULL),(5,'kuna','kuna@gmail.com','1234','1234',NULL),(6,'demo','demo@gmail','1234','1234','7887545'),(7,'suna','suna@gmail.com','1234','1234','345667788'),(8,'muna','muna@gmail.com','1234','1234','45667890'),(9,'Debashree','deba@gmail.com','rosy','rosy','9777322419');
/*!40000 ALTER TABLE `pgowner_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_registration`
--

DROP TABLE IF EXISTS `user_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_registration` (
  `Uname` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Confirm_Password` varchar(255) NOT NULL,
  `umobileno` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Uname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_registration`
--

LOCK TABLES `user_registration` WRITE;
/*!40000 ALTER TABLE `user_registration` DISABLE KEYS */;
INSERT INTO `user_registration` VALUES ('kuna','kuna@gmail.com','kuna','kuna','4567809'),('sanu','sanu@gmail.com','sanu','sanu','4566789');
/*!40000 ALTER TABLE `user_registration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-01  0:42:04
select * from pglist;
