-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: integradora
-- ------------------------------------------------------
-- Server version	8.0.33

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

DROP TABLE IF EXISTS `almacenamiento_sata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacenamiento_sata` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacenamiento_sata`
--

LOCK TABLES `almacenamiento_sata` WRITE;
/*!40000 ALTER TABLE `almacenamiento_sata` DISABLE KEYS */;
/*!40000 ALTER TABLE `almacenamiento_sata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `builds`
--

DROP TABLE IF EXISTS `builds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `builds` (
  `ID` int NOT NULL,
  `ID_Usuario` int NOT NULL,
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

LOCK TABLES `builds` WRITE;
/*!40000 ALTER TABLE `builds` DISABLE KEYS */;
/*!40000 ALTER TABLE `builds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compatibilidad_disipador_placa`
--

DROP TABLE IF EXISTS `compatibilidad_disipador_placa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compatibilidad_disipador_placa` (
  `ID_Disipador` int NOT NULL,
  `ID_PlacaMadre` int NOT NULL,
  PRIMARY KEY (`ID_Disipador`,`ID_PlacaMadre`),
  KEY `fk_Disipador_has_PlacaMadre_PlacaMadre1_idx` (`ID_PlacaMadre`),
  KEY `fk_Disipador_has_PlacaMadre_Disipador1_idx` (`ID_Disipador`),
  CONSTRAINT `fk_Disipador_has_PlacaMadre_Disipador1` FOREIGN KEY (`ID_Disipador`) REFERENCES `disipador` (`ID`),
  CONSTRAINT `fk_Disipador_has_PlacaMadre_PlacaMadre1` FOREIGN KEY (`ID_PlacaMadre`) REFERENCES `placa` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibilidad_disipador_placa`
--

LOCK TABLES `compatibilidad_disipador_placa` WRITE;
/*!40000 ALTER TABLE `compatibilidad_disipador_placa` DISABLE KEYS */;
/*!40000 ALTER TABLE `compatibilidad_disipador_placa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compatibilidad_grafica_gabinete`
--

DROP TABLE IF EXISTS `compatibilidad_grafica_gabinete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compatibilidad_grafica_gabinete` (
  `ID_Tarjeta_grafica` int NOT NULL,
  `ID_Gabinete` int NOT NULL,
  PRIMARY KEY (`ID_Tarjeta_grafica`,`ID_Gabinete`),
  KEY `fk_Tarjeta_grafica_has_Gabinete_Gabinete1_idx` (`ID_Gabinete`),
  KEY `fk_Tarjeta_grafica_has_Gabinete_Tarjeta_grafica1_idx` (`ID_Tarjeta_grafica`),
  CONSTRAINT `fk_Tarjeta_grafica_has_Gabinete_Gabinete1` FOREIGN KEY (`ID_Gabinete`) REFERENCES `gabinete` (`ID`),
  CONSTRAINT `fk_Tarjeta_grafica_has_Gabinete_Tarjeta_grafica1` FOREIGN KEY (`ID_Tarjeta_grafica`) REFERENCES `tarjeta_grafica` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibilidad_grafica_gabinete`
--

LOCK TABLES `compatibilidad_grafica_gabinete` WRITE;
/*!40000 ALTER TABLE `compatibilidad_grafica_gabinete` DISABLE KEYS */;
/*!40000 ALTER TABLE `compatibilidad_grafica_gabinete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compatibilidad_placa_gabinete`
--

DROP TABLE IF EXISTS `compatibilidad_placa_gabinete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compatibilidad_placa_gabinete` (
  `ID_PlacaMadre` int NOT NULL,
  `ID_Gabinete` int NOT NULL,
  PRIMARY KEY (`ID_PlacaMadre`,`ID_Gabinete`),
  KEY `fk_PlacaMadre_has_Gabinete_Gabinete1_idx` (`ID_Gabinete`),
  KEY `fk_PlacaMadre_has_Gabinete_PlacaMadre1_idx` (`ID_PlacaMadre`),
  CONSTRAINT `fk_PlacaMadre_has_Gabinete_Gabinete1` FOREIGN KEY (`ID_Gabinete`) REFERENCES `gabinete` (`ID`),
  CONSTRAINT `fk_PlacaMadre_has_Gabinete_PlacaMadre1` FOREIGN KEY (`ID_PlacaMadre`) REFERENCES `placa` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibilidad_placa_gabinete`
--

LOCK TABLES `compatibilidad_placa_gabinete` WRITE;
/*!40000 ALTER TABLE `compatibilidad_placa_gabinete` DISABLE KEYS */;
/*!40000 ALTER TABLE `compatibilidad_placa_gabinete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compatibilidad_procesador_placa`
--

DROP TABLE IF EXISTS `compatibilidad_procesador_placa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compatibilidad_procesador_placa` (
  `ID_Procesador` int NOT NULL,
  `ID_PlacaMadre` int NOT NULL,
  PRIMARY KEY (`ID_Procesador`,`ID_PlacaMadre`),
  KEY `fk_procesador_has_PlacaMadre_PlacaMadre1_idx` (`ID_PlacaMadre`),
  KEY `fk_procesador_has_PlacaMadre_procesador1_idx` (`ID_Procesador`),
  CONSTRAINT `fk_procesador_has_PlacaMadre_PlacaMadre1` FOREIGN KEY (`ID_PlacaMadre`) REFERENCES `placa` (`ID`),
  CONSTRAINT `fk_procesador_has_PlacaMadre_procesador1` FOREIGN KEY (`ID_Procesador`) REFERENCES `procesador` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibilidad_procesador_placa`
--

LOCK TABLES `compatibilidad_procesador_placa` WRITE;
/*!40000 ALTER TABLE `compatibilidad_procesador_placa` DISABLE KEYS */;
/*!40000 ALTER TABLE `compatibilidad_procesador_placa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compatibilidad_ram_procesador`
--

DROP TABLE IF EXISTS `compatibilidad_ram_procesador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compatibilidad_ram_procesador` (
  `ID_Ram` int NOT NULL,
  `ID_Procesador` int NOT NULL,
  PRIMARY KEY (`ID_Ram`,`ID_Procesador`),
  KEY `fk_Ram_has_procesador_procesador1_idx` (`ID_Procesador`),
  KEY `fk_Ram_has_procesador_Ram1_idx` (`ID_Ram`),
  CONSTRAINT `fk_Ram_has_procesador_procesador1` FOREIGN KEY (`ID_Procesador`) REFERENCES `procesador` (`ID`),
  CONSTRAINT `fk_Ram_has_procesador_Ram1` FOREIGN KEY (`ID_Ram`) REFERENCES `ram` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibilidad_ram_procesador`
--

LOCK TABLES `compatibilidad_ram_procesador` WRITE;
/*!40000 ALTER TABLE `compatibilidad_ram_procesador` DISABLE KEYS */;
/*!40000 ALTER TABLE `compatibilidad_ram_procesador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compatibilidad_ssdm2_placa`
--

DROP TABLE IF EXISTS `compatibilidad_ssdm2_placa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compatibilidad_ssdm2_placa` (
  `ID_Ssdm2` int NOT NULL,
  `ID_PlacaMadre` int NOT NULL,
  PRIMARY KEY (`ID_Ssdm2`,`ID_PlacaMadre`),
  KEY `fk_ssdm2_has_PlacaMadre_PlacaMadre1_idx` (`ID_PlacaMadre`),
  KEY `fk_ssdm2_has_PlacaMadre_ssdm21_idx` (`ID_Ssdm2`),
  CONSTRAINT `fk_ssdm2_has_PlacaMadre_PlacaMadre1` FOREIGN KEY (`ID_PlacaMadre`) REFERENCES `placa` (`ID`),
  CONSTRAINT `fk_ssdm2_has_PlacaMadre_ssdm21` FOREIGN KEY (`ID_Ssdm2`) REFERENCES `ssdm2` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibilidad_ssdm2_placa`
--

LOCK TABLES `compatibilidad_ssdm2_placa` WRITE;
/*!40000 ALTER TABLE `compatibilidad_ssdm2_placa` DISABLE KEYS */;
/*!40000 ALTER TABLE `compatibilidad_ssdm2_placa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compatibilidad_ventilador_gabinete`
--

DROP TABLE IF EXISTS `compatibilidad_ventilador_gabinete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compatibilidad_ventilador_gabinete` (
  `ID_Ventilador` int NOT NULL,
  `ID_Gabinete` int NOT NULL,
  PRIMARY KEY (`ID_Ventilador`,`ID_Gabinete`),
  KEY `fk_Ventilador_has_Gabinete_Gabinete1_idx` (`ID_Gabinete`),
  KEY `fk_Ventilador_has_Gabinete_Ventilador1_idx` (`ID_Ventilador`),
  CONSTRAINT `fk_Ventilador_has_Gabinete_Gabinete1` FOREIGN KEY (`ID_Gabinete`) REFERENCES `gabinete` (`ID`),
  CONSTRAINT `fk_Ventilador_has_Gabinete_Ventilador1` FOREIGN KEY (`ID_Ventilador`) REFERENCES `ventilador` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibilidad_ventilador_gabinete`
--

LOCK TABLES `compatibilidad_ventilador_gabinete` WRITE;
/*!40000 ALTER TABLE `compatibilidad_ventilador_gabinete` DISABLE KEYS */;
/*!40000 ALTER TABLE `compatibilidad_ventilador_gabinete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disipador`
--

DROP TABLE IF EXISTS `disipador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disipador` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disipador`
--

LOCK TABLES `disipador` WRITE;
/*!40000 ALTER TABLE `disipador` DISABLE KEYS */;
/*!40000 ALTER TABLE `disipador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuentes`
--

DROP TABLE IF EXISTS `fuentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fuentes` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuentes`
--

LOCK TABLES `fuentes` WRITE;
/*!40000 ALTER TABLE `fuentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `fuentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gabinete`
--

DROP TABLE IF EXISTS `gabinete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gabinete` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gabinete`
--

LOCK TABLES `gabinete` WRITE;
/*!40000 ALTER TABLE `gabinete` DISABLE KEYS */;
/*!40000 ALTER TABLE `gabinete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `placa`
--

DROP TABLE IF EXISTS `placa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `placa` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `placa`
--

LOCK TABLES `placa` WRITE;
/*!40000 ALTER TABLE `placa` DISABLE KEYS */;
/*!40000 ALTER TABLE `placa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procesador`
--

DROP TABLE IF EXISTS `procesador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procesador` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procesador`
--

LOCK TABLES `procesador` WRITE;
/*!40000 ALTER TABLE `procesador` DISABLE KEYS */;
/*!40000 ALTER TABLE `procesador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ram`
--

DROP TABLE IF EXISTS `ram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ram` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ram`
--

LOCK TABLES `ram` WRITE;
/*!40000 ALTER TABLE `ram` DISABLE KEYS */;
/*!40000 ALTER TABLE `ram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssdm2`
--

DROP TABLE IF EXISTS `ssdm2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ssdm2` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssdm2`
--

LOCK TABLES `ssdm2` WRITE;
/*!40000 ALTER TABLE `ssdm2` DISABLE KEYS */;
/*!40000 ALTER TABLE `ssdm2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjeta_grafica`
--

DROP TABLE IF EXISTS `tarjeta_grafica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjeta_grafica` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjeta_grafica`
--

LOCK TABLES `tarjeta_grafica` WRITE;
/*!40000 ALTER TABLE `tarjeta_grafica` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarjeta_grafica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventilador`
--

DROP TABLE IF EXISTS `ventilador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventilador` (
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventilador`
--

LOCK TABLES `ventilador` WRITE;
/*!40000 ALTER TABLE `ventilador` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventilador` ENABLE KEYS */;
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
