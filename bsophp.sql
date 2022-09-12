-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for osx10.13 (x86_64)
--
-- Host: localhost    Database: bsophp
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Autor`
--

DROP TABLE IF EXISTS `Autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Autor` (
  `idAutor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_autor` varchar(45) NOT NULL,
  `Url_Site` varchar(200) NOT NULL,
  `nacionalidad` varchar(45) NOT NULL,
  `codigo_autor` varchar(4) NOT NULL,
  `edad` int(11) NOT NULL,
  PRIMARY KEY (`idAutor`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Autor`
--

LOCK TABLES `Autor` WRITE;
/*!40000 ALTER TABLE `Autor` DISABLE KEYS */;
INSERT INTO `Autor` VALUES (1,'Hans Zimmer','http://zimmer.eu','Alemana','A1',64),(2,'Jhon Williams','https://jwilliams.com','Americana','A2',90),(3,'Max Steiner','https://mxsteiner.com','Americana','A3',83),(4,'Ennio Morricone','https://ennio.it','Italiana','A4',92),(5,'Nino Rota','https://rotan.it','Italiana','A5',68),(6,'Bernard Herrmann','https://bernandrh.com','Americana','A6',64),(7,'Nicola Piovani','https://nicola.it','italiana','A7',76),(8,'Henry Mancini','https://mancini.it','Americana','A8',70),(9,'James Horner','https://horner.com','Americana','A9',62),(10,'Danny Elfman','https://Newman.com','Americana','A10',66),(11,'Bill Conti','https://conti.com','Americana','A11',80),(12,'Danny Elfman','https://dannyelf.com','Americana','A12',69),(13,'Yann Tiersen','https://tiersen.com','Francesa','A13',52),(14,'Justin Hurwitz','https://justin.com','Americana','A14',37),(15,'Gustavo Santaolalla','https://santaolalla.com','Argentina','A15',71),(16,'Alan Silvestri','https://sislvestri.com','Americana','A16',72),(17,'Brian Tyler','https://tyler.com','Americana','A17',50),(18,'Michael Giacchino','https://giacchino.com','Americana','A18',54),(19,'Matt Reeves','https://reeevs.com','Americana','A19',56),(20,'Jefrey Abrams','https://abrams.com','Americana','A20',56);
/*!40000 ALTER TABLE `Autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pelicula`
--

DROP TABLE IF EXISTS `Pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pelicula` (
  `idPelicula` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_peli` varchar(45) NOT NULL,
  `fecha_estreno` date NOT NULL,
  `idgenero` int(11) NOT NULL,
  PRIMARY KEY (`idPelicula`),
  KEY `fk_Pelicula_genero1_idx` (`idgenero`),
  CONSTRAINT `fk_Pelicula_genero1` FOREIGN KEY (`idgenero`) REFERENCES `genero` (`idgenero`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pelicula`
--

LOCK TABLES `Pelicula` WRITE;
/*!40000 ALTER TABLE `Pelicula` DISABLE KEYS */;
INSERT INTO `Pelicula` VALUES (1,'Rush Pasion y Gloria','2013-01-01',2),(2,'Rain Man','1988-01-01',2),(3,'Rey Leon','1977-07-09',4),(4,'Mision Imposible 2','2000-01-01',1),(5,'Gladiador','2000-01-01',2),(6,'Pearl Harbor','2001-01-01',1),(7,'Hannibal','2001-01-01',2),(8,'Piratas del Caribe','2003-01-01',1),(9,'Madagascar','2005-01-01',4),(11,'Codigo Da Vinci','2006-01-01',5),(12,'Piratas del Caribe 2','2007-01-01',1),(13,'Madagascar 2','2008-01-01',4),(14,'Kung Fu Panda','2008-01-01',4),(15,'Batman The Dark Knight','2009-01-01',1),(16,'Sherlock Holmes','2009-01-01',1),(17,'Angeles y Demonios','2009-01-01',5),(18,'Inception','2010-01-01',1),(19,'MI villano Favorito','2010-01-01',4),(20,'Sherlock Holmes 2','2011-01-01',1),(21,'Piratas del Caribe 3','2011-01-02',1),(22,'Kung Fu Panda 2','2011-01-02',4),(23,'Madagascar 2','2012-01-02',4),(24,'Batman The Dark Night Rises','2012-01-02',1),(25,'Interstellar','2014-01-01',5),(26,'Kung Fu Panda 3','2016-01-01',4),(27,'Blade Runner 2049','2017-01-01',1),(28,'Wonder Woman 1984','2020-01-01',1),(29,'Dune','2021-01-01',1),(30,'Inteligencia Atificial','2001-01-01',2),(31,'E. T.','1982-01-01',8),(32,'Harry Potter 3','2004-07-01',8),(33,'Harry Potter 2','2002-07-01',8),(34,'Harry Potter 1','2001-07-01',8),(35,'Mi probre angelito ','1990-01-01',8),(36,'MI probre angelito  2','1992-01-01',8),(37,'Hook','1991-01-01',8),(38,'Indiana Jones','1981-01-01',9),(39,'Indiana Jones 3','2008-01-01',9),(40,'Indiana Jones 2','1989-01-01',9),(41,'Salvando al Soldado Ryan','1998-01-01',2),(42,'Star Wars espisodio 1','1999-01-01',9),(43,'Star Wars espisodio 2','2002-01-01',9),(44,'Star Wars espisodio 3','2005-01-01',9),(45,'Star Wars espisodio 4','1977-01-01',9),(46,'Star Wars espisodio 5','1980-01-01',9),(47,'Star Wars espisodio 6','1983-01-01',9),(48,'Star Wars espisodio 7','2015-01-01',9),(49,'Star Wars espisodio 8','2017-01-01',9),(50,'Start Wars espisodio 9','2019-01-01',9),(51,'Superman','1978-01-01',1),(52,'La terminal','2004-01-01',2),(53,'Tiburon','1975-01-01',5),(54,'King Kong','1933-01-01',2),(55,'Lo que el viento se llevo','1939-01-01',2);
/*!40000 ALTER TABLE `Pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancion`
--

DROP TABLE IF EXISTS `cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancion` (
  `idcancion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cancion` varchar(45) NOT NULL,
  `url_youtube` varchar(200) NOT NULL,
  `idAutor` int(11) NOT NULL,
  `Ranking` int(11) NOT NULL,
  `url_imagen` varchar(145) NOT NULL,
  PRIMARY KEY (`idcancion`),
  KEY `fk_autor_camcion_idx` (`idAutor`),
  CONSTRAINT `fk_autor_cancion` FOREIGN KEY (`idAutor`) REFERENCES `Autor` (`idAutor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancion`
--

LOCK TABLES `cancion` WRITE;
/*!40000 ALTER TABLE `cancion` DISABLE KEYS */;
INSERT INTO `cancion` VALUES (1,'Lost but Won','https://www.youtube.com/embed/Th21k_yd5pA',1,0,'https://dummyimage.com/640x360/fff/aaa'),(2,'RainMan Main Theme','https://www.youtube.com/watch?v=BydyHQWQqDA',1,0,'https://dummyimage.com/640x360/fff/aaa'),(3,'El ciclo de la vida','https://www.youtube.com/watch?v=pSwBHh6KoHY',1,0,'https://dummyimage.com/640x360/fff/aaa'),(4,'Hakuna Matata','https://www.youtube.com/watch?v=sfXPGuZ68HM',1,0,'https://dummyimage.com/640x360/fff/aaa'),(5,'Mision Imposible Main Theme','https://www.youtube.com/watch?v=6OBPfl7yUDs',1,0,'https://dummyimage.com/640x360/fff/aaa'),(6,'Gladiador Main Theme','https://www.youtube.com/watch?v=aUmIELyNGrU',1,0,'https://dummyimage.com/640x360/fff/aaa'),(7,'Pearl Harbor','https://www.youtube.com/watch?v=PjYBXkIsYJw',1,0,'https://dummyimage.com/640x360/fff/aaa'),(8,'Vide cor Ceum','https://www.youtube.com/watch?v=SP9IrCCMUUw',1,0,'https://dummyimage.com/640x360/fff/aaa'),(9,'Piratas del Caribe Main Theme','https://www.youtube.com/watch?v=1hXPe70ZWgw',1,0,'https://dummyimage.com/640x360/fff/aaa'),(10,'Madagascar 2','https://www.youtube.com/watch?v=vk1vngOQGI0',1,0,'https://dummyimage.com/640x360/fff/aaa'),(11,'Batman Dark Night Main Theme','https://www.youtube.com/watch?v=94TAFSMdkvk',1,0,'https://dummyimage.com/640x360/fff/aaa'),(12,'Interstellar Main Theme','https://www.youtube.com/watch?v=kottjfEd7Zw',1,0,'https://dummyimage.com/640x360/fff/aaa'),(13,'Blade Runner 2049','https://www.youtube.com/watch?v=i9ovnRX5-SY',1,0,'https://dummyimage.com/640x360/fff/aaa'),(14,'Jaws the Shark Theme','https://www.youtube.com/watch?v=6O354vZapTw',2,0,'https://dummyimage.com/640x360/fff/aaa'),(15,'Up With Titles','https://www.youtube.com/watch?v=HT3WWlOZtN0',18,0,'https://dummyimage.com/640x360/fff/aaa'),(16,'Married Life','https://www.youtube.com/watch?v=FI8hqNOPtao',18,0,'https://dummyimage.com/640x360/fff/aaa');
/*!40000 ALTER TABLE `cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancion_x_Pelicula`
--

DROP TABLE IF EXISTS `cancion_x_Pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancion_x_Pelicula` (
  `idcancion_x_pelicula` int(11) NOT NULL AUTO_INCREMENT,
  `cancion_idcancion` int(11) NOT NULL,
  `Pelicula_idPelicula` int(11) NOT NULL,
  PRIMARY KEY (`idcancion_x_pelicula`),
  KEY `fk_cancion_has_Pelicula_Pelicula1_idx` (`Pelicula_idPelicula`),
  KEY `fk_cancion_has_Pelicula_cancion1_idx` (`cancion_idcancion`),
  CONSTRAINT `fk_cancion_has_Pelicula_Pelicula1` FOREIGN KEY (`Pelicula_idPelicula`) REFERENCES `Pelicula` (`idPelicula`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cancion_has_Pelicula_cancion1` FOREIGN KEY (`cancion_idcancion`) REFERENCES `cancion` (`idcancion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancion_x_Pelicula`
--

LOCK TABLES `cancion_x_Pelicula` WRITE;
/*!40000 ALTER TABLE `cancion_x_Pelicula` DISABLE KEYS */;
INSERT INTO `cancion_x_Pelicula` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,3),(5,5,4),(6,6,5),(7,7,6),(8,8,7),(9,9,8),(10,10,9),(11,11,24),(12,12,25),(13,13,27),(14,14,53);
/*!40000 ALTER TABLE `cancion_x_Pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `idgenero` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_genero` varchar(45) NOT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Accion'),(2,'Drama'),(3,'Western'),(4,'Animacion'),(5,'Suspenso'),(6,'Terror'),(7,'Comedia'),(8,'Infantil'),(9,'Aventura-Misterio');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-11 19:59:11
