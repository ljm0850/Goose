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
-- Table structure for table `study_calendar`
--

DROP TABLE IF EXISTS `study_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `study_calendar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `study_pk` int NOT NULL,
  `user_pk` int NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `writer` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `end` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `textColor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `backgroundColor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `borderColor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `background_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `border_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `study_pk` (`study_pk`),
  KEY `user_pk` (`user_pk`),
  CONSTRAINT `study_calendar_ibfk_1` FOREIGN KEY (`study_pk`) REFERENCES `study` (`id`) ON DELETE CASCADE,
  CONSTRAINT `study_calendar_ibfk_2` FOREIGN KEY (`user_pk`) REFERENCES `study_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_calendar`
--

LOCK TABLES `study_calendar` WRITE;
/*!40000 ALTER TABLE `study_calendar` DISABLE KEYS */;
INSERT INTO `study_calendar` VALUES (21,19,15,'dsad','123123','asdasd','2022-08-10T00:00','',NULL,NULL,NULL,NULL,NULL,NULL),(22,19,15,'1414','123123','','2022-08-16T00:00','2022-09-02T17:52',NULL,NULL,NULL,NULL,NULL,NULL),(23,19,15,'123123','123123','','2022-08-08T00:00','',NULL,NULL,NULL,NULL,NULL,NULL),(25,44,25,'최종 평가','정관철','공유 프로젝트 최종 발표 & 평가','2022-08-19T00:00','',NULL,NULL,NULL,NULL,NULL,NULL),(26,44,25,'프로젝트 마무리','정관철','프로젝트 마무리','2022-08-16T09:00','2022-08-18T14:36',NULL,NULL,NULL,NULL,NULL,NULL),(27,34,23,'두근두근 테스트','소정현','두근두근 테스트','2022-08-16T00:00','2022-08-18T14:03',NULL,NULL,NULL,NULL,NULL,NULL),(28,34,24,'광복절','양승호','광복절','2022-08-15T00:00','',NULL,NULL,NULL,NULL,NULL,NULL),(29,34,23,'발표하는 날~','소정현','발표하는 날~','2022-08-19T00:00','',NULL,NULL,NULL,NULL,NULL,NULL),(30,34,23,'다시프로젝트...','소정현','','2022-08-22T00:00','2022-09-15T14:03',NULL,NULL,NULL,NULL,NULL,NULL),(31,44,25,'알고리즘 스터디','정관철','- 백준 2051','2022-08-22T19:00','',NULL,NULL,NULL,NULL,NULL,NULL),(33,44,25,'알고리즘 스터디','정관철','-백준 12345','2022-08-29T19:00','',NULL,NULL,NULL,NULL,NULL,NULL),(34,34,14,'팀회의','admin','팀회의','2022-08-09T00:00','',NULL,NULL,NULL,NULL,NULL,NULL),(35,35,14,'팀회의','admin','팀회의','2022-08-24T00:00','2022-08-25T21:10',NULL,NULL,NULL,NULL,NULL,NULL),(36,25,17,'asd','이재민','asda','2022-08-16T00:00','2022-08-18T00:23',NULL,NULL,NULL,NULL,NULL,NULL),(37,25,17,'asdaf','이재민','dasdas','2022-08-16T00:00','',NULL,NULL,NULL,NULL,NULL,NULL),(38,39,14,'파이썬 2차 스터디','admin','2차 파이썬 스터디 합시다','2022-08-17T00:00','2022-08-17T00:19',NULL,NULL,NULL,NULL,NULL,NULL),(39,73,28,'화이팅!','홍길동','화이팅!!','2022-08-16T00:00','',NULL,NULL,NULL,NULL,NULL,NULL),(40,73,28,'머하지...','홍길동','머하지...','2022-08-23T00:00','2022-08-26T10:47',NULL,NULL,NULL,NULL,NULL,NULL),(41,76,29,'화이팅!','홍길동','화이팅!','2022-08-16T00:00','',NULL,NULL,NULL,NULL,NULL,NULL),(42,76,29,'머하지...','홍길동','머하지...','2022-08-23T00:00','2022-08-26T10:51',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `study_calendar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-16 17:34:18
