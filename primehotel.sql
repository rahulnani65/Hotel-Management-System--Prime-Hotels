-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: reserve
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `Booking`
--

DROP TABLE IF EXISTS `Booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Booking` (
  `BookingID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `RoomType` varchar(50) NOT NULL,
  `BeddingType` varchar(20) NOT NULL,
  `NumberOfRooms` int NOT NULL,
  `CheckInDate` datetime NOT NULL,
  `CheckOutDate` datetime NOT NULL,
  `TotalCost` decimal(10,2) NOT NULL,
  PRIMARY KEY (`BookingID`,`UserID`),
  KEY `booking_ibfk_1` (`UserID`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Booking`
--

LOCK TABLES `Booking` WRITE;
/*!40000 ALTER TABLE `Booking` DISABLE KEYS */;
INSERT INTO `Booking` VALUES (17,3,'sai','N','rahul.nalagattu@gmail.com','7075960680','Superior Room','Triple',1,'2024-02-15 00:00:00','2024-02-23 00:00:00',0.00),(18,1,'sai','N','rahul.nalagattu@gmail.com','7984737899','Superior Room','Single',1,'2024-02-17 00:00:00','2024-02-18 00:00:00',0.00),(19,1,'sai','N','rahul.nalagattu@gmail.com','7075960680','Superior Room','Single',1,'2024-02-14 00:00:00','2024-02-15 00:00:00',0.00),(20,1,'sai','N','vinni@email.com','7984737899','Superior Room','Double',1,'2024-02-18 00:00:00','2024-02-19 00:00:00',0.00),(21,1,'mukesh','K','sai@gmail.com','234','Superior Room','Double',3,'2024-02-18 00:00:00','2024-02-19 00:00:00',0.00),(22,1,'sai','K','rahul.nalagattu@gmail.com','7075960680','Superior Room','Single',1,'2024-02-18 06:43:00','2024-02-12 12:13:00',0.00),(23,1,'sai','K','sai@gmail.com','7984737899','Superior Room','Double',4,'2024-02-18 19:41:00','2024-02-20 17:59:00',0.00),(24,1,'ram','K','ramsai@gmail.com','7984737900','Single Room','Double',2,'2024-02-18 20:20:00','2024-02-20 13:10:00',300.00),(25,2,'teja','K','sai@gmail.com','7984737900','Superior Room','Double',2,'2024-02-18 20:33:00','2024-02-20 02:03:00',600.00),(26,2,'rahul','N','ramsai@gmail.com','7984737900','Superior Room','Double',3,'2024-02-20 06:38:00','2024-02-23 12:08:00',2700.00),(27,2,'teja','k','teja@gmail.com','7984737890','Guest House','Triple',2,'2024-02-20 10:28:00','2024-02-21 15:58:00',400.00),(28,1,'sai','Sindukuri','ramsai@gmail.com','7984737900','Single Room','Double',2,'2024-02-20 13:06:00','2024-02-22 18:40:00',600.00),(29,1,'mukesh','Sindukuri','ramsai@gmail.com','7984737899','Single Room','Double',3,'2024-02-20 13:11:00','2024-02-21 18:41:00',450.00),(30,1,'mukesh','Sindukuri','ramsai@gmail.com','7984737899','Single Room','Double',3,'2024-02-20 13:11:00','2024-02-21 18:41:00',450.00),(31,1,'sai','K','ramsai@gmail.com','7075960680','Single Room','Double',1,'2024-02-20 13:29:00','2024-03-07 19:00:00',2400.00),(32,1,'sai','K','ramsai@gmail.com','7075960680','Single Room','Double',1,'2024-02-20 13:29:00','2024-03-07 19:00:00',2400.00),(33,1,'sai','K','ramsai@gmail.com','7075960680','Single Room','Double',1,'2024-02-20 13:29:00','2024-03-07 19:00:00',2400.00),(34,1,'sai','K','ramsai@gmail.com','7075960680','Single Room','Double',1,'2024-02-20 13:29:00','2024-03-07 19:00:00',2400.00),(35,1,'sai','K','ramsai@gmail.com','7075960680','Single Room','Double',1,'2024-02-20 13:29:00','2024-03-07 19:00:00',2400.00),(36,1,'ram','Sindukuri','sai@gmail.com','7984737899','Single Room','Quad',2,'2024-02-20 13:32:00','2024-02-22 19:02:00',600.00),(37,1,'vinni','N','ramsai@gmail.com','7984737900','Single Room','Triple',3,'2024-02-20 13:34:00','2024-02-29 19:04:00',4050.00),(38,1,'vinni','K','sai@gmail.com','7075960680','Single Room','Single',2,'2024-02-20 13:38:00','2024-02-22 19:09:00',600.00),(39,1,'vinni','K','sai@gmail.com','7075960680','Single Room','Single',2,'2024-02-20 13:38:00','2024-02-22 19:09:00',600.00),(40,1,'ram','Sindukuri','ramsai@gmail.com','7984737899','Single Room','Triple',2,'2024-02-20 15:13:00','2024-02-22 20:43:00',600.00),(41,1,'ram','Sindukuri','ramsai@gmail.com','7984737899','Single Room','Triple',2,'2024-02-20 15:13:00','2024-02-22 20:43:00',600.00),(42,1,'ram','N','sai@gmail.com','7984737899','Superior Room','Single',1,'2024-02-20 15:42:00','2024-02-28 21:16:00',2400.00),(43,2,'teja','Sindukuri','teja@gmail.com','7984737900','Deluxe Room','Triple',2,'2024-02-20 16:52:00','2024-02-23 22:22:00',2400.00),(44,1,'ram','k','ramsai@gmail.com','7075960680','Superior Room','Double',2,'2024-02-21 09:10:00','2024-02-28 14:40:00',4200.00),(45,1,'sai','k','teja@gmail.com','7984737899','Single Room','Double',2,'2024-02-21 15:36:00','2024-02-22 21:06:00',300.00);
/*!40000 ALTER TABLE `Booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transaction`
--

DROP TABLE IF EXISTS `Transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Transaction` (
  `TransactionID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `BookingID` int NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `CardNumber` varchar(16) NOT NULL,
  `ExpiryDate` varchar(7) NOT NULL,
  `CVV` varchar(4) NOT NULL,
  PRIMARY KEY (`TransactionID`,`UserID`),
  KEY `transaction_ibfk_1` (`UserID`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction`
--

LOCK TABLES `Transaction` WRITE;
/*!40000 ALTER TABLE `Transaction` DISABLE KEYS */;
INSERT INTO `Transaction` VALUES (103,3,17,250.00,'1233678234','12/2023','123'),(104,3,103,250.00,'1233678234','12/2023','123'),(105,1,18,150.00,'1234 3456 4567','12/2024','123'),(106,1,23,200.00,'1234 4567 4567','12/2034','234'),(107,1,0,200.00,'1234 4567 4567','12/2034','234'),(108,1,107,200.00,'1234 4567 4567','12/2034','234'),(109,1,108,200.00,'1234 4567 4567','12/2034','234'),(110,1,109,200.00,'1234 4567 4567','12/2034','234'),(111,1,0,200.00,'1234 2343 2312','12/2334','2345'),(112,1,111,200.00,'1234 2343 2312','12/2334','2345'),(113,1,112,200.00,'1234 2343 2312','12/2334','2345'),(114,2,26,200.00,'1234 3456 3254 ','12/2343','234'),(115,2,114,200.00,'1234 3456 3254 ','12/2343','234'),(116,2,0,200.00,'1234 3456 3254 ','12/2343','789'),(117,2,0,200.00,'1234 3456 3254 ','12/2343','789'),(118,2,117,200.00,'1234 3456 3254 ','12/2343','789'),(119,2,118,200.00,'1234 3456 3254 ','12/2343','789'),(120,2,0,200.00,'1234 3456 3254 ','12/2343','789'),(121,2,120,200.00,'1234 3456 3254 ','12/2343','789'),(122,2,0,200.00,'1234 3456 3254 ','12/2343','789'),(123,2,122,200.00,'1234 3456 3254 ','12/2343','789'),(124,2,27,200.00,'1234 1234 1234','12/1234','123'),(125,2,0,200.00,'1234 1234 1234','12/1234','123'),(126,2,125,200.00,'1234 1234 1234','12/1234','123'),(127,2,126,200.00,'1234 1234 1234','12/1234','123'),(128,2,127,200.00,'1234 1234 1234','12/1234','123'),(129,2,0,200.00,'1234 1234 1234','12/1234','123'),(130,2,129,200.00,'1234 1234 1234','12/1234','123'),(131,1,37,200.00,'123443','122345','234'),(132,1,131,200.00,'123443','122345','234'),(133,1,132,200.00,'123443','122345','234'),(134,1,133,200.00,'123443','122345','234'),(135,1,134,200.00,'123443','122345','567'),(136,1,135,200.00,'123443','122345','567'),(137,1,0,200.00,'123443','122345','567'),(138,1,38,200.00,'23343445','234444','233'),(139,1,138,200.00,'23343445','234444','233'),(140,1,39,200.00,'34556656','234566','345'),(141,1,0,200.00,'34556656','234566','345'),(142,1,141,200.00,'34556656','234566','345'),(143,1,142,200.00,'34556656','234566','345'),(144,1,143,200.00,'34556656','234566','345'),(145,1,144,200.00,'34556656','234566','345'),(146,1,0,200.00,'34556656','234566','345'),(147,1,0,200.00,'34556656','234566','345'),(148,1,147,200.00,'34556656','234566','899'),(149,1,41,200.00,'1234 2345 3455','12/2204','234'),(150,1,0,200.00,'1234 2345 3455','12/2204','223'),(151,1,0,200.00,'6623672367','12/1233','123'),(152,1,0,200.00,'6623672367','12/1233','234'),(153,1,0,200.00,'6623672367','12/1233','465'),(154,1,0,200.00,'6623672367','12/1233','465'),(155,2,0,200.00,'675567454','456778','678'),(156,2,0,200.00,'675567454','456778','678'),(157,2,0,200.00,'675567454','456778','678'),(158,2,0,200.00,'675567454','456778','678'),(159,2,0,200.00,'675567454','456778','678'),(160,2,0,200.00,'675567454','456778','678'),(161,2,0,200.00,'675567454','456778','678'),(162,1,0,200.00,'213312342333','123020','123'),(163,1,0,200.00,'213312342333','123020','123'),(164,1,0,200.00,'213312342333','123020','123'),(165,1,0,200.00,'213312342333','123020','123'),(166,1,0,200.00,'213312342333','123020','123'),(167,1,0,200.00,'213312342333','123020','123'),(168,1,0,200.00,'213312342333','123020','123'),(169,1,0,200.00,'213312342333','123020','123'),(170,1,0,200.00,'213312342333','123020','123'),(171,1,0,200.00,'213312342333','123020','123'),(172,1,0,200.00,'213312342333','123020','123'),(173,1,0,200.00,'213312342333','123020','123'),(174,1,0,200.00,'213312342333','123020','123'),(175,1,0,200.00,'213312342333','123020','123'),(176,1,0,200.00,'213312342333','123020','123'),(177,1,0,200.00,'213312342333','123020','123'),(178,1,0,200.00,'213312342333','123020','123'),(179,1,0,200.00,'213312342333','123020','123'),(180,1,0,200.00,'213312342333','123020','123'),(181,1,0,200.00,'213312342333','123020','123'),(182,1,0,200.00,'213312342333','123020','123'),(183,1,0,200.00,'213312342333','123020','123'),(184,1,0,200.00,'213312342333','123020','123'),(185,1,0,200.00,'56466545565','123233','456'),(186,1,0,200.00,'56466545565','123233','456');
/*!40000 ALTER TABLE `Transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'rahul','rahul.nalagattu@gmail.com','rahul123'),(2,'teja','teja@gmail.com','teja123'),(3,'ravi','ravi@gmail.com','ravi123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'reserve'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-21 22:52:04
