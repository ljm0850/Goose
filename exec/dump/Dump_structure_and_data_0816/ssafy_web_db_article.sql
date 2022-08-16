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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_pk` int NOT NULL,
  `study_pk` int NOT NULL,
  `state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recruitment` int NOT NULL,
  `hit` int DEFAULT '0',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_pk` (`user_pk`),
  KEY `study_pk` (`study_pk`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`user_pk`) REFERENCES `study_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `article_ibfk_2` FOREIGN KEY (`study_pk`) REFERENCES `study` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (52,23,34,'모집중','JAVA','스터디원 모집합니다.','스터디원 모집합니다! 많은 신청 부탁드려요','2022-08-15 04:38:25',6,14,'소정현',NULL),(53,23,35,'모집중','Python','알수없는 알고리즘이 널 이곳으로 이끌었다','알수없는 알고리즘이 날 이곳으로 이끌었다 스터디원 모집합니다 ㅎㅎㅎ','2022-08-15 04:57:15',4,12,'소정현',NULL),(54,13,39,'모집중','Python','같이 파이썬 알고리즘 하실분?','같이 파이썬 알고리즘 하실분?\n','2022-08-15 04:58:17',6,7,'이승진',NULL),(55,25,44,'모집중','JAVA','즐거운 자바 알고리즘','재밌고 신나는 알고리즘 공부','2022-08-15 04:58:50',6,8,'정관철',NULL),(57,19,45,'모집중','Python','파이썬 1대1 초보만','저도 처음입니다 같이 열심히 하실 입문자분 구해요','2022-08-15 04:59:54',2,9,'최용욱',NULL),(58,24,43,'모집중','JAVA','Java 스터디','같이 열심히 하실분 구합니다.','2022-08-15 05:02:09',6,3,'양승호',NULL),(59,17,41,'모집중','JAVA','자바 스터디 너만 오면 고','너 없으면 스터디 안돌아가 제발 와줘','2022-08-15 05:02:15',4,12,'이재민',NULL),(61,28,73,'모집중','Python','구해줘요 스터디 스터디원 모집합니다.','구해줘요 스터디 스터디원 모집합니다. 파이썬 언어로 진행합니다.','2022-08-16 01:42:46',6,4,'홍길동',NULL),(62,29,76,'모집완료','Python','구해줘요 스터디!!!! 스터디원 모집합니다.','구해줘요 스터디!!!! 스터디원 모집합니다. 사용언어는 파이썬입니다.','2022-08-16 01:50:05',6,7,'홍길동',NULL);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-16 17:34:22
