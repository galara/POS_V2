-- MySQL dump 10.13  Distrib 5.6.25, for Win32 (x86)
--
-- Host: localhost    Database: rubens
-- ------------------------------------------------------
-- Server version	5.6.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `fec_reg` date DEFAULT NULL,
  `Estado` char(1) CHARACTER SET latin1 DEFAULT 'T',
  PRIMARY KEY (`idCategoria`),
  UNIQUE KEY `Nombre_UNIQUE` (`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Filtros','2016-10-10','T'),(2,'Aceites','2016-10-10','T'),(3,'Tornillos','2016-10-10','T'),(4,'Bombas','2016-10-10','T'),(5,'Canastas','2016-10-10','T'),(6,'Discos','2016-10-10','T'),(7,'Terminales o Cabezales','2016-10-10','T'),(8,'Cables','2016-10-10','T'),(9,'Cargadores','2016-10-10','T'),(10,'Fajas','2016-10-10','T'),(11,'Cojinetes','2016-10-10','T'),(12,'Cruces de Transmisión','2016-10-10','T'),(13,'Retenedores','2016-10-10','T'),(14,'Pastillas de Freno','2016-10-10','T'),(15,'Anillos','2016-10-10','T'),(16,'Tejas','2016-10-10','T'),(17,'Balvulas','2016-10-10','T'),(18,'Guias','2016-10-10','T'),(19,'Sellos','2016-10-10','T'),(20,'Empaques','2016-10-10','T'),(21,'Magueras','2016-10-10','T'),(22,'Esparrasgos de Rueda','2016-10-10','T'),(23,'Roldanas','2016-10-10','T'),(24,'Guashas','2016-10-10','T'),(25,'Tuercas','2016-10-10','T'),(26,'Resortes de Fricción ','2016-10-10','T'),(27,'Pistones','2016-10-10','T'),(28,'Camisas','2016-10-10','T'),(29,'Manesillas','2016-10-10','T'),(30,'Retrobisores','2016-10-10','T'),(31,'Luces','2016-10-10','T'),(32,'Bombillas','2016-10-10','T'),(33,'Seguros','2016-10-10','T'),(34,'Fucibles','2016-10-10','T'),(35,'Liquido de Freno','2016-10-10','T'),(36,'Aditivos ','2016-10-10','T'),(37,'Cremalleras','2016-10-10','T'),(38,'Fricciones','2016-10-10','T'),(39,'Persianas ','2016-10-10','T'),(40,'Bomper','2016-10-10','T'),(41,'Loderas','2016-10-10','T'),(42,'Triket´s','2016-10-10','T'),(43,'Reguladores','2016-10-10','T'),(44,'Reloj Indicador','2016-10-10','T'),(45,'Tapones','2016-10-10','T'),(46,'Bobinas','2016-10-10','T'),(47,'Motor de Arranque','2016-10-10','T'),(48,'Alternadores','2016-10-10','T'),(49,'Candelas','2016-10-10','T'),(50,'Suitch de Arranque','2016-10-10','T'),(51,'Vulbo ','2016-10-10','T'),(52,'POrta Carbón','2016-10-10','T'),(53,'Carbones','2016-10-10','T'),(54,'Termo Suitch','2016-10-10','T'),(55,'Punta de Flecha','2016-10-10','T'),(56,'Bufa de Rueda','2016-10-10','T'),(57,'Rotulas ','2016-10-10','T'),(58,'Tensores ','2016-10-10','T'),(59,'Soportes','2016-10-10','T'),(60,'Tubos','2016-10-10','T'),(61,'Bushines','2016-10-10','T'),(62,'Hules','2016-10-10','T'),(63,'Lamparas','2016-10-10','T'),(64,'Neblineras','2016-10-10','T'),(65,'Plumillas','2016-10-10','T'),(66,'Sensores','2016-10-10','T'),(67,'Parabrizas ','2016-10-10','T'),(68,'Bocinas','2016-10-10','T'),(69,'Flasher','2016-10-10','T'),(70,'Relai','2016-10-10','T'),(71,'Abrazaderas','2016-10-10','T'),(72,'Chimbos ','2016-10-10','T'),(73,'Diafragmas','2016-10-10','T'),(74,'Fan-closh','2016-10-10','T'),(75,'Soket´s','2016-10-10','T'),(76,'Guarda Polvo','2016-10-10','T'),(77,'Tapaderas','2016-10-10','T'),(78,'Clip´s','2016-10-10','T'),(79,'Orrines','2016-10-10','T'),(80,'Embulos','2016-10-10','T'),(81,'Silicón ','2016-10-10','T'),(82,'Cacaguates','2016-10-10','T'),(83,'Cacho Pitman','2016-10-10','T'),(84,'Ventiladores','2016-10-10','T'),(85,'Aspirales ','2016-10-10','T'),(86,'Racht','2016-10-10','T'),(87,'Muletas ','2016-10-10','T'),(88,'Alañas','2016-10-10','T'),(89,'Lijas','2016-10-10','T'),(90,'Fitines','2016-10-10','T'),(91,'Llaves','2016-10-10','T'),(92,'Desarmadores','2016-10-10','T'),(93,'Embudos','2016-10-10','T'),(94,'Amortiguadores ','2016-10-10','T'),(95,'Radiadores','2016-10-10','T'),(96,'Porta Fusibles ','2016-10-10','T'),(97,'Rotores','2016-10-10','T'),(98,'Distribuidores','2016-10-10','T'),(99,'Pegamentos','2016-10-10','T'),(100,'Boster','2016-10-10','T'),(101,'Sierra','2016-10-10','T'),(102,'Guarda Fango','2016-10-10','T'),(103,'Baterias ','2016-10-10','T'),(104,'Metros','2016-10-10','T'),(105,'Calibradores','2016-10-10','T'),(106,'Antenas ','2016-10-10','T'),(107,'Pastas','2016-10-10','T'),(108,'Cintas','2016-10-10','T'),(109,'Grasa','2016-10-10','T'),(110,'Alicates','2016-10-10','T'),(111,'Cautin','2016-10-10','T'),(112,'Brocas','2016-10-10','T'),(113,'Estaño','2016-10-10','T'),(114,'Cuchillas ','2016-10-10','T'),(115,'Waipe','2016-10-10','T'),(116,'Limpiadores','2016-10-10','T'),(117,'Desengrasante ','2016-10-10','T'),(118,'Holorantes','2016-10-10','T'),(119,'Probadores','2016-10-10','T'),(120,'Emblemas','2016-10-10','T'),(121,'Depositos','2016-10-10','T'),(122,'Electrodos','2016-10-10','T'),(123,'Graseras','2016-10-10','T'),(124,'Kinpin','2016-10-10','T'),(125,'Silbines','2016-10-10','T'),(126,'Cepillos ','2016-10-10','T'),(127,'Selenoide','2016-10-10','T'),(128,'Bombin','2016-10-10','T'),(129,'Porta Fusible','2016-10-10','T'),(130,'Termo Estato ','2016-10-10','T'),(131,'Extensiones ','2016-10-10','T'),(132,'Platino','2016-10-10','T'),(133,'Condensador','2016-10-10','T'),(134,'Sincronisador','2016-10-10','T'),(135,'Pasadores','2016-10-10','T'),(136,'Chapas','2016-10-10','T'),(137,'Raking','2016-10-10','T'),(138,'Kit de Empaque','2016-10-10','T'),(139,'Espejo','2016-10-10','T');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `idClientes` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `direccion` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `correo` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `nit` varchar(16) CHARACTER SET latin1 DEFAULT NULL,
  `telefono` varchar(14) CHARACTER SET latin1 DEFAULT NULL,
  `Estado` char(1) CHARACTER SET latin1 DEFAULT 'T',
  `fec_reg` date DEFAULT NULL,
  `lim_cred` double DEFAULT NULL,
  PRIMARY KEY (`idClientes`),
  UNIQUE KEY `nit_UNIQUE` (`nit`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Consumidor Final','Ciudad','','C/F','','T','2016-10-18',NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `idcompra` int(11) NOT NULL AUTO_INCREMENT,
  `numdoc` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `proveedor_idproveedor` int(11) NOT NULL,
  `total` float DEFAULT NULL,
  `saldo` float DEFAULT NULL,
  `status` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `descuento` float DEFAULT NULL,
  `idtipopago` int(11) NOT NULL,
  `nserie` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  `fechapago` date DEFAULT NULL,
  PRIMARY KEY (`idcompra`,`idtipopago`,`usuario_idusuario`,`proveedor_idproveedor`),
  KEY `fk_compra_proveedor1` (`proveedor_idproveedor`),
  KEY `fk_compra_tipopago1_idx` (`idtipopago`),
  KEY `fk_compra_usuario1_idx` (`usuario_idusuario`),
  CONSTRAINT `fk_compra_proveedor1` FOREIGN KEY (`proveedor_idproveedor`) REFERENCES `proveedor` (`idproveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_compra_tipopago1` FOREIGN KEY (`idtipopago`) REFERENCES `tipopago` (`idtipopago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_compra_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,'1','2016-10-18',1,0,0,'F',NULL,1,'A-1',13,'2016-10-18'),(2,'','2017-01-03',3,4,0,'F',NULL,1,'',13,'2017-01-03'),(3,'','2017-01-03',2,2,2,'T',NULL,7,'',13,'2017-06-02'),(4,'','2017-01-03',4,10,0,'F',NULL,1,'',13,'2017-01-03');
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleinteres`
--

DROP TABLE IF EXISTS `detalleinteres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleinteres` (
  `iddetint` int(11) NOT NULL AUTO_INCREMENT,
  `salida_idsalida` int(11) NOT NULL,
  `fechadel` date DEFAULT NULL,
  `fechaal` date DEFAULT NULL,
  `montointeres` float NOT NULL,
  `saldoactual` float NOT NULL,
  `interesactual` float NOT NULL,
  `nsaldointeres` float NOT NULL,
  `fecharegistro` date DEFAULT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  PRIMARY KEY (`iddetint`,`salida_idsalida`,`usuario_idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleinteres`
--

LOCK TABLES `detalleinteres` WRITE;
/*!40000 ALTER TABLE `detalleinteres` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalleinteres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallesalida`
--

DROP TABLE IF EXISTS `detallesalida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallesalida` (
  `iddetallesalida` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` float DEFAULT NULL,
  `precio` float NOT NULL,
  `salida_idsalida` int(11) NOT NULL,
  `lote_idlote` int(11) NOT NULL,
  `devolucion` float DEFAULT '0',
  PRIMARY KEY (`iddetallesalida`,`salida_idsalida`,`lote_idlote`),
  KEY `fk_detallesalida_salida1` (`salida_idsalida`),
  KEY `fk_detallesalida_lote1` (`lote_idlote`),
  CONSTRAINT `fk_detallesalida_lote1` FOREIGN KEY (`lote_idlote`) REFERENCES `lote` (`idlote`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detallesalida_salida1` FOREIGN KEY (`salida_idsalida`) REFERENCES `salida` (`idsalida`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallesalida`
--

LOCK TABLES `detallesalida` WRITE;
/*!40000 ALTER TABLE `detallesalida` DISABLE KEYS */;
INSERT INTO `detallesalida` VALUES (1,10,5,1,1,0),(3,1,5,3,1,0);
/*!40000 ALTER TABLE `detallesalida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devoluciones`
--

DROP TABLE IF EXISTS `devoluciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devoluciones` (
  `iddevolucion` int(11) NOT NULL AUTO_INCREMENT,
  `idproducto` int(11) NOT NULL,
  `cantidad` float DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `idlote` int(11) NOT NULL,
  `idcompra` int(11) NOT NULL,
  `devolucion` float DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `entradasalida` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `idusuario` int(11) NOT NULL,
  PRIMARY KEY (`iddevolucion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devoluciones`
--

LOCK TABLES `devoluciones` WRITE;
/*!40000 ALTER TABLE `devoluciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `devoluciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `nombre` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `direccion` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `telefono` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `correo` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES ('REPUESTOS RUBENS','KM 183 CANTON PUCA SECTOR I','7771-4531','SAN SEBASTIAN, RETALHULEU');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fechaint`
--

DROP TABLE IF EXISTS `fechaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fechaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechaint`
--

LOCK TABLES `fechaint` WRITE;
/*!40000 ALTER TABLE `fechaint` DISABLE KEYS */;
/*!40000 ALTER TABLE `fechaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lote`
--

DROP TABLE IF EXISTS `lote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lote` (
  `idlote` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` float NOT NULL,
  `precio` float NOT NULL,
  `stock` float NOT NULL,
  `estado` char(1) CHARACTER SET latin1 DEFAULT 'T',
  `Fecha` date NOT NULL,
  `producto_idproducto` int(11) NOT NULL,
  `tipoentrada` varchar(8) CHARACTER SET latin1 NOT NULL,
  `compra_idcompra` int(11) NOT NULL,
  `devolucion` float DEFAULT NULL,
  PRIMARY KEY (`idlote`,`producto_idproducto`,`compra_idcompra`),
  KEY `fk_lote_producto` (`producto_idproducto`),
  KEY `fk_lote_compra1_idx` (`compra_idcompra`),
  CONSTRAINT `fk_lote_compra1` FOREIGN KEY (`compra_idcompra`) REFERENCES `compra` (`idcompra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lote_producto` FOREIGN KEY (`producto_idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lote`
--

LOCK TABLES `lote` WRITE;
/*!40000 ALTER TABLE `lote` DISABLE KEYS */;
INSERT INTO `lote` VALUES (1,20,1,9,'T','2016-10-18',1,'INICIAL',1,NULL),(2,5,2,5,'T','2016-10-23',2,'INICIAL',1,NULL),(3,2,2,2,'T','2017-01-03',2,'COMPRA',2,NULL),(4,2,1,2,'T','2017-01-03',1,'COMPRA',3,NULL),(5,2,1,2,'T','2017-01-03',1,'COMPRA',4,NULL),(6,4,2,4,'T','2017-01-03',2,'COMPRA',4,NULL);
/*!40000 ALTER TABLE `lote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca` (
  `idmarca` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `fec_reg` date DEFAULT NULL,
  `Estado` char(1) CHARACTER SET utf8 DEFAULT 'T',
  PRIMARY KEY (`idmarca`),
  UNIQUE KEY `Nombre_UNIQUE` (`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'YEC','2016-10-10','T'),(2,'BGF','2016-10-12','T'),(3,'SANYCO','2016-10-12','T'),(4,'CASHIMA','2016-10-12','T'),(5,'JMC','2016-10-12','T'),(6,'TOSHIO','2016-10-12','T'),(7,'TUNOLI','2016-10-12','T'),(8,'H-TEC','2016-10-12','T'),(9,'J-ROCK','2016-10-12','T'),(10,'BOSCH','2016-10-12','T'),(11,'ASCOPS','2016-10-12','T'),(12,'REICK','2016-10-12','T'),(13,'DAYWA','2016-10-12','T'),(14,'COYO','2016-10-12','T'),(15,'NACHI','2016-10-12','T'),(16,'NSK','2016-10-12','T'),(17,'SKF','2016-10-12','T'),(18,'ICHIBAN','2016-10-12','T'),(19,'MBS','2016-10-12','T'),(20,'GMB','2016-10-12','T'),(21,'SIA','2016-10-12','T'),(22,'MRK','2016-10-12','T'),(23,'SHB','2016-10-12','T'),(24,'NAMCO','2016-10-12','T'),(25,'NPPN','2016-10-12','T'),(26,'ARCO','2016-10-12','T'),(27,'PAYEN','2016-10-12','T'),(28,'POLIWAI','2016-10-12','T'),(29,'NATIONAL','2016-10-12','T'),(30,'NQK','2016-10-12','T'),(31,'HINO','2016-10-12','T'),(32,'SEIKEN','2016-10-12','T'),(33,'JBS','2016-10-12','T'),(34,'ESTEMCO','2016-10-12','T'),(35,'CENTRAL','2016-10-12','T'),(36,'TREE555FIVE','2016-10-12','T'),(37,'SAFETI','2016-10-12','T'),(38,'CIB','2016-10-12','T'),(39,'YOKOMITZO','2016-10-12','T'),(40,'AUTO-NOVA','2016-10-12','T'),(41,'SH','2016-10-12','T'),(42,'SEIKON','2016-10-12','T'),(43,'KIOSAN','2016-10-12','T'),(44,'O.S.K','2016-10-12','T'),(45,'DENSO','2016-10-12','T'),(46,'MASTER','2016-10-12','T'),(47,'NIPPON','2016-10-12','T'),(48,'YSK','2016-10-12','T'),(49,'AISIN','2016-10-12','T'),(50,'EAGLE','2016-10-12','T'),(51,'ASANI','2016-10-12','T'),(52,'SBK','2016-10-12','T'),(53,'SHIBAMI','2016-10-12','T'),(54,'CHS','2016-10-12','T'),(55,'KTC','2016-10-12','T'),(57,'TS','2016-10-12','T'),(58,'PRECISION','2016-10-12','T'),(59,'TOYO','2016-10-12','T'),(60,'MIYAKE','2016-10-12','T'),(61,'LUCID','2016-10-12','T'),(62,'DEPO','2016-10-12','T'),(63,'Y.C.E.C','2016-10-12','T'),(64,'CABOVEL','2016-10-12','T'),(65,'HI-LEX','2016-10-12','T'),(66,'NAVCAR','2016-10-12','T'),(67,'NDC','2016-10-12','T'),(68,'DOCURO','2016-10-12','T'),(69,'BEN BRAND','2016-10-12','T'),(70,'TOKURO','2016-10-12','T'),(71,'TOA','2016-10-12','T'),(72,'NPR','2016-10-12','T'),(73,'TP','2016-10-12','T'),(74,'NAMCCO','2016-10-12','T'),(75,'TOYONISA','2016-10-12','T'),(77,'DAEWHA','2016-10-12','T'),(78,'FACET','2016-10-12','T'),(79,'BALL JOINT','2016-10-12','T'),(80,'SAFETY BRAND','2016-10-12','T'),(81,'CHASE','2016-10-12','T'),(82,'TYC','2016-10-12','T'),(83,'FORCETEC','2016-10-12','T'),(85,'EXCEDY','2016-10-12','T'),(86,'AUTO FLEX','2016-10-12','T'),(87,'ISUZU','2016-10-12','T'),(88,'NKK','2016-10-12','T'),(89,'PARTS ASAM','2016-10-12','T'),(90,'SUPER FOG','2016-10-12','T'),(91,'CLA','2016-10-12','T'),(92,'SIRIUS','2016-10-12','T'),(93,'HIPER-F','2016-10-12','T'),(94,'ISAKA','2016-10-12','T'),(95,'AUTO LAMP','2016-10-12','T'),(96,'CKT','2016-10-12','T'),(97,'LAMP','2016-10-12','T'),(98,'LUXTAR','2016-10-12','T'),(100,'TERADA','2016-10-12','T'),(102,'BTK','2016-10-12','T'),(105,'YOKOZUNA','2016-10-12','T'),(106,'SORL','2016-10-12','T'),(107,'B.G.F','2016-10-12','T'),(108,'TAIHO','2016-10-12','T'),(109,'ENGINE VALUE','2016-10-12','T'),(110,'JIUN-MU (JM)','2016-10-12','T'),(111,'NTP','2016-10-12','T'),(114,'WAGNER','2016-10-12','T'),(115,'GATES','2016-10-12','T'),(116,'TOYO POWER','2016-10-12','T'),(117,'BYB','2016-10-12','T'),(118,'CENTRY','2016-10-12','T'),(119,'MAZDA','2016-10-12','T'),(121,'XSBEST','2016-10-12','T'),(122,'KIMO','2016-10-12','T'),(123,'TOYOTA','2016-10-12','T'),(124,'AO BEST','2016-10-12','T'),(125,'INDY MENTAL','2016-10-12','T'),(126,'HO','2016-10-12','T'),(127,'GAS CAP','2016-10-12','T'),(128,'COPLUS','2016-10-12','T'),(129,'GSN','2016-10-12','T'),(130,'CLEVITE','2016-10-12','T'),(131,'NEW-ERA','2016-10-12','T'),(132,'FLOSSER','2016-10-12','T'),(133,'MILLER','2016-10-12','T'),(134,'SPARTAN','2016-10-12','T'),(136,'O.EBRAND','2016-10-12','T'),(137,'VELCO','2016-10-12','T'),(138,'SEIWA','2016-10-12','T'),(139,'MASTER WAIRE','2016-10-12','T'),(140,'EMPI','2016-10-12','T'),(141,'BOOTTELLI','2016-10-12','T'),(142,'EIVAC','2016-10-12','T'),(143,'MOTO RAC','2016-10-12','T'),(144,'HKT','2016-10-12','T'),(145,'STANT','2016-10-12','T'),(146,'CENTURY','2016-10-12','T'),(147,'MOTO RAD','2016-10-12','T'),(148,'EXP','2016-10-12','T'),(149,'TAMA','2016-10-12','T'),(151,'DONON','2016-10-12','T'),(152,'NGK','2016-10-12','T'),(153,'CHAMPION','2016-10-12','T'),(154,'HIBARI','2016-10-12','T'),(155,'CAP','2016-10-12','T'),(158,'EIKO','2016-10-12','T'),(160,'TRIDON','2016-10-12','T'),(161,'NOVITA','2016-10-12','T'),(162,'SUPER BELT','2016-10-12','T'),(163,'CHN DEN','2016-10-12','T'),(164,'SAN KEI','2016-10-12','T'),(165,'DIFORZA','2016-10-12','T'),(166,'TRUX','2016-10-12','T'),(167,'LAFA','2016-10-12','T'),(168,'BETS BALUE','2016-10-12','T'),(169,'ROTER','2016-10-12','T'),(170,'ABRO','2016-10-12','T'),(171,'TYPER','2016-10-12','T'),(172,'MARCO','2016-10-12','T'),(173,'HBL','2016-10-12','T'),(174,'BBT','2016-10-12','T'),(175,'PROPULSA','2016-10-12','T'),(176,'GIRSOO','2016-10-12','T'),(177,'CLAF','2016-10-12','T'),(178,'TOOLCAFT','2016-10-12','T'),(179,'NICE','2016-10-12','T'),(180,'VISOL','2016-10-12','T'),(182,'ATE','2016-10-12','T'),(183,'PRODIN','2016-10-12','T'),(185,'CHEVRON','2016-10-12','T'),(186,'LOOK','2016-10-12','T'),(187,'PODIN','2016-10-12','T'),(188,'PRESTONE','2016-10-12','T'),(189,'3 EN UNO ','2016-10-12','T'),(190,'WD40','2016-10-12','T'),(191,'BARDAHL','2016-10-12','T'),(192,'PERMATEX','2016-10-12','T'),(194,'SHELL','2016-10-12','T'),(195,'FORSE','2016-10-12','T'),(196,'3M','2016-10-12','T'),(197,'DEWALT','2016-10-12','T'),(198,'AMERICAN','2016-10-12','T'),(199,'NORTON','2016-10-12','T'),(200,'METALIST','2016-10-12','T'),(202,'ASAM','2016-10-12','T'),(203,'STANLEY','2016-10-12','T'),(204,'CASTRO','2016-10-12','T'),(205,'URSA','2016-10-12','T'),(206,'MOBIL','2016-10-12','T'),(207,'QUAKE','2016-10-12','T'),(208,'VALVOLINE','2016-10-12','T'),(209,'DELO','2016-10-12','T'),(210,'CEPSA','2016-10-12','T'),(212,'LOCTITE','2016-10-12','T'),(213,'MICHELIN','2016-10-12','T'),(214,'MILLARD','2016-10-12','T'),(215,'VOMIS','2016-10-12','T'),(216,'AUTOX','2016-10-12','T'),(217,'LUBER FINE','2016-10-12','T'),(218,'HK','2016-10-12','T'),(219,'TACFIL','2016-10-12','T'),(220,'KASUL','2016-10-12','T'),(221,'OSAKA','2016-10-12','T'),(222,'DONALDSON','2016-10-12','T'),(223,'MOROE','2016-10-12','T'),(224,'YOKOMITSU','2016-10-12','T'),(225,'UNICON','2016-10-12','T'),(226,'KIVE','2016-10-12','T'),(227,'TERA','2016-10-12','T'),(228,'N.P.K','2016-10-12','T'),(229,'TOTO','2016-10-12','T'),(230,'IZUMI','2016-10-12','T'),(231,'NAKAMOTO','2016-10-12','T'),(232,'SABO','2016-10-12','T'),(233,'WIX','2016-10-12','T'),(234,'NPC','2016-10-12','T'),(235,'WYLERION','2016-10-12','T'),(236,'PLATINUM','2016-10-12','T'),(238,'TKL','2016-10-12','T'),(239,'CONTROIL','2016-10-12','T'),(241,'BENDIX','2016-10-12','T'),(242,'SAP','2016-10-12','T'),(243,'ORTAFIX','2016-10-12','T'),(244,'EXCEL','2016-10-12','T'),(245,'HUSHAM','2016-10-12','T'),(246,'HS','2016-10-12','T'),(247,'ABROLOK','2016-10-12','T'),(249,'EXFLEX','2016-10-12','T'),(250,'TEMPLEX','2016-10-12','T'),(251,'LORENZ','2016-10-12','T'),(252,'PENTIUS','2016-10-12','T'),(253,'WEB','2016-10-12','T'),(254,'LINKPARK','2016-10-12','T'),(255,'MTK','2016-10-12','T'),(256,'ATEK','2016-10-12','T'),(257,'JOHHSEN´S','2016-10-12','T'),(258,'IRWIN','2016-10-12','T'),(259,'SUPER SEAL','2016-10-12','T'),(260,'TOKYE','2016-10-12','T'),(261,'OSAK','2016-10-12','T'),(263,'NPW','2016-10-12','T'),(265,'KASHIMA','2016-10-12','T'),(266,'123 123 123','2017-01-27','T'),(267,'555 555 555','2017-01-27','T');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfilusu`
--

DROP TABLE IF EXISTS `perfilusu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfilusu` (
  `idperfilusu` int(11) NOT NULL AUTO_INCREMENT,
  `menu` int(11) NOT NULL,
  `estado` char(1) CHARACTER SET latin1 NOT NULL DEFAULT 'T',
  `idusuario` int(11) NOT NULL,
  PRIMARY KEY (`idperfilusu`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfilusu`
--

LOCK TABLES `perfilusu` WRITE;
/*!40000 ALTER TABLE `perfilusu` DISABLE KEYS */;
INSERT INTO `perfilusu` VALUES (234,0,'T',13),(235,1,'T',13),(236,2,'T',13),(237,3,'T',13),(238,4,'T',13),(239,5,'T',13),(240,6,'T',13),(241,7,'T',13),(242,8,'T',13),(243,9,'T',13),(244,10,'T',13),(245,11,'T',13),(246,12,'T',13),(247,13,'T',13),(248,14,'T',13),(249,15,'T',13),(250,16,'T',13),(251,17,'T',13),(252,18,'T',13),(253,19,'T',13),(254,20,'T',13),(255,21,'T',13),(256,22,'T',13),(257,0,'T',14),(258,1,'T',14),(259,2,'T',14),(260,3,'T',14),(261,4,'T',14),(262,5,'T',14),(263,6,'T',14),(264,7,'T',14),(265,8,'T',14),(266,9,'T',14),(267,10,'T',14),(268,11,'T',14),(269,12,'T',14),(270,13,'T',14),(271,14,'T',14),(272,15,'T',14),(273,16,'T',14),(274,17,'T',14),(275,18,'T',14),(276,19,'T',14),(277,20,'T',14),(278,21,'T',14),(279,22,'T',14);
/*!40000 ALTER TABLE `perfilusu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `nombre` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `comprometido` int(11) DEFAULT '0',
  `Descripcion` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `PrecioCompra` float DEFAULT NULL,
  `Precioventa` float DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `Categoria_idCategoria` int(11) NOT NULL,
  `Estado` char(1) CHARACTER SET latin1 DEFAULT 'T',
  `pivote` float DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  `idunidad` int(11) NOT NULL,
  `idmarca` int(11) NOT NULL,
  `preciocredito` float DEFAULT NULL,
  `preciodistribuidor` float DEFAULT NULL,
  `precioespecial` float DEFAULT NULL,
  PRIMARY KEY (`idproducto`,`Categoria_idCategoria`,`idunidad`,`idmarca`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`),
  KEY `fk_producto_Categoria1` (`Categoria_idCategoria`),
  KEY `fk_producto_unidad1_idx` (`idunidad`),
  KEY `fk_producto_marca1_idx` (`idmarca`),
  CONSTRAINT `fk_producto_Categoria1` FOREIGN KEY (`Categoria_idCategoria`) REFERENCES `categoria` (`idCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_marca1` FOREIGN KEY (`idmarca`) REFERENCES `marca` (`idmarca`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_unidad1` FOREIGN KEY (`idunidad`) REFERENCES `unidad` (`idunidad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'tos-001','prueba 1/4',0,'',1,5,'2016-10-18',2,'T',2,13,3,5,5,4,4),(2,'123-123','prueba 2',0,'',2,2,'2016-10-23',5,'T',2,11,5,6,2,2,2);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `idproveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `direccion` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `correo` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `nitp` varchar(16) CHARACTER SET latin1 NOT NULL,
  `telefono` varchar(14) CHARACTER SET latin1 DEFAULT NULL,
  `Estado` char(1) CHARACTER SET latin1 DEFAULT 'T',
  `fec_reg` date DEFAULT NULL,
  `contacto` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`idproveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Admin (No borrar)','Admin','','','22222222','T','2016-10-12',NULL),(2,'DISINSA','7 Avenida 2-77 z9 torre Reformador','','','23322689','T','2016-10-12',NULL),(3,'INCAPROSA','7 Calle 12-47 C z.18 Res. Atlantida ','','','22044111','T','2016-10-12',NULL),(4,'Figueroa Y CIA LTDA','Calzada Aguilar Batres 37-55 zona 12 Guatemala','falcoa@figueroaycia.com.gt','','24769989','T','2016-10-12',NULL),(5,'REFACCIONARIA SAN CARLOS','29 calle 5-90 zona 12 Guatemala centroa america','ventas@autotal.com.gt','','22431700','T','2016-10-12',NULL),(6,'Electro Disel de Guatemala S.A','8a. calle 6-60 zona 4 Guatemala Centro America','jorge.juarez@edisa.com.gt','','23607386','T','2016-10-12',NULL),(7,'Repuestos Ruben´s','Guatemala Gutemala','','','24234724','T','2016-10-12',NULL),(8,'IMERCA','23 calle 14-58 condado naranja zona 4 mixco distribodegas3 Bodega C1','alejandro.alarcon@imercaventas.com','','24109100','T','2016-10-12',NULL),(9,'Centracasa','Calzada Aguilar Batres 26-19 zona 12 Guatemala C.A','sgamboa@centracasa.com','','24764253','T','2016-10-12',NULL),(10,'FIGUE PARTES S.A','2a avenida 13-35 zona 17 ofibodegas los almendros #14 y 15 01017 Guatemala Guatemala.C.A','angel.deleon.fp@gmail.com','','24293030','T','2016-10-12',NULL),(11,'REPUESTOS ASOCIADOS ','9a. Avenida 3-41 Zona7 Quinta Samayoa','ventas2asociados@gmail.com','','23872419','T','2016-10-12',NULL),(12,'REPUESTOS PS','Guatemala Guatemala','','','24734462','T','2016-10-12',NULL),(13,'CENDEDI','Guatemala Guatemal','','','53092421','T','2016-10-12',NULL),(14,'RUJAF S.A','26 calle 8-07 zonaa 7 Residenciales fuentes del valle I San Miguel Petapa Guatemala C.A','rujafsa@hotmail.com','','52802982','T','2016-10-12',NULL),(15,'INTERAUTO','Calzada Aguilar Batres 57-51 zona 12 bodega 18 villa Nueva Guatemala C.A','ventas@interautogt.com','','23190000','T','2016-10-12',NULL),(16,'La Casa del Overhaul','Calzada San Juan 37-77 zona7 Guatemala Ciudad','boauto00@hotmail.com','','23803501','T','2016-10-12',NULL),(17,'Bodega de AutoMotriz S.A.','Calzada San Juan 37-77 zona 7 Guatemala Ciudad','boauto00@hotmail.com','','23803501','T','2016-10-12',NULL),(18,'Jorge Hernandez ','7a Avenida 8-65 zona 4 01004 Guatemala C.A','','','58922575','T','2016-10-12',NULL),(19,'Multi Materiales ','9 a Calle 29-80 zona 7 Quetzaltenango','lchacon@multimateriales.com.gt','','77368863','T','2016-10-12',NULL),(20,'AUTO TRUCKS','7a calle 0-69 AD Zona2 Quetzaltenango','autotrucksmack@hotmail.com','','77610625','T','2016-10-12',NULL),(21,'Repuestos Ordoñez','Central Avenida Bolivar 32-00 Zona 3 ','','','54827451','T','2016-10-12',NULL),(22,'Infracon S.A','Av. Petapa 42-85 zona 12 Of. No. 8 Guatemala Guatemala','marnorsolvad22@gmail.com','','40274665','T','2016-10-12',NULL),(23,'Importadora Marcesa','11 calle D12-56 Zona1 Quetzaltenango','','','77651177','T','2016-10-12',NULL),(24,'Cyrsa-Guate','46 calle 0-17 zona 12 Colonia Monte Maria1','','','24790655','T','2016-10-12',NULL),(25,'Cyrsa-Xela','Quetzaltenango Quetzaltenango','','','77653492','T','2016-10-12',NULL),(26,'SAN JOSE','11 calle D12-56A zona1 Barrio San José la Viña','','','77617094','T','2016-10-12',NULL),(27,'FIGUEROA ','Guatemala Guatemala','','','24421256','T','2016-10-12',NULL),(28,'VINTAGE S.A','AVENIDA PETAPA 46-53 ZONA 12 Guatemala Guatemala ','','','23807800','T','2016-10-12',NULL),(29,'MAYOREO AUTOMOTRIZ FIGUEROA','29 calle 7-07 Zona 12 Col. El Carmen ','','','57588522','T','2016-10-12',NULL),(30,'ACQUARONI','7a aVENIDA 1-54 Zona 4 Guatemala Guatemala ','','','24720570','T','2016-10-12',NULL),(31,'J.C Obreron','Guatemala Guatemala','','','24721756','T','2016-10-12',NULL),(32,'EXCEL AUTOMOTRIZ','1 Avenida 9-38 zona 9 Guatemala C.A','emmanuel3.r@gmail.com','','56516269','T','2016-10-12',NULL),(33,'Dristribuidora San Jeronimo S.A','2a. Avenida 4-08 Zona 9','telemercadeo@sanjeronimo.com.gt','','22236219','T','2016-10-12',NULL),(34,'Lucalza','11 calle 5-19 zona 1 Retalhuleu','asolorzano@lucalza.com','','77710037','T','2016-10-12',NULL),(35,'DISTALSA','27 Av. 7-25 Distribodegas 2 Guatemala Guatemala','saguila@distalsa.com','','22069595','T','2016-10-12',NULL),(36,'AEC REPUESTOS ','Aguilar Batres 12 calle 0-16 zona 12 ','','','22884483','T','2016-10-12',NULL),(37,'Distribuidora Amézquita ','23 calle 10-25 zona 12 Guatemala','','','58895420','T','2016-10-13',NULL),(38,'Pricasa de Carcul','Guatemala Guatemala ','','','24295454','T','2016-10-13',NULL),(39,'MIZUMO','4ta Calle 23-80 zona 14 Empresarial Multibodegas 7A','guatemala@optimoautoparts.com','','2336811','T','2016-10-13',NULL),(40,'Motores Hino de Guatemala S.A','Centro Comercial San Bartolomé 74 calle Prolongacion 1-57 zona 2 local #15','info@hino.com.gt','','78722485','T','2016-10-13',NULL),(41,'Repuestos Mitsubishi','Guatemala Guatemala.','','','22778000','T','2016-10-13',NULL),(42,'Auto Repuestos Sniart','0calle 12-03 Sector B1 Col. San Cristobal zona 8 de Mixco','','','40171428','T','2016-10-13',NULL),(43,'MERCALSA','Calzada Atamasio Tzul Diagonal 3 20-74 zona 12 01012 Guatemala C.A','juancavillo@mercalsa.com.gt','','22798400','T','2016-10-13',NULL),(44,'EL AMIGO','27 Av. 7A-42 Zona3 Terminal de Buses Quetzaltengo. ','','','77658184','T','2016-10-13',NULL),(45,'IBERIA S.A','5a. Ave 7-10 Zona 2 Quetzaltenango','sucursalxela@acumuladoressiberia.com','','77654618','T','2016-10-13',NULL),(46,'LOCARSA','6a. Avenida 1-15 zona 11 col. Mariscal Guatemala C.A','daniel@tornilloscentroamericano.com','','23280100','T','2016-10-13',NULL),(47,'V.CM AUTOMOTRIZ','Guatemala Guatemala','','','24456793','T','2016-10-13',NULL),(48,'M.B PARTES','7a. Avenida 1-02 zona 2 frente a la terminal nueva Mazatenango Such.','','','78720828','T','2016-10-13',NULL),(49,'CLOSHES MAZATE','Mazatenango Suchi.','','','78722765','T','2016-10-13',NULL),(50,'REFAMA REPUESTOS S.A','17 AV. 27-81 zona7 Residenciales Fuentes del Valle San Miguel Petapa Guatemala C.A','refama@intelnet.net.gt','','66354386','T','2016-10-13',NULL),(51,'Importadora Paiz','Guatemala Guatemala','www.importadorapaiz@hotmail.com','','53270085','T','2016-10-13',NULL),(52,'COSURSA','7avenida 7-53 zona 1 Retalhuleu Guatemala','','','77713406','T','2016-10-13',NULL),(53,'CORDELSA','Guatemala Guatemala','','','24323737','T','2016-10-13',NULL),(54,'REPUESTOS SAN JOSE TIKAL MOTORS','AVE CIRCUNVALACION 9-99 ZONA 1 RETALHULEU FRENTE A GASOLINERA DON ARTURO','','','77710620','T','2016-10-13',NULL),(55,'Rapidos y Seguros Traslados ','2A. Avenida 24-40 zona3 Guatemala C.A','','','22321212','T','2016-10-13',NULL),(56,'BOAUTO','Guatemala Guatemala','','','23803535','T','2016-10-13',NULL),(57,'AUTO PARTES','Guatemala Guatemala','','','57091066','T','2016-10-13',NULL),(58,'PRODIN','kM. 6.5 Ruta al Atlantico zona 18 01018 Guatemala C.A','ventas@prodinca.com','','24295454','T','2016-10-13',NULL),(59,'SIEBOLD','7a. Avenida 2-30 zona4 Guatemala C.A','ventas@autosiebold.com','','22859950','T','2016-10-13',NULL),(60,'APYMSA','Calle 17-A Oriente No. 14 Col Centro C.P. 30700 Tapachula Chiapas','ddiaz@apymsa.com.mx','','1182082','T','2016-10-13',NULL),(61,'AUTOCOM','6ta Avenida 3-25 zona 9 Guatemala ','','','24234751','T','2016-10-13',NULL),(62,'Repuestos Genuinos','7a. Avenida 8-65 zona 4 01004 Guatemala C.A','','','23315888','T','2016-10-13',NULL),(63,'DIFORZA INTERNATIONAL','35avenida 26-31 zona 5 Col. Viviblen Guatemala','irisdiaz@grupodiforza.com','','24128383','T','2016-10-13',NULL),(64,'INVERSIONES OLMAZX S.A','7a. Avenida 4-58 zona4 Guatemala Guatemala','axel.estrada@inversionessolmalax.com','','25027474','T','2016-10-13',NULL),(65,'MULTINEGOCIOS GENERALES','Calz. Aguilar Batres 34-77 zona 12 C.C la Coruña L. 113','rincar.rocha@multinegociosg.com','','24760426','T','2016-10-13',NULL),(66,'VENOCLINC','24 aV. 0-22 zona1 Edificio Gastroclinica. Quetzaltenango','','','58303172','T','2016-10-13',NULL),(67,'J.A. Vasquez ','Guatemala Guatemla ','emanuel@javasquez.com.gt','','24339944','T','2016-10-13',NULL),(68,'RECESA','Guatemala Guatemala ','cbarrios@corpadl.com','','41707158','T','2016-10-13',NULL),(69,'INGARSA MAZATE','Mazatenango Such.','','','78723852','T','2016-10-13',NULL),(70,'MOTUL','7a Avenida 8-65 01004 zona4 Guatemala C.A','crivas@canella.com.gt','','56966537','T','2016-10-13',NULL),(71,'READO MAYORISTA','Calzada Centenario 3-63 zona 3 Maztenango Suchitepequez','','','78720052','T','2016-10-13',NULL),(72,'RQ. Resotes Quiche','33 calle B 10-49 zona 8 Guatemala C.A','rquiche@terra.com.gt','','24406433','T','2016-10-13',NULL),(73,'TOOLCRAGT','10 a Avenida 3-15 zona 4 Mixco Cond. Monte Real Bodega #1','','','22470247','T','2016-10-13',NULL),(74,'FIERROSA','Calzada Atamasio Tzul 22-00 zona 12 Centro Empresarial','fierrosa@gfe26.com','','23182828','T','2016-10-13',NULL),(75,'DICAMA','Mazatenango Such.','pedidos@lacasamaravillosa.com','','78725352','T','2016-10-13',NULL),(76,'RADIADORES RAMONCITO','11 calle 5-20 zona 1 frente a los cubanitos Retalhuleu','','','42973527','T','2016-10-13',NULL),(77,'REPUESTOS LA CENTRAL ','Guatemala Guatemala','','','24754843','T','2016-10-13',NULL),(78,'CENTROCASA','Calzada Alguila Batres 26-19 zona 12 Guatemala C.A','info@centrocasa.com','','55917190','T','2016-10-13',NULL),(79,'DELAR','diagonal C 3-150 zona 1 lomas de portugal Mixco','delarsa@hotmail.com','','24386996','T','2016-10-13',NULL),(80,'Aceites Chevron dela 400','Guatemala Guatemala','','','52110136','T','2016-10-13',NULL),(81,'Taller de Fricciones LA SIRENA ','Retalhuleu Retalhuleu','','','40187668','T','2016-10-13',NULL),(82,'COSURSA','7Avenida 7-53 zona 1 Retalhuleu Guatemala.','','','7713406','T','2016-10-13',NULL),(83,'LUBRIIMPORT S.A','5a. Avenida 5-08 zona 9 Guatemala c.A','emorales@lubrimport.com.gt','','23837777','T','2016-10-13',NULL),(84,'REPUESTOS MIRANDA MAZATE','Mazatenango Such.','','','78215368','T','2016-10-13',NULL),(85,'REPUESTOS DEL SUR S.A','1ra Avenida 35-13 zona 12 Colonia El Carmen ','vendedor013@gmail.com','','24420371','T','2016-10-13',NULL),(86,'Iternacional de Repuestos ','Guatemala Guatemala','','','24730065','T','2016-10-13',NULL),(87,'GRUPO FYE ','29 Calle 7-07 zona 12 colonia el carmen Guatemala ','','','22432727','T','2016-10-13',NULL),(88,'Grupo Printer','Av. Centroamerica 21-46 Z. 1 Guatemala C.A C.P 01001','','','23238623','T','2016-10-13',NULL),(89,'COMERCIALIZADORA OM','33 avenida 11-33 zona 5 el Eden Guatemala C.A','comercializadoraom1@hotmail.com','','23348841','T','2016-10-13',NULL),(90,'SILICOMSA','Guatemala Guatemala ','silicomsa.alba@gmail.com','','23344044','T','2016-10-13',NULL),(91,'HP Herramientas Poderosas','Guatemala Guatemala','','','56907472','T','2016-10-13',NULL),(92,'SERVICAT S.A','Av. Petapa y 11 avenida 9-24 zona 12 ','','','24156565','T','2016-10-13',NULL),(93,'REPUESTOS ESTRADA','Calzada Aguilar Batres 44-25 Zona 12 Guatemala C.A','','','24772336','T','2016-10-13',NULL),(94,'MTP INTERNATIONAL S.A','14 ave. 19-50 Ofibodega San Sebastian bodega No. 20 Condado Naranjo zona 4 Mixco','','','24318342','T','2016-10-13',NULL),(95,'VICOSA','14 ave. 17-65 zona4 distribodegas C-1 condado el naranjo Mixco Guatemala c.p 01057','brinner.fuentes@vicosa.com','','23195500','T','2016-10-13',NULL),(96,'COCURSA','7 avenida 7-53 zona 1 Retalhuleu Guatemala','','','77713406','T','2016-10-13',NULL),(97,'CERECA','Calle Mari 12-35 A Zona 2 Ciudad Nueva','','','22547934','T','2016-10-13',NULL),(98,'MULTITOOLS','21 calle 1-43 zona3 codigo postal 01003 Ciudad de Guatemala','mynordeleon@multiperfiles.com','','22308080','T','2016-10-13',NULL),(99,'SEREGUA GUATE','Guatemala Guatemla','','','24701603','T','2016-10-13',NULL),(100,'CENDEDI','8a. Avenida 7-45 zona 7 Col. Nueva Montserrat Guatemala C.A','','','24328242','T','2016-10-13',NULL),(101,'DETOMELEC','24 Avenida Atanasio Tzul Bodegas Centrales 35-99 Centralsa bodega 8','','','24423752','T','2016-10-13',NULL),(102,'Tornillos la Rotonda','Diagonal 2 8-71 zona 2 Quetzaltenango','','','77617748','T','2016-10-13',NULL),(103,'DISINSA','Guatemala Guatemala','','','','T','2016-10-17',NULL),(104,'La Casa de los Rondamientos ','Calle Marti 11-28 local A zona 2','rondamientos245@hotmail.com','','22542171','T','2016-10-12','');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salida`
--

DROP TABLE IF EXISTS `salida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salida` (
  `idsalida` int(11) NOT NULL AUTO_INCREMENT,
  `salida` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `estado` char(1) CHARACTER SET latin1 NOT NULL DEFAULT 'T',
  `fecha` date DEFAULT NULL,
  `total` float DEFAULT NULL,
  `clientes_idclientes` int(11) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  `numdoc` int(12) DEFAULT NULL,
  `saldo` float DEFAULT NULL,
  `tipopago_idtipopago` int(11) NOT NULL,
  `fechapago` date DEFAULT NULL,
  `interesactual` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`idsalida`,`clientes_idclientes`,`usuario_idusuario`,`tipopago_idtipopago`),
  KEY `fk_salida_clientes1` (`clientes_idclientes`),
  KEY `fk_salida_usuario1` (`usuario_idusuario`),
  KEY `fk_salida_tipopago1_idx` (`tipopago_idtipopago`),
  CONSTRAINT `fk_salida_clientes1` FOREIGN KEY (`clientes_idclientes`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_salida_tipopago1` FOREIGN KEY (`tipopago_idtipopago`) REFERENCES `tipopago` (`idtipopago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_salida_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salida`
--

LOCK TABLES `salida` WRITE;
/*!40000 ALTER TABLE `salida` DISABLE KEYS */;
INSERT INTO `salida` VALUES (1,'501','F','2016-10-18',50,1,13,NULL,0,1,'2016-10-18',0),(3,'503','F','2016-10-18',5,1,13,NULL,0,1,'2016-10-18',0);
/*!40000 ALTER TABLE `salida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipopago` (
  `idtipopago` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) CHARACTER SET utf8 NOT NULL,
  `dias` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtipopago`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopago`
--

LOCK TABLES `tipopago` WRITE;
/*!40000 ALTER TABLE `tipopago` DISABLE KEYS */;
INSERT INTO `tipopago` VALUES (1,'CONTADO',0),(2,'CREDITO 15 DIAS',15),(3,'CREDITO 30 DIAS',30),(4,'CREDITO 60 DIAS',60),(5,'CREDITO 90 DIAS',90),(6,'CREDITO 120 DIAS',120),(7,'CREDITO 150 DIAS',150);
/*!40000 ALTER TABLE `tipopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidad`
--

DROP TABLE IF EXISTS `unidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidad` (
  `idunidad` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `fec_reg` date DEFAULT NULL,
  `Estado` char(1) CHARACTER SET utf8 DEFAULT 'T',
  PRIMARY KEY (`idunidad`),
  UNIQUE KEY `Nombre_UNIQUE` (`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=1200 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad`
--

LOCK TABLES `unidad` WRITE;
/*!40000 ALTER TABLE `unidad` DISABLE KEYS */;
INSERT INTO `unidad` VALUES (1,'19x72','2016-10-10','T'),(2,'145x72','2016-10-10','T'),(3,'23x72','2016-10-10','T'),(4,'21x73','2016-10-10','T'),(5,'36x110','2016-10-10','T'),(6,'36x111','2016-10-10','T'),(7,'33.5x111','2016-10-10','T'),(8,'24x73','2016-10-10','T'),(9,'37x101','2016-10-10','T'),(10,'23.5x72','2016-10-10','T'),(11,'25x73','2016-10-10','T'),(12,'36x102','2016-10-10','T'),(13,'39x111','2016-10-10','T'),(14,'23.5x73','2016-10-10','T'),(17,'19x96','2016-10-10','T'),(18,'14.5x73','2016-10-10','T'),(19,'37x102','2016-10-10','T'),(21,'35x107','2016-10-10','T'),(24,'56x116','2016-10-10','T'),(25,'27x102','2016-10-10','T'),(27,'37x110','2016-10-10','T'),(28,'29x70.5','2016-10-10','T'),(29,'235x72x200','2016-10-10','T'),(30,'16 1/2x63','2016-10-10','T'),(31,'27x72','2016-10-10','T'),(32,'37x100','2016-10-10','T'),(33,'22.5x79','2016-10-10','T'),(34,'24x97','2016-10-10','T'),(35,'24.5x76','2016-10-10','T'),(36,'27x101','2016-10-10','T'),(37,'24x92','2016-10-10','T'),(38,'18.5x90','2016-10-10','T'),(39,'19x71','2016-10-10','T'),(40,'19x90','2016-10-10','T'),(41,'18x72','2016-10-10','T'),(42,'18x70','2016-10-10','T'),(43,'17.5x63','2016-10-10','T'),(44,'18.5x64','2016-10-10','T'),(46,'20.5x64','2016-10-10','T'),(47,'18.5x63','2016-10-10','T'),(48,'17.5x70','2016-10-10','T'),(49,'17x70','2016-10-10','T'),(50,'16.5x71','2016-10-10','T'),(51,'14.3x72','2016-10-10','T'),(52,'16x104x168','2016-10-10','T'),(54,'17.5x72','2016-10-10','T'),(55,'19x98','2016-10-10','T'),(57,'18.5x70','2016-10-10','T'),(61,'18.5x62','2016-10-10','T'),(62,'17.3x70','2016-10-10','T'),(65,'17.5x71','2016-10-10','T'),(67,'21x71','2016-10-10','T'),(68,'22.5x80','2016-10-10','T'),(70,'24x87','2016-10-10','T'),(71,'19x88','2016-10-10','T'),(72,'39.5x105','2016-10-10','T'),(73,'23x71','2016-10-10','T'),(74,'56x110','2016-10-10','T'),(76,'36.5x109','2016-10-10','T'),(77,'15x72','2016-10-10','T'),(78,'37x107','2016-10-10','T'),(79,'30.5x109','2016-10-10','T'),(82,'34.5x107','2016-10-10','T'),(86,'19x73','2016-10-10','T'),(87,'14.5x70','2016-10-10','T'),(89,'22x72','2016-10-10','T'),(90,'18.5x65','2016-10-10','T'),(91,'57x15x37','2016-10-10','T'),(92,'35x110','2016-10-10','T'),(93,'23.5x87','2016-10-10','T'),(94,'16.5x63','2016-10-10','T'),(95,'28.5x85','2016-10-10','T'),(96,'28.5x72','2016-10-10','T'),(97,'20.5x74','2016-10-10','T'),(101,'23.5x90','2016-10-10','T'),(103,'23x90','2016-10-10','T'),(106,'16x103x107','2016-10-10','T'),(107,'85.5x64','2016-10-10','T'),(108,'17.5x62','2016-10-10','T'),(110,'16x73','2016-10-10','T'),(111,'23.5x101','2016-10-10','T'),(112,'20.5x73','2016-10-10','T'),(113,'18x65','2016-10-10','T'),(116,'23x73','2016-10-10','T'),(117,'17.5x64','2016-10-10','T'),(118,'17.5x73','2016-10-10','T'),(119,'10x22 1/2','2016-10-10','T'),(120,'10x23','2016-10-10','T'),(121,'14x22','2016-10-10','T'),(122,'14 1/2x2 1/2','2016-10-10','T'),(123,'14x23 1/2','2016-10-10','T'),(124,'14x29','2016-10-10','T'),(125,'14 1/2x23','2016-10-10','T'),(126,'15 1/2x22 1/2','2016-10-10','T'),(127,'15 1/2x25','2016-10-10','T'),(128,'4x17 1/2x27','2016-10-10','T'),(129,'5x17x25 ','2016-10-10','T'),(130,'5 1/2x21x24 1/2','2016-10-10','T'),(131,'5 1/2x17 1/2x25 1/2','2016-10-10','T'),(132,'5 1/2x19 1/2x25','2016-10-10','T'),(133,'8x13 1/2x28','2016-10-10','T'),(134,'8 1/2x13 1/2x28','2016-10-10','T'),(135,'8 1/2x19 1/2x14 1/2','2016-10-10','T'),(136,'8 1/2x14 1/2x28','2016-10-10','T'),(138,'8x16 1/2x14','2016-10-10','T'),(140,'8x13 1/2x14','2016-10-10','T'),(141,'8 1/2x15 1/2x20','2016-10-10','T'),(142,'8 1/2x18 1/2x25 x15','2016-10-10','T'),(143,'9x22x18','2016-10-10','T'),(144,'9 1/2x18x23','2016-10-10','T'),(145,'9x15 1/2x19','2016-10-10','T'),(146,'9x28x23','2016-10-10','T'),(148,'9x17x12 1/2','2016-10-10','T'),(149,'10 1/2x19x24 1/2','2016-10-10','T'),(150,'10x22','2016-10-10','T'),(151,'11x18x26','2016-10-10','T'),(152,'11x18x6 1/2','2016-10-10','T'),(153,'11x22x12','2016-10-10','T'),(154,'11x22x15','2016-10-10','T'),(156,'11x21 1/2x12','2016-10-10','T'),(158,'12x19x34','2016-10-10','T'),(159,'12x24x27 1/2','2016-10-10','T'),(160,'12x15 1/2x22','2016-10-10','T'),(162,'12x24x43','2016-10-10','T'),(163,'13 1/2x26 1/2x34','2016-10-10','T'),(164,'13x24x47','2016-10-10','T'),(165,'13x20x29','2016-10-10','T'),(166,'13 1/2x20x26 1/2','2016-10-10','T'),(167,'13 1/2x22 1/2x40','2016-10-10','T'),(168,'13 1/2x22x14','2016-10-10','T'),(170,'13x20 1/2x21','2016-10-10','T'),(171,'13x24x25 1/2','2016-10-10','T'),(172,'13 1/2x40x23','2016-10-10','T'),(173,'13 1/2x20x41','2016-10-10','T'),(174,'13 1/2x20 1/2x20','2016-10-10','T'),(175,'13 1/2x22x13 1/2','2016-10-10','T'),(177,'14 1/2x23x45 1/2','2016-10-10','T'),(178,'14 1/2x23x34','2016-10-10','T'),(179,'14 1/2x23x43 1/2','2016-10-10','T'),(180,'14x21x27','2016-10-10','T'),(182,'15 1/2x2x28x38 1/2','2016-10-10','T'),(183,'15 1/2x26 1/2x40x1/2','2016-10-10','T'),(184,'15x23x12 1/2','2016-10-10','T'),(185,'15x13 1/2x22x71','2016-10-10','T'),(187,'15x25','2016-10-10','T'),(188,'15x23','2016-10-10','T'),(189,'16 1/2x27 1/2x38','2016-10-10','T'),(190,'16x24 1/2','2016-10-10','T'),(192,'16x22 1/2','2016-10-10','T'),(194,'17x271/2x37','2016-10-10','T'),(195,'17 1/2x23','2016-10-10','T'),(196,'17 1/2x33x37 1/2','2016-10-10','T'),(197,'17x24x56','2016-10-10','T'),(198,'17x27x56','2016-10-10','T'),(199,'17x27 1/2x37','2016-10-10','T'),(200,'17x28','2016-10-10','T'),(202,'17x23','2016-10-10','T'),(203,'17x29','2016-10-10','T'),(204,'19x17 1/2x26x17','2016-10-10','T'),(205,'19x23 1/2','2016-10-10','T'),(206,'19 1/2x25','2016-10-10','T'),(207,'20x26','2016-10-10','T'),(208,'20x19','2016-10-10','T'),(209,'20x31.5','2016-10-10','T'),(210,'22x29','2016-10-10','T'),(211,'23 1/2x26','2016-10-10','T'),(212,'24 1/2x30','2016-10-10','T'),(213,'24 1/2x31','2016-10-10','T'),(214,'24x32x6','2016-10-10','T'),(215,'5.5x17x6','2016-10-11','T'),(216,'7x19x6','2016-10-11','T'),(217,'7x22x7','2016-10-11','T'),(218,'8x22x7','2016-10-11','T'),(219,'8x23x14','2016-10-11','T'),(220,'10x26x10','2016-10-11','T'),(221,'10x26x8','2016-10-11','T'),(222,'10x30x9','2016-10-11','T'),(223,'10x35x11','2016-10-11','T'),(224,'12x38x8','2016-10-11','T'),(225,'12x32x10','2016-10-11','T'),(226,'12x32x14','2016-10-11','T'),(227,'12x37x12','2016-10-11','T'),(228,'12x32x16','2016-10-11','T'),(229,'12x22x7','2016-10-11','T'),(230,'15x32x9','2016-10-11','T'),(231,'15x35x11','2016-10-11','T'),(232,'15x35x13','2016-10-11','T'),(233,'15x42x13','2016-10-11','T'),(234,'15x52x16','2016-10-11','T'),(235,'15x46x14','2016-10-11','T'),(236,'15x46x9','2016-10-11','T'),(237,'17x30x7','2016-10-11','T'),(238,'17x35x10','2016-10-11','T'),(239,'17x40x12','2016-10-11','T'),(240,'17x40x15','2016-10-11','T'),(241,'17x47x14','2016-10-11','T'),(242,'17x52x16','2016-10-11','T'),(243,'17x52x21','2016-10-11','T'),(247,'20x37x9','2016-10-11','T'),(248,'20x42x12','2016-10-11','T'),(249,'20x47x14','2016-10-11','T'),(250,'20x52x15','2016-10-11','T'),(251,'20x52x16','2016-10-11','T'),(252,'21.5x50x18','2016-10-11','T'),(253,'21x45x16.5','2016-10-11','T'),(254,'25x62x19','2016-10-11','T'),(255,'22x44x12','2016-10-11','T'),(256,'22x50x14','2016-10-11','T'),(257,'22x56x16','2016-10-11','T'),(258,'22x63x18','2016-10-11','T'),(259,'25x32x20','2016-10-11','T'),(260,'25x47x12','2016-10-11','T'),(261,'25x52x15','2016-10-11','T'),(262,'25x52x18','2016-10-11','T'),(263,'25x52x20','2016-10-11','T'),(264,'25x52x22','2016-10-11','T'),(265,'25x62x17','2016-10-11','T'),(267,'25x62x24','2016-10-11','T'),(268,'25x52x16','2016-10-11','T'),(269,'27x37x24','2016-10-11','T'),(270,'27x50x15','2016-10-11','T'),(271,'28x52x12','2016-10-11','T'),(272,'28x58x11','2016-10-11','T'),(273,'28x58x42','2016-10-11','T'),(274,'28x61x42','2016-10-11','T'),(275,'28x68x18','2016-10-11','T'),(276,'28x80x21','2016-10-11','T'),(277,'29x50x15','2016-10-11','T'),(278,'29.5x42x16','2016-10-11','T'),(279,'30x42x16','2016-10-11','T'),(280,'30x47x9','2016-10-11','T'),(281,'30x52x16','2016-10-11','T'),(282,'30x55x23','2016-10-11','T'),(283,'30x55x13','2016-10-11','T'),(284,'30x62x16','2016-10-11','T'),(285,'30x62x22','2016-10-11','T'),(286,'30x62x16x24','2016-10-11','T'),(287,'30x62x16x25','2016-10-11','T'),(288,'30x62x16x26','2016-10-11','T'),(289,'30x62x16x27','2016-10-11','T'),(290,'30x62x16x28','2016-10-11','T'),(291,'30x62x16x29','2016-10-11','T'),(292,'30x62x16x30','2016-10-11','T'),(293,'30x62x16x31','2016-10-11','T'),(294,'30x62x16x32','2016-10-11','T'),(295,'30x62x16x33','2016-10-11','T'),(296,'32x65x17','2016-10-11','T'),(298,'32x58x13','2016-10-11','T'),(299,'32x75x20','2016-10-11','T'),(300,'32x80x23','2016-10-11','T'),(301,'32x85x50','2016-10-11','T'),(302,'33x66x84x25','2016-10-11','T'),(303,'33x66x76x24','2016-10-11','T'),(304,'33x66x22','2016-10-11','T'),(305,'33x66x25','2016-10-11','T'),(307,'33x66x73x24','2016-10-11','T'),(308,'33x75x24','2016-10-11','T'),(309,'34.5x80x23','2016-10-11','T'),(310,'35x64x19','2016-10-11','T'),(311,'35x42x20','2016-10-11','T'),(312,'35x62.5x18','2016-10-11','T'),(313,'35x65x14','2016-10-11','T'),(315,'35x65x18.5','2016-10-11','T'),(316,'35x68x60','2016-10-11','T'),(317,'35x65x19','2016-10-11','T'),(318,'35x19x19','2016-10-11','T'),(319,'35x70x41','2016-10-11','T'),(320,'35x70x35','2016-10-11','T'),(322,'35x70x45','2016-10-11','T'),(323,'35x72x17','2016-10-11','T'),(324,'35x72x18.5','2016-10-11','T'),(325,'35x72x24','2016-10-11','T'),(328,'35x72x23','2016-10-11','T'),(329,'35x72x33','2016-10-11','T'),(330,'35x80x21','2016-10-11','T'),(331,'35x80x33','2016-10-11','T'),(332,'35x80x30','2016-10-11','T'),(333,'35x72x30','2016-10-11','T'),(334,'35x72x18','2016-10-11','T'),(336,'35x80x31','2016-10-11','T'),(337,'35x78x72x92x49','2016-10-11','T'),(338,'35x78x37','2016-10-11','T'),(339,'35x77x88x37','2016-10-11','T'),(340,'35x67x77x44','2016-10-11','T'),(342,'35x80x23','2016-10-11','T'),(343,'35x78x92x49','2016-10-11','T'),(344,'35x69x20','2016-10-11','T'),(345,'35x70x81x37','2016-10-11','T'),(346,'36x77x81x35','2016-10-11','T'),(347,'35x71x81x35','2016-10-11','T'),(348,'36x71x81x37','2016-10-11','T'),(349,'37x74x105x42','2016-10-11','T'),(350,'37x74x90x42','2016-10-11','T'),(351,'37x90x43','2016-10-11','T'),(352,'38x60x18','2016-10-11','T'),(353,'38x71x33','2016-10-11','T'),(354,'38x72x36','2016-10-11','T'),(355,'38x72x40','2016-10-11','T'),(356,'38x74x36','2016-10-11','T'),(357,'38x96x36','2016-10-11','T'),(358,'38x96x60','2016-10-11','T'),(359,'40x80x20','2016-10-11','T'),(360,'40x72x20','2016-10-11','T'),(362,'38.5x77x25x37','2016-10-11','T'),(363,'40x89x111x52','2016-10-11','T'),(364,'40x50x13','2016-10-11','T'),(365,'40x64x16','2016-10-11','T'),(366,'40x67x20','2016-10-11','T'),(367,'40x70x20','2016-10-11','T'),(368,'40x80x18','2016-10-11','T'),(369,'40x80x25','2016-10-11','T'),(370,'40x80x30','2016-10-11','T'),(371,'40x80x34','2016-10-11','T'),(372,'40x84.5x47','2016-10-11','T'),(373,'40x90x23','2016-10-11','T'),(374,'40x90x25','2016-10-11','T'),(375,'40x90x30','2016-10-11','T'),(376,'40x90x23x28','2016-10-11','T'),(377,'40x90x36','2016-10-11','T'),(378,'41x90x40','2016-10-11','T'),(379,'41x90.5x40','2016-10-11','T'),(380,'42x76x40','2016-10-11','T'),(381,'43x77x41.5x46','2016-10-11','T'),(382,'42.5x82x24','2016-10-11','T'),(383,'42x82x40x41','2016-10-11','T'),(384,'45x85x34','2016-10-11','T'),(385,'44x93x30','2016-10-11','T'),(386,'45x85x24','2016-10-11','T'),(387,'45x85x19','2016-10-11','T'),(388,'45x72.5x22','2016-10-11','T'),(389,'45x73x20','2016-10-11','T'),(390,'45x100x25','2016-10-11','T'),(391,'45x100x28','2016-10-11','T'),(392,'45x80x21','2016-10-11','T'),(394,'45x100x38.5','2016-10-11','T'),(395,'46x83x25','2016-10-11','T'),(396,'47x96x58','2016-10-11','T'),(397,'47x111x30','2016-10-11','T'),(398,'47x82x24','2016-10-11','T'),(399,'48x89x111x52','2016-10-11','T'),(400,'48x96x66','2016-10-11','T'),(401,'50x80x20','2016-10-11','T'),(402,'50x80x23','2016-10-11','T'),(403,'50x82x23','2016-10-11','T'),(404,'50x90x26','2016-10-11','T'),(405,'50x90x30','2016-10-11','T'),(407,'50x90x31','2016-10-11','T'),(408,'50x110x31','2016-10-11','T'),(409,'50x110x32','2016-10-11','T'),(410,'50x110x43','2016-10-11','T'),(411,'50x114x45','2016-10-11','T'),(412,'50x114x48','2016-10-11','T'),(413,'50x90x34','2016-10-11','T'),(414,'50x80x22','2016-10-11','T'),(415,'50x93x30','2016-10-11','T'),(416,'51x111x30','2016-10-11','T'),(417,'52x92x26','2016-10-11','T'),(418,'54x64x24','2016-10-11','T'),(419,'52x90x25','2016-10-11','T'),(420,'55x90x25','2016-10-11','T'),(421,'55x86x20','2016-10-11','T'),(422,'55x88x20','2016-10-11','T'),(423,'55x88x16','2016-10-11','T'),(424,'55x97.5x25','2016-10-11','T'),(425,'55x100x24','2016-10-11','T'),(426,'55x105x37','2016-10-11','T'),(427,'55x110x43','2016-10-11','T'),(428,'55x120x32','2016-10-11','T'),(429,'55x100x32','2016-10-11','T'),(430,'55x120x29','2016-10-11','T'),(431,'55x100x36','2016-10-11','T'),(432,'57x98x25','2016-10-11','T'),(433,'57x105x33','2016-10-11','T'),(434,'60x90x23','2016-10-11','T'),(435,'60x96x22','2016-10-11','T'),(436,'60x95x28','2016-10-11','T'),(437,'60x100x31','2016-10-11','T'),(438,'60x130x35','2016-10-11','T'),(439,'60x110x31','2016-10-11','T'),(440,'60x110x22','2016-10-11','T'),(441,'60x110x25','2016-10-11','T'),(442,'60x130x49','2016-10-11','T'),(443,'60x100x26','2016-10-11','T'),(444,'60x102x26','2016-10-11','T'),(445,'62x98x22','2016-10-11','T'),(446,'63x102x21','2016-10-11','T'),(447,'63x108x27','2016-10-11','T'),(448,'62x92x22','2016-10-11','T'),(449,'63x113x31','2016-10-11','T'),(451,'63x113x33','2016-10-11','T'),(452,'63x122x40','2016-10-11','T'),(454,'63x130x31','2016-10-11','T'),(455,'60x110x40','2016-10-11','T'),(456,'22x67x38','2016-10-11','T'),(457,'12x67x38','2016-10-11','T'),(458,'23x52x23','2016-10-11','T'),(459,'25x57x25','2016-10-11','T'),(460,'23x55x23','2016-10-11','T'),(461,'24x55x23','2016-10-11','T'),(462,'24x57x25','2016-10-11','T'),(463,'65x102x22','2016-10-11','T'),(464,'65x120x26','2016-10-11','T'),(465,'65x120x34','2016-10-11','T'),(466,'65x120x33','2016-10-11','T'),(467,'65x140x37','2016-10-11','T'),(468,'65x140x36','2016-10-11','T'),(471,'65.5x108x26','2016-10-11','T'),(472,'66.5x113x34','2016-10-11','T'),(474,'66x122x41','2016-10-11','T'),(475,'68x136x43','2016-10-11','T'),(476,'70x117x27','2016-10-11','T'),(477,'70x110x27','2016-10-11','T'),(478,'70x150x39','2016-10-11','T'),(479,'70x125x27','2016-10-11','T'),(480,'73x118x31','2016-10-11','T'),(481,'73x127x37','2016-10-11','T'),(482,'75x130x34','2016-10-11','T'),(483,'75x130x35','2016-10-11','T'),(484,'70x130x42','2016-10-11','T'),(485,'80x130x36','2016-10-11','T'),(486,'80x140x38','2016-10-11','T'),(487,'82x133x34','2016-10-11','T'),(488,'82.5x140x37','2016-10-11','T'),(489,'85x150x40','2016-10-11','T'),(490,'86x136x30','2016-10-11','T'),(491,'90x160x43','2016-10-11','T'),(492,'95x170x48','2016-10-11','T'),(493,'95x152x90','2016-10-11','T'),(494,'108x165x38','2016-10-11','T'),(495,'16x40','2016-10-11','T'),(496,'20x57','2016-10-11','T'),(497,'22x58','2016-10-11','T'),(498,'23x30','2016-10-11','T'),(499,'24x61','2016-10-11','T'),(500,'24x72','2016-10-11','T'),(501,'25x65','2016-10-11','T'),(502,'25x76','2016-10-11','T'),(503,'26 1/2x71','2016-10-11','T'),(504,'26x68','2016-10-11','T'),(505,'26x80','2016-10-11','T'),(506,'27x92','2016-10-11','T'),(507,'27x62','2016-10-11','T'),(508,'27x82','2016-10-11','T'),(510,'28 1/2x95','2016-10-11','T'),(511,'29x22','2016-10-11','T'),(512,'29x77','2016-10-11','T'),(513,'29x79','2016-10-11','T'),(514,'29x80','2016-10-11','T'),(515,'29x97','2016-10-11','T'),(516,'30x78','2016-10-11','T'),(517,'30x84 1/2','2016-10-11','T'),(518,'30x106','2016-10-11','T'),(519,'30x86','2016-10-11','T'),(520,'32x92','2016-10-11','T'),(521,'32x102','2016-10-11','T'),(522,'29x96','2016-10-11','T'),(523,'35x95','2016-10-11','T'),(524,'33x104','2016-10-11','T'),(525,'34x29','2016-10-11','T'),(526,'35x105','2016-10-11','T'),(527,'35x108','2016-10-11','T'),(528,'35x126','2016-10-11','T'),(529,'35x99','2016-10-11','T'),(530,'35x127','2016-10-11','T'),(531,'35.5x120','2016-10-11','T'),(533,'36x115.5','2016-10-11','T'),(534,'40x116','2016-10-11','T'),(535,'41x126','2016-10-11','T'),(536,'42x115','2016-10-11','T'),(537,'47x148','2016-10-11','T'),(538,'48x174','2016-10-11','T'),(539,'49x177','2016-10-11','T'),(540,'49x165','2016-10-11','T'),(541,'49x167','2016-10-11','T'),(542,'49x194','2016-10-11','T'),(543,'50x165','2016-10-11','T'),(544,'49x154','2016-10-11','T'),(545,'15x32x7.5','2016-10-11','T'),(546,'17x35x8.5','2016-10-11','T'),(547,'18x30x7','2016-10-11','T'),(548,'18.5x32x7x8','2016-10-11','T'),(549,'19x32x8','2016-10-11','T'),(550,'19x38x7','2016-10-11','T'),(551,'20x32x5','2016-10-11','T'),(552,'20x38x7','2016-10-11','T'),(553,'22x35x8','2016-10-11','T'),(554,'25x35x6','2016-10-11','T'),(555,'25x38x7','2016-10-11','T'),(556,'25x40x8','2016-10-11','T'),(557,'25x45x8','2016-10-11','T'),(558,'26x48x7','2016-10-11','T'),(559,'27x43x9','2016-10-11','T'),(560,'27x45x9','2016-10-11','T'),(561,'28x44x6','2016-10-11','T'),(562,'30x38x5','2016-10-11','T'),(563,'34x45x8','2016-10-11','T'),(564,'30x46x7','2016-10-11','T'),(565,'32x48x8','2016-10-11','T'),(566,'32x52x8','2016-10-11','T'),(567,'32.5x46x6','2016-10-11','T'),(568,'34x54x9x15.5','2016-10-11','T'),(569,'34x55x10','2016-10-11','T'),(570,'34x63x9x15.5','2016-10-11','T'),(571,'35x49x6','2016-10-11','T'),(572,'35x49.2x12.5','2016-10-11','T'),(573,'38x50x8','2016-10-11','T'),(575,'38x58x8','2016-10-11','T'),(576,'38x58x11','2016-10-11','T'),(577,'38x63x10x16.5','2016-10-11','T'),(578,'38x65x12x19','2016-10-11','T'),(579,'38x74xx11.5','2016-10-11','T'),(580,'40x53/72x12/30','2016-10-11','T'),(582,'38x74x11.5','2016-10-11','T'),(583,'40x55x9','2016-10-11','T'),(584,'40x56x7','2016-10-11','T'),(585,'40x58x11','2016-10-11','T'),(586,'40x62x11','2016-10-11','T'),(589,'40x64x12x17.5','2016-10-11','T'),(590,'40x75x12','2016-10-11','T'),(591,'41x53x7','2016-10-11','T'),(592,'41x55x6','2016-10-11','T'),(593,'42x54x8','2016-10-11','T'),(594,'42x55x7','2016-10-11','T'),(595,'42x60x9','2016-10-11','T'),(596,'45x53x6.5x8.5','2016-10-11','T'),(597,'45x62x9','2016-10-11','T'),(598,'45x65x10','2016-10-11','T'),(599,'45x68x12','2016-10-11','T'),(600,'45x75x12','2016-10-11','T'),(601,'45x78x12x25.5','2016-10-11','T'),(602,'46x94.5x8','2016-10-11','T'),(603,'46x101.8x11x16','2016-10-11','T'),(604,'47x56x7','2016-10-11','T'),(605,'48x60x9','2016-10-11','T'),(606,'48x62x8','2016-10-11','T'),(607,'48x62x9','2016-10-11','T'),(608,'48x62x7','2016-10-11','T'),(609,'48x62x9x24','2016-10-11','T'),(610,'48x64x13','2016-10-11','T'),(611,'48x65x9','2016-10-11','T'),(612,'49x100x8','2016-10-11','T'),(613,'49x100x8x9.5','2016-10-11','T'),(614,'50x68x9','2016-10-11','T'),(618,'50x70x9','2016-10-11','T'),(619,'50x72x12','2016-10-11','T'),(620,'52x84x10','2016-10-11','T'),(621,'52x65x9','2016-10-11','T'),(622,'52x66x7.5x12','2016-10-11','T'),(623,'52x73x10','2016-10-11','T'),(624,'52x84x14','2016-10-11','T'),(625,'55x72x13.5','2016-10-11','T'),(626,'55x78x12','2016-10-11','T'),(627,'56x73x6.5x14','2016-10-11','T'),(629,'56x73x8x12.5','2016-10-11','T'),(630,'56x122x8x10.5','2016-10-11','T'),(631,'57x124x13','2016-10-11','T'),(632,'58x75x9','2016-10-11','T'),(633,'58x103x11x19','2016-10-11','T'),(634,'59x82x12','2016-10-11','T'),(635,'60x75x9x15','2016-10-11','T'),(636,'60x77x12','2016-10-11','T'),(637,'60x78x9','2016-10-11','T'),(638,'60x82x12','2016-10-11','T'),(639,'60x85x12','2016-10-11','T'),(640,'60x103x12x20','2016-10-11','T'),(641,'62x82x12','2016-10-11','T'),(642,'62x85x10','2016-10-11','T'),(643,'64x132.5x13','2016-10-11','T'),(644,'65x84x9','2016-10-11','T'),(645,'65x88x8.5x18','2016-10-11','T'),(646,'65x88x13','2016-10-11','T'),(647,'65x90x11','2016-10-11','T'),(648,'65x90x15','2016-10-11','T'),(649,'65x95x14x22','2016-10-11','T'),(650,'65x114x10x2.5.5','2016-10-11','T'),(651,'66x85x8','2016-10-11','T'),(652,'66x134x16','2016-10-11','T'),(653,'68x90x10','2016-10-11','T'),(654,'68x90x12','2016-10-11','T'),(655,'68x124x11.5x27','2016-10-11','T'),(656,'69x97x122x12x30','2016-10-11','T'),(657,'69x97x142x112x36','2016-10-11','T'),(658,'70x88x12','2016-10-11','T'),(659,'70x90x10','2016-10-11','T'),(660,'70x92x8.5','2016-10-11','T'),(661,'70x95x12','2016-10-11','T'),(662,'70x112x14x20','2016-10-11','T'),(663,'70x112x10x18','2016-10-11','T'),(664,'70x115x14x19','2016-10-11','T'),(665,'72x94x10','2016-10-11','T'),(666,'72x96x9','2016-10-11','T'),(667,'73x90x8','2016-10-11','T'),(668,'74x100x10','2016-10-11','T'),(669,'75x100x13','2016-10-11','T'),(670,'75x112x10x17.5','2016-10-11','T'),(671,'76x102x9x5x18.5','2016-10-11','T'),(672,'78.5x105x163x16','2016-10-11','T'),(673,'79.5x98x113x12x22','2016-10-11','T'),(674,'80x100x8.5','2016-10-11','T'),(675,'81x121x12x19','2016-10-11','T'),(676,'80x100x12','2016-10-11','T'),(677,'80x101x10.5','2016-10-11','T'),(678,'80x105x13','2016-10-11','T'),(679,'80x113x12x22','2016-10-11','T'),(680,'80x113x24','2016-10-11','T'),(681,'80x124x10x26','2016-10-11','T'),(682,'80x127x13','2016-10-11','T'),(683,'85x128x11x21','2016-10-11','T'),(684,'86x127xx16x24','2016-10-11','T'),(685,'90x110x13','2016-10-11','T'),(686,'93x156x8','2016-10-11','T'),(687,'95x120x13','2016-10-11','T'),(688,'95x132x12x21.5','2016-10-11','T'),(689,'100x114x7','2016-10-11','T'),(690,'100x114x12','2016-10-11','T'),(691,'100x124x14.5','2016-10-11','T'),(692,'100x135x10','2016-10-11','T'),(693,'100x135x14','2016-10-11','T'),(694,'100x135x15','2016-10-11','T'),(695,'100x145x14.5x26','2016-10-11','T'),(696,'101x114x10','2016-10-11','T'),(697,'102x116x14','2016-10-11','T'),(698,'105x135x14','2016-10-11','T'),(699,'106x123x11','2016-10-11','T'),(700,'106x126x12','2016-10-11','T'),(701,'110x135x9','2016-10-11','T'),(702,'116x135x9','2016-10-11','T'),(703,'116x132x12','2016-10-11','T'),(704,'117.5x174x15x28','2016-10-11','T'),(705,'120x140x10.5','2016-10-11','T'),(706,'120x140x12','2016-10-11','T'),(707,'120x150x14','2016-10-11','T'),(709,'120x150x15','2016-10-11','T'),(710,'120x153x15','2016-10-11','T'),(711,'123x184x15x28','2016-10-11','T'),(712,'124x146x14','2016-10-11','T'),(713,'125x150x14','2016-10-11','T'),(714,'127x146x10','2016-10-11','T'),(715,'127x147x11','2016-10-11','T'),(716,'129x150x12','2016-10-11','T'),(717,'130x146x14','2016-10-11','T'),(718,'130x160x14','2016-10-11','T'),(719,'138x152x12','2016-10-11','T'),(720,'140x170x14','2016-10-11','T'),(721,'145x164x64','2016-10-11','T'),(723,'145x175x14','2016-10-11','T'),(725,'154x172x14','2016-10-11','T'),(726,'154x175x13','2016-10-11','T'),(727,'18x35x10','2016-10-11','T'),(728,'20x40x7','2016-10-11','T'),(729,'39x76.5x10.5/14','2016-10-11','T'),(730,'41x59x10x15','2016-10-11','T'),(731,'43x47x9','2016-10-11','T'),(732,'57x70x7','2016-10-11','T'),(733,'60x125x27.5','2016-10-11','T'),(734,'61x99x12','2016-10-11','T'),(735,'64x116x13','2016-10-11','T'),(736,'65x116x19','2016-10-11','T'),(737,'68x90x13','2016-10-11','T'),(738,'69x95x12','2016-10-11','T'),(739,'74x126x13x32','2016-10-11','T'),(740,'75x146x121','2016-10-11','T'),(741,'76x126','2016-10-11','T'),(742,'75x120x15','2016-10-11','T'),(743,'81x120.5x13','2016-10-11','T'),(744,'83x108x22','2016-10-11','T'),(745,'88x123x24','2016-10-11','T'),(746,'90x114x12','2016-10-11','T'),(747,'94x114x12','2016-10-11','T'),(748,'98x145x22','2016-10-11','T'),(749,'98x140x22','2016-10-11','T'),(751,'97x145x23','2016-10-11','T'),(752,'110x159x15','2016-10-11','T'),(754,'110x146x24','2016-10-11','T'),(755,'114x132x24','2016-10-11','T'),(756,'114x149x25','2016-10-11','T'),(757,'120x160x27','2016-10-11','T'),(759,'28x180','2016-10-11','T'),(761,'28x182','2016-10-11','T'),(762,'25x152','2016-10-11','T'),(763,'28x160','2016-10-11','T'),(765,'30x188','2016-10-11','T'),(766,'30x175','2016-10-11','T'),(767,'45x218','2016-10-11','T'),(768,'35x196','2016-10-11','T'),(769,'25x165','2016-10-11','T'),(771,'22x19x21','2016-10-11','T'),(772,'26x28','2016-10-11','T'),(773,'20x19x21','2016-10-11','T'),(777,'5x10','2016-10-11','T'),(778,'5x15','2016-10-11','T'),(779,'5x20','2016-10-11','T'),(780,'5x25','2016-10-11','T'),(781,'5x30','2016-10-11','T'),(782,'5x35','2016-10-11','T'),(783,'5x40','2016-10-11','T'),(784,'5x45','2016-10-11','T'),(785,'5x50','2016-10-11','T'),(786,'5x55','2016-10-11','T'),(787,'5x60','2016-10-11','T'),(788,'5x65','2016-10-11','T'),(789,'5x70','2016-10-11','T'),(790,'5x75','2016-10-11','T'),(791,'5x80','2016-10-11','T'),(792,'5x85','2016-10-11','T'),(793,'5x90','2016-10-11','T'),(794,'5x95','2016-10-11','T'),(795,'5x100','2016-10-11','T'),(796,'5x105','2016-10-11','T'),(797,'5x110','2016-10-11','T'),(798,'5x115','2016-10-11','T'),(799,'5x120','2016-10-11','T'),(800,'5x125','2016-10-11','T'),(801,'5x130','2016-10-11','T'),(802,'5x135','2016-10-11','T'),(804,'5x140','2016-10-11','T'),(805,'6x10','2016-10-11','T'),(806,'6x15','2016-10-11','T'),(807,'6x20','2016-10-11','T'),(808,'6x25','2016-10-11','T'),(809,'6x30','2016-10-11','T'),(810,'6x35','2016-10-11','T'),(811,'6x40','2016-10-11','T'),(812,'6x45','2016-10-11','T'),(813,'6x50','2016-10-11','T'),(814,'6x55','2016-10-11','T'),(815,'6x60','2016-10-11','T'),(816,'6x65','2016-10-11','T'),(817,'6x70','2016-10-11','T'),(818,'6x75','2016-10-11','T'),(819,'6x80','2016-10-11','T'),(820,'6x85','2016-10-11','T'),(821,'6x90','2016-10-11','T'),(822,'6x95','2016-10-11','T'),(823,'6x100','2016-10-11','T'),(824,'6x105','2016-10-11','T'),(825,'6x110','2016-10-11','T'),(826,'6x115','2016-10-11','T'),(827,'6x120','2016-10-11','T'),(828,'6x125','2016-10-11','T'),(829,'6x130','2016-10-11','T'),(830,'6x135','2016-10-11','T'),(831,'6x140','2016-10-11','T'),(832,'8x10','2016-10-11','T'),(833,'8x15','2016-10-11','T'),(834,'8x20','2016-10-11','T'),(835,'8x25','2016-10-11','T'),(836,'8x30','2016-10-11','T'),(837,'8x35','2016-10-11','T'),(838,'8x40','2016-10-11','T'),(839,'8x45','2016-10-11','T'),(840,'8x50','2016-10-11','T'),(841,'8x55','2016-10-11','T'),(842,'8x60','2016-10-11','T'),(843,'8x65','2016-10-11','T'),(844,'8x70','2016-10-11','T'),(845,'8x75','2016-10-11','T'),(846,'8x80','2016-10-11','T'),(847,'8x85','2016-10-11','T'),(848,'8x90','2016-10-11','T'),(849,'8x95','2016-10-11','T'),(850,'8x100','2016-10-11','T'),(851,'8x105','2016-10-11','T'),(852,'8x110','2016-10-11','T'),(853,'8x115','2016-10-11','T'),(854,'8x120','2016-10-11','T'),(855,'8x125','2016-10-11','T'),(856,'8x130','2016-10-11','T'),(857,'8x135','2016-10-11','T'),(858,'8x140','2016-10-11','T'),(859,'10x10','2016-10-11','T'),(860,'10x15','2016-10-11','T'),(861,'10x20','2016-10-11','T'),(862,'10x25','2016-10-11','T'),(863,'10x30','2016-10-11','T'),(864,'10x35','2016-10-11','T'),(865,'10x40','2016-10-11','T'),(866,'10x45','2016-10-11','T'),(867,'10x50','2016-10-11','T'),(868,'10x55','2016-10-11','T'),(869,'10x60','2016-10-11','T'),(870,'10x65','2016-10-11','T'),(871,'10x70','2016-10-11','T'),(872,'10x75','2016-10-11','T'),(873,'10x80','2016-10-11','T'),(874,'10x85','2016-10-11','T'),(875,'10x90','2016-10-11','T'),(876,'10x95','2016-10-11','T'),(877,'10x100','2016-10-11','T'),(878,'10x105','2016-10-11','T'),(879,'10x110','2016-10-11','T'),(880,'10x115','2016-10-11','T'),(881,'10x120','2016-10-11','T'),(882,'10x125','2016-10-11','T'),(883,'10x130','2016-10-11','T'),(884,'10x135','2016-10-11','T'),(885,'10x140','2016-10-11','T'),(886,'12x10','2016-10-11','T'),(887,'12x15','2016-10-11','T'),(888,'12x20','2016-10-11','T'),(889,'12x25','2016-10-11','T'),(890,'12x30','2016-10-11','T'),(891,'12x35','2016-10-11','T'),(892,'12x40','2016-10-11','T'),(893,'12x45','2016-10-11','T'),(894,'12x50','2016-10-11','T'),(895,'12x55','2016-10-11','T'),(896,'12x60','2016-10-11','T'),(897,'12x65','2016-10-11','T'),(898,'12x70','2016-10-11','T'),(899,'12x75','2016-10-11','T'),(900,'12x80','2016-10-11','T'),(901,'12x85','2016-10-11','T'),(902,'12x90','2016-10-11','T'),(903,'12x95','2016-10-11','T'),(904,'12x100','2016-10-11','T'),(905,'12x105','2016-10-11','T'),(906,'12x110','2016-10-11','T'),(907,'12x115','2016-10-11','T'),(908,'12x120','2016-10-11','T'),(909,'12x125','2016-10-11','T'),(910,'12x130','2016-10-11','T'),(911,'12x135','2016-10-11','T'),(912,'12x140','2016-10-11','T'),(913,'14x10','2016-10-11','T'),(914,'14x15','2016-10-11','T'),(915,'14x20','2016-10-11','T'),(916,'14x25','2016-10-11','T'),(917,'14x30','2016-10-11','T'),(918,'14x35','2016-10-11','T'),(919,'14x40','2016-10-11','T'),(920,'14x45','2016-10-11','T'),(921,'14x50','2016-10-11','T'),(922,'14x55','2016-10-11','T'),(923,'14x60','2016-10-11','T'),(924,'14x65','2016-10-11','T'),(925,'14x70','2016-10-11','T'),(926,'14x75','2016-10-11','T'),(927,'14x80','2016-10-11','T'),(928,'14x85','2016-10-11','T'),(929,'14x90','2016-10-11','T'),(930,'14x95','2016-10-11','T'),(931,'14x100','2016-10-11','T'),(932,'14x105','2016-10-11','T'),(933,'14x110','2016-10-11','T'),(934,'14x115','2016-10-11','T'),(935,'14x120','2016-10-11','T'),(936,'14x125','2016-10-11','T'),(937,'14x130','2016-10-11','T'),(938,'14x135','2016-10-11','T'),(939,'14x140','2016-10-11','T'),(940,'16x10','2016-10-11','T'),(941,'16x15','2016-10-11','T'),(942,'16x20','2016-10-11','T'),(943,'16x25','2016-10-11','T'),(944,'16x30','2016-10-11','T'),(945,'16x35','2016-10-11','T'),(947,'16x45','2016-10-11','T'),(948,'16x50','2016-10-11','T'),(949,'16x55','2016-10-11','T'),(950,'16x60','2016-10-11','T'),(951,'16x65','2016-10-11','T'),(952,'16x70','2016-10-11','T'),(953,'16x75','2016-10-11','T'),(954,'16x80','2016-10-11','T'),(955,'16x85','2016-10-11','T'),(956,'16x90','2016-10-11','T'),(957,'16x95','2016-10-11','T'),(958,'16x100','2016-10-11','T'),(959,'16x105','2016-10-11','T'),(960,'16x110','2016-10-11','T'),(961,'16x115','2016-10-11','T'),(962,'16x120','2016-10-11','T'),(963,'16x125','2016-10-11','T'),(964,'16x130','2016-10-11','T'),(965,'16x135','2016-10-11','T'),(966,'16x140','2016-10-11','T'),(967,'1/4x1/2','2016-10-11','T'),(968,'1/4x3/4','2016-10-11','T'),(969,'1/4x1','2016-10-11','T'),(970,'1/4x1 1/2','2016-10-11','T'),(971,'1/4x2','2016-10-11','T'),(972,'1/4x2 1/2','2016-10-11','T'),(973,'1/4x3','2016-10-11','T'),(974,'1/4x3 1/2','2016-10-11','T'),(975,'1/4x4','2016-10-11','T'),(976,'1/4x4 1/2','2016-10-11','T'),(977,'1/4x5','2016-10-11','T'),(978,'1/4x5 1/2','2016-10-11','T'),(979,'1/4x6','2016-10-11','T'),(980,'1/4x6 1/2','2016-10-11','T'),(981,'5/16x1/2','2016-10-11','T'),(982,'5/16x3/4','2016-10-11','T'),(983,'5/16x1','2016-10-11','T'),(984,'5/16x1 1/2','2016-10-11','T'),(985,'5/16x2','2016-10-11','T'),(986,'5/16x2 1/2','2016-10-11','T'),(987,'5/16x3','2016-10-11','T'),(988,'5/16x3 1/2','2016-10-11','T'),(989,'5/16x4','2016-10-11','T'),(990,'5/16x4 1/2','2016-10-11','T'),(991,'5/16x5','2016-10-11','T'),(992,'5/16x5 1/2','2016-10-11','T'),(993,'5/16x6','2016-10-11','T'),(994,'5/16x6 1/2','2016-10-11','T'),(995,'3/8x1/2','2016-10-11','T'),(996,'3/8x3/4','2016-10-11','T'),(997,'3/8x1','2016-10-11','T'),(998,'3/8x1 1/2','2016-10-11','T'),(999,'3/8x2','2016-10-11','T'),(1000,'3/8x2 1/2','2016-10-11','T'),(1001,'3/8x3','2016-10-11','T'),(1002,'3/8x3 1/2','2016-10-11','T'),(1003,'3/8x4','2016-10-11','T'),(1004,'3/8x4 1/2','2016-10-11','T'),(1005,'3/8x5','2016-10-11','T'),(1006,'3/8x5 1/2','2016-10-11','T'),(1007,'3/8x6','2016-10-11','T'),(1008,'3/8x6 1/2','2016-10-11','T'),(1009,'7/16x1/2','2016-10-11','T'),(1010,'7/16x3/4','2016-10-11','T'),(1011,'7/16x1','2016-10-11','T'),(1012,'7/16x1 1/2','2016-10-11','T'),(1013,'7/16x2','2016-10-11','T'),(1014,'7/16x2 1/2','2016-10-11','T'),(1015,'7/16x3','2016-10-11','T'),(1016,'7/16x3 1/2','2016-10-11','T'),(1017,'7/16x4','2016-10-11','T'),(1018,'7/16x4 1/2','2016-10-11','T'),(1019,'7/16x5','2016-10-11','T'),(1020,'7/16x5 1/2','2016-10-11','T'),(1021,'7/16x6','2016-10-11','T'),(1022,'7/16x6 1/2','2016-10-11','T'),(1023,'1/2x12','2016-10-11','T'),(1024,'1/2x3/4','2016-10-11','T'),(1025,'1/2x1','2016-10-11','T'),(1026,'1/2x1 1/2','2016-10-11','T'),(1027,'1/2x2','2016-10-11','T'),(1028,'1/2x2 1/2','2016-10-11','T'),(1029,'1/2x3','2016-10-11','T'),(1030,'1/2x3 1/2','2016-10-11','T'),(1031,'1/2x4','2016-10-11','T'),(1033,'1/2x4 1/2','2016-10-11','T'),(1034,'1/2x5','2016-10-11','T'),(1035,'1/2x5 1/2','2016-10-11','T'),(1036,'1/2x6','2016-10-11','T'),(1037,'1/2x6 1/2','2016-10-11','T'),(1038,'9/16x1/2','2016-10-11','T'),(1039,'9/16x3/4','2016-10-11','T'),(1040,'9/16x1','2016-10-11','T'),(1041,'9/16x1 1/2','2016-10-11','T'),(1042,'9/16x2','2016-10-11','T'),(1043,'9/16x2 1/2','2016-10-11','T'),(1044,'9/16x3','2016-10-11','T'),(1045,'9/16x3 1/2','2016-10-11','T'),(1046,'9/16x4','2016-10-11','T'),(1047,'9/16x4 1/2','2016-10-11','T'),(1048,'9/16x5','2016-10-11','T'),(1049,'9/16x5 1/2','2016-10-11','T'),(1050,'9/16x6','2016-10-11','T'),(1051,'9/16x6 1/2','2016-10-11','T'),(1052,'5/8x1/2','2016-10-11','T'),(1053,'5/8x3/4','2016-10-11','T'),(1054,'5/8x1','2016-10-11','T'),(1055,'5/8x1 1/2','2016-10-11','T'),(1056,'5/8x2','2016-10-11','T'),(1058,'5/8x2 1/2','2016-10-11','T'),(1059,'5/8x3','2016-10-11','T'),(1060,'5/8x3 1/2','2016-10-11','T'),(1061,'5/8x4','2016-10-11','T'),(1062,'5/8x4 1/2','2016-10-11','T'),(1063,'5/8x5','2016-10-11','T'),(1064,'5/8x5 1/2','2016-10-11','T'),(1065,'5/8x6','2016-10-11','T'),(1066,'5/8x6 1/2','2016-10-11','T'),(1067,'3/4x1/2','2016-10-11','T'),(1068,'3/4x3/4','2016-10-11','T'),(1069,'3/4x1','2016-10-11','T'),(1070,'3/4x1 1/2','2016-10-11','T'),(1071,'3/4x2','2016-10-11','T'),(1072,'3/4x2 /12','2016-10-11','T'),(1073,'3/4x3','2016-10-11','T'),(1074,'3/4x3 1/2','2016-10-11','T'),(1075,'3/4x4','2016-10-11','T'),(1076,'3/4x4 1/2','2016-10-11','T'),(1077,'3/4x5','2016-10-11','T'),(1078,'3/4x5 1/2','2016-10-11','T'),(1079,'3/4x6','2016-10-11','T'),(1080,'3/4x6 1/2','2016-10-11','T'),(1081,'7/8x1/2','2016-10-11','T'),(1082,'7/8x3/4','2016-10-11','T'),(1083,'7/8x1','2016-10-11','T'),(1084,'7/8x1 1/2','2016-10-11','T'),(1085,'7/8x2','2016-10-11','T'),(1086,'7/8x2 1/2','2016-10-11','T'),(1087,'7/8x3','2016-10-11','T'),(1088,'7/8x3 1/2','2016-10-11','T'),(1089,'7/8x4','2016-10-11','T'),(1090,'7/8x4 1/2','2016-10-11','T'),(1091,'7/8x5','2016-10-11','T'),(1092,'7/8x5 1/2','2016-10-11','T'),(1093,'7/8x6','2016-10-11','T'),(1094,'7/8x6 1/2','2016-10-11','T'),(1095,'1x1/2','2016-10-11','T'),(1096,'1x/34','2016-10-11','T'),(1097,'1x1','2016-10-11','T'),(1098,'1x1 1/2','2016-10-11','T'),(1099,'1x2','2016-10-11','T'),(1101,'1x2 1/2','2016-10-11','T'),(1102,'1x3','2016-10-11','T'),(1104,'1x3 1/2','2016-10-11','T'),(1105,'1x4','2016-10-11','T'),(1106,'1x4 1/2','2016-10-11','T'),(1107,'1x5','2016-10-11','T'),(1108,'1x5 1/2','2016-10-11','T'),(1109,'1x6','2016-10-11','T'),(1110,'1x6 1/2','2016-10-11','T'),(1111,'23cm','2016-10-12','T'),(1112,'24cm','2016-10-12','T'),(1113,'32.5cm','2016-10-12','T'),(1114,'34cm','2016-10-12','T'),(1115,'35cm','2016-10-12','T'),(1116,'37cm','2016-10-12','T'),(1117,'39cm','2016-10-12','T'),(1118,'44.5cm','2016-10-12','T'),(1119,'45cm','2016-10-12','T'),(1121,'48cm','2016-10-12','T'),(1122,'50cm','2016-10-12','T'),(1124,'51cm','2016-10-12','T'),(1125,'52cm','2016-10-12','T'),(1126,'54cm','2016-10-12','T'),(1127,'55cm','2016-10-12','T'),(1128,'56cm','2016-10-12','T'),(1129,'57cm','2016-10-12','T'),(1130,'59cm','2016-10-12','T'),(1131,'67cm','2016-10-12','T'),(1132,'60cm','2016-10-12','T'),(1133,'65cm','2016-10-12','T'),(1134,'275mm','2016-10-12','T'),(1135,'300mm','2016-10-12','T'),(1136,'250mm','2016-10-12','T'),(1138,'14x275mm','2016-10-12','T'),(1139,'24x300mm','2016-10-12','T'),(1140,'21x300mm','2016-10-12','T'),(1141,'24x250mm','2016-10-12','T'),(1142,'21x275mm','2016-10-12','T'),(1143,'10x335mm','2016-10-12','T'),(1144,'12x325mm','2016-10-12','T'),(1145,'235mm','2016-10-12','T'),(1146,'236mm','2016-10-12','T'),(1148,'225mm','2016-10-12','T'),(1149,'212mm','2016-10-12','T'),(1150,'200mm','2016-10-12','T'),(1151,'21x236m','2016-10-12','T'),(1158,'1/2x8','2016-10-12','T'),(1159,'1/2x10','2016-10-12','T'),(1164,'12x12','2016-10-12','T'),(1167,'7/16x10','2016-10-12','T'),(1168,'7/16x8','2016-10-12','T'),(1169,'5/8x12','2016-10-12','T'),(1170,'5/8x10','2016-10-12','T'),(1171,'9/16x10','2016-10-12','T'),(1172,'9/16x12','2016-10-12','T'),(1175,'3/8x8','2016-10-12','T'),(1178,'1/2','2016-10-12','T'),(1179,'5/8','2016-10-12','T'),(1180,'1\"','2016-10-12','T'),(1181,'3/16','2016-10-12','T'),(1182,'3/4','2016-10-12','T'),(1183,'3/8','2016-10-12','T'),(1184,'5/16','2016-10-12','T'),(1185,'1/4','2016-10-12','T'),(1189,'1/8','2016-10-12','T'),(1191,'7/16','2016-10-12','T'),(1197,'20x19x2','2016-10-12','T'),(1198,'25x52','2016-10-12','T'),(1199,'10x20x6','2016-10-17','T');
/*!40000 ALTER TABLE `unidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `Apellido` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `nombreusuario` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `contrasenia` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` char(1) CHARACTER SET latin1 DEFAULT 'T',
  `puesto` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `nombreusuario_UNIQUE` (`nombreusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (13,'Administrador','','admin1','admin1','2016-10-02','T','Administrador'),(14,'Bernabe','','BernabeQ','Q11061982','2016-10-02','T','Administrador');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xcobrarclientes`
--

DROP TABLE IF EXISTS `xcobrarclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xcobrarclientes` (
  `idxcobrarclientes` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `monto` float NOT NULL,
  `tipopago` varchar(20) CHARACTER SET utf8 NOT NULL,
  `salida_idsalida` int(11) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  `observacion` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `nsaldoventa` float NOT NULL DEFAULT '0',
  `nsaldototal` float NOT NULL DEFAULT '0',
  `saldointeres` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`idxcobrarclientes`,`salida_idsalida`,`usuario_idusuario`),
  KEY `fk_xcobrarclientes_salida1_idx` (`salida_idsalida`),
  KEY `fk_xcobrarclientes_usuario1_idx` (`usuario_idusuario`),
  CONSTRAINT `fk_xcobrarclientes_salida1` FOREIGN KEY (`salida_idsalida`) REFERENCES `salida` (`idsalida`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_xcobrarclientes_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xcobrarclientes`
--

LOCK TABLES `xcobrarclientes` WRITE;
/*!40000 ALTER TABLE `xcobrarclientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `xcobrarclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xpagardetalle`
--

DROP TABLE IF EXISTS `xpagardetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xpagardetalle` (
  `idxpagardetalle` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `monto` float NOT NULL,
  `compra_idcompra` int(11) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  `observacion` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`idxpagardetalle`,`compra_idcompra`,`usuario_idusuario`),
  KEY `fk_xpagardetalle_compra1_idx` (`compra_idcompra`),
  KEY `fk_xpagardetalle_usuario1_idx` (`usuario_idusuario`),
  CONSTRAINT `fk_xpagardetalle_compra1` FOREIGN KEY (`compra_idcompra`) REFERENCES `compra` (`idcompra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_xpagardetalle_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xpagardetalle`
--

LOCK TABLES `xpagardetalle` WRITE;
/*!40000 ALTER TABLE `xpagardetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `xpagardetalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-02  9:31:43
