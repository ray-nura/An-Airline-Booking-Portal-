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
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights` (
  `flight_ID` int NOT NULL AUTO_INCREMENT,
  `flight_numb` varchar(45) DEFAULT NULL,
  `airlines` varchar(45) DEFAULT NULL,
  `departure` varchar(45) DEFAULT NULL,
  `arrival` varchar(45) DEFAULT NULL,
  `flight_date` date DEFAULT NULL,
  `flight_time` time DEFAULT NULL,
  `duration` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`flight_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (1,'A101','	Delta Air Lines','Delhi India DEL','Los Angeles, California USA LAX','2021-06-20','16:30:10','14',350),(2,'A105','Lufthansa Group','New York USA JFK','Los Angeles, California USA LAX','2021-06-20','16:25:10','6',150),(3,'D103','	Delta Air Lines','New York USA JFK','Los Angeles, California USA LAX','2021-06-20','16:24:10','20',550),(4,'S255','Lufthansa Group','Delhi India DEL','Los Angeles, California USA LAX','2021-06-20','16:24:10','5',100),(5,'A104','	Delta Air Lines','New York USA JFK','Los Angeles, California USA LAX','2021-07-03','16:24:10','5',350),(6,'S256','Lufthansa Group','New York USA JFK','Los Angeles, California USA LAX','2021-07-04','16:24:10','8',100),(7,'D455','	United Airlines','New York USA JFK','Los Angeles, California USA LAX','2021-06-20','16:24:10','7',550),(8,'F125','	United Airlines','Istanbul Turkey IST','New York USA JFK','2021-07-04','16:24:10','6',100),(9,'W325','China Eastern Airlines','Istanbul Turkey IST','Los Angeles, California USA LAX','2021-07-04','16:24:10','5',550),(10,'L101','American Airlines Group','Istanbul Turkey IST','New York USA JFK','2021-07-04','16:24:10','5',350),(11,'D410','American Airlines Group','Los Angeles, California USA LAX','New York USA JFK','2021-07-04','16:24:10','7',100),(12,'D410','	United Airlines','Los Angeles, California USA LAX','New York USA JFK','2021-07-04','16:24:10','7',550),(13,'D410','China Eastern Airlines','Delhi India DEL','New York USA JFK','2021-07-04','16:24:10','7',350),(14,'D410','China Eastern Airlines','Delhi India DEL','New York USA JFK','2021-07-04','16:24:10','7',100),(15,'A102','American Airlines Group','Shuangliu-Wuhou, Chengdu, Sichuan China CTU','Atlanta, Georgia USA ATL','2021-06-24','08:07:00','12',100),(18,'J105','United Airlines','Baiyun-Huadu Guangdong China CAN','Atlanta, Georgia USA ATL','2021-07-25','14:20:00','8',350),(19,'J105','United Airlines','Baiyun-Huadu Guangdong China CAN','Atlanta, Georgia USA ATL','2021-07-25','14:20:00','8',350),(20,'S202','Lufthansa Group','Shuangliu-Wuhou, Chengdu, Sichuan China CTU','Atlanta, Georgia USA ATL','2021-07-28','02:30:00','10',550),(21,'S235','Lufthansa Group','Los Angeles, California USA LAX','Istanbul Turkey IST','2021-07-30','05:30:00','4',150),(22,'D306','Air FranceâKLM','Garhoud, Dubai DBX','Istanbul Turkey SAW','2021-07-29','02:45:00','6',650),(23,'K302','United Airlines','Los Angeles, California USA LAX','Istanbul Turkey SAW','2021-08-06','02:45:00','6',650),(24,'K302','United Airlines','Los Angeles, California USA LAX','Istanbul Turkey SAW','2021-08-06','02:45:00','6',650),(25,'F502','Southwest Airlines','Istanbul Turkey IST','Miami-Dade County, Florida USA MIA','2021-08-07','06:40:00','12',950),(26,'F405','Delta Air Lines','Baiyun-Huadu Guangdong China CAN','Atlanta, Georgia USA ATL','2021-07-05','08:15:00','18',1200),(27,'F205','All Nippon Airways','Los Angeles, California USA LAX','Åta, Tokyo Japan HND','2021-08-31','10:30:00','23',1200),(28,'G205','United Airlines','Atlanta, Georgia USA ATL','Shuangliu-Wuhou, Chengdu, Sichuan China CTU','2021-07-06','13:20:00','12',850);
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-22  1:13:02
