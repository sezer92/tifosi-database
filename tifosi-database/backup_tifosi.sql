-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: tifosi
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `achete`
--

DROP TABLE IF EXISTS `achete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achete` (
  `id_client` int(11) NOT NULL,
  `id_focaccia` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `jour` date NOT NULL,
  PRIMARY KEY (`id_client`,`jour`,`id_focaccia`,`id_menu`),
  KEY `id_focaccia` (`id_focaccia`),
  KEY `id_menu` (`id_menu`),
  CONSTRAINT `achete_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  CONSTRAINT `achete_ibfk_2` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`),
  CONSTRAINT `achete_ibfk_3` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achete`
--

LOCK TABLES `achete` WRITE;
/*!40000 ALTER TABLE `achete` DISABLE KEYS */;
/*!40000 ALTER TABLE `achete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boisson`
--

DROP TABLE IF EXISTS `boisson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boisson` (
  `id_boisson` int(11) NOT NULL AUTO_INCREMENT,
  `nom_boisson` varchar(45) NOT NULL,
  `volume_ml` int(11) NOT NULL,
  `prix` decimal(5,2) NOT NULL,
  `id_marque` int(11) NOT NULL,
  PRIMARY KEY (`id_boisson`),
  KEY `id_marque` (`id_marque`),
  CONSTRAINT `boisson_ibfk_1` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boisson`
--

LOCK TABLES `boisson` WRITE;
/*!40000 ALTER TABLE `boisson` DISABLE KEYS */;
INSERT INTO `boisson` VALUES (1,'Coca-cola zéro',330,2.00,1),(2,'Coca-cola original',330,2.00,1),(3,'Fanta citron',330,2.00,1),(4,'Fanta orange',330,2.00,1),(5,'Capri-sun',200,1.50,1),(6,'Pepsi',330,2.00,4),(7,'Pepsi Max Zéro',330,2.00,4),(8,'Lipton zéro citron',330,2.50,4),(9,'Lipton Peach',330,2.50,4),(10,'Monster energy ultra gold',500,2.50,3),(11,'Monster energy ultra blue',500,2.50,3),(12,'Eau de source',500,1.00,2);
/*!40000 ALTER TABLE `boisson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `cp_client` int(11) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Jean Dupont',35,75001),(2,'Marie Curie',28,69002);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `focaccia`
--

DROP TABLE IF EXISTS `focaccia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focaccia` (
  `id_focaccia` int(11) NOT NULL AUTO_INCREMENT,
  `nom_focaccia` varchar(45) NOT NULL,
  `prix_focaccia` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id_focaccia`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focaccia`
--

LOCK TABLES `focaccia` WRITE;
/*!40000 ALTER TABLE `focaccia` DISABLE KEYS */;
INSERT INTO `focaccia` VALUES (1,'Mozaccia',9.80),(2,'Gorgonzollaccia',10.80),(3,'Raclataccia',8.90),(4,'Emmentalaccia',9.80),(5,'Tradizione',8.90),(6,'Hawaienne',11.20),(7,'Américaine',10.80),(8,'Paysanne',12.80);
/*!40000 ALTER TABLE `focaccia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `focaccia_ingredient`
--

DROP TABLE IF EXISTS `focaccia_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focaccia_ingredient` (
  `id_focaccia` int(11) NOT NULL,
  `id_ingredient` int(11) NOT NULL,
  PRIMARY KEY (`id_focaccia`,`id_ingredient`),
  KEY `id_ingredient` (`id_ingredient`),
  CONSTRAINT `focaccia_ingredient_ibfk_1` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`),
  CONSTRAINT `focaccia_ingredient_ibfk_2` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredient` (`id_ingredient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focaccia_ingredient`
--

LOCK TABLES `focaccia_ingredient` WRITE;
/*!40000 ALTER TABLE `focaccia_ingredient` DISABLE KEYS */;
INSERT INTO `focaccia_ingredient` VALUES (1,1),(1,3),(1,5),(1,7),(1,9),(1,13),(1,16),(1,18),(1,20),(2,1),(2,3),(2,5),(2,7),(2,9),(2,11),(2,18),(2,20),(3,1),(3,5),(3,7),(3,9),(3,18),(3,20),(3,22),(4,5),(4,7),(4,10),(4,15),(4,18),(4,20),(5,1),(5,3),(5,5),(5,7),(5,9),(5,12),(5,16),(5,17),(5,18),(5,20),(6,1),(6,3),(6,4),(6,5),(6,16),(6,18),(6,19),(6,20),(7,4),(7,5),(7,8),(7,9),(7,18),(7,20),(7,21),(8,1),(8,3),(8,5),(8,6),(8,7),(8,8),(8,13),(8,14),(8,16),(8,18),(8,20),(8,21);
/*!40000 ALTER TABLE `focaccia_ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient` (
  `id_ingredient` int(11) NOT NULL AUTO_INCREMENT,
  `nom_ingredient` varchar(45) NOT NULL,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'Ail'),(2,'Ananas'),(3,'Artichaut'),(4,'Bacon'),(5,'Base Tomate'),(6,'Base Crème'),(7,'Champignon'),(8,'Chèvre'),(9,'Cresson'),(10,'Emmental'),(11,'Gorgonzola'),(12,'Jambon cuit'),(13,'Jambon fumé'),(14,'Oeuf'),(15,'Oignon'),(16,'Olive noire'),(17,'Olive verte'),(18,'Parmesan'),(19,'Piment'),(20,'Poivre'),(21,'Pomme de terre'),(22,'Raclette'),(23,'Salami'),(24,'Tomate cerise');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marque`
--

DROP TABLE IF EXISTS `marque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marque` (
  `id_marque` int(11) NOT NULL AUTO_INCREMENT,
  `nom_marque` varchar(45) NOT NULL,
  PRIMARY KEY (`id_marque`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marque`
--

LOCK TABLES `marque` WRITE;
/*!40000 ALTER TABLE `marque` DISABLE KEYS */;
INSERT INTO `marque` VALUES (1,'Coca-cola'),(2,'Cristalline'),(3,'Monster'),(4,'Pepsico');
/*!40000 ALTER TABLE `marque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nom_menu` varchar(45) NOT NULL,
  `prix_menu` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Menu Classique',15.00),(2,'Menu Gourmet',20.00);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_boisson`
--

DROP TABLE IF EXISTS `menu_boisson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_boisson` (
  `id_menu` int(11) NOT NULL,
  `id_boisson` int(11) NOT NULL,
  PRIMARY KEY (`id_menu`,`id_boisson`),
  KEY `id_boisson` (`id_boisson`),
  CONSTRAINT `menu_boisson_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`),
  CONSTRAINT `menu_boisson_ibfk_2` FOREIGN KEY (`id_boisson`) REFERENCES `boisson` (`id_boisson`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_boisson`
--

LOCK TABLES `menu_boisson` WRITE;
/*!40000 ALTER TABLE `menu_boisson` DISABLE KEYS */;
INSERT INTO `menu_boisson` VALUES (1,1),(1,6),(2,7),(2,10);
/*!40000 ALTER TABLE `menu_boisson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_focaccia`
--

DROP TABLE IF EXISTS `menu_focaccia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_focaccia` (
  `id_menu` int(11) NOT NULL,
  `id_focaccia` int(11) NOT NULL,
  PRIMARY KEY (`id_menu`,`id_focaccia`),
  KEY `id_focaccia` (`id_focaccia`),
  CONSTRAINT `menu_focaccia_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`),
  CONSTRAINT `menu_focaccia_ibfk_2` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_focaccia`
--

LOCK TABLES `menu_focaccia` WRITE;
/*!40000 ALTER TABLE `menu_focaccia` DISABLE KEYS */;
INSERT INTO `menu_focaccia` VALUES (1,1),(1,3),(2,2),(2,4);
/*!40000 ALTER TABLE `menu_focaccia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-26 17:46:16
