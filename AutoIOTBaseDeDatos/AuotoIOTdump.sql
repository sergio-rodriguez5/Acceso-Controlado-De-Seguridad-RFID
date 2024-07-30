-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: autoIOT
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-0+deb12u1

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
-- Table structure for table `Bitacora`
--

DROP TABLE IF EXISTS `Bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bitacora` (
  `id_bitacora` int(11) NOT NULL AUTO_INCREMENT,
  `id_registro` varchar(12) DEFAULT NULL,
  `Hora_entrada` time DEFAULT NULL,
  `Hora_salida` time DEFAULT NULL,
  `Fecha` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_bitacora`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bitacora`
--

LOCK TABLES `Bitacora` WRITE;
/*!40000 ALTER TABLE `Bitacora` DISABLE KEYS */;
INSERT INTO `Bitacora` VALUES
(1,'10','11:55:46','00:00:00','2024-07-18 06:00:00'),
(2,'8','12:26:29','12:26:29','2024-07-18 06:00:00'),
(3,'565367640891','12:30:10','12:09:55','2024-07-18 06:00:00'),
(4,'8','13:15:53','13:15:53','2024-07-19 06:00:00'),
(5,'702720218568','13:16:23','13:16:23','2024-07-19 06:00:00'),
(6,'702720218568','13:19:25','14:22:46','2024-07-19 06:00:00'),
(7,'702720218568','13:19:27','14:22:46','2024-07-19 06:00:00'),
(8,'702720218568','14:27:18','14:27:53','2024-07-19 06:00:00'),
(9,'565367640891','12:12:44','12:14:29','2024-07-29 06:00:00'),
(10,'565367640891','12:14:58','12:37:49','2024-07-29 06:00:00'),
(11,'702720218568','12:28:28','12:28:50','2024-07-29 06:00:00'),
(12,'702720218568','12:29:08','12:29:24','2024-07-29 06:00:00'),
(13,'702720218568','12:33:06','12:37:13','2024-07-29 06:00:00'),
(14,'702720218568','12:38:05','12:40:46','2024-07-29 06:00:00'),
(15,'702720218568','12:41:02','13:27:18','2024-07-29 06:00:00'),
(16,'565367640891','13:02:26','13:02:45','2024-07-29 06:00:00'),
(17,'565367640891','13:04:24','13:04:47','2024-07-29 06:00:00'),
(18,'565367640891','13:24:54','13:25:12','2024-07-29 06:00:00'),
(19,'702720218568','13:27:35','13:53:28','2024-07-29 06:00:00'),
(20,'565367640891','13:53:11','13:54:00','2024-07-29 06:00:00'),
(21,'702720218568','13:53:47','14:09:33','2024-07-29 06:00:00'),
(22,'565367640891','14:01:38','14:01:50','2024-07-29 06:00:00'),
(23,'702720218568','14:46:19','14:46:54','2024-07-29 06:00:00'),
(24,'702720218568','14:48:34','14:50:46','2024-07-29 06:00:00'),
(25,'565367640891','14:49:18','14:50:17','2024-07-29 06:00:00'),
(26,'702720218568','14:52:38','14:53:59','2024-07-29 06:00:00'),
(27,'565367640891','14:53:40','14:54:22','2024-07-29 06:00:00'),
(28,'702720218568','14:55:00','14:56:01','2024-07-29 06:00:00'),
(29,'565367640891','14:55:43',NULL,'2024-07-29 06:00:00');
/*!40000 ALTER TABLE `Bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bitacora2`
--

DROP TABLE IF EXISTS `Bitacora2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bitacora2` (
  `id_registro` varchar(12) NOT NULL,
  `Hora_entrada` time DEFAULT NULL,
  `Hora_salida` time DEFAULT NULL,
  `Fecha` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bitacora2`
--

LOCK TABLES `Bitacora2` WRITE;
/*!40000 ALTER TABLE `Bitacora2` DISABLE KEYS */;
INSERT INTO `Bitacora2` VALUES
('0','13:14:36',NULL,'2024-07-10 06:00:00'),
('1','13:25:02',NULL,'2024-07-10 06:00:00'),
('2','13:36:45','13:36:45','2024-07-10 06:00:00');
/*!40000 ALTER TABLE `Bitacora2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Registro_personal`
--

DROP TABLE IF EXISTS `Registro_personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Registro_personal` (
  `id_registro` varchar(12) NOT NULL,
  `Nombre` varchar(248) NOT NULL,
  `Apellidos` varchar(248) DEFAULT NULL,
  `Colonia` varchar(248) DEFAULT NULL,
  `Calle` varchar(248) DEFAULT NULL,
  `correo` varchar(248) DEFAULT NULL,
  `Telefono` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Registro_personal`
--

LOCK TABLES `Registro_personal` WRITE;
/*!40000 ALTER TABLE `Registro_personal` DISABLE KEYS */;
INSERT INTO `Registro_personal` VALUES
('565367640891','Yessica Yazmin','Calderon Segura','Centro','Segunda','Yessica.Yazmin@example.com','7772651987'),
('702720218568','Sergio','Rodriguez Roman','Universidad','Primera','sergio.rodriguezro@uaem.edu.mx','7775155217');
/*!40000 ALTER TABLE `Registro_personal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-29 15:17:23
