-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: integradora
-- ------------------------------------------------------
-- Server version	8.0.33

drop database if exists integradora;
create database integradora;
use integradora;

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
-- Table structure for table `almacenamiento_sata`
--

DROP TABLE IF EXISTS `Almacenamiento_sata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Almacenamiento_sata` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacenamiento_sata`
--

LOCK TABLES `Almacenamiento_sata` WRITE;
/*!40000 ALTER TABLE `Almacenamiento_sata` DISABLE KEYS */;
/*!40000 ALTER TABLE `Almacenamiento_sata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `builds`
--

DROP TABLE IF EXISTS `Builds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Builds` (
  `ID` int NOT NULL,
  `ID_Usuario` int unsigned NOT NULL,
  `ID_Almacenamiento_Sata` int NOT NULL,
  `ID_Fuentes_poder` int NOT NULL,
  `ID_Ram` int NOT NULL,
  `ID_Tarjeta_grafica` int NOT NULL,
  `ID_procesador` int NOT NULL,
  `ID_PlacaMadre` int NOT NULL,
  `ID_Disipador` int NOT NULL,
  `ID_Gabinete` int NOT NULL,
  `ID_Ventilador` int NOT NULL,
  `ID_Ssdm2` int NOT NULL,
  PRIMARY KEY (`ID`,`ID_Usuario`,`ID_Almacenamiento_Sata`,`ID_Fuentes_poder`,`ID_Ram`,`ID_Tarjeta_grafica`,`ID_procesador`,`ID_PlacaMadre`,`ID_Disipador`,`ID_Gabinete`,`ID_Ventilador`,`ID_Ssdm2`),
  KEY `fk_Builds_Usuarios1_idx` (`ID_Usuario`),
  KEY `fk_Builds_Alamacenamiento_Sata_idx` (`ID_Almacenamiento_Sata`),
  KEY `fk_Builds_Fuentes_poder1_idx` (`ID_Fuentes_poder`),
  KEY `fk_Builds_Ram1_idx` (`ID_Ram`),
  KEY `fk_Builds_Tarjeta_grafica1_idx` (`ID_Tarjeta_grafica`),
  KEY `fk_Builds_procesador1_idx` (`ID_procesador`),
  KEY `fk_Builds_PlacaMadre1_idx` (`ID_PlacaMadre`),
  KEY `fk_Builds_Disipador1_idx` (`ID_Disipador`),
  KEY `fk_Builds_Gabinete1_idx` (`ID_Gabinete`),
  KEY `fk_Builds_Ventilador1_idx` (`ID_Ventilador`),
  KEY `fk_Builds_ssdm21_idx` (`ID_Ssdm2`),
  CONSTRAINT `fk_Builds_Alamacenamiento_Sata` FOREIGN KEY (`ID_Almacenamiento_Sata`) REFERENCES `almacenamiento_sata` (`ID`),
  CONSTRAINT `fk_Builds_Disipador1` FOREIGN KEY (`ID_Disipador`) REFERENCES `disipador` (`ID`),
  CONSTRAINT `fk_Builds_Fuentes_poder1` FOREIGN KEY (`ID_Fuentes_poder`) REFERENCES `fuentes` (`ID`),
  CONSTRAINT `fk_Builds_Gabinete1` FOREIGN KEY (`ID_Gabinete`) REFERENCES `gabinete` (`ID`),
  CONSTRAINT `fk_Builds_PlacaMadre1` FOREIGN KEY (`ID_PlacaMadre`) REFERENCES `placa` (`ID`),
  CONSTRAINT `fk_Builds_procesador1` FOREIGN KEY (`ID_procesador`) REFERENCES `procesador` (`ID`),
  CONSTRAINT `fk_Builds_Ram1` FOREIGN KEY (`ID_Ram`) REFERENCES `ram` (`ID`),
  CONSTRAINT `fk_Builds_ssdm21` FOREIGN KEY (`ID_Ssdm2`) REFERENCES `ssdm2` (`ID`),
  CONSTRAINT `fk_Builds_Tarjeta_grafica1` FOREIGN KEY (`ID_Tarjeta_grafica`) REFERENCES `tarjeta_grafica` (`ID`),
  CONSTRAINT `fk_Builds_Usuarios1` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuarios` (`ID`),
  CONSTRAINT `fk_Builds_Ventilador1` FOREIGN KEY (`ID_Ventilador`) REFERENCES `ventilador` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `builds`
--

LOCK TABLES `Builds` WRITE;
/*!40000 ALTER TABLE `Builds` DISABLE KEYS */;
/*!40000 ALTER TABLE `Builds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compatibilidad_disipador_placa`
--

DROP TABLE IF EXISTS `Compatibilidad_Placa_Disipador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compatibilidad_Placa_Disipador` (
  `ID_Principal` int NOT NULL,
  `ID_Disipador` int NOT NULL,
  PRIMARY KEY (`ID_Principal`,`ID_Disipador`),
  KEY `fk_Disipador_has_PlacaMadre_PlacaMadre1_idx` (`ID_Principal`),
  KEY `fk_Disipador_has_PlacaMadre_Disipador1_idx` (`ID_Disipador`),
  CONSTRAINT `fk_Disipador_has_PlacaMadre_Disipador1` FOREIGN KEY (`ID_Disipador`) REFERENCES `disipador` (`ID`),
  CONSTRAINT `fk_Disipador_has_PlacaMadre_PlacaMadre1` FOREIGN KEY (`ID_Principal`) REFERENCES `placa` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibilidad_disipador_placa`
--

LOCK TABLES `Compatibilidad_Placa_Disipador` WRITE;
/*!40000 ALTER TABLE `Compatibilidad_Placa_Disipador` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compatibilidad_Placa_Disipador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compatibilidad_grafica_gabinete`
--

DROP TABLE IF EXISTS `Compatibilidad_Gabinete_Grafica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compatibilidad_Gabinete_Grafica` (
  `ID_Principal` int NOT NULL,
  `ID_Tarjeta_grafica` int NOT NULL,
  PRIMARY KEY (`ID_Tarjeta_grafica`,`ID_Principal`),
  KEY `fk_Tarjeta_grafica_has_Gabinete_Gabinete1_idx` (`ID_Principal`),
  KEY `fk_Tarjeta_grafica_has_Gabinete_Tarjeta_grafica1_idx` (`ID_Tarjeta_grafica`),
  CONSTRAINT `fk_Tarjeta_grafica_has_Gabinete_Gabinete1` FOREIGN KEY (`ID_Principal`) REFERENCES `gabinete` (`ID`),
  CONSTRAINT `fk_Tarjeta_grafica_has_Gabinete_Tarjeta_grafica1` FOREIGN KEY (`ID_Tarjeta_grafica`) REFERENCES `grafica` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibilidad_grafica_gabinete`
--

LOCK TABLES `Compatibilidad_Gabinete_Grafica` WRITE;
/*!40000 ALTER TABLE `Compatibilidad_Gabinete_Grafica` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compatibilidad_Gabinete_Grafica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compatibilidad_placa_gabinete`
--

DROP TABLE IF EXISTS `Compatibilidad_Placa_Gabinete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compatibilidad_Placa_Gabinete` (
  `ID_Principal` int NOT NULL,
  `ID_Gabinete` int NOT NULL,
  PRIMARY KEY (`ID_Principal`,`ID_Gabinete`),
  KEY `fk_PlacaMadre_has_Gabinete_Gabinete1_idx` (`ID_Gabinete`),
  KEY `fk_PlacaMadre_has_Gabinete_PlacaMadre1_idx` (`ID_Principal`),
  CONSTRAINT `fk_PlacaMadre_has_Gabinete_Gabinete1` FOREIGN KEY (`ID_Gabinete`) REFERENCES `Gabinete` (`ID`),
  CONSTRAINT `fk_PlacaMadre_has_Gabinete_PlacaMadre1` FOREIGN KEY (`ID_Principal`) REFERENCES `Placa` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibilidad_placa_gabinete`
--

LOCK TABLES `Compatibilidad_Placa_Gabinete` WRITE;
/*!40000 ALTER TABLE `Compatibilidad_Placa_Gabinete` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compatibilidad_Placa_Gabinete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compatibilidad_procesador_placa`
--

DROP TABLE IF EXISTS `Compatibilidad_Procesador_Placa`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compatibilidad_Procesador_Placa` (
  `ID_Principal` int NOT NULL,
  `ID_PlacaMadre` int NOT NULL,
  PRIMARY KEY (`ID_Principal`,`ID_PlacaMadre`),
  KEY `fk_procesador_has_PlacaMadre_PlacaMadre1_idx` (`ID_PlacaMadre`),
  KEY `fk_procesador_has_PlacaMadre_procesador1_idx` (`ID_Principal`),
  CONSTRAINT `fk_procesador_has_PlacaMadre_PlacaMadre1` FOREIGN KEY (`ID_PlacaMadre`) REFERENCES `placa` (`ID`),
  CONSTRAINT `fk_procesador_has_PlacaMadre_procesador1` FOREIGN KEY (`ID_Principal`) REFERENCES `procesador` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibilidad_procesador_placa`
--

LOCK TABLES `Compatibilidad_Procesador_Placa` WRITE;
/*!40000 ALTER TABLE `Compatibilidad_Procesador_Placa` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compatibilidad_Procesador_Placa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compatibilidad_ram_procesador`
--

DROP TABLE IF EXISTS `Compatibilidad_Procesador_Ram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compatibilidad_Procesador_Ram` (
  `ID_Principal` int NOT NULL,
  `ID_Ram` int NOT NULL,
  PRIMARY KEY (`ID_Principal`,`ID_Ram`),
  KEY `fk_Ram_has_procesador_procesador1_idx` (`ID_Principal`),
  KEY `fk_Ram_has_procesador_Ram1_idx` (`ID_Ram`),
  CONSTRAINT `fk_Ram_has_procesador_procesador1` FOREIGN KEY (`ID_Principal`) REFERENCES `procesador` (`ID`),
  CONSTRAINT `fk_Ram_has_procesador_Ram1` FOREIGN KEY (`ID_Ram`) REFERENCES `ram` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibilidad_ram_procesador`
--

LOCK TABLES `Compatibilidad_Procesador_Ram` WRITE;
/*!40000 ALTER TABLE `Compatibilidad_Procesador_Ram` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compatibilidad_Procesador_Ram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compatibilidad_ssdm2_placa`
--

DROP TABLE IF EXISTS `Compatibilidad_Placa_Ssdm2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compatibilidad_Placa_Ssdm2` (
  `ID_Principal` int NOT NULL,
  `ID_Ssdm2` int NOT NULL,
  PRIMARY KEY (`ID_Principal`,`ID_Ssdm2`),
  KEY `fk_ssdm2_has_PlacaMadre_PlacaMadre1_idx` (`ID_Principal`),
  KEY `fk_ssdm2_has_PlacaMadre_ssdm21_idx` (`ID_Ssdm2`),
  CONSTRAINT `fk_ssdm2_has_PlacaMadre_PlacaMadre1` FOREIGN KEY (`ID_Principal`) REFERENCES `placa` (`ID`),
  CONSTRAINT `fk_ssdm2_has_PlacaMadre_ssdm21` FOREIGN KEY (`ID_Ssdm2`) REFERENCES `ssdm2` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibilidad_ssdm2_placa`
--

LOCK TABLES `Compatibilidad_Placa_Ssdm2` WRITE;
/*!40000 ALTER TABLE `Compatibilidad_Placa_Ssdm2` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compatibilidad_Placa_Ssdm2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compatibilidad_ventilador_gabinete`
--

DROP TABLE IF EXISTS `Compatibilidad_Gabinete_Ventilador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compatibilidad_Gabinete_Ventilador` (
  `ID_Principal` int NOT NULL,
  `ID_Ventilador` int NOT NULL,
  PRIMARY KEY (`ID_Principal`,`ID_Ventilador`),
  KEY `fk_Ventilador_has_Gabinete_Gabinete1_idx` (`ID_Principal`),
  KEY `fk_Ventilador_has_Gabinete_Ventilador1_idx` (`ID_Ventilador`),
  CONSTRAINT `fk_Ventilador_has_Gabinete_Gabinete1` FOREIGN KEY (`ID_Principal`) REFERENCES `gabinete` (`ID`),
  CONSTRAINT `fk_Ventilador_has_Gabinete_Ventilador1` FOREIGN KEY (`ID_Ventilador`) REFERENCES `ventilador` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibilidad_ventilador_gabinete`
--

LOCK TABLES `Compatibilidad_Gabinete_Ventilador` WRITE;
/*!40000 ALTER TABLE `Compatibilidad_Gabinete_Ventilador` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compatibilidad_Gabinete_Ventilador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disipador`
--

DROP TABLE IF EXISTS `Disipador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Disipador` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disipador`
--

LOCK TABLES `Disipador` WRITE;
/*!40000 ALTER TABLE `Disipador` DISABLE KEYS */;
/*!40000 ALTER TABLE `Disipador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuentes`
--

DROP TABLE IF EXISTS `Fuentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fuentes` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuentes`
--

LOCK TABLES `Fuentes` WRITE;
/*!40000 ALTER TABLE `Fuentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fuentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gabinete`
--

DROP TABLE IF EXISTS `Gabinete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Gabinete` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gabinete`
--

LOCK TABLES `Gabinete` WRITE;
/*!40000 ALTER TABLE `Gabinete` DISABLE KEYS */;
/*!40000 ALTER TABLE `Gabinete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `placa`
--

DROP TABLE IF EXISTS `Placa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Placa` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `placa`
--

LOCK TABLES `Placa` WRITE;
/*!40000 ALTER TABLE `Placa` DISABLE KEYS */;
/*!40000 ALTER TABLE `Placa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procesador`
--

DROP TABLE IF EXISTS `Procesador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Procesador` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procesador`
--

LOCK TABLES `Procesador` WRITE;
/*!40000 ALTER TABLE `Procesador` DISABLE KEYS */;
/*!40000 ALTER TABLE `Procesador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ram`
--

DROP TABLE IF EXISTS `Ram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ram` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ram`
--

LOCK TABLES `Ram` WRITE;
/*!40000 ALTER TABLE `Ram` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssdm2`
--

DROP TABLE IF EXISTS `Ssdm2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ssdm2` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssdm2`
--

LOCK TABLES `Ssdm2` WRITE;
/*!40000 ALTER TABLE `Ssdm2` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ssdm2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjeta_grafica`
--

DROP TABLE IF EXISTS `Grafica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Grafica` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjeta_grafica`
--

LOCK TABLES `Grafica` WRITE;
/*!40000 ALTER TABLE `Grafica` DISABLE KEYS */;
/*!40000 ALTER TABLE `Grafica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios` (
  `ID` int unsigned NOT NULL auto_increment,
  `Username` varchar(50) UNIQUE NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventilador`
--

DROP TABLE IF EXISTS `Ventilador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ventilador` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventilador`
--

LOCK TABLES `Ventilador` WRITE;
/*!40000 ALTER TABLE `Ventilador` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ventilador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-29 10:15:19
