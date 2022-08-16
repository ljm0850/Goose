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
-- Table structure for table `study_article_reply`
--

DROP TABLE IF EXISTS `study_article_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `study_article_reply` (
  `id` int NOT NULL AUTO_INCREMENT,
  `study_pk` int NOT NULL,
  `user_pk` int NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `re_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `article_pk` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_pk` (`user_pk`),
  KEY `study_pk` (`study_pk`),
  KEY `article_pk` (`article_pk`),
  CONSTRAINT `study_article_reply_ibfk_1` FOREIGN KEY (`user_pk`) REFERENCES `study_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `study_article_reply_ibfk_2` FOREIGN KEY (`study_pk`) REFERENCES `study` (`id`) ON DELETE CASCADE,
  CONSTRAINT `study_article_reply_ibfk_3` FOREIGN KEY (`article_pk`) REFERENCES `study_article` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_article_reply`
--

LOCK TABLES `study_article_reply` WRITE;
/*!40000 ALTER TABLE `study_article_reply` DISABLE KEYS */;
INSERT INTO `study_article_reply` VALUES (19,34,17,'2022-08-15 05:04:01','안녕하세요? 댓글 입니다',21,'이재민'),(20,34,24,'2022-08-15 05:04:08','화이팅!',20,'양승호'),(21,35,14,'2022-08-15 12:09:59','넴?',23,'admin'),(22,25,17,'2022-08-15 15:23:04','asdasd',16,'이재민');
/*!40000 ALTER TABLE `study_article_reply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-16 17:34:17
