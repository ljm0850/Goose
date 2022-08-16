-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: i7c209.p.ssafy.io    Database: ssafy_web_db
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `study`
--

DROP TABLE IF EXISTS `study`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `study` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `member` int NOT NULL,
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `open` tinyint(1) NOT NULL,
  `url_page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url_conf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `maxmember` int DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study`
--

LOCK TABLES `study` WRITE;
/*!40000 ALTER TABLE `study` DISABLE KEYS */;
INSERT INTO `study` VALUES (19,'123',NULL,1,'JAVA','study2',1,'','3ma7ootfi2u','123',1),(25,'스터디 이름',NULL,1,'C','study3',1,'','vxjjmohqe1o','1234',1),(31,'1234',NULL,1,'Python','study3',1,'','g6w8vkodgtq','1234',1),(32,'123445',NULL,1,'Python','study1',1,'','ru99t3ojtga','1234',1),(33,'Java',NULL,1,'JAVA','study2',1,'','7idqwrn6cig','java',1),(34,'Goose',NULL,1,'JAVA','study1',1,'','hfv6wds0r4w','1234',1),(35,'알수없는 알고리즘이 날 이곳으로 이끌었다',NULL,1,'Python','study1',1,'','axhplk0dt46','1234',1),(39,'알고리즘 파이썬키스트',NULL,1,'Python','study3',1,'','4looic5jicb','1234',1),(41,'인도네시아 자바섬에서 펼쳐지는 JAVA 알고리즘 스터디',NULL,1,'JAVA','study2',1,'','8fc2ciaglsk','1Q2W3E4R!',1),(43,'스터디',NULL,1,'JAVA','study2',1,'','ybf7xda2uzc','12341234',1),(44,'즐거운 자바 알고리즘',NULL,1,'JAVA','study1',1,'','ajis3pkwot','789',1),(45,'파이썬 초보방',NULL,1,'Python','study2',1,'','vfl01k09m8','1234',1),(59,'자바와 함께 춤을',NULL,1,'java','study1',0,'','feerqwrwr3r',NULL,5),(60,'파이썬은 pie sun?',NULL,1,'java','study2',0,'','feerqwrwr4r',NULL,5),(69,'ㅈㅈㅈ',NULL,1,'JAVA','',1,'','4owqgnu9r9i','1234',1),(70,'ㅈㅈㅈ',NULL,1,'Python','',1,'','bfl0hjqk8v','1234',1),(71,'1234',NULL,1,'Python','',1,'','n55clbmtke','1234',1),(73,'구해줘요 스터디',NULL,1,'Python','study1',1,'','hum9egam5ye','1234',1),(76,'구해줘요 스터디!!!!',NULL,1,'Python','study1',1,'','ewanoxgpuuq','1234',1);
/*!40000 ALTER TABLE `study` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-16 17:34:20
