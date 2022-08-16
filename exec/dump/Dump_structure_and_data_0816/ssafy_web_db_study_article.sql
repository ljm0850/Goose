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
-- Table structure for table `study_article`
--

DROP TABLE IF EXISTS `study_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `study_article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `study_pk` int NOT NULL,
  `user_pk` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hit` int DEFAULT '0',
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `article_pk` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_pk` (`user_pk`),
  KEY `study_pk` (`study_pk`),
  CONSTRAINT `study_article_ibfk_1` FOREIGN KEY (`user_pk`) REFERENCES `study_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `study_article_ibfk_2` FOREIGN KEY (`study_pk`) REFERENCES `study` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_article`
--

LOCK TABLES `study_article` WRITE;
/*!40000 ALTER TABLE `study_article` DISABLE KEYS */;
INSERT INTO `study_article` VALUES (16,25,17,'글 제목','내용','',1,'2022-08-12 11:51:27','이재민','notice',NULL,0),(17,19,15,'123','1332','',2,'2022-08-12 13:40:43','123123','notice',NULL,0),(19,44,25,'즐거운 자바 알고리즘입니다','ㅠ','',3,'2022-08-15 04:59:51','정관철','notice',NULL,0),(20,34,23,'9조 화이팅!!','구해줘요 스터디 화이팅!','',5,'2022-08-15 05:02:13','소정현','notice',NULL,0),(21,34,14,'[필독]','안녕하세요?\n필독 글입니다.','',8,'2022-08-15 05:03:33','admin','free',NULL,0),(22,34,17,'구해줘요! 스터디!','구해는 드릴게','',9,'2022-08-15 05:03:51','이재민','free',NULL,0),(23,35,14,'안녕하세요?','안녕하세요?','',1,'2022-08-15 12:09:54','admin','free',NULL,0),(24,34,17,'garbage collection?','더이상 사용할 수가 없으며, 필요가 없어진 객체들을 정리하는 시스템이 맞나요?','',1,'2022-08-15 14:41:34','이재민','free',NULL,0),(25,73,28,'공지다~!','공지공지','',0,'2022-08-16 01:46:11','홍길동','notice',NULL,0),(26,73,28,'자유다~','자유다~','',0,'2022-08-16 01:46:31','홍길동','free',NULL,0),(27,76,29,'공지다!','공지다!','',0,'2022-08-16 01:50:45','홍길동','notice',NULL,0),(28,76,29,'자유다!','자유다!','',0,'2022-08-16 01:50:55','홍길동','free',NULL,0);
/*!40000 ALTER TABLE `study_article` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-16 17:34:19
