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

DROP TABLE IF EXISTS `almacenamiento_sata`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

DROP TABLE IF EXISTS `almacenamiento_sata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacenamiento_sata` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `capacidad` varchar(100) DEFAULT NULL,
  `velocidad` varchar(100) DEFAULT NULL,
  `link` varchar(400) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `almacenamiento_sata` WRITE;
/*!40000 ALTER TABLE `almacenamiento_sata` DISABLE KEYS */;
/*!40000 ALTER TABLE `almacenamiento_sata` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `disipador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disipador` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `socket` varchar(100) DEFAULT NULL,
  `link` varchar(400) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `disipador` WRITE;
/*!40000 ALTER TABLE `disipador` DISABLE KEYS */;
/*!40000 ALTER TABLE `disipador` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `fuentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fuentes` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `potencia` varchar(100) DEFAULT NULL,
  `certificacion` varchar(100) DEFAULT NULL,
  `link` varchar(400) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `fuentes` WRITE;
/*!40000 ALTER TABLE `fuentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `fuentes` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `gabinete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gabinete` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `dimensiones` varchar(100) DEFAULT NULL,
  `factor_de_forma` varchar(100) DEFAULT NULL,
  `ventana` tinyint DEFAULT NULL,
  `link` varchar(400) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `gabinete` WRITE;
/*!40000 ALTER TABLE `gabinete` DISABLE KEYS */;
/*!40000 ALTER TABLE `gabinete` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `placa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `placa` (
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
  `link` varchar(400) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `placa` WRITE;
/*!40000 ALTER TABLE `placa` DISABLE KEYS */;
/*!40000 ALTER TABLE `placa` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `procesador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procesador` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `nucleos` varchar(30) DEFAULT NULL,
  `socket` varchar(50) DEFAULT NULL,
  `igpu` tinyint DEFAULT '0',
  `disipador` tinyint DEFAULT '0',
  `consumo` varchar(50) DEFAULT NULL,
  `link` varchar(400) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `procesador` WRITE;
/*!40000 ALTER TABLE `procesador` DISABLE KEYS */;
/*!40000 ALTER TABLE `procesador` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `ram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ram` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `tipo_ddr` varchar(30) DEFAULT NULL,
  `frecuencia` varchar(40) DEFAULT NULL,
  `consumo` varchar(40) DEFAULT NULL,
  `link` varchar(400) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `ram` WRITE;
/*!40000 ALTER TABLE `ram` DISABLE KEYS */;
/*!40000 ALTER TABLE `ram` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `ssdm2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ssdm2` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `capacidad` varchar(50) DEFAULT NULL,
  `velocidad` varchar(50) DEFAULT NULL,
  `link` varchar(400) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `ssdm2` WRITE;
/*!40000 ALTER TABLE `ssdm2` DISABLE KEYS */;
/*!40000 ALTER TABLE `ssdm2` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `grafica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grafica` (
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
  `link` varchar(400) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `grafica` WRITE;
/*!40000 ALTER TABLE `grafica` DISABLE KEYS */;
/*!40000 ALTER TABLE `grafica` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
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


DROP TABLE IF EXISTS `ventilador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventilador` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `medida` varchar(100) DEFAULT NULL,
  `link` varchar(400) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `ventilador` WRITE;
/*!40000 ALTER TABLE `ventilador` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventilador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

DROP TABLE IF EXISTS `compatibilidad_placa_disipador`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compatibilidad_placa_disipador` (
  `ID_Principal` int unsigned NOT NULL,
  `ID_Disipador` int unsigned NOT NULL,
  PRIMARY KEY (`ID_Principal`,`ID_Disipador`),
  KEY `fk_Disipador_has_PlacaMadre_PlacaMadre1_idx` (`ID_Principal`),
  KEY `fk_Disipador_has_PlacaMadre_Disipador1_idx` (`ID_Disipador`),
  CONSTRAINT `fk_Disipador_has_PlacaMadre_Disipador1` FOREIGN KEY (`ID_Disipador`) REFERENCES `disipador` (`ID`),
  CONSTRAINT `fk_Disipador_has_PlacaMadre_PlacaMadre1` FOREIGN KEY (`ID_Principal`) REFERENCES `placa` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `compatibilidad_placa_disipador` WRITE;
/*!40000 ALTER TABLE `compatibilidad_placa_disipador` DISABLE KEYS */;
/*!40000 ALTER TABLE `compatibilidad_placa_disipador` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `compatibilidad_gabinete_grafica`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compatibilidad_gabinete_grafica` (
  `ID_Principal` int unsigned NOT NULL,
  `ID_Grafica` int unsigned NOT NULL,
  PRIMARY KEY (`ID_Grafica`,`ID_Principal`),
  KEY `fk_grafica_has_Gabinete_Gabinete1_idx` (`ID_Principal`),
  KEY `fk_grafica_has_Gabinete_grafica1_idx` (`ID_Grafica`),
  CONSTRAINT `fk_grafica_has_Gabinete_Gabinete1` FOREIGN KEY (`ID_Principal`) REFERENCES `gabinete` (`ID`),
  CONSTRAINT `fk_grafica_has_Gabinete_grafica1` FOREIGN KEY (`ID_Grafica`) REFERENCES `grafica` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `compatibilidad_gabinete_grafica` WRITE;
/*!40000 ALTER TABLE `compatibilidad_gabinete_grafica` DISABLE KEYS */;
/*!40000 ALTER TABLE `compatibilidad_gabinete_grafica` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `compatibilidad_placa_gabinete`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compatibilidad_placa_gabinete` (
  `ID_Principal` int unsigned NOT NULL,
  `ID_Gabinete` int unsigned NOT NULL,
  PRIMARY KEY (`ID_Principal`,`ID_Gabinete`),
  KEY `fk_PlacaMadre_has_Gabinete_Gabinete1_idx` (`ID_Gabinete`),
  KEY `fk_PlacaMadre_has_Gabinete_PlacaMadre1_idx` (`ID_Principal`),
  CONSTRAINT `fk_PlacaMadre_has_Gabinete_Gabinete1` FOREIGN KEY (`ID_Gabinete`) REFERENCES `Gabinete` (`ID`),
  CONSTRAINT `fk_PlacaMadre_has_Gabinete_PlacaMadre1` FOREIGN KEY (`ID_Principal`) REFERENCES `Placa` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `compatibilidad_placa_gabinete` WRITE;
/*!40000 ALTER TABLE `compatibilidad_placa_gabinete` DISABLE KEYS */;
/*!40000 ALTER TABLE `compatibilidad_placa_gabinete` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `compatibilidad_procesador_placa`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compatibilidad_procesador_placa` (
  `ID_Principal` int unsigned NOT NULL,
  `ID_PlacaMadre` int unsigned NOT NULL,
  PRIMARY KEY (`ID_Principal`,`ID_PlacaMadre`),
  KEY `fk_procesador_has_PlacaMadre_PlacaMadre1_idx` (`ID_PlacaMadre`),
  KEY `fk_procesador_has_PlacaMadre_procesador1_idx` (`ID_Principal`),
  CONSTRAINT `fk_procesador_has_PlacaMadre_PlacaMadre1` FOREIGN KEY (`ID_PlacaMadre`) REFERENCES `placa` (`ID`),
  CONSTRAINT `fk_procesador_has_PlacaMadre_procesador1` FOREIGN KEY (`ID_Principal`) REFERENCES `procesador` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `compatibilidad_procesador_placa` WRITE;
/*!40000 ALTER TABLE `compatibilidad_procesador_placa` DISABLE KEYS */;
/*!40000 ALTER TABLE `compatibilidad_procesador_placa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compatibilidad_ram_procesador`
--

DROP TABLE IF EXISTS `compatibilidad_procesador_ram`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compatibilidad_procesador_ram` (
  `ID_Principal` int unsigned NOT NULL,
  `ID_Ram` int unsigned NOT NULL,
  PRIMARY KEY (`ID_Principal`,`ID_Ram`),
  KEY `fk_Ram_has_procesador_procesador1_idx` (`ID_Principal`),
  KEY `fk_Ram_has_procesador_Ram1_idx` (`ID_Ram`),
  CONSTRAINT `fk_Ram_has_procesador_procesador1` FOREIGN KEY (`ID_Principal`) REFERENCES `procesador` (`ID`),
  CONSTRAINT `fk_Ram_has_procesador_Ram1` FOREIGN KEY (`ID_Ram`) REFERENCES `ram` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `compatibilidad_procesador_ram` WRITE;
/*!40000 ALTER TABLE `compatibilidad_procesador_ram` DISABLE KEYS */;
/*!40000 ALTER TABLE `compatibilidad_procesador_ram` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `compatibilidad_placa_ssdm2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compatibilidad_placa_ssdm2` (
  `ID_Principal` int unsigned NOT NULL,
  `ID_Ssdm2` int unsigned NOT NULL,
  PRIMARY KEY (`ID_Principal`,`ID_Ssdm2`),
  KEY `fk_ssdm2_has_PlacaMadre_PlacaMadre1_idx` (`ID_Principal`),
  KEY `fk_ssdm2_has_PlacaMadre_ssdm21_idx` (`ID_Ssdm2`),
  CONSTRAINT `fk_ssdm2_has_PlacaMadre_PlacaMadre1` FOREIGN KEY (`ID_Principal`) REFERENCES `placa` (`ID`),
  CONSTRAINT `fk_ssdm2_has_PlacaMadre_ssdm21` FOREIGN KEY (`ID_Ssdm2`) REFERENCES `ssdm2` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `compatibilidad_placa_ssdm2` WRITE;
/*!40000 ALTER TABLE `compatibilidad_placa_ssdm2` DISABLE KEYS */;
/*!40000 ALTER TABLE `compatibilidad_placa_ssdm2` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `compatibilidad_gabinete_ventilador`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compatibilidad_gabinete_ventilador` (
  `ID_Principal` int unsigned NOT NULL,
  `ID_Ventilador` int unsigned NOT NULL,
  PRIMARY KEY (`ID_Principal`,`ID_Ventilador`),
  KEY `fk_Ventilador_has_Gabinete_Gabinete1_idx` (`ID_Principal`),
  KEY `fk_Ventilador_has_Gabinete_Ventilador1_idx` (`ID_Ventilador`),
  CONSTRAINT `fk_Ventilador_has_Gabinete_Gabinete1` FOREIGN KEY (`ID_Principal`) REFERENCES `gabinete` (`ID`),
  CONSTRAINT `fk_Ventilador_has_Gabinete_Ventilador1` FOREIGN KEY (`ID_Ventilador`) REFERENCES `ventilador` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `compatibilidad_gabinete_ventilador` WRITE;
/*!40000 ALTER TABLE `compatibilidad_gabinete_ventilador` DISABLE KEYS */;
/*!40000 ALTER TABLE `compatibilidad_gabinete_ventilador` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `builds`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `builds` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT primary key,
  `ID_Usuario` int unsigned NOT NULL,
  `ID_Almacenamiento_Sata` int unsigned,
  `ID_Fuentes_poder` int unsigned NOT NULL,
  `ID_Ram` int unsigned NOT NULL,
  `ID_grafica` int unsigned,
  `ID_procesador` int unsigned NOT NULL,
  `ID_PlacaMadre` int unsigned NOT NULL,
  `ID_Disipador` int unsigned NOT NULL,
  `ID_Gabinete` int unsigned NOT NULL,
  `ID_Ventilador` int unsigned NOT NULL,
  `ID_Ssdm2` int unsigned,
  `Nombre` varchar(100) not null,
  `Descripcion` longtext not null,
  KEY `fk_builds_Usuarios1_idx` (`ID_Usuario`),
  KEY `fk_builds_Almacenamiento_Sata_idx` (`ID_Almacenamiento_Sata`),
  KEY `fk_builds_Fuentes_poder1_idx` (`ID_Fuentes_poder`),
  KEY `fk_builds_Ram1_idx` (`ID_Ram`),
  KEY `fk_builds_grafica1_idx` (`ID_grafica`),
  KEY `fk_builds_procesador1_idx` (`ID_procesador`),
  KEY `fk_builds_PlacaMadre1_idx` (`ID_PlacaMadre`),
  KEY `fk_builds_Disipador1_idx` (`ID_Disipador`),
  KEY `fk_builds_Gabinete1_idx` (`ID_Gabinete`),
  KEY `fk_builds_Ventilador1_idx` (`ID_Ventilador`),
  KEY `fk_builds_ssdm21_idx` (`ID_Ssdm2`),
  CONSTRAINT `fk_builds_Almacenamiento_Sata` FOREIGN KEY (`ID_Almacenamiento_Sata`) REFERENCES `Almacenamiento_sata` (`ID`),
  CONSTRAINT `fk_builds_Disipador1` FOREIGN KEY (`ID_Disipador`) REFERENCES `Disipador` (`ID`),
  CONSTRAINT `fk_builds_Fuentes_poder1` FOREIGN KEY (`ID_Fuentes_poder`) REFERENCES `Fuentes` (`ID`),
  CONSTRAINT `fk_builds_Gabinete1` FOREIGN KEY (`ID_Gabinete`) REFERENCES `Gabinete` (`ID`),
  CONSTRAINT `fk_builds_PlacaMadre1` FOREIGN KEY (`ID_PlacaMadre`) REFERENCES `Placa` (`ID`),
  CONSTRAINT `fk_builds_procesador1` FOREIGN KEY (`ID_procesador`) REFERENCES `Procesador` (`ID`),
  CONSTRAINT `fk_builds_Ram1` FOREIGN KEY (`ID_Ram`) REFERENCES `Ram` (`ID`),
  CONSTRAINT `fk_builds_ssdm21` FOREIGN KEY (`ID_Ssdm2`) REFERENCES `Ssdm2` (`ID`),
  CONSTRAINT `fk_builds_grafica1` FOREIGN KEY (`ID_grafica`) REFERENCES `Grafica` (`ID`),
  CONSTRAINT `fk_builds_Usuarios1` FOREIGN KEY (`ID_Usuario`) REFERENCES `Usuarios` (`ID`),
  CONSTRAINT `fk_builds_Ventilador1` FOREIGN KEY (`ID_Ventilador`) REFERENCES `ventilador` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `builds` WRITE;
/*!40000 ALTER TABLE `builds` DISABLE KEYS */;
/*!40000 ALTER TABLE `builds` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `auditoria`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Accion` varchar(200) not null,
  `Usuario` varchar(100) not null,
  `Fecha/hora` varchar(100) not null,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
