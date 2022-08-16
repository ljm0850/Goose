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
-- Table structure for table `study_user`
--

DROP TABLE IF EXISTS `study_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `study_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `join_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `authority` int NOT NULL DEFAULT '0',
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `interest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_user`
--

LOCK TABLES `study_user` WRITE;
/*!40000 ALTER TABLE `study_user` DISABLE KEYS */;
INSERT INTO `study_user` VALUES (13,'이승진','pelor7317','$2a$10$eDGEORnFTCa8GJAJRN.EYe/WhPxzJ3A5BGngbORjFyQLlVG2taPTS','2022-08-12 07:54:35','pelor7317@naver.com',0,'../../assets/profile4.png','Python',NULL),(14,'admin','admin','$2a$10$NoOnydqJJFXS8vNPLS1M8.c2fKdUNbihujvmNNXWGaA6AGhk8/Mc2','2022-08-12 08:10:51','admin@admin.com',5,'admin','admin','admin'),(15,'123123','a1234567','$2a$10$/CAw7Oc1CCslIqbCIwDES.nMsf3q7WoD7GERJ6n1RU0mtDN1nm5PO','2022-08-12 08:11:06','dassdvfbdg@naver.com',0,'../../assets/profile4.png','JAVA',NULL),(16,'q1234','q1234567','$2a$10$A1qpU/eanzAARG.eb.zb1uQC4E2hO0O/KbrnQuOx5ms7g/HzktCeS','2022-08-12 08:32:51','dsadsadas@naver.com',0,'../../assets/profile4.png','JAVA',NULL),(17,'이재민','ljm0850','$2a$10$JqKM1ZZ1O4Mj91eDfTJS/enH7/rOVPGrqbBUo.oBPgYY0Zvlm/8am','2022-08-12 11:49:20','dlwoals0850@gmail.com',0,'../../assets/profile4.png','C','광주 2반 C209팀 이재민'),(18,'이승진2','pelor73172','$2a$10$OkEEA2XpNz1Fe66kYzhVAOqA23HRgthV6GYq9dCCE0V0zqgp23MuS','2022-08-13 06:06:28','pelor73172@naver.com',0,'../../assets/profile4.png','Python',NULL),(19,'최용욱','qwe0274','$2a$10$ZAeJm4bqFxalT8I.LxLwvekaK6tp9hRheFpvXSG9FGyE1vOmzfZiC','2022-08-13 09:38:08','qwe0274@naver.com',0,'../../assets/profile4.png','Python',NULL),(21,'test','test','$2a$10$BM976C7UbKjzUJ7oxSwpWe67hYNaYQmVleHIx6aLErdCbDp0Ed1Ei','2022-08-14 06:17:04','test@test',0,'test','test',NULL),(23,'소정현','sjhyun1006','$2a$10$pcCZgdSGQKWnpSjJUfQspe6kW1S7LGYBrKW.AvxwjYx4SbelDXKYu','2022-08-15 04:37:15','sjhyun1006@naver.com',0,'../../assets/profile4.png','Python','9조 화이팅!'),(24,'양승호','today731','$2a$10$zC0IWwFvgq5BADg9/OpwNOnxhZqVM2o2QK8I8RwXn2Mbjq8p3nB12','2022-08-15 04:37:20','today731@naver.com',0,'../../assets/profile2.jpg','JAVA','잘 부탁드립니다.'),(25,'정관철','z1234567','$2a$10$IxzDTuXYSdRLLN12VFmhj.KBEOSo1n8vXP6bQU2EY.YOkkznFHwby','2022-08-15 04:37:21','dsadsada1s@naver.com',0,'../../assets/profile4.png','JAVA','자바좋아'),(27,'조상현','chob58','$2a$10$yXcfMO7EsZitSUYLOxNuze/2DiSniHt20loqKkAQS5vJuNI7bHjNi','2022-08-15 15:32:03','chob5864@gmail.com',0,'../../assets/profile4.png','JAVA',NULL),(28,'홍길동','qwer1234','$2a$10$SivXk7aINhXQUq0tl/IXt.jDX0.YzT7PCw60eYhCbSE1cx7NvE3.S','2022-08-16 01:39:15','qwer1234@naver.com',0,'../../assets/profile4.png','Python',NULL),(29,'홍길동','qwe123','$2a$10$ZL0iw0U61MaOAi9npGdvk.gsk9xsGA/ASqKewaPhZMPSgp0WpxYB6','2022-08-16 01:48:51','qwe123@naver.com',0,'../../assets/profile4.png','Python',NULL);
/*!40000 ALTER TABLE `study_user` ENABLE KEYS */;
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
