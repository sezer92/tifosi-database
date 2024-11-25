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
-- Table structure for table `boisson`
--

DROP TABLE IF EXISTS `boisson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boisson` (
  `id_boisson` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `volume_ml` int(11) NOT NULL,
  `prix` decimal(5,2) NOT NULL,
  `id_marque` int(11) DEFAULT NULL,
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
-- Table structure for table `focaccia`
--

DROP TABLE IF EXISTS `focaccia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focaccia` (
  `id_focaccia` int(11) NOT NULL AUTO_INCREMENT,
  `nom_focaccia` varchar(50) NOT NULL,
  `prix` decimal(5,2) NOT NULL,
  `ingredients` text NOT NULL,
  `id_marque` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_focaccia`),
  KEY `id_marque` (`id_marque`),
  CONSTRAINT `focaccia_ibfk_1` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focaccia`
--

LOCK TABLES `focaccia` WRITE;
/*!40000 ALTER TABLE `focaccia` DISABLE KEYS */;
INSERT INTO `focaccia` VALUES (1,'Mozaccia',9.80,'Base tomate, Mozarella, cresson, jambon fumé, ail, artichaut, champignon, parmesan, poivre, olive noire',1),(2,'Gorgonzollaccia',10.80,'Base tomate, Gorgonzola, cresson, ail, champignon, parmesan, poivre, olive noire',1),(3,'Raclataccia',8.90,'Base tomate, raclette, cresson, ail, champignon, parmesan, poivre',1),(4,'Emmentalaccia',9.80,'Base crème, Emmental, cresson, champignon, parmesan, poivre, oignon',1),(5,'Tradizione',8.90,'Base tomate, Mozarella, cresson, jambon cuit, champignon, parmesan, poivre, olive noire, olive verte',1),(6,'Hawaienne',11.20,'Base tomate, Mozarella, cresson, bacon, ananas, piment, parmesan, poivre, olive noire',1),(7,'Américaine',10.80,'Base tomate, Mozarella, cresson, bacon, pomme de terre, parmesan, poivre, olive noire',1),(8,'Paysanne',12.80,'Base crème, Chèvre, cresson, pomme de terre, jambon fumé, ail, artichaut, champignon, parmesan, poivre, olive noire, oeuf',1);
/*!40000 ALTER TABLE `focaccia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient` (
  `id_ingredient` int(11) NOT NULL AUTO_INCREMENT,
  `nom_ingredient` varchar(50) NOT NULL,
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
  `nom` varchar(50) NOT NULL,
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-25 12:11:46
