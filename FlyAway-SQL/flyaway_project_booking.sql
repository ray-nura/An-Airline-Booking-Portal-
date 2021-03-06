-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: flyaway_project
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `book_ID` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `flight_date` date DEFAULT NULL,
  `flight_numb` varchar(45) DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `bank_card` bigint DEFAULT NULL,
  PRIMARY KEY (`book_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'Tom','Ray',123456,'mail','2021-07-04','S256',400,1234567891011121314),(2,'Sam','Tom',123456,'mail','2021-06-20','D455',2200,1234567891234567891),(3,'Samsung','Apple',181818181,'phone-mail','2021-07-03','A104',1050,1111222233331111222),(6,'Tim','Pumba',12345,'TIMmail','2021-06-24','A102',400,4444441111111111111),(15,'ray','jon',123456,'mail','2021-06-20','D103',2750,1111111111111111111),(16,'Ketty','Kim',123456,'katty@mail.com','2021-06-20','D455',1100,2345125689562323121),(17,'Kimchi','Choi',45678912,'kimchi@mail.com','2021-07-03','A104',1400,2345123561223654512),(18,'Kimchi','Choi',45678912,'kimchi@mail.com','2021-07-03','A104',1400,2345123561223654512),(19,'Bennet ','Ragnivindir',256777890,'benny@yahoo.com','2021-06-20','D103',1650,54875558877654545),(20,'Bennet ','Ragnivindir',256777890,'benny@yahoo.com','2021-06-20','D103',1650,54875558877654545),(21,'Loli','Naomi',456789,'loli@mail.com','2021-07-06','G205',1700,1234567891234567895),(22,'Loli','Naomi',456789,'loli@mail.com','2021-07-06','G205',1700,1234567891234567895),(23,'Loli','Naomi',456789,'loli@mail.com','2021-07-06','G205',1700,1234567891234567895),(24,'Loli','Naomi',456789,'loli@mail.com','2021-07-06','G205',1700,1234567891234567895);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-22  1:13:01
