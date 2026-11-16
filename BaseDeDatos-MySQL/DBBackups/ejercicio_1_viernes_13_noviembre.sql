CREATE DATABASE  IF NOT EXISTS `universidad` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `universidad`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: universidad
-- ------------------------------------------------------
-- Server version	9.7.4

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '590b70f4-dc3f-11f1-8ba3-ba5809b33839:1-122';

--
-- Table structure for table `correos`
--

DROP TABLE IF EXISTS `correos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `correos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `estudiante_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_correos_estudiantes1_idx` (`estudiante_id`),
  CONSTRAINT `fk_correos_estudiantes1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correos`
--

LOCK TABLES `correos` WRITE;
/*!40000 ALTER TABLE `correos` DISABLE KEYS */;
INSERT INTO `correos` VALUES (1,'a.martinez2020@universidad.edu',8),(2,'alejandro.martinez.g@gmail.com',8),(3,'l.fernandez2024@universidad.edu',9),(4,'v.diaz2021@universidad.edu',14),(5,'valen.diazm@hotmail.com',14),(6,'sofia.perezgarcia@gmail.com',12),(7,'s-perez2020@universidad.edu',12),(8,'m.gomez2023@universidad.edu',13),(9,'javier.romero.n@gmail.com',11);
/*!40000 ALTER TABLE `correos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiantes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `primerApellido` varchar(45) NOT NULL,
  `segundoApellido` varchar(45) NOT NULL,
  `genero` enum('HOMBRE','MUJER','OTRO') NOT NULL,
  `fechaMatriculacion` date NOT NULL,
  `totalAsignaturas` varchar(45) NOT NULL,
  `facultad_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fechaMatriculacion_UNIQUE` (`fechaMatriculacion`),
  KEY `fk_estudiantes_facultades_idx` (`facultad_id`),
  CONSTRAINT `fk_estudiantes_facultades` FOREIGN KEY (`facultad_id`) REFERENCES `facultades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
INSERT INTO `estudiantes` VALUES (8,'Alejandro','Martinez','Gomez','HOMBRE','2020-06-01','44',3),(9,'Lucia','Fernandez','Ruiz','MUJER','2024-02-01','36',2),(10,'Carlos','Sanchez','Lopez','OTRO','2021-09-11','33',4),(11,'Javier','Romero','Navarro','HOMBRE','2022-03-28','35',2),(12,'Sofia','Perez','Garcia','MUJER','2020-07-24','44',3),(13,'Mateo','Gomez','Hernandez','HOMBRE','2023-09-04','34',1),(14,'Valentina','Diaz','Moreno','OTRO','2021-09-10','40',5);
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facultades`
--

DROP TABLE IF EXISTS `facultades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facultades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facultades`
--

LOCK TABLES `facultades` WRITE;
/*!40000 ALTER TABLE `facultades` DISABLE KEYS */;
INSERT INTO `facultades` VALUES (1,'informatica'),(2,'ingenieria'),(3,'matematicas'),(4,'bioquimica'),(5,'ciencias economicas');
/*!40000 ALTER TABLE `facultades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonos`
--

DROP TABLE IF EXISTS `telefonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefonos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numeros` varchar(45) NOT NULL,
  `estudiante_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_telefonos_estudiantes1_idx` (`estudiante_id`),
  CONSTRAINT `fk_telefonos_estudiantes1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonos`
--

LOCK TABLES `telefonos` WRITE;
/*!40000 ALTER TABLE `telefonos` DISABLE KEYS */;
INSERT INTO `telefonos` VALUES (1,'645 678 901',12),(2,'918 765 432',12),(3,'656 789 102',10),(4,'699 888 777',9),(5,'910 234 567',14),(6,'612 345 678',14),(7,'623 456 789',8),(8,'915 432 109',11),(9,'722 111 223',13);
/*!40000 ALTER TABLE `telefonos` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-16 11:41:41
