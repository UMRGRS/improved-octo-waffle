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

DROP TABLE IF EXISTS `Almacenamiento_sata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `Almacenamiento_sata` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `capacidad` varchar(100) DEFAULT NULL,
  `velocidad` varchar(100) DEFAULT NULL,
  `consumo` varchar(100) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `Almacenamiento_sata` WRITE;
/*!40000 ALTER TABLE `Almacenamiento_sata` DISABLE KEYS */;
/*!40000 ALTER TABLE `Almacenamiento_sata` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Disipador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Disipador` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `socket` varchar(100) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Disipador` WRITE;
/*!40000 ALTER TABLE `Disipador` DISABLE KEYS */;
/*!40000 ALTER TABLE `Disipador` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Fuentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fuentes` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `potencia` varchar(100) DEFAULT NULL,
  `certificacion` varchar(100) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Fuentes` WRITE;
/*!40000 ALTER TABLE `Fuentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fuentes` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Gabinete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Gabinete` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `dimensiones` varchar(100) DEFAULT NULL,
  `factor_de_forma` varchar(100) DEFAULT NULL,
  `ventana` tinyint DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `Gabinete` WRITE;
/*!40000 ALTER TABLE `Gabinete` DISABLE KEYS */;
/*!40000 ALTER TABLE `Gabinete` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Placa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Placa` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `socket` varchar(50) DEFAULT NULL,
  `ddr` varchar(10) DEFAULT NULL,
  `chipset` varchar(20) DEFAULT NULL,
  `slots_ram` varchar(10) DEFAULT NULL,
  `wifi` tinyint DEFAULT NULL,
  `bluetooth` tinyint DEFAULT NULL,
  `slots_nvme` varchar(20) DEFAULT NULL,
  `consumo` varchar(50) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `Placa` WRITE;
/*!40000 ALTER TABLE `Placa` DISABLE KEYS */;
/*!40000 ALTER TABLE `Placa` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Procesador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Procesador` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `nucleos` varchar(30) DEFAULT NULL,
  `socket` varchar(50) DEFAULT NULL,
  `igpu` tinyint DEFAULT '0',
  `disipador` tinyint DEFAULT '0',
  `consumo` varchar(50) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Procesador` WRITE;
/*!40000 ALTER TABLE `Procesador` DISABLE KEYS */;
/*!40000 ALTER TABLE `Procesador` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Ram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ram` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `tipo_ddr` varchar(30) DEFAULT NULL,
  `frecuencia` varchar(40) DEFAULT NULL,
  `consumo` varchar(40) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Ram` WRITE;
/*!40000 ALTER TABLE `Ram` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ram` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Ssdm2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ssdm2` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `capacidad` varchar(50) DEFAULT NULL,
  `velocidad` varchar(50) DEFAULT NULL,
  `consumo` varchar(50) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Ssdm2` WRITE;
/*!40000 ALTER TABLE `Ssdm2` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ssdm2` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Grafica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Grafica` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `ensamblador` varchar(100) DEFAULT NULL,
  `vram` varchar(50) DEFAULT NULL,
  `gddr` varchar(50) DEFAULT NULL,
  `displayport` varchar(20) DEFAULT NULL,
  `hdmi` varchar(20) DEFAULT NULL,
  `slots` varchar(20) DEFAULT NULL,
  `consumo` varchar(50) DEFAULT NULL,
  `longitud` varchar(50) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Grafica` WRITE;
/*!40000 ALTER TABLE `Grafica` DISABLE KEYS */;
/*!40000 ALTER TABLE `Grafica` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) unique not null,
  `password` blob not null,
  `email` varchar(100) unique not null,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Ventilador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ventilador` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) DEFAULT NULL,
  `medida` varchar(100) DEFAULT NULL,
  `consumo` varchar(50) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Ventilador` WRITE;
/*!40000 ALTER TABLE `Ventilador` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ventilador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

DROP TABLE IF EXISTS `Compatibilidad_Placa_Disipador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compatibilidad_Placa_Disipador` (
  `ID_Principal` int unsigned NOT NULL,
  `ID_Disipador` int unsigned NOT NULL,
  PRIMARY KEY (`ID_Principal`,`ID_Disipador`),
  KEY `fk_Disipador_has_PlacaMadre_PlacaMadre1_idx` (`ID_Principal`),
  KEY `fk_Disipador_has_PlacaMadre_Disipador1_idx` (`ID_Disipador`),
  CONSTRAINT `fk_Disipador_has_PlacaMadre_Disipador1` FOREIGN KEY (`ID_Disipador`) REFERENCES `disipador` (`ID`),
  CONSTRAINT `fk_Disipador_has_PlacaMadre_PlacaMadre1` FOREIGN KEY (`ID_Principal`) REFERENCES `placa` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Compatibilidad_Placa_Disipador` WRITE;
/*!40000 ALTER TABLE `Compatibilidad_Placa_Disipador` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compatibilidad_Placa_Disipador` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Compatibilidad_Gabinete_Grafica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compatibilidad_Gabinete_Grafica` (
  `ID_Principal` int unsigned NOT NULL,
  `ID_Tarjeta_grafica` int unsigned NOT NULL,
  PRIMARY KEY (`ID_Tarjeta_grafica`,`ID_Principal`),
  KEY `fk_Tarjeta_grafica_has_Gabinete_Gabinete1_idx` (`ID_Principal`),
  KEY `fk_Tarjeta_grafica_has_Gabinete_Tarjeta_grafica1_idx` (`ID_Tarjeta_grafica`),
  CONSTRAINT `fk_Tarjeta_grafica_has_Gabinete_Gabinete1` FOREIGN KEY (`ID_Principal`) REFERENCES `gabinete` (`ID`),
  CONSTRAINT `fk_Tarjeta_grafica_has_Gabinete_Tarjeta_grafica1` FOREIGN KEY (`ID_Tarjeta_grafica`) REFERENCES `grafica` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `Compatibilidad_Gabinete_Grafica` WRITE;
/*!40000 ALTER TABLE `Compatibilidad_Gabinete_Grafica` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compatibilidad_Gabinete_Grafica` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Compatibilidad_Placa_Gabinete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compatibilidad_Placa_Gabinete` (
  `ID_Principal` int unsigned NOT NULL,
  `ID_Gabinete` int unsigned NOT NULL,
  PRIMARY KEY (`ID_Principal`,`ID_Gabinete`),
  KEY `fk_PlacaMadre_has_Gabinete_Gabinete1_idx` (`ID_Gabinete`),
  KEY `fk_PlacaMadre_has_Gabinete_PlacaMadre1_idx` (`ID_Principal`),
  CONSTRAINT `fk_PlacaMadre_has_Gabinete_Gabinete1` FOREIGN KEY (`ID_Gabinete`) REFERENCES `Gabinete` (`ID`),
  CONSTRAINT `fk_PlacaMadre_has_Gabinete_PlacaMadre1` FOREIGN KEY (`ID_Principal`) REFERENCES `Placa` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Compatibilidad_Placa_Gabinete` WRITE;
/*!40000 ALTER TABLE `Compatibilidad_Placa_Gabinete` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compatibilidad_Placa_Gabinete` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Compatibilidad_Procesador_Placa`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compatibilidad_Procesador_Placa` (
  `ID_Principal` int unsigned NOT NULL,
  `ID_PlacaMadre` int unsigned NOT NULL,
  PRIMARY KEY (`ID_Principal`,`ID_PlacaMadre`),
  KEY `fk_procesador_has_PlacaMadre_PlacaMadre1_idx` (`ID_PlacaMadre`),
  KEY `fk_procesador_has_PlacaMadre_procesador1_idx` (`ID_Principal`),
  CONSTRAINT `fk_procesador_has_PlacaMadre_PlacaMadre1` FOREIGN KEY (`ID_PlacaMadre`) REFERENCES `placa` (`ID`),
  CONSTRAINT `fk_procesador_has_PlacaMadre_procesador1` FOREIGN KEY (`ID_Principal`) REFERENCES `procesador` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


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
  `ID_Principal` int unsigned NOT NULL,
  `ID_Ram` int unsigned NOT NULL,
  PRIMARY KEY (`ID_Principal`,`ID_Ram`),
  KEY `fk_Ram_has_procesador_procesador1_idx` (`ID_Principal`),
  KEY `fk_Ram_has_procesador_Ram1_idx` (`ID_Ram`),
  CONSTRAINT `fk_Ram_has_procesador_procesador1` FOREIGN KEY (`ID_Principal`) REFERENCES `procesador` (`ID`),
  CONSTRAINT `fk_Ram_has_procesador_Ram1` FOREIGN KEY (`ID_Ram`) REFERENCES `ram` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Compatibilidad_Procesador_Ram` WRITE;
/*!40000 ALTER TABLE `Compatibilidad_Procesador_Ram` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compatibilidad_Procesador_Ram` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Compatibilidad_Placa_Ssdm2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compatibilidad_Placa_Ssdm2` (
  `ID_Principal` int unsigned NOT NULL,
  `ID_Ssdm2` int unsigned NOT NULL,
  PRIMARY KEY (`ID_Principal`,`ID_Ssdm2`),
  KEY `fk_ssdm2_has_PlacaMadre_PlacaMadre1_idx` (`ID_Principal`),
  KEY `fk_ssdm2_has_PlacaMadre_ssdm21_idx` (`ID_Ssdm2`),
  CONSTRAINT `fk_ssdm2_has_PlacaMadre_PlacaMadre1` FOREIGN KEY (`ID_Principal`) REFERENCES `placa` (`ID`),
  CONSTRAINT `fk_ssdm2_has_PlacaMadre_ssdm21` FOREIGN KEY (`ID_Ssdm2`) REFERENCES `ssdm2` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Compatibilidad_Placa_Ssdm2` WRITE;
/*!40000 ALTER TABLE `Compatibilidad_Placa_Ssdm2` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compatibilidad_Placa_Ssdm2` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Compatibilidad_Gabinete_Ventilador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compatibilidad_Gabinete_Ventilador` (
  `ID_Principal` int unsigned NOT NULL,
  `ID_Ventilador` int unsigned NOT NULL,
  PRIMARY KEY (`ID_Principal`,`ID_Ventilador`),
  KEY `fk_Ventilador_has_Gabinete_Gabinete1_idx` (`ID_Principal`),
  KEY `fk_Ventilador_has_Gabinete_Ventilador1_idx` (`ID_Ventilador`),
  CONSTRAINT `fk_Ventilador_has_Gabinete_Gabinete1` FOREIGN KEY (`ID_Principal`) REFERENCES `gabinete` (`ID`),
  CONSTRAINT `fk_Ventilador_has_Gabinete_Ventilador1` FOREIGN KEY (`ID_Ventilador`) REFERENCES `ventilador` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `Compatibilidad_Gabinete_Ventilador` WRITE;
/*!40000 ALTER TABLE `Compatibilidad_Gabinete_Ventilador` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compatibilidad_Gabinete_Ventilador` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Builds`;
DROP TABLE IF EXISTS `builds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Builds` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT primary key,
  `ID_Usuario` int unsigned NOT NULL,
  `ID_Almacenamiento_Sata` int unsigned,
  `ID_Fuentes_poder` int unsigned NOT NULL,
  `ID_Ram` int unsigned NOT NULL,
  `ID_Tarjeta_grafica` int unsigned,
  `ID_procesador` int unsigned NOT NULL,
  `ID_PlacaMadre` int unsigned NOT NULL,
  `ID_Disipador` int unsigned NOT NULL,
  `ID_Gabinete` int unsigned NOT NULL,
  `ID_Ventilador` int unsigned NOT NULL,
  `ID_Ssdm2` int unsigned,
  `Nombre` varchar(100) not null,
  `Descripcion` longtext not null,
  KEY `fk_Builds_Usuarios1_idx` (`ID_Usuario`),
  KEY `fk_Builds_Almacenamiento_Sata_idx` (`ID_Almacenamiento_Sata`),
  KEY `fk_Builds_Fuentes_poder1_idx` (`ID_Fuentes_poder`),
  KEY `fk_Builds_Ram1_idx` (`ID_Ram`),
  KEY `fk_Builds_Tarjeta_grafica1_idx` (`ID_Tarjeta_grafica`),
  KEY `fk_Builds_procesador1_idx` (`ID_procesador`),
  KEY `fk_Builds_PlacaMadre1_idx` (`ID_PlacaMadre`),
  KEY `fk_Builds_Disipador1_idx` (`ID_Disipador`),
  KEY `fk_Builds_Gabinete1_idx` (`ID_Gabinete`),
  KEY `fk_Builds_Ventilador1_idx` (`ID_Ventilador`),
  KEY `fk_Builds_ssdm21_idx` (`ID_Ssdm2`),
  CONSTRAINT `fk_Builds_Almacenamiento_Sata` FOREIGN KEY (`ID_Almacenamiento_Sata`) REFERENCES `Almacenamiento_sata` (`ID`),
  CONSTRAINT `fk_Builds_Disipador1` FOREIGN KEY (`ID_Disipador`) REFERENCES `Disipador` (`ID`),
  CONSTRAINT `fk_Builds_Fuentes_poder1` FOREIGN KEY (`ID_Fuentes_poder`) REFERENCES `Fuentes` (`ID`),
  CONSTRAINT `fk_Builds_Gabinete1` FOREIGN KEY (`ID_Gabinete`) REFERENCES `Gabinete` (`ID`),
  CONSTRAINT `fk_Builds_PlacaMadre1` FOREIGN KEY (`ID_PlacaMadre`) REFERENCES `Placa` (`ID`),
  CONSTRAINT `fk_Builds_procesador1` FOREIGN KEY (`ID_procesador`) REFERENCES `Procesador` (`ID`),
  CONSTRAINT `fk_Builds_Ram1` FOREIGN KEY (`ID_Ram`) REFERENCES `Ram` (`ID`),
  CONSTRAINT `fk_Builds_ssdm21` FOREIGN KEY (`ID_Ssdm2`) REFERENCES `Ssdm2` (`ID`),
  CONSTRAINT `fk_Builds_Tarjeta_grafica1` FOREIGN KEY (`ID_Tarjeta_grafica`) REFERENCES `Grafica` (`ID`),
  CONSTRAINT `fk_Builds_Usuarios1` FOREIGN KEY (`ID_Usuario`) REFERENCES `Usuarios` (`ID`),
  CONSTRAINT `fk_Builds_Ventilador1` FOREIGN KEY (`ID_Ventilador`) REFERENCES `Ventilador` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `Builds` WRITE;
/*!40000 ALTER TABLE `Builds` DISABLE KEYS */;
/*!40000 ALTER TABLE `Builds` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;