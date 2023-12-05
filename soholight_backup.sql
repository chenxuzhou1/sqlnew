-- MariaDB dump 10.19-11.1.3-MariaDB, for osx10.19 (x86_64)
--
-- Host: localhost    Database: soholight
-- ------------------------------------------------------
-- Server version	11.1.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Comment`
--

DROP TABLE IF EXISTS `Comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_image_id` (`image_id`),
  CONSTRAINT `fk_image_id` FOREIGN KEY (`image_id`) REFERENCES `KidsImage` (`img_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comment`
--

LOCK TABLES `Comment` WRITE;
/*!40000 ALTER TABLE `Comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KidsImage`
--

DROP TABLE IF EXISTS `KidsImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KidsImage` (
  `img_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `URL` varchar(2083) DEFAULT NULL,
  `SourceURL` varchar(2083) DEFAULT NULL,
  `issueDate` text DEFAULT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KidsImage`
--

LOCK TABLES `KidsImage` WRITE;
/*!40000 ALTER TABLE `KidsImage` DISABLE KEYS */;
INSERT INTO `KidsImage` VALUES
(2131,'Sofia',7,NULL,'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(1).70lk7katga00.webp','https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image.36scqvy5epi0.webp','2023'),
(3323,'Milana',9,NULL,'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(2).2vx5mxqzc480.webp','https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image.36scqvy5epi0.webp','2023'),
(5322,'Yujin',8,NULL,'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image.1uq1ns9f6usg.webp','https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(2).47x3neyibgu0.webp','2023'),
(6345,'Attie',6,NULL,'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(4).68fhavgz1to0.webp','https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(3).5hisi3k1ca00.webp','2022'),
(7454,'Sheena',11,NULL,'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image.2t22by5eq4k0.webp','https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(4).c4sws88zjqo.webp','2021'),
(11232,'Lvo',5,NULL,'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(8).3y5l217jae00.webp','https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(5).4yj5gkvkatc.webp','2022'),
(32401,'Emberley',6,NULL,'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(7).62hwu712dig0.webp','https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(6).1iy5pjga1kv4.webp','2023'),
(34219,'Elowen',8,NULL,'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(5).701o6h4ayko0.webp','https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(7).2rf6lk8qhjc0.webp','2022'),
(34533,'Aryana',8,NULL,'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(11).6rl0v5cabuc0.png','https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(8).6w46fuevhgw0.webp','2021'),
(47232,'Safa',7,NULL,'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(9).6gs6ttsbuik0.webp','https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(9).2tb4g0hduhi0.webp','2022'),
(52321,'Tahira',10,NULL,'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(3).37hgn9m8nd40.webp','https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(11).6jtojff829c0.webp','2021'),
(52942,'John Michael',10,NULL,'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(6).6pnerc6g3xw0.webp','https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(11).6jtojff829c0.webp','2023'),
(53542,'Safa',5,NULL,'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(9).6gs6ttsbuik0.webp','https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(10).3iavy8y893m0.webp','2021'),
(57392,'Umar',6,NULL,'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(12).3ck42lz27ey0.webp','https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(13).5i6boqedtsk0.webp','2022'),
(63234,'Sereen',6,NULL,'https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(13).5i6boqedtsk0.webp','https://cdn.statically.io/gh/chenxuzhou1/fastapi@main/xxx/image-(14).4uv0mmzpgza0.webp','2021');
/*!40000 ALTER TABLE `KidsImage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 11:36:03
