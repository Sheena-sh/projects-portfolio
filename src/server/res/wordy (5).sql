-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: wordy_new
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `leaderboard`
--

DROP TABLE IF EXISTS `leaderboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leaderboard` (
  `iduser` int NOT NULL,
  `username` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `wins` int NOT NULL,
  KEY `iduser_idx` (`iduser`),
  KEY `username_idx` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaderboard`
--

LOCK TABLES `leaderboard` WRITE;
/*!40000 ALTER TABLE `leaderboard` DISABLE KEYS */;
INSERT INTO `leaderboard` VALUES (2,'mik',12),(1,'bon',12),(3,'san',4),(4,'ron',5),(5,'she',7),(6,'kai',14);
/*!40000 ALTER TABLE `leaderboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `longestwords`
--

DROP TABLE IF EXISTS `longestwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `longestwords` (
  `words` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `length` int DEFAULT NULL,
  KEY `username_idx` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `longestwords`
--

LOCK TABLES `longestwords` WRITE;
/*!40000 ALTER TABLE `longestwords` DISABLE KEYS */;
INSERT INTO `longestwords` VALUES ('septuagenarians','san',15),('proportioned','ron',12),('militaries','kai',10),('cobblestones','she',12),('fellowships','bon',11),('abandoning','mik',10),('ached','1',NULL),('abhor','1',NULL),('ached','1',NULL),('begin','1',NULL),('begum','1',NULL),('aloes','1',NULL),('aeons','1',NULL),('budge','1',NULL),('begum','1',NULL),('abdomen','kai',NULL),('abode','kai',NULL),('belch','kai',NULL),('admen','1',5),('adorn','2',5),('admin','1',5),('ached','2',5),('aloud','2',5),('awful','2',5),('birch','2',5),('bluish','2',6),('censor','1',6),('acumen','1',6),('album','2',5),('abdomen','1',7),('abolish','1',7),('abseil','1',6);
/*!40000 ALTER TABLE `longestwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `roomNumber` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `playerCount` int NOT NULL,
  PRIMARY KEY (`roomNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES ('83065',0),('88708',2);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idUsers` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `loggedIn` tinyint NOT NULL DEFAULT '0',
  `isInGame` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`idUsers`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mik','kita',0,0),(2,'san','tea',0,0),(3,'bon','nie',0,0),(4,'ron','nor',0,0),(5,'she','ena',0,0),(6,'kai','zer',0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-30  5:21:00
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sample_imported
-- ------------------------------------------------------
-- Server version	8.0.31

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-30  5:21:00
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: imported
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminID` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`adminID`),
  UNIQUE KEY `adminID_UNIQUE` (`adminID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('AD01','Josephine Bracken','choochoo','ad01@admin.edu'),('AD02','Jocelyn Marquez','hoothoot','ad02@admin.edu');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` char(35) NOT NULL DEFAULT '',
  `CountryCode` char(3) NOT NULL DEFAULT '',
  `District` char(20) NOT NULL DEFAULT '',
  `Population` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CountryCode` (`CountryCode`),
  KEY `fkCC` (`CountryCode`),
  CONSTRAINT `fkCC` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4089 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Kabul','AFG','Kabul',3071400),(2,'Kandahar','AFG','Kandahar',512000),(3,'Herat','AFG','Herat',397456),(4,'Mazar-e-Sharif','AFG','Balkh',375000),(5,'Amsterdam','NLD','North Holland',808032),(6,'Rotterdam','NLD','South Holland',616042),(7,'Hague','NLD','South Holland',508634),(8,'Utrecht','NLD','Utrecht',326516),(9,'Eindhoven','NLD','North Brabant',220836),(10,'Tilburg','NLD','North Brabant',209788),(11,'Groningen','NLD','Groningen',198123),(12,'Breda','NLD','North Brabant',180420),(13,'Apeldoorn','NLD','Gelderland',157510),(14,'Nijmegen','NLD','Gelderland',167613),(15,'Enschede','NLD','Overijssel',158589),(16,'Haarlem','NLD','North Holland',154600),(17,'Almere','NLD','Flevoland',190655),(18,'Arnhem','NLD','Gelderland',150673),(19,'Zaanstad','NLD','North Holland',151109),(20,'Â´s-Hertogenbosch','NLD','North Brabant',143590),(21,'Amersfoort','NLD','Utrecht',150608),(22,'Maastricht','NLD','Limburg',119664),(23,'Dordrecht','NLD','South Holland',118810),(24,'Leiden','NLD','South Holland',120000),(25,'Haarlemmermeer','NLD','North Holland',143374),(26,'Zoetermeer','NLD','South Holland',123328),(27,'Emmen','NLD','Drenthe',108132),(28,'Zwolle','NLD','Overijssel',120661),(29,'Ede','NLD','Gelderland',108285),(30,'Delft','NLD','South Holland',98830),(31,'Heerlen','NLD','Limburg',93084),(32,'Alkmaar','NLD','North Holland',94853),(33,'Willemstad','ANT','CuraÃ§ao',140000),(34,'Tirana','ALB','Tirana',421286),(35,'Alger','DZA','Alger',2364230),(36,'Oran','DZA','Oran',803329),(37,'Constantine','DZA','Constantine',448028),(38,'Annaba','DZA','Annaba',342703),(39,'Batna','DZA','Batna',289504),(40,'Sétif','DZA','Sétif',252127),(41,'Sidi Bel AbbÃ¨s','DZA','Sidi Bel AbbÃ¨s',210146),(42,'Skikda','DZA','Skikda',182903),(43,'Biskra','DZA','Biskra',204661),(44,'Blida (el-Boulaida)','DZA','Blida',331779),(45,'Béjaïa','DZA','Béjaïa',176139),(46,'Mostaganem','DZA','Mostaganem',162885),(47,'Tébessa','DZA','Tébessa',194461),(48,'Tlemcen (Tilimsen)','DZA','Tlemcen',173531),(49,'Béchar','DZA','Béchar',165241),(50,'Tiaret','DZA','Tiaret',178915),(51,'Ech-Chleff (el-Asnam)','DZA','Chlef',155134),(52,'Ghardaïa','DZA','Ghardaïa',142913),(53,'Tafuna','ASM','Tutuila',9756),(54,'Fagatogo','ASM','Tutuila',3000),(55,'Andorra la Vella','AND','Andorra la Vella',22256),(56,'Luanda','AGO','Luanda',5851200),(57,'Huambo','AGO','Huambo',333387),(58,'Lobito','AGO','Benguela',145652),(59,'Benguela','AGO','Benguela',131281),(60,'Namibe','AGO','Namibe',89442),(61,'South Hill','AIA','Â–',1495),(62,'The Valley','AIA','Â–',1169),(63,'Saint JohnÂ´s','ATG','St John',24000),(64,'Dubai','ARE','Dubai',2106177),(65,'Abu Dhabi','ARE','Abu Dhabi',921000),(66,'Sharja','ARE','Sharja',801004),(67,'al-Ayn','ARE','Abu Dhabi',518316),(68,'Ajman','ARE','Ajman',361160),(69,'Buenos Aires','ARG','Distrito Federal',2890151),(70,'La Matanza','ARG','Buenos Aires',1772130),(71,'CÃ³rdoba','ARG','CÃ³rdoba',1772130),(72,'Rosario','ARG','Santa FÃ©',1193605),(73,'Lomas de Zamora','ARG','Buenos Aires',613192),(74,'Quilmes','ARG','Buenos Aires',230810),(75,'Almirante Brown','ARG','Buenos Aires',555731),(76,'La Plata','ARG','Buenos Aires',740369),(77,'Mar del Plata','ARG','Buenos Aires',614350),(78,'San Miguel de TucumÃ¡n','ARG','TucumÃ¡n',527607),(79,'LanÃºs','ARG','Buenos Aires',212152),(80,'Merlo','ARG','Buenos Aires',244168),(81,'General San MartÃ­n','ARG','Buenos Aires',28339),(82,'Salta','ARG','Salta',535303),(83,'Moreno','ARG','Buenos Aires',356993),(84,'Santa FÃ©','ARG','Santa FÃ©',369046),(85,'Avellaneda','ARG','Buenos Aires',24313),(86,'Tres de Febrero','ARG','Buenos Aires',343774),(87,'MorÃ³n','ARG','Buenos Aires',92725),(88,'Florencio Varela','ARG','Buenos Aires',120678),(89,'San Isidro','ARG','Buenos Aires',45190),(90,'Tigre','ARG','Buenos Aires',31106),(91,'Malvinas Argentinas','ARG','Buenos Aires',321833),(92,'Vicente LÃ³pez','ARG','Buenos Aires',24078),(93,'Berazategui','ARG','Buenos Aires',167498),(94,'Corrientes','ARG','Corrientes',328689),(95,'San Miguel','ARG','Buenos Aires',527607),(96,'BahÃ­a Blanca','ARG','Buenos Aires',301572),(97,'Esteban EcheverrÃ­a','ARG','Buenos Aires',235760),(98,'Resistencia','ARG','Chaco',377000),(99,'JosÃ© C. Paz','ARG','Buenos Aires',216637),(100,'ParanÃ¡','ARG','Entre Rios',268000),(101,'Godoy Cruz','ARG','Mendoza',182977),(102,'Posadas','ARG','Misiones',344833),(103,'GuaymallÃ©n','ARG','Mendoza',200595),(104,'Santiago del Estero','ARG','Santiago del Estero',244733),(105,'San Salvador de Jujuy','ARG','Jujuy',237751),(106,'Hurlingham','ARG','Buenos Aires',174165),(107,'NeuquÃ©n','ARG','NeuquÃ©n',255000),(108,'ItuzaingÃ³','ARG','Buenos Aires',104712),(109,'San Fernando','ARG','Buenos Aires',145165),(110,'Formosa','ARG','Formosa',229000),(111,'Las Heras','ARG','Mendoza',12799),(112,'La Rioja','ARG','La Rioja',180995),(113,'San Fernando del Valle de Cata','ARG','Catamarca',141260),(114,'RÃ­o Cuarto','ARG','CÃ³rdoba',159706),(115,'Comodoro Rivadavia','ARG','Chubut',182631),(116,'Mendoza','ARG','Mendoza',885000),(117,'San NicolÃ¡s de los Arroyos','ARG','Buenos Aires',134000),(118,'San Juan','ARG','San Juan',112778),(119,'Escobar','ARG','Buenos Aires',48935),(120,'Concordia','ARG','Entre Rios',157514),(121,'Pilar','ARG','Buenos Aires',299077),(122,'San Luis','ARG','San Luis',153322),(123,'Ezeiza','ARG','Buenos Aires',93246),(124,'San Rafael','ARG','Mendoza',118950),(125,'Tandil','ARG','Buenos Aires',101010),(126,'Yerevan','ARM','Yerevan',1700700),(127,'Gjumri','ARM','ÂŠirak',146355),(128,'Vanadzor','ARM','Lori',104800),(129,'Oranjestad','ABW','Â–',28295),(130,'Sydney','AUS','New South Wales',4667283),(131,'Melbourne','AUS','Victoria',4246345),(132,'Brisbane','AUS','Queensland',2189878),(133,'Perth','AUS','West Australia',1897548),(134,'Adelaide','AUS','South Australia',1277174),(135,'Canberra','AUS','Capital Region',411609),(136,'Gold Coast','AUS','Queensland',590889),(137,'Newcastle','AUS','New South Wales',418958),(138,'Central Coast','AUS','New South Wales',227657),(139,'Wollongong','AUS','New South Wales',282099),(140,'Hobart','AUS','Tasmania',216959),(141,'Geelong','AUS','Victoria',179042),(142,'Townsville','AUS','Queensland',171971),(143,'Cairns','AUS','Queensland',142528),(144,'Baku','AZE','Baki',2150800),(145,'GÃ¤ncÃ¤','AZE','GÃ¤ncÃ¤',1216100),(146,'Sumqayit','AZE','Sumqayit',310000),(147,'MingÃ¤Ã§evir','AZE','MingÃ¤Ã§evir',100775),(148,'Nassau','BHS','New Providence',238132),(149,'al-Manama','BHR','al-Manama',153395),(150,'Dhaka','BGD','Dhaka',14399000),(151,'Chittagong','BGD','Chittagong',6500000),(152,'Khulna','BGD','Khulna',1435422),(153,'Rajshahi','BGD','Rajshahi',842701),(154,'Narayanganj','BGD','Dhaka',1572386),(155,'Rangpur','BGD','Rajshahi',343122),(156,'Mymensingh','BGD','Dhaka',407798),(157,'Barisal','BGD','Barisal',272169),(158,'Tungi','BGD','Dhaka',337579),(159,'Jessore','BGD','Khulna',2764547),(160,'Comilla','BGD','Chittagong',346238),(161,'Nawabganj','BGD','Rajshahi',1647521),(162,'Dinajpur','BGD','Rajshahi',2990128),(163,'Bogra','BGD','Rajshahi',550397),(164,'Sylhet','BGD','Sylhet',432106),(165,'Brahmanbaria','BGD','Chittagong',2365880),(166,'Tangail','BGD','Dhaka',159864),(167,'Jamalpur','BGD','Dhaka',2292674),(168,'Pabna','BGD','Rajshahi',186781),(169,'Naogaon','BGD','Rajshahi',2576000),(170,'Sirajganj','BGD','Rajshahi',156080),(171,'Narsinghdi','BGD','Dhaka',2202000),(172,'Saidpur','BGD','Rajshahi',264209),(173,'Gazipur','BGD','Dhaka',1199215),(174,'Bridgetown','BRB','St Michael',96578),(175,'Antwerpen','BEL','Antwerpen',507911),(176,'Gent','BEL','East Flanderi',248813),(177,'Charleroi','BEL','Hainaut',203753),(178,'LiÃ¨ge','BEL','LiÃ¨ge',195931),(179,'Bruxelles [Brussel]','BEL','Bryssel',168576),(180,'Brugge','BEL','West Flanderi',117577),(181,'Schaerbeek','BEL','Bryssel',130587),(182,'Namur','BEL','Namur',110500),(183,'Mons','BEL','Hainaut',93941),(184,'Belize City','BLZ','Belize City',67964),(185,'Belmopan','BLZ','Cayo',13351),(186,'Cotonou','BEN','Atlantique',779314),(187,'Porto-Novo','BEN','OuÃ©mÃ©',267191),(188,'Djougou','BEN','Atacora',237040),(189,'Parakou','BEN','Borgou',206667),(190,'Saint George','BMU','Saint GeorgeÂ´s',75561),(191,'Hamilton','BMU','Hamilton',1800),(192,'Thimphu','BTN','Thimphu',79185),(193,'Santa Cruz de la Sierra','BOL','Santa Cruz',1453549),(194,'La Paz','BOL','La Paz',764617),(195,'El Alto','BOL','La Paz',848840),(196,'Cochabamba','BOL','Cochabamba',630587),(197,'Oruro','BOL','Oruro',264683),(198,'Sucre','BOL','Chuquisaca',259388),(199,'PotosÃ­','BOL','PotosÃ­',189652),(200,'Tarija','BOL','Tarija',205346),(201,'Sarajevo','BIH','Federaatio',515012),(202,'Banja Luka','BIH','Republika Srpska',199191),(203,'Zenica','BIH','Federaatio',96027),(204,'Gaborone','BWA','Gaborone',231626),(205,'Francistown','BWA','Francistown',100079),(206,'SÃ£o Paulo','BRA','São Paulo',11244369),(207,'Rio de Janeiro','BRA','Rio de Janeiro',6323037),(208,'Salvador','BRA','Bahia',2676606),(209,'Belo Horizonte','BRA','Minas Gerais',2375444),(210,'Fortaleza','BRA','Ceará',2551806),(211,'BrasÃ­lia','BRA','Distrito Federal',2562963),(212,'Curitiba','BRA','ParanÃ¡',1746896),(213,'Recife','BRA','Pernambuco',1536934),(214,'Porto Alegre','BRA','Rio Grande do Sul',1409939),(215,'Manaus','BRA','Amazonas',1802525),(216,'BelÃ©m','BRA','Pará',1392031),(217,'Guarulhos','BRA','São Paulo',1222357),(218,'GoiÃ¢nia','BRA','Goiás',1301892),(219,'Campinas','BRA','São Paulo',1080999),(220,'SÃ£o GonÃ§alo','BRA','Rio de Janeiro',1016128),(221,'Nova IguaÃ§u','BRA','Rio de Janeiro',865089),(222,'SÃ£o LuÃ­s','BRA','MaranhÃ£o',1011943),(223,'MaceiÃ³','BRA','Alagoas',1002675),(224,'Duque de Caxias','BRA','Rio de Janeiro',872762),(225,'SÃ£o Bernardo do Campo','BRA','São Paulo',615871),(226,'Teresina','BRA','PiauÃ­',802537),(227,'Natal','BRA','Rio Grande do Norte',806203),(228,'Osasco','BRA','São Paulo',730051),(229,'Campo Grande','BRA','Mato Grosso do Sul',787204),(230,'Santo AndrÃ©','BRA','São Paulo',683336),(231,'JoÃ£o Pessoa','BRA','ParaÃ­ba',702235),(232,'JaboatÃ£o dos Guararapes','BRA','Pernambuco',687688),(233,'Contagem','BRA','Minas Gerais',625393),(234,'SÃ£o JosÃ© dos Campos','BRA','São Paulo',615871),(235,'UberlÃ¢ndia','BRA','Minas Gerais',634345),(236,'Feira de Santana','BRA','Bahia',591707),(237,'RibeirÃ£o Preto','BRA','São Paulo',563107),(238,'Sorocaba','BRA','São Paulo',586311),(239,'NiterÃ³i','BRA','Rio de Janeiro',479384),(240,'CuiabÃ¡','BRA','Mato Grosso',550562),(241,'Juiz de Fora','BRA','Minas Gerais',526706),(242,'Aracaju','BRA','Sergipe',544039),(243,'SÃ£o JoÃ£o de Meriti','BRA','Rio de Janeiro',469827),(244,'Londrina','BRA','ParanÃ¡',510707),(245,'Joinville','BRA','Santa Catarina',497331),(246,'Belford Roxo','BRA','Rio de Janeiro',501544),(247,'Santos','BRA','São Paulo',419086),(248,'Ananindeua','BRA','Pará',505512),(249,'Campos dos Goytacazes','BRA','Rio de Janeiro',356608),(250,'MauÃ¡','BRA','São Paulo',225938),(251,'CarapicuÃ­ba','BRA','São Paulo',392701),(252,'Olinda','BRA','Pernambuco',397268),(253,'Campina Grande','BRA','ParaÃ­ba',383764),(254,'SÃ£o JosÃ© do Rio Preto','BRA','São Paulo',425261),(255,'Caxias do Sul','BRA','Rio Grande do Sul',410166),(256,'Moji das Cruzes','BRA','São Paulo',375268),(257,'Diadema','BRA','São Paulo',401217),(258,'Aparecida de GoiÃ¢nia','BRA','Goiás',510770),(259,'Piracicaba','BRA','São Paulo',368843),(260,'Cariacica','BRA','EspÃ­rito Santo',365859),(261,'Vila Velha','BRA','EspÃ­rito Santo',413548),(262,'Pelotas','BRA','Rio Grande do Sul',306193),(263,'Bauru','BRA','São Paulo',337094),(264,'Porto Velho','BRA','RondÃ´nia',369259),(265,'Serra','BRA','EspÃ­rito Santo',404688),(266,'Betim','BRA','Minas Gerais',441748),(267,'JundÃ­aÃ­','BRA','São Paulo',349929),(268,'Canoas','BRA','Rio Grande do Sul',332056),(269,'Franca','BRA','São Paulo',330938),(270,'SÃ£o Vicente','BRA','São Paulo',330795),(271,'MaringÃ¡','BRA','ParanÃ¡',335511),(272,'Montes Claros','BRA','Minas Gerais',412284),(273,'AnÃ¡polis','BRA','GoiÃ¡s',342347),(274,'FlorianÃ³polis','BRA','Santa Catarina',408161),(275,'PetrÃ³polis','BRA','Rio de Janeiro',315119),(276,'Itaquaquecetuba','BRA','São Paulo',359253),(277,'VitÃ³ria','BRA','EspÃ­rito Santo',320156),(278,'Ponta Grossa','BRA','ParanÃ¡',314681),(279,'Rio Branco','BRA','Acre',305954),(280,'Foz do IguaÃ§u','BRA','ParanÃ¡',325137),(281,'MacapÃ¡','BRA','AmapÃ¡',366484),(282,'IlhÃ©us','BRA','Bahia',254970),(283,'VitÃ³ria da Conquista','BRA','Bahia',318901),(284,'Uberaba','BRA','Minas Gerais',296261),(285,'Paulista','BRA','Pernambuco',319373),(286,'Limeira','BRA','São Paulo',281583),(287,'Blumenau','BRA','Santa Catarina',299416),(288,'Caruaru','BRA','Pernambuco',298501),(289,'SantarÃ©m','BRA','ParÃ¡',276665),(290,'Volta Redonda','BRA','Rio de Janeiro',261403),(291,'Novo Hamburgo','BRA','Rio Grande do Sul',257746),(292,'Caucaia','BRA','Ceará',334364),(293,'Santa Maria','BRA','Rio Grande do Sul',268969),(294,'Cascavel','BRA','ParanÃ¡',296254),(295,'GuarujÃ¡','BRA','São Paulo',308058),(296,'RibeirÃ£o das Neves','BRA','Minas Gerais',349307),(297,'Governador Valadares','BRA','Minas Gerais',263274),(298,'TaubatÃ©','BRA','São Paulo',273426),(299,'Imperatriz','BRA','MaranhÃ£o',236691),(300,'GravataÃ­','BRA','Rio Grande do Sul',269446),(301,'Embu','BRA','São Paulo',248722),(302,'MossorÃ³','BRA','Rio Grande do Norte',244287),(303,'VÃ¡rzea Grande','BRA','Mato Grosso',240038),(304,'Petrolina','BRA','Pernambuco',285339),(305,'Barueri','BRA','São Paulo',270173),(306,'ViamÃ£o','BRA','Rio Grande do Sul',260740),(307,'Ipatinga','BRA','Minas Gerais',244508),(308,'Juazeiro','BRA','Bahia',243896),(309,'Juazeiro do Norte','BRA','Ceará',249829),(310,'TaboÃ£o da Serra','BRA','São Paulo',227343),(311,'SÃ£o JosÃ© dos Pinhais','BRA','ParanÃ¡',279297),(312,'MagÃ©','BRA','Rio de Janeiro',244334),(313,'Suzano','BRA','São Paulo',284356),(314,'SÃ£o Leopoldo','BRA','Rio Grande do Sul',213238),(315,'MarÃ­lia','BRA','São Paulo',225938),(316,'SÃ£o Carlos','BRA','São Paulo',116850),(317,'SumarÃ©','BRA','São Paulo',241077),(318,'Presidente Prudente','BRA','São Paulo',200042),(319,'DivinÃ³polis','BRA','Minas Gerais',202220),(320,'Sete Lagoas','BRA','Minas Gerais',208847),(321,'Rio Grande','BRA','Rio Grande do Sul',198048),(322,'Itabuna','BRA','Bahia',199749),(323,'JequiÃ©','BRA','Bahia',136518),(324,'Arapiraca','BRA','Alagoas',181481),(325,'Colombo','BRA','ParanÃ¡',203203),(326,'Americana','BRA','São Paulo',209654),(327,'Alvorada','BRA','Rio Grande do Sul',175575),(328,'Araraquara','BRA','São Paulo',174381),(329,'ItaboraÃ­','BRA','Rio de Janeiro',220981),(330,'Santa BÃ¡rbara dÂ´Oeste','BRA','São Paulo',178596),(331,'Nova Friburgo','BRA','Rio de Janeiro',113217),(332,'Jacareí','BRA','São Paulo',187144),(333,'Araçatuba','BRA','São Paulo',178077),(334,'Barra Mansa','BRA','Rio de Janeiro',171125),(335,'Praia Grande','BRA','São Paulo',262051),(336,'MarabÃ¡','BRA','Pará',251885),(337,'Criciúma','BRA','Santa Catarina',133031),(338,'Boa Vista','BRA','Roraima',277799),(339,'Passo Fundo','BRA','Rio Grande do Sul',179630),(340,'Dourados','BRA','Mato Grosso do Sul',173647),(341,'Santa Luzia','BRA','Minas Gerais',205666),(342,'Rio Claro','BRA','São Paulo',178613),(343,'MaracanaÃº','BRA','Ceará',10),(344,'Guarapuava','BRA','ParanÃ¡',169252),(345,'RondonÃ³polis','BRA','Mato Grosso',202309),(346,'São José','BRA','Santa Catarina',210513),(347,'Cachoeiro de Itapemirim','BRA','EspÃ­rito Santo',209878),(348,'NilÃ³polis','BRA','Rio de Janeiro',102161),(349,'Itapevi','BRA','São Paulo',200769),(350,'Cabo de Santo Agostinho','BRA','Pernambuco',95979),(351,'Camaçari','BRA','Bahia',161226),(352,'Sobral','BRA','Ceará',147353),(353,'Itajaí','BRA','Santa Catarina',173452),(354,'Chapecó','BRA','Santa Catarina',166040),(355,'Cotia','BRA','São Paulo',170507),(356,'Lages','BRA','Santa Catarina',153676),(357,'Ferraz de Vasconcelos','BRA','São Paulo',111727),(358,'Indaiatuba','BRA','São Paulo',199592),(359,'Hortolândia','BRA','São Paulo',192692),(360,'Caxias','BRA','MaranhÃ£o',155129),(361,'São Caetano do Sul','BRA','São Paulo',149263),(362,'Itu','BRA','São Paulo',144269),(363,'Nossa Senhora do Socorro','BRA','Sergipe',155823),(364,'Parnaíba','BRA','PiauÃ­',137485),(365,'Poços de Caldas','BRA','Minas Gerais',148722),(366,'Teresópolis','BRA','Rio de Janeiro',134156),(367,'Barreiras','BRA','Bahia',123741),(368,'Castanhal','BRA','Pará',149918),(369,'Alagoinhas','BRA','Bahia',122324),(370,'Itapecerica da Serra','BRA','São Paulo',151349),(371,'Uruguaiana','BRA','Rio Grande do Sul',116276),(372,'Paranaguá','BRA','ParanÃ¡',133761),(373,'Ibirité','BRA','Minas Gerais',83765),(374,'Timon','BRA','MaranhÃ£o',134792),(375,'Luziânia','BRA','Goiás',98752),(376,'MacaÃ©','BRA','Rio de Janeiro',21966),(377,'TeÃ³filo Otoni','BRA','Minas Gerais',126895),(378,'Mogi Guaçu','BRA','São Paulo',127452),(379,'Palmas','BRA','Tocantins',217340),(380,'Pindamonhangaba','BRA','São Paulo',103395),(381,'Francisco Morato','BRA','São Paulo',154207),(382,'Bagé','BRA','Rio Grande do Sul',97765),(383,'Sapucaia do Sul','BRA','Rio Grande do Sul',135956),(384,'Cabo Frio','BRA','Rio de Janeiro',140269),(385,'Itapetininga','BRA','São Paulo',123439),(386,'Patos de Minas','BRA','Minas Gerais',124349),(387,'Camaragibe','BRA','Pernambuco',144466),(388,'Bragança Paulista','BRA','São Paulo',142255),(389,'Queimados','BRA','Rio de Janeiro',137962),(390,'Araguaína','BRA','Tocantins',142925),(391,'Garanhuns','BRA','Pernambuco',112462),(392,'Vitória de Santo Antão','BRA','Pernambuco',111541),(393,'Santa Rita','BRA','ParaÃ­ba',120333),(394,'Barbacena','BRA','Minas Gerais',107207),(395,'Abaetetuba','BRA','Pará',141054),(396,'JaÃº','BRA','São Paulo',109965),(397,'Lauro de Freitas','BRA','Bahia',163449),(398,'Franco da Rocha','BRA','São Paulo',121244),(399,'Teixeira de Freitas','BRA','Bahia',128407),(400,'Varginha','BRA','Minas Gerais',119061),(401,'Ribeirão Pires','BRA','São Paulo',113043),(402,'Sabará','BRA','Minas Gerais',44206),(403,'Catanduva','BRA','São Paulo',111914),(404,'Rio Verde','BRA','Goiás',235360),(405,'Botucatu','BRA','São Paulo',115606),(406,'Colatina','BRA','EspÃ­rito Santo',96028),(407,'Santa Cruz do Sul','BRA','Rio Grande do Sul',102891),(408,'Linhares','BRA','EspÃ­rito Santo',109653),(409,'Apucarana','BRA','ParanÃ¡',108887),(410,'Barretos','BRA','São Paulo',108306),(411,'Guaratinguetá','BRA','São Paulo',106762),(412,'Cachoeirinha','BRA','Rio Grande do Sul',118278),(413,'Codó','BRA','MaranhÃ£o',80924),(414,'Jaraguá do Sul','BRA','Santa Catarina',132800),(415,'Cubatão','BRA','São Paulo',118720),(416,'Itabira','BRA','Minas Gerais',107721),(417,'Itaituba','BRA','Pará',97704),(418,'Araras','BRA','São Paulo',112444),(419,'Resende','BRA','Rio de Janeiro',119801),(420,'Atibaia','BRA','São Paulo',115229),(421,'Pouso Alegre','BRA','Minas Gerais',118847),(422,'Toledo','BRA','ParanÃ¡',103644),(423,'Crato','BRA','Ceará',93469),(424,'Passos','BRA','Minas Gerais',100859),(425,'Araguari','BRA','Minas Gerais',110402),(426,'São José de Ribamar','BRA','MaranhÃ£o',35978),(427,'Pinhais','BRA','ParanÃ¡',117008),(428,'Sertãozinho','BRA','São Paulo',101784),(429,'Conselheiro Lafaiete','BRA','Minas Gerais',110588),(430,'Paulo Afonso','BRA','Bahia',108396),(431,'Angra dos Reis','BRA','Rio de Janeiro',65364),(432,'Eunápolis','BRA','Bahia',93413),(433,'Salto','BRA','São Paulo',104688),(434,'Ourinhos','BRA','São Paulo',100374),(435,'Parnamirim','BRA','Rio Grande do Norte',202456),(436,'Jacobina','BRA','Bahia',47587),(437,'Coronel Fabriciano','BRA','Minas Gerais',47625),(438,'Birigui','BRA','São Paulo',105487),(439,'Tatuí','BRA','São Paulo',102256),(440,'Ji-Paraná','BRA','RondÃ´nia',103256),(441,'Bacabal','BRA','MaranhÃ£o',77860),(442,'CametÃ¡','BRA','Pará',120904),(443,'Guaíba','BRA','Rio Grande do Sul',95230),(444,'São Lourenço da Mata','BRA','Pernambuco',92190),(445,'Santana do Livramento','BRA','Rio Grande do Sul',97488),(446,'Votorantim','BRA','São Paulo',107157),(447,'Campo Largo','BRA','ParanÃ¡',110796),(448,'Patos','BRA','ParaÃ­ba',102020),(449,'Ituiutaba','BRA','Minas Gerais',100316),(450,'Corumbá','BRA','Mato Grosso do Sul',110486),(451,'Palhoça','BRA','Santa Catarina',119360),(452,'Barra do PiraÃ­','BRA','Rio de Janeiro',96261),(453,'Bento Gonçalves','BRA','Rio Grande do Sul',96830),(454,'PoÃ¡','BRA','São Paulo',89236),(455,'Ãguas Lindas de GoiÃ¡s','BRA','Goiás',300323),(456,'London','GBR','England',8174000),(457,'Birmingham','GBR','England',1074000),(458,'Glasgow','GBR','Scotland',598830),(459,'Liverpool','GBR','England',465700),(460,'Edinburgh','GBR','Scotland',495360),(461,'Sheffield','GBR','England',551800),(462,'Manchester','GBR','England',502900),(463,'Leeds','GBR','England',750700),(464,'Bristol','GBR','England',428100),(465,'Cardiff','GBR','Wales',324800),(466,'Coventry','GBR','England',316900),(467,'Leicester','GBR','England',329600),(468,'Bradford','GBR','England',293277),(469,'Belfast','GBR','North Ireland',286000),(470,'Nottingham','GBR','England',303900),(471,'Kingston upon Hull','GBR','England',256100),(472,'Plymouth','GBR','England',256384),(473,'Stoke-on-Trent','GBR','England',249000),(474,'Wolverhampton','GBR','England',249900),(475,'Derby','GBR','England',248700),(476,'Swansea','GBR','Wales',239600),(477,'Southampton','GBR','England',253651),(478,'Aberdeen','GBR','Scotland',212125),(479,'Northampton','GBR','England',28592),(480,'Dudley','GBR','England',194919),(481,'Portsmouth','GBR','England',205400),(482,'Newcastle upon Tyne','GBR','England',279100),(483,'Sunderland','GBR','England',177739),(484,'Luton','GBR','England',240000),(485,'Swindon','GBR','England',185609),(486,'Southend-on-Sea','GBR','England',174300),(487,'Walsall','GBR','England',269323),(488,'Bournemouth','GBR','England',187503),(489,'Peterborough','GBR','England',207009),(490,'Brighton','GBR','England',155919),(491,'Blackpool','GBR','England',142100),(492,'Dundee','GBR','Scotland',141870),(493,'West Bromwich','GBR','England',136940),(494,'Reading','GBR','England',155300),(495,'Oldbury/Smethwick (Warley)','GBR','England',163545),(496,'Middlesbrough','GBR','England',142691),(497,'Huddersfield','GBR','England',146234),(498,'Oxford','GBR','England',150200),(499,'Poole','GBR','England',138288),(500,'Bolton','GBR','England',139403),(501,'Blackburn','GBR','England',105085),(502,'Newport','GBR','Wales',10814),(503,'Preston','GBR','England',114300),(504,'Stockport','GBR','England',136082),(505,'Norwich','GBR','England',213166),(506,'Rotherham','GBR','England',117262),(507,'Cambridge','GBR','England',123900),(508,'Watford','GBR','England',120960),(509,'Ipswich','GBR','England',133384),(510,'Slough','GBR','England',122000),(511,'Exeter','GBR','England',117773),(512,'Cheltenham','GBR','England',110013),(513,'Gloucester','GBR','England',858300),(514,'Saint Helens','GBR','England',102629),(515,'Sutton Coldfield','GBR','England',105452),(516,'York','GBR','England',197800),(517,'Oldham','GBR','England',103544),(518,'Basildon','GBR','England',99876),(519,'Worthing','GBR','England',104600),(520,'Chelmsford','GBR','England',168310),(521,'Colchester','GBR','England',104390),(522,'Crawley','GBR','England',107100),(523,'Gillingham','GBR','England',111529),(524,'Solihull','GBR','England',206700),(525,'Rochdale','GBR','England',95796),(526,'Birkenhead','GBR','England',83729),(527,'Worcester','GBR','England',93353),(528,'Hartlepool','GBR','England',92000),(529,'Halifax','GBR','England',95000),(530,'Woking/Byfleet','GBR','England',99500),(531,'Southport','GBR','England',90336),(532,'Maidstone','GBR','England',113137),(533,'Eastbourne','GBR','England',99300),(534,'Grimsby','GBR','England',87574),(535,'Saint Helier','GBR','Jersey',33522),(536,'Douglas','GBR','Â–',27938),(537,'Road Town','VGB','Tortola',9400),(538,'Bandar Seri Begawan','BRN','Brunei and Muara',140000),(539,'Sofija','BGR','Grad Sofija',1241396),(540,'Plovdiv','BGR','Plovdiv',339077),(541,'Varna','BGR','Varna',334744),(542,'Burgas','BGR','Burgas',223902),(543,'Ruse','BGR','Ruse',149642),(544,'Stara Zagora','BGR','Haskovo',138272),(545,'Pleven','BGR','Lovec',106954),(546,'Sliven','BGR','Burgas',197473),(547,'Dobric','BGR','Varna',90375),(548,'ÂŠumen','BGR','Varna',94686),(549,'Ouagadougou','BFA','Kadiogo',1475000),(550,'Bobo-Dioulasso','BFA','Houet',489967),(551,'Koudougou','BFA','BoulkiemdÃ©',91981),(552,'Bujumbura','BDI','Bujumbura',800000),(553,'George Town','CYM','Grand Cayman',28836),(554,'Santiago de Chile','CHL','Santiago',6027000),(555,'Puente Alto','CHL','Santiago',757692),(556,'Viña del Mar','CHL','ValparaÃ­so',289970),(557,'Valparaíso','CHL','ValparaÃ­so',253580),(558,'Talcahuano','CHL','BÃ­obÃ­o',250348),(559,'Antofagasta','CHL','Antofagasta',380695),(560,'San Bernardo','CHL','Santiago',307185),(561,'Temuco','CHL','La AraucanÃ­a',267619),(562,'Concepción','CHL','BÃ­obÃ­o',224288),(563,'Rancagua','CHL','OÂ´Higgins',241364),(564,'Arica','CHL','TarapacÃ¡',161972),(565,'Talca','CHL','Maule',201797),(566,'Chillán','CHL','BÃ­obÃ­o',162764),(567,'Iquique','CHL','TarapacÃ¡',182049),(568,'Los Angeles','CHL','BÃ­obÃ­o',123445),(569,'Puerto Montt','CHL','Los Lagos',211751),(570,'Coquimbo','CHL','Coquimbo',196838),(571,'Osorno','CHL','Los Lagos',147753),(572,'La Serena','CHL','Coquimbo',201681),(573,'Calama','CHL','Antofagasta',147886),(574,'Valdivia','CHL','Los Lagos',140934),(575,'Punta Arenas','CHL','Magallanes',122850),(576,'Copiapó','CHL','Atacama',162183),(577,'Quilpué','CHL','ValparaÃ­so',162320),(578,'Curicó','CHL','Maule',119585),(579,'Ovalle','CHL','Coquimbo',98089),(580,'Coronel','CHL','BÃ­obÃ­o',105065),(581,'San Pedro de la Paz','CHL','BÃ­obÃ­o',80447),(582,'Melipilla','CHL','Santiago',94540),(583,'Avarua','COK','Rarotonga',5445),(584,'San JosÃ©','CRI','San JosÃ©',288054),(585,'Djibouti','DJI','Djibouti',496374),(586,'Roseau','DMA','St George',16582),(587,'Santo Domingo de GuzmÃ¡n','DOM','Distrito Nacional',2907000),(588,'Santiago de los Caballeros','DOM','Santiago',550753),(589,'La Romana','DOM','La Romana',127623),(590,'San Pedro de Macorís','DOM','San Pedro de MacorÃ­',185255),(591,'San Francisco de Macorís','DOM','Duarte',245397),(592,'San Felipe de Puerto Plata','DOM','Puerto Plata',286558),(593,'Guayaquil','ECU','Guayas',2279000),(594,'Quito','ECU','Pichincha',1608000),(595,'Cuenca','ECU','Azuay',329928),(596,'Machala','ECU','El Oro',231260),(597,'Santo Domingo de los Colorados','ECU','Pichincha',228384),(598,'Portoviejo','ECU','ManabÃ­',206682),(599,'Ambato','ECU','Tungurahua',165185),(600,'Manta','ECU','ManabÃ­',217553),(601,'Duran [Eloy Alfaro]','ECU','Guayas',230839),(602,'Ibarra','ECU','Imbabura',131856),(603,'Quevedo','ECU','Los RÃ­os',150827),(604,'Milagro','ECU','Guayas',33508),(605,'Loja','ECU','Loja',170280),(606,'RÃ­obamba','ECU','Chimborazo',144795),(607,'Esmeraldas','ECU','Esmeraldas',154035),(608,'Cairo','EGY','Kairo',7772000),(609,'Alexandria','EGY','Aleksandria',4031000),(610,'Giza','EGY','Giza',2573000),(611,'Shubra al-Khayma','EGY','al-Qalyubiya',1026000),(612,'Port Said','EGY','Port Said',570603),(613,'Suez','EGY','Suez',512135),(614,'al-Mahallat al-Kubra','EGY','al-Gharbiya',465278),(615,'Tanta','EGY','al-Gharbiya',422854),(616,'al-Mansura','EGY','al-Daqahliya',439348),(617,'Luxor','EGY','Luxor',202232),(618,'Asyut','EGY','Asyut',389307),(619,'Bahtim','EGY','al-Qalyubiya',375807),(620,'Zagazig','EGY','al-Sharqiya',302840),(621,'al-Faiyum','EGY','al-Faiyum',349),(622,'Ismailia','EGY','Ismailia',366),(623,'Kafr al-Dawwar','EGY','al-Buhayra',114030),(624,'Assuan','EGY','Assuan',266013),(625,'Damanhur','EGY','al-Buhayra',244043),(626,'al-Minya','EGY','al-Minya',256732),(627,'Bani Suwayf','EGY','Bani Suwayf',193048),(628,'Qina','EGY','Qina',235362),(629,'Sawhaj','EGY','Sawhaj',190132),(630,'Shibin al-Kawm','EGY','al-Minufiya',177112),(631,'Bulaq al-Dakrur','EGY','Giza',158787),(632,'Banha','EGY','al-Qalyubiya',157701),(633,'Warraq al-Arab','EGY','Giza',147108),(634,'Kafr al-Shaykh','EGY','Kafr al-Shaykh',160266),(635,'Mallawi','EGY','al-Minya',152198),(636,'Bilbays','EGY','al-Sharqiya',149519),(637,'Mit Ghamr','EGY','al-Daqahliya',116593),(638,'al-Arish','EGY','Shamal Sina',164830),(639,'Talkha','EGY','al-Daqahliya',92084),(640,'Qalyub','EGY','al-Qalyubiya',106804),(641,'Jirja','EGY','Sawhaj',102701),(642,'Idfu','EGY','Qina',133772),(643,'al-Hawamidiya','EGY','Giza',94700),(644,'Disuq','EGY','Kafr al-Shaykh',129604),(645,'San Salvador','SLV','San Salvador',540989),(646,'Santa Ana','SLV','Santa Ana',280000),(647,'Mejicanos','SLV','San Salvador',211878),(648,'Soyapango','SLV','San Salvador',262975),(649,'San Miguel','SLV','San Miguel',218410),(650,'Nueva San Salvador','SLV','La Libertad',164171),(651,'Apopa','SLV','San Salvador',217733),(652,'Asmara','ERI','Maekel',281110),(653,'Madrid','ESP','Madrid',3255944),(654,'Barcelona','ESP','Katalonia',1621537),(655,'Valencia','ESP','Valencia',852208),(656,'Sevilla','ESP','Andalusia',703206),(657,'Zaragoza','ESP','Aragonia',674317),(658,'Málaga','ESP','Andalusia',568305),(659,'Bilbao','ESP','Baskimaa',354860),(660,'Las Palmas de Gran Canaria','ESP','Canary Islands',381847),(661,'Murcia','ESP','Murcia',436870),(662,'Palma de Mallorca','ESP','Balears',401270),(663,'Valladolid','ESP','Castilla and LeÃ³n',317864),(664,'Córdoba','ESP','Andalusia',328428),(665,'Vigo','ESP','Galicia',297332),(666,'Alicante [Alacant]','ESP','Valencia',334757),(667,'Gijón','ESP','Asturia',277554),(668,'LÂ´Hospitalet de Llobregat','ESP','Katalonia',257038),(669,'Granada','ESP','Andalusia',234325),(670,'A Coruña (La Coruña)','ESP','Galicia',246056),(671,'Vitoria-Gasteiz','ESP','Baskimaa',217154),(672,'Santa Cruz de Tenerife','ESP','Canary Islands',222417),(673,'Badalona','ESP','Katalonia',219547),(674,'Oviedo','ESP','Asturia',224005),(675,'Móstoles','ESP','Madrid',206478),(676,'Elche [Elx]','ESP','Valencia',230112),(677,'Sabadell','ESP','Katalonia',206493),(678,'Santander','ESP','Cantabria',182700),(679,'Jerez de la Frontera','ESP','Andalusia',207532),(680,'Pamplona [IruÃ±a]','ESP','Navarra',198491),(681,'Donostia-San SebastiÃ¡n','ESP','Baskimaa',186066),(682,'Cartagena','ESP','Murcia',211996),(683,'Leganés','ESP','Madrid',186066),(684,'Fuenlabrada','ESP','Madrid',197836),(685,'Almería','ESP','Andalusia',188810),(686,'Terrassa','ESP','Katalonia',210941),(687,'Alcalá de Henares','ESP','Madrid',204574),(688,'Burgos','ESP','Castilla and LeÃ³n',178966),(689,'Salamanca','ESP','Castilla and LeÃ³n',155619),(690,'Albacete','ESP','Kastilia-La Mancha',169716),(691,'Getafe','ESP','Madrid',167164),(692,'Cádiz','ESP','Andalusia',126766),(693,'Alcorcón','ESP','Madrid',167967),(694,'Huelva','ESP','Andalusia',148806),(695,'León','ESP','Castilla and LeÃ³n',134305),(696,'Castellón de la Plana [Castell]','ESP','Valencia',139712),(697,'Badajoz','ESP','Extremadura',148334),(698,'San Cristóbal de La Laguna','ESP','Canary Islands',150661),(699,'Logroño','ESP','La Rioja',152107),(700,'Santa Coloma de Gramenet','ESP','Katalonia',120593),(701,'Tarragona','ESP','Katalonia',140323),(702,'Lleida (LÃ©rida)','ESP','Katalonia',135919),(703,'JaÃ©n','ESP','Andalusia',116557),(704,'Ourense (Orense)','ESP','Galicia',107742),(705,'MatarÃ³','ESP','Katalonia',121722),(706,'Algeciras','ESP','Andalusia',116917),(707,'Marbella','ESP','Andalusia',134623),(708,'Barakaldo','ESP','Baskimaa',98460),(709,'Dos Hermanas','ESP','Andalusia',122943),(710,'Santiago de Compostela','ESP','Galicia',95092),(711,'TorrejÃ³n de Ardoz','ESP','Madrid',118162),(712,'Cape Town','ZAF','Western Cape',3740026),(713,'Soweto','ZAF','Gauteng',1271628),(714,'Johannesburg','ZAF','Gauteng',957441),(715,'Port Elizabeth','ZAF','Eastern Cape',312392),(716,'Pretoria','ZAF','Gauteng',741651),(717,'Inanda','ZAF','KwaZulu-Natal',634065),(718,'Durban','ZAF','KwaZulu-Natal',3468000),(719,'Vanderbijlpark','ZAF','Gauteng',95840),(720,'Kempton Park','ZAF','Gauteng',171575),(721,'Alberton','ZAF','Gauteng',121536),(722,'Pinetown','ZAF','KwaZulu-Natal',144026),(723,'Pietermaritzburg','ZAF','KwaZulu-Natal',405385),(724,'Benoni','ZAF','Gauteng',158777),(725,'Randburg','ZAF','Gauteng',337053),(726,'Umlazi','ZAF','KwaZulu-Natal',404811),(727,'Bloemfontein','ZAF','Free State',256185),(728,'Vereeniging','ZAF','Gauteng',99787),(729,'Wonderboom','ZAF','Gauteng',283289),(730,'Roodepoort','ZAF','Gauteng',326416),(731,'Boksburg','ZAF','Gauteng',260321),(732,'Klerksdorp','ZAF','North West',186515),(733,'Soshanguve','ZAF','Gauteng',403162),(734,'Newcastle','ZAF','KwaZulu-Natal',546788),(735,'East London','ZAF','Eastern Cape',267007),(736,'Welkom','ZAF','Free State',211011),(737,'Kimberley','ZAF','Northern Cape',225160),(738,'Uitenhage','ZAF','Eastern Cape',103639),(739,'Chatsworth','ZAF','KwaZulu-Natal',196580),(740,'Mdantsane','ZAF','Eastern Cape',156835),(741,'Krugersdorp','ZAF','Gauteng',140643),(742,'Botshabelo','ZAF','Free State',181712),(743,'Brakpan','ZAF','Gauteng',73080),(744,'Witbank','ZAF','Mpumalanga',108673),(745,'Oberholzer','ZAF','Gauteng',244367),(746,'Germiston','ZAF','Gauteng',255863),(747,'Springs','ZAF','Gauteng',121610),(748,'Westonaria','ZAF','Gauteng',169632),(749,'Randfontein','ZAF','Gauteng',149286),(750,'Paarl','ZAF','Western Cape',112045),(751,'Potchefstroom','ZAF','North West',149230),(752,'Rustenburg','ZAF','North West',549575),(753,'Nigel','ZAF','Gauteng',98318),(754,'George','ZAF','Western Cape',193672),(755,'Ladysmith','ZAF','KwaZulu-Natal',237437),(756,'Addis Abeba','ETH','Addis Abeba',3384569),(757,'Dire Dawa','ETH','Dire Dawa',607321),(758,'Nazret','ETH','Oromia',262884),(759,'Gonder','ETH','Amhara',254450),(760,'Dese','ETH','Amhara',147592),(761,'Mekele','ETH','Tigray',271562),(762,'Bahir Dar','ETH','Amhara',191015),(763,'Stanley','FLK','East Falkland',2115),(764,'Suva','FJI','Central',88271),(765,'Quezon','PHL','National Capital Reg',2761720),(766,'Manila','PHL','National Capital Reg',1652171),(767,'Kalookan','PHL','National Capital Reg',1489040),(768,'Davao','PHL','Southern Mindanao',1449296),(769,'Cebu','PHL','Central Visayas',866171),(770,'Zamboanga','PHL','Western Mindanao',807129),(771,'Pasig','PHL','National Capital Reg',669773),(772,'Valenzuela','PHL','National Capital Reg',575356),(773,'Las Piñas','PHL','National Capital Reg',552573),(774,'Antipolo','PHL','Southern Tagalog',677741),(775,'Taguig','PHL','National Capital Reg',644473),(776,'Cagayan de Oro','PHL','Northern Mindanao',602088),(777,'Parañaque','PHL','National Capital Reg',588126),(778,'Makati','PHL','National Capital Reg',529039),(779,'Bacolod','PHL','Western Visayas',511820),(780,'General Santos','PHL','Southern Mindanao',538086),(781,'Marikina','PHL','National Capital Reg',424150),(782,'Dasmariñas','PHL','Southern Tagalog',575817),(783,'Muntinlupa','PHL','National Capital Reg',459941),(784,'Iloilo','PHL','Western Visayas',424619),(785,'Pasay','PHL','National Capital Reg',392869),(786,'Malabon','PHL','National Capital Reg',353337),(787,'San Jose del Monte','PHL','Central Luzon',439090),(788,'Bacoor','PHL','Southern Tagalog',441197),(789,'Iligan','PHL','Central Mindanao',308046),(790,'Calamba','PHL','Southern Tagalog',389377),(791,'Mandaluyong','PHL','National Capital Reg',328699),(792,'Butuan','PHL','Caraga',309709),(793,'Angeles','PHL','Central Luzon',326336),(794,'Tarlac','PHL','Central Luzon',318332),(795,'Mandaue','PHL','Central Visayas',331320),(796,'Baguio','PHL','CAR',318676),(797,'Batangas','PHL','Southern Tagalog',305607),(798,'Cainta','PHL','Southern Tagalog',311845),(799,'San Pedro','PHL','Southern Tagalog',294310),(800,'Navotas','PHL','National Capital Reg',249131),(801,'Cabanatuan','PHL','Central Luzon',272676),(802,'San Fernando','PHL','Central Luzon',285912),(803,'Lipa','PHL','Southern Tagalog',283468),(804,'Lapu-Lapu','PHL','Central Visayas',350467),(805,'San Pablo','PHL','Southern Tagalog',248890),(806,'Biñan','PHL','Southern Tagalog',283396),(807,'Taytay','PHL','Southern Tagalog',288956),(808,'Lucena','PHL','Southern Tagalog',246392),(809,'Imus','PHL','Southern Tagalog',301624),(810,'Olongapo','PHL','Central Luzon',221178),(811,'Binangonan','PHL','Southern Tagalog',249872),(812,'Santa Rosa','PHL','Southern Tagalog',284670),(813,'Tagum','PHL','Southern Mindanao',242801),(814,'Tacloban','PHL','Eastern Visayas',221174),(815,'Malolos','PHL','Central Luzon',234945),(816,'Mabalacat','PHL','Central Luzon',215610),(817,'Cotabato','PHL','Central Mindanao',271786),(818,'Meycauayan','PHL','Central Luzon',199154),(819,'Puerto Princesa','PHL','Southern Tagalog',222673),(820,'Legazpi','PHL','Bicol',182201),(821,'Silang','PHL','Southern Tagalog',213490),(822,'Ormoc','PHL','Eastern Visayas',191200),(823,'San Carlos','PHL','Ilocos',129981),(824,'Kabankalan','PHL','Western Visayas',167666),(825,'Talisay','PHL','Central Visayas',200772),(826,'Valencia','PHL','Northern Mindanao',181556),(827,'Calbayog','PHL','Eastern Visayas',163657),(828,'Santa Maria','PHL','Central Luzon',218351),(829,'Pagadian','PHL','Western Mindanao',186852),(830,'Cadiz','PHL','Western Visayas',151500),(831,'Bago','PHL','Western Visayas',163045),(832,'Toledo','PHL','Central Visayas',157078),(833,'Naga','PHL','Bicol',101571),(834,'San Mateo','PHL','Southern Tagalog',205255),(835,'Panabo','PHL','Southern Mindanao',174364),(836,'Koronadal','PHL','Southern Mindanao',158273),(837,'Marawi','PHL','Central Mindanao',131090),(838,'Dagupan','PHL','Ilocos',163676),(839,'Sagay','PHL','Western Visayas',142854),(840,'Roxas','PHL','Western Visayas',156197),(841,'Lubao','PHL','Central Luzon',150843),(842,'Digos','PHL','Southern Mindanao',159891),(843,'San Miguel','PHL','Central Luzon',142854),(844,'Malaybalay','PHL','Northern Mindanao',153085),(845,'Tuguegarao','PHL','Cagayan Valley',138865),(846,'Ilagan','PHL','Cagayan Valley',135174),(847,'Baliuag','PHL','Central Luzon',143565),(848,'Surigao','PHL','Caraga',140540),(849,'San Carlos','PHL','Western Visayas',129981),(850,'San Juan del Monte','PHL','National Capital Reg',121430),(851,'Tanauan','PHL','Southern Tagalog',152393),(852,'Concepcion','PHL','Central Luzon',139832),(853,'Rodriguez (Montalban)','PHL','Southern Tagalog',280904),(854,'Sariaya','PHL','Southern Tagalog',138894),(855,'Malasiqui','PHL','Ilocos',123566),(856,'General Mariano Alvarez','PHL','Southern Tagalog',138540),(857,'Urdaneta','PHL','Ilocos',125451),(858,'Hagonoy','PHL','Central Luzon',125689),(859,'San Jose','PHL','Southern Tagalog',131188),(860,'Polomolok','PHL','Southern Mindanao',138273),(861,'Santiago','PHL','Cagayan Valley',132804),(862,'Tanza','PHL','Southern Tagalog',188755),(863,'Ozamis','PHL','Northern Mindanao',131527),(864,'Mexico','PHL','Central Luzon',146851),(865,'San Jose','PHL','Central Luzon',129424),(866,'Silay','PHL','Western Visayas',120365),(867,'General Trias','PHL','Southern Tagalog',243322),(868,'Tabaco','PHL','Bicol',125083),(869,'Cabuyao','PHL','Southern Tagalog',248436),(870,'Calapan','PHL','Southern Tagalog',124173),(871,'Mati','PHL','Southern Mindanao',126143),(872,'Midsayap','PHL','Central Mindanao',134170),(873,'Cauayan','PHL','Cagayan Valley',125148),(874,'Gingoog','PHL','Northern Mindanao',112247),(875,'Dumaguete','PHL','Central Visayas',116392),(876,'San Fernando','PHL','Ilocos',102082),(877,'Arayat','PHL','Central Luzon',121348),(878,'Bayawan (Tulong)','PHL','Central Visayas',114074),(879,'Kidapawan','PHL','Central Mindanao',117610),(880,'Daraga (Locsin)','PHL','Bicol',115804),(881,'Marilao','PHL','Central Luzon',185624),(882,'Malita','PHL','Southern Mindanao',109568),(883,'Dipolog','PHL','Western Mindanao',120460),(884,'Cavite','PHL','Southern Tagalog',101120),(885,'Danao','PHL','Central Visayas',119252),(886,'Bislig','PHL','Caraga',111133),(887,'Talavera','PHL','Central Luzon',112515),(888,'Guagua','PHL','Central Luzon',111199),(889,'Bayambang','PHL','Ilocos',111521),(890,'Nasugbu','PHL','Southern Tagalog',122483),(891,'Baybay','PHL','Eastern Visayas',102841),(892,'Capas','PHL','Central Luzon',125852),(893,'Sultan Kudarat','PHL','ARMM',82758),(894,'Laoag','PHL','Ilocos',104904),(895,'Bayugan','PHL','Caraga',99361),(896,'Malungon','PHL','Southern Mindanao',95993),(897,'Santa Cruz','PHL','Southern Tagalog',110943),(898,'Sorsogon','PHL','Bicol',155144),(899,'Candelaria','PHL','Southern Tagalog',110570),(900,'Ligao','PHL','Bicol',104914),(901,'Tórshavn','FRO','Streymoyar',13000),(902,'Libreville','GAB','Estuaire',578156),(903,'Serekunda','GMB','Kombo St Mary',335733),(904,'Banjul','GMB','Banjul',31928),(905,'Tbilisi','GEO','Tbilisi',1473551),(906,'Kutaisi','GEO','Imereti',197000),(907,'Rustavi','GEO','Kvemo Kartli',122500),(908,'Batumi','GEO','Adzaria [AtÂšara]',180000),(909,'Sohumi','GEO','Abhasia [Aphazeti]',39100),(910,'Accra','GHA','Greater Accra',2291352),(911,'Kumasi','GHA','Ashanti',2069350),(912,'Tamale','GHA','Northern',562919),(913,'Tema','GHA','Greater Accra',161612),(914,'Sekondi-Takoradi','GHA','Western',445205),(915,'Gibraltar','GIB','Â–',29436),(916,'Saint GeorgeÂ´s','GRD','St George',33734),(917,'Nuuk','GRL','Kitaa',16454),(918,'Les Abymes','GLP','Grande-Terre',60147),(919,'Basse-Terre','GLP','Basse-Terre',15500),(920,'Tamuning','GUM','Â–',18012),(921,'AgaÃ±a','GUM','Â–',5656),(922,'Ciudad de Guatemala','GTM','Guatemala',823301),(923,'Mixco','GTM','Guatemala',384428),(924,'Villa Nueva','GTM','Guatemala',301947),(925,'Quetzaltenango','GTM','Quetzaltenango',120496),(926,'Conakry','GIN','Conakry',1931184),(927,'Bissau','GNB','Bissau',1664000),(928,'Georgetown','GUY','Georgetown',239227),(929,'Port-au-Prince','HTI','Ouest',1234742),(930,'Carrefour','HTI','Ouest',439581),(931,'Delmas','HTI','Ouest',377187),(932,'Le-Cap-HaÃ¯tien','HTI','Nord',134815),(933,'Tegucigalpa','HND','Distrito Central',1126534),(934,'San Pedro Sula','HND','CortÃ©s',873824),(935,'La Ceiba','HND','AtlÃ¡ntida',196856),(936,'Kowloon and New Kowloon','HKG','Kowloon and New Kowl',2019533),(937,'Victoria','HKG','Hongkong',1100000),(938,'Longyearbyen','SJM','LÃ¤nsimaa',2040),(939,'Jakarta','IDN','Jakarta Raya',10187595),(940,'Surabaya','IDN','East Java',2765908),(941,'Bandung','IDN','West Java',2394873),(942,'Medan','IDN','Sumatera Utara',2097610),(943,'Palembang','IDN','Sumatera Selatan',1455284),(944,'Tangerang','IDN','West Java',1798601),(945,'Semarang','IDN','Central Java',2067254),(946,'Ujung Pandang','IDN','Sulawesi Selatan',1334090),(947,'Malang','IDN','East Java',820243),(948,'Bandar Lampung','IDN','Lampung',881801),(949,'Bekasi','IDN','West Java',2334871),(950,'Padang','IDN','Sumatera Barat',853999),(951,'Surakarta','IDN','Central Java',520061),(952,'Banjarmasin','IDN','Kalimantan Selatan',625481),(953,'Pekan Baru','IDN','Riau',949775),(954,'Denpasar','IDN','Bali',788589),(955,'Yogyakarta','IDN','Yogyakarta',388088),(956,'Pontianak','IDN','Kalimantan Barat',554764),(957,'Samarinda','IDN','Kalimantan Timur',727500),(958,'Jambi','IDN','Jambi',531857),(959,'Depok','IDN','West Java',1751696),(960,'Cimahi','IDN','West Java',566200),(961,'Balikpapan','IDN','Kalimantan Timur',557579),(962,'Manado','IDN','Sulawesi Utara',410481),(963,'Mataram','IDN','Nusa Tenggara Barat',402843),(964,'Pekalongan','IDN','Central Java',281434),(965,'Tegal','IDN','Central Java',247076),(966,'Bogor','IDN','West Java',950334),(967,'Ciputat','IDN','West Java',192205),(968,'Pondokgede','IDN','West Java',363200),(969,'Cirebon','IDN','West Java',296389),(970,'Kediri','IDN','East Java',268507),(971,'Ambon','IDN','Molukit',441000),(972,'Jember','IDN','East Java',2346498),(973,'Cilacap','IDN','Central Java',1174964),(974,'Cimanggis','IDN','West Java',205100),(975,'Pematang Siantar','IDN','Sumatera Utara',234698),(976,'Purwokerto','IDN','Central Java',249705),(977,'Ciomas','IDN','West Java',237400),(978,'Tasikmalaya','IDN','West Java',635424),(979,'Madiun','IDN','East Java',170851),(980,'Bengkulu','IDN','Bengkulu',308756),(981,'Karawang','IDN','West Java',145000),(982,'Banda Aceh','IDN','Aceh',223446),(983,'Palu','IDN','Sulawesi Tengah',335297),(984,'Pasuruan','IDN','East Java',186262),(985,'Kupang','IDN','Nusa Tenggara Timur',349344),(986,'Tebing Tinggi','IDN','Sumatera Utara',145248),(987,'Percut Sei Tuan','IDN','Sumatera Utara',384672),(988,'Binjai','IDN','Sumatera Utara',246154),(989,'Sukabumi','IDN','West Java',298681),(990,'Waru','IDN','East Java',224300),(991,'Pangkal Pinang','IDN','Sumatera Selatan',174758),(992,'Magelang','IDN','Central Java',118227),(993,'Blitar','IDN','East Java',131968),(994,'Serang','IDN','West Java',577000),(995,'Probolinggo','IDN','East Java',217062),(996,'Cilegon','IDN','West Java',386985),(997,'Cianjur','IDN','West Java',165420),(998,'Ciparay','IDN','West Java',111500),(999,'Lhokseumawe','IDN','Aceh',170504),(1000,'Taman','IDN','East Java',107000),(1001,'Depok','IDN','Yogyakarta',106800),(1002,'Citeureup','IDN','West Java',105100),(1003,'Pemalang','IDN','Central Java',103500),(1004,'Klaten','IDN','Central Java',103300),(1005,'Salatiga','IDN','Central Java',170332),(1006,'Cibinong','IDN','West Java',188663),(1007,'Palangka Raya','IDN','Kalimantan Tengah',220962),(1008,'Mojokerto','IDN','East Java',120196),(1009,'Purwakarta','IDN','West Java',798272),(1010,'Garut','IDN','West Java',118173),(1011,'Kudus','IDN','Central Java',195300),(1012,'Kendari','IDN','Sulawesi Tenggara',314812),(1013,'Jaya Pura','IDN','West Irian',256705),(1014,'Gorontalo','IDN','Sulawesi Utara',180127),(1015,'Majalaya','IDN','West Java',284052),(1016,'Pondok Aren','IDN','West Java',303093),(1017,'Jombang','IDN','East Java',252600),(1018,'Sunggal','IDN','Sumatera Utara',92300),(1019,'Batam','IDN','Riau',944285),(1020,'Padang Sidempuan','IDN','Sumatera Utara',191554),(1021,'Sawangan','IDN','West Java',257100),(1022,'Banyuwangi','IDN','East Java',108166),(1023,'Tanjung Pinang','IDN','Riau',192493),(1024,'Mumbai (Bombay)','IND','Maharashtra',13830884),(1025,'Delhi','IND','Delhi',22000000),(1026,'Calcutta [Kolkata]','IND','West Bengali',4486679),(1027,'Chennai (Madras)','IND','Tamil Nadu',6500000),(1028,'Hyderabad','IND','Andhra Pradesh',6809970),(1029,'Ahmedabad','IND','Gujarat',6270156),(1030,'Bangalore','IND','Karnataka',9645551),(1031,'Kanpur','IND','Uttar Pradesh',2767031),(1032,'Nagpur','IND','Maharashtra',2405421),(1033,'Lucknow','IND','Uttar Pradesh',2815601),(1034,'Pune','IND','Maharashtra',5049968),(1035,'Surat','IND','Gujarat',7573733),(1036,'Jaipur','IND','Rajasthan',3073350),(1037,'Indore','IND','Madhya Pradesh',1960631),(1038,'Bhopal','IND','Madhya Pradesh',1795648),(1039,'Ludhiana','IND','Punjab',1613878),(1040,'Vadodara (Baroda)','IND','Gujarat',1602424),(1041,'Kalyan','IND','Maharashtra',1194000),(1042,'Madurai','IND','Tamil Nadu',1016885),(1043,'Haora (Howrah)','IND','West Bengali',1072161),(1044,'Varanasi (Benares)','IND','Uttar Pradesh',1201815),(1045,'Patna','IND','Bihar',1683200),(1046,'Srinagar','IND','Jammu and Kashmir',1273312),(1047,'Agra','IND','Uttar Pradesh',1686976),(1048,'Coimbatore','IND','Tamil Nadu',1061447),(1049,'Thane (Thana)','IND','Maharashtra',1818872),(1050,'Allahabad','IND','Uttar Pradesh',1216719),(1051,'Meerut','IND','Uttar Pradesh',1309023),(1052,'Vishakhapatnam','IND','Andhra Pradesh',2035690),(1053,'Jabalpur','IND','Madhya Pradesh',1267564),(1054,'Amritsar','IND','Punjab',1132761),(1055,'Faridabad','IND','Haryana',1404653),(1056,'Vijayawada','IND','Andhra Pradesh',1048240),(1057,'Gwalior','IND','Madhya Pradesh',1053505),(1058,'Jodhpur','IND','Rajasthan',1033918),(1059,'Nashik (Nasik)','IND','Maharashtra',1486973),(1060,'Hubli-Dharwad','IND','Karnataka',1349563),(1061,'Solapur (Sholapur)','IND','Maharashtra',1092510),(1062,'Ranchi','IND','Jharkhand',1073440),(1063,'Bareilly','IND','Uttar Pradesh',898167),(1064,'Guwahati (Gauhati)','IND','Assam',960787),(1065,'Shambajinagar (Aurangabad)','IND','Maharashtra',873311),(1066,'Cochin (Kochi)','IND','Kerala',612343),(1067,'Rajkot','IND','Gujarat',1280000),(1068,'Kota','IND','Rajasthan',1001365),(1069,'Thiruvananthapuram (Trivandrum','IND','Kerala',752490),(1070,'Pimpri-Chinchwad','IND','Maharashtra',1729320),(1071,'Jalandhar (Jullundur)','IND','Punjab',903491),(1072,'Gorakhpur','IND','Uttar Pradesh',636275),(1073,'Chandigarh','IND','Chandigarh',960787),(1074,'Mysore','IND','Karnataka',887446),(1075,'Aligarh','IND','Uttar Pradesh',1273212),(1076,'Guntur','IND','Andhra Pradesh',1028667),(1077,'Jamshedpur','IND','Jharkhand',1337131),(1078,'Ghaziabad','IND','Uttar Pradesh',2358525),(1079,'Warangal','IND','Andhra Pradesh',759594),(1080,'Raipur','IND','Chhatisgarh',1010087),(1081,'Moradabad','IND','Uttar Pradesh',889810),(1082,'Durgapur','IND','West Bengali',566937),(1083,'Amravati','IND','Maharashtra',646801),(1084,'Calicut (Kozhikode)','IND','Kerala',432097),(1085,'Bikaner','IND','Rajasthan',2367745),(1086,'Bhubaneswar','IND','Orissa',837737),(1087,'Kolhapur','IND','Maharashtra',561841),(1088,'Kataka (Cuttack)','IND','Orissa',606007),(1089,'Ajmer','IND','Rajasthan',542580),(1090,'Bhavnagar','IND','Gujarat',593768),(1091,'Tiruchirapalli','IND','Tamil Nadu',846915),(1092,'Bhilai','IND','Chhatisgarh',625697),(1093,'Bhiwandi','IND','Maharashtra',1125897),(1094,'Saharanpur','IND','Uttar Pradesh',703345),(1095,'Ulhasnagar','IND','Maharashtra',506937),(1096,'Salem','IND','Tamil Nadu',831038),(1097,'Ujjain','IND','Madhya Pradesh',562266),(1098,'Malegaon','IND','Maharashtra',471006),(1099,'Jamnagar','IND','Gujarat',529308),(1100,'Bokaro Steel City','IND','Jharkhand',563417),(1101,'Akola','IND','Maharashtra',427146),(1102,'Belgaum','IND','Karnataka',778439),(1103,'Rajahmundry','IND','Andhra Pradesh',478199),(1104,'Nellore','IND','Andhra Pradesh',565258),(1105,'Udaipur','IND','Rajasthan',598178),(1106,'New Bombay','IND','Maharashtra',1119477),(1107,'Bhatpara','IND','West Bengali',390467),(1108,'Gulbarga','IND','Karnataka',354099),(1109,'New Delhi','IND','Delhi',249998),(1110,'Jhansi','IND','Uttar Pradesh',507293),(1111,'Gaya','IND','Bihar',463454),(1112,'Kakinada','IND','Andhra Pradesh',412457),(1113,'Dhule (Dhulia)','IND','Maharashtra',376093),(1114,'Panihati','IND','West Bengali',348379),(1115,'Nanded (Nander)','IND','Maharashtra',650554),(1116,'Mangalore','IND','Karnataka',539387),(1117,'Dehra Dun','IND','Uttaranchal',578420),(1118,'Kamarhati','IND','West Bengali',314334),(1119,'Davangere','IND','Karnataka',435128),(1120,'Asansol','IND','West Bengali',1243008),(1121,'Bhagalpur','IND','Bihar',398138),(1122,'Bellary','IND','Karnataka',409644),(1123,'Barddhaman (Burdwan)','IND','West Bengali',347016),(1124,'Rampur','IND','Uttar Pradesh',325248),(1125,'Jalgaon','IND','Maharashtra',460468),(1126,'Muzaffarpur','IND','Bihar',351838),(1127,'Nizamabad','IND','Andhra Pradesh',310467),(1128,'Muzaffarnagar','IND','Uttar Pradesh',392451),(1129,'Patiala','IND','Punjab',762003),(1130,'Shahjahanpur','IND','Uttar Pradesh',297932),(1131,'Kurnool','IND','Andhra Pradesh',478124),(1132,'Tiruppur (Tirupper)','IND','Tamil Nadu',444543),(1133,'Rohtak','IND','Haryana',373133),(1134,'South Dum Dum','IND','West Bengali',392150),(1135,'Mathura','IND','Uttar Pradesh',441894),(1136,'Chandrapur','IND','Maharashtra',373000),(1137,'Barahanagar (Baranagar)','IND','West Bengali',248466),(1138,'Darbhanga','IND','Bihar',267348),(1139,'Siliguri (Shiliguri)','IND','West Bengali',901489),(1140,'Raurkela','IND','Orissa',224987),(1141,'Ambattur','IND','Tamil Nadu',310967),(1142,'Panipat','IND','Haryana',261740),(1143,'Firozabad','IND','Uttar Pradesh',603797),(1144,'Ichalkaranji','IND','Maharashtra',287570),(1145,'Jammu','IND','Jammu and Kashmir',951373),(1146,'Ramagundam','IND','Andhra Pradesh',452261),(1147,'Eluru','IND','Andhra Pradesh',515000),(1148,'Brahmapur','IND','Orissa',355823),(1149,'Alwar','IND','Rajasthan',1015310),(1150,'Pondicherry','IND','Pondicherry',654392),(1151,'Thanjavur','IND','Tamil Nadu',222619),(1152,'Bihar Sharif','IND','Bihar',331972),(1153,'Tuticorin','IND','Tamil Nadu',410760),(1154,'Imphal','IND','Manipur',264986),(1155,'Latur','IND','Maharashtra',382754),(1156,'Sagar','IND','Madhya Pradesh',371987),(1157,'Farrukhabad-cum-Fatehgarh','IND','Uttar Pradesh',275754),(1158,'Sangli','IND','Maharashtra',502697),(1159,'Parbhani','IND','Maharashtra',307000),(1160,'Nagar Coil','IND','Tamil Nadu',224329),(1161,'Bijapur','IND','Karnataka',327427),(1162,'Kukatpalle','IND','Andhra Pradesh',292289),(1163,'Bally','IND','West Bengali',260906),(1164,'Bhilwara','IND','Rajasthan',370009),(1165,'Ratlam','IND','Madhya Pradesh',273892),(1166,'Avadi','IND','Tamil Nadu',229403),(1167,'Dindigul','IND','Tamil Nadu',292132),(1168,'Ahmadnagar','IND','Maharashtra',350905),(1169,'Bilaspur','IND','Chhatisgarh',630106),(1170,'Shimoga','IND','Karnataka',322505),(1171,'Kharagpur','IND','West Bengali',372339),(1172,'Mira Bhayandar','IND','Maharashtra',814655),(1173,'Vellore','IND','Tamil Nadu',177230),(1174,'Jalna','IND','Maharashtra',812357),(1175,'Burnpur','IND','West Bengali',374933),(1176,'Anantapur','IND','Andhra Pradesh',562340),(1177,'Allappuzha (Alleppey)','IND','Kerala',174164),(1178,'Tirupati','IND','Andhra Pradesh',459985),(1179,'Karnal','IND','Haryana',286974),(1180,'Burhanpur','IND','Madhya Pradesh',210891),(1181,'Hisar (Hissar)','IND','Haryana',301249),(1182,'Tiruvottiyur','IND','Tamil Nadu',248059),(1183,'Mirzapur-cum-Vindhyachal','IND','Uttar Pradesh',233691),(1184,'Secunderabad','IND','Andhra Pradesh',204182),(1185,'Nadiad','IND','Gujarat',225132),(1186,'Dewas','IND','Madhya Pradesh',289438),(1187,'Murwara (Katni)','IND','Madhya Pradesh',221875),(1188,'Ganganagar','IND','Rajasthan',370768),(1189,'Vizianagaram','IND','Andhra Pradesh',227533),(1190,'Erode','IND','Tamil Nadu',521776),(1191,'Machilipatnam (Masulipatam)','IND','Andhra Pradesh',183370),(1192,'Bhatinda (Bathinda)','IND','Punjab',285813),(1193,'Raichur','IND','Karnataka',207421),(1194,'Agartala','IND','Tripura',438408),(1195,'Arrah (Ara)','IND','Bihar',438408),(1196,'Satna','IND','Madhya Pradesh',225468),(1197,'Lalbahadur Nagar','IND','Andhra Pradesh',261987),(1198,'Aizawl','IND','Mizoram',291822),(1199,'Uluberia','IND','West Bengali',202095),(1200,'Katihar','IND','Bihar',240565),(1201,'Cuddalore','IND','Tamil Nadu',153086),(1202,'Hugli-Chinsurah','IND','West Bengali',170201),(1203,'Dhanbad','IND','Jharkhand',1195298),(1204,'Raiganj','IND','West Bengali',199758),(1205,'Sambhal','IND','Uttar Pradesh',150869),(1206,'Durg','IND','Chhatisgarh',232517),(1207,'Munger (Monghyr)','IND','Bihar',250112),(1208,'Kanchipuram','IND','Tamil Nadu',164265),(1209,'North Dum Dum','IND','West Bengali',220042),(1210,'Karimnagar','IND','Andhra Pradesh',299660),(1211,'Bharatpur','IND','Rajasthan',252109),(1212,'Sikar','IND','Rajasthan',237579),(1213,'Hardwar (Haridwar)','IND','Uttaranchal',147305),(1214,'Dabgram','IND','West Bengali',197217),(1215,'Morena','IND','Madhya Pradesh',150959),(1216,'Noida','IND','Uttar Pradesh',305058),(1217,'Hapur','IND','Uttar Pradesh',262801),(1218,'Bhusawal','IND','Maharashtra',204016),(1219,'Khandwa','IND','Madhya Pradesh',171976),(1220,'Yamuna Nagar','IND','Haryana',383318),(1221,'Sonipat (Sonepat)','IND','Haryana',193922),(1222,'Tenali','IND','Andhra Pradesh',164649),(1223,'Raurkela Civil Township','IND','Orissa',552970),(1224,'Kollam (Quilon)','IND','Kerala',349033),(1225,'Kumbakonam','IND','Tamil Nadu',140113),(1226,'Ingraj Bazar (English Bazar)','IND','West Bengali',216083),(1227,'Timkur','IND','Karnataka',248929),(1228,'Amroha','IND','Uttar Pradesh',165129),(1229,'Serampore','IND','West Bengali',137028),(1230,'Chapra','IND','Bihar',197955),(1231,'Pali','IND','Rajasthan',229956),(1232,'Maunath Bhanjan','IND','Uttar Pradesh',292000),(1233,'Adoni','IND','Andhra Pradesh',270771),(1234,'Jaunpur','IND','Uttar Pradesh',236062),(1235,'Tirunelveli','IND','Tamil Nadu',474838),(1236,'Bahraich','IND','Uttar Pradesh',168323),(1237,'Gadag Betigeri','IND','Karnataka',154982),(1238,'Proddatur','IND','Andhra Pradesh',164932),(1239,'Chittoor','IND','Andhra Pradesh',175640),(1240,'Barrackpur','IND','West Bengali',144391),(1241,'Bharuch (Broach)','IND','Gujarat',168729),(1242,'Naihati','IND','West Bengali',215432),(1243,'Shillong','IND','Meghalaya',354325),(1244,'Sambalpur','IND','Orissa',153643),(1245,'Junagadh','IND','Gujarat',320250),(1246,'Rae Bareli','IND','Uttar Pradesh',191056),(1247,'Rewa','IND','Madhya Pradesh',183232),(1248,'Gurgaon','IND','Haryana',876824),(1249,'Khammam','IND','Andhra Pradesh',266214),(1250,'Bulandshahr','IND','Uttar Pradesh',222826),(1251,'Navsari','IND','Gujarat',163000),(1252,'Malkajgiri','IND','Andhra Pradesh',175000),(1253,'Midnapore (Medinipur)','IND','West Bengali',169127),(1254,'Miraj','IND','Maharashtra',175407),(1255,'Raj Nandgaon','IND','Chhatisgarh',163122),(1256,'Alandur','IND','Tamil Nadu',164162),(1257,'Puri','IND','Orissa',157837),(1258,'Navadwip','IND','West Bengali',175474),(1259,'Sirsa','IND','Haryana',460126),(1260,'Korba','IND','Chhatisgarh',311823),(1261,'Faizabad','IND','Uttar Pradesh',510000),(1262,'Etawah','IND','Uttar Pradesh',210453),(1263,'Pathankot','IND','Punjab',253987),(1264,'Gandhinagar','IND','Gujarat',195891),(1265,'Palghat (Palakkad)','IND','Kerala',173289),(1266,'Veraval','IND','Gujarat',341207),(1267,'Hoshiarpur','IND','Punjab',560346),(1268,'Ambala','IND','Haryana',406784),(1269,'Sitapur','IND','Uttar Pradesh',151827),(1270,'Bhiwani','IND','Haryana',169424),(1271,'Cuddapah','IND','Andhra Pradesh',344078),(1272,'Bhimavaram','IND','Andhra Pradesh',200000),(1273,'Krishnanagar','IND','West Bengali',181182),(1274,'Chandannagar','IND','West Bengali',166949),(1275,'Mandya','IND','Karnataka',131211),(1276,'Dibrugarh','IND','Assam',186214),(1277,'Nandyal','IND','Andhra Pradesh',211787),(1278,'Balurghat','IND','West Bengali',151183),(1279,'Neyveli','IND','Tamil Nadu',128133),(1280,'Fatehpur','IND','Uttar Pradesh',151757),(1281,'Mahbubnagar','IND','Andhra Pradesh',130849),(1282,'Budaun','IND','Uttar Pradesh',439221),(1283,'Porbandar','IND','Gujarat',133083),(1284,'Silchar','IND','Assam',228985),(1285,'Berhampore (Baharampur)','IND','West Bengali',305609),(1286,'Purnea (Purnia)','IND','Jharkhand',194912),(1287,'Bankura','IND','West Bengali',138036),(1288,'Rajapalaiyam','IND','Tamil Nadu',307959),(1289,'Titagarh','IND','West Bengali',124198),(1290,'Halisahar','IND','West Bengali',124479),(1291,'Hathras','IND','Uttar Pradesh',123244),(1292,'Bhir (Bid)','IND','Maharashtra',164751),(1293,'Pallavaram','IND','Tamil Nadu',216308),(1294,'Anand','IND','Gujarat',633793),(1295,'Mango','IND','Jharkhand',316874),(1296,'Santipur','IND','West Bengali',288718),(1297,'Bhind','IND','Madhya Pradesh',153768),(1298,'Gondiya','IND','Maharashtra',132889),(1299,'Tiruvannamalai','IND','Tamil Nadu',144683),(1300,'Yeotmal (Yavatmal)','IND','Maharashtra',122906),(1301,'Kulti-Barakar','IND','West Bengali',290057),(1302,'Moga','IND','Punjab',124624),(1303,'Shivapuri','IND','Madhya Pradesh',316859),(1304,'Bidar','IND','Karnataka',170204),(1305,'Guntakal','IND','Andhra Pradesh',126658),(1306,'Unnao','IND','Uttar Pradesh',144662),(1307,'Barasat','IND','West Bengali',237783),(1308,'Tambaram','IND','Tamil Nadu',137933),(1309,'Abohar','IND','Punjab',124339),(1310,'Pilibhit','IND','Uttar Pradesh',156605),(1311,'Valparai','IND','Tamil Nadu',94962),(1312,'Gonda','IND','Uttar Pradesh',122164),(1313,'Surendranagar','IND','Gujarat',205973),(1314,'Qutubullapur','IND','Andhra Pradesh',225816),(1315,'Beawar','IND','Rajasthan',145809),(1316,'Hindupur','IND','Andhra Pradesh',175835),(1317,'Gandhidham','IND','Gujarat',248000),(1318,'Haldwani-cum-Kathgodam','IND','Uttaranchal',452169),(1319,'Tellicherry (Thalassery)','IND','Kerala',80386),(1320,'Wardha','IND','Maharashtra',111118),(1321,'Rishra','IND','West Bengali',513259),(1322,'Bhuj','IND','Gujarat',289429),(1323,'Modinagar','IND','Uttar Pradesh',272918),(1324,'Gudivada','IND','Andhra Pradesh',118289),(1325,'Basirhat','IND','West Bengali',144891),(1326,'Uttarpara-Kotrung','IND','West Bengali',150204),(1327,'Ongole','IND','Andhra Pradesh',302643),(1328,'North Barrackpur','IND','West Bengali',123523),(1329,'Guna','IND','Madhya Pradesh',180978),(1330,'Haldia','IND','West Bengali',200762),(1331,'Habra','IND','West Bengali',304584),(1332,'Kanchrapara','IND','West Bengali',122181),(1333,'Tonk','IND','Rajasthan',135663),(1334,'Champdani','IND','West Bengali',110983),(1335,'Orai','IND','Uttar Pradesh',190625),(1336,'Pudukkottai','IND','Tamil Nadu',148215),(1337,'Sasaram','IND','Bihar',150042),(1338,'Hazaribag','IND','Jharkhand',153499),(1339,'Palayankottai','IND','Tamil Nadu',91174),(1340,'Banda','IND','Uttar Pradesh',134839),(1341,'Godhra','IND','Gujarat',121852),(1342,'Hospet','IND','Karnataka',206159),(1343,'Ashoknagar-Kalyangarh','IND','West Bengali',123906),(1344,'Achalpur','IND','Maharashtra',107316),(1345,'Patan','IND','Gujarat',125027),(1346,'Mandasor','IND','Madhya Pradesh',116505),(1347,'Damoh','IND','Madhya Pradesh',112160),(1348,'Satara','IND','Maharashtra',149171),(1349,'Meerut Cantonment','IND','Uttar Pradesh',15876),(1350,'Dehri','IND','Bihar',119007),(1351,'Delhi Cantonment','IND','Delhi',124452),(1352,'Chhindwara','IND','Madhya Pradesh',150000),(1353,'Bansberia','IND','West Bengali',104453),(1354,'Nagaon','IND','Assam',147231),(1355,'Kanpur Cantonment','IND','Uttar Pradesh',108035),(1356,'Vidisha','IND','Madhya Pradesh',155959),(1357,'Bettiah','IND','Bihar',139328),(1358,'Purulia','IND','Jharkhand',126894),(1359,'Hassan','IND','Karnataka',157000),(1360,'Ambala Sadar','IND','Haryana',106378),(1361,'Baidyabati','IND','West Bengali',121081),(1362,'Morvi','IND','Gujarat',250000),(1363,'Raigarh','IND','Chhatisgarh',364287),(1364,'Vejalpur','IND','Gujarat',113304),(1365,'Baghdad','IRQ','Baghdad',9500000),(1366,'Mosul','IRQ','Ninawa',3000096),(1367,'Irbil','IRQ','Irbil',1293820),(1368,'Kirkuk','IRQ','al-Tamim',1000000),(1369,'Basra','IRQ','Basra',2300125),(1370,'al-Sulaymaniya','IRQ','al-Sulaymaniya',1200000),(1371,'al-Najaf','IRQ','al-Najaf',800137),(1372,'Karbala','IRQ','Karbala',800347),(1373,'al-Hilla','IRQ','Babil',568834),(1374,'al-Nasiriya','IRQ','DhiQar',560200),(1375,'al-Amara','IRQ','Maysan',511542),(1376,'al-Diwaniya','IRQ','al-Qadisiya',440927),(1377,'al-Ramadi','IRQ','al-Anbar',483209),(1378,'al-Kut','IRQ','Wasit',374000),(1379,'Baquba','IRQ','Diyala',467900),(1380,'Teheran','IRN','Teheran',9105036),(1381,'Mashhad','IRN','Khorasan',2410800),(1382,'Esfahan','IRN','Esfahan',1602110),(1383,'Tabriz','IRN','East Azerbaidzan',1398060),(1384,'Shiraz','IRN','Fars',1227311),(1385,'Karaj','IRN','Teheran',1377450),(1386,'Ahvaz','IRN','Khuzestan',969843),(1387,'Qom','IRN','Qom',951918),(1388,'Kermanshah','IRN','Kermanshah',784602),(1389,'Urmia','IRN','West Azerbaidzan',583255),(1390,'Zahedan','IRN','Sistan va Baluchesta',567449),(1391,'Rasht','IRN','Gilan',557366),(1392,'Hamadan','IRN','Hamadan',479640),(1393,'Kerman','IRN','Kerman',515414),(1394,'Arak','IRN','Markazi',446760),(1395,'Ardebil','IRN','Ardebil',418262),(1396,'Yazd','IRN','Yazd',432194),(1397,'Qazvin','IRN','Qazvin',349821),(1398,'Zanjan','IRN','Zanjan',341801),(1399,'Sanandaj','IRN','Kordestan',311446),(1400,'Bandar-e-Abbas','IRN','Hormozgan',367508),(1401,'Khorramabad','IRN','Lorestan',328544),(1402,'Eslamshahr','IRN','Teheran',357171),(1403,'Borujerd','IRN','Lorestan',227547),(1404,'Abadan','IRN','Khuzestan',217988),(1405,'Dezful','IRN','Khuzestan',228507),(1406,'Kashan','IRN','Esfahan',248789),(1407,'Sari','IRN','Mazandaran',259084),(1408,'Gorgan','IRN','Golestan',269226),(1409,'Najafabad','IRN','Esfahan',206114),(1410,'Sabzevar','IRN','Khorasan',208172),(1411,'Khomeynishahr','IRN','Esfahan',218737),(1412,'Amol','IRN','Mazandaran',197470),(1413,'Neyshabur','IRN','Khorasan',205972),(1414,'Babol','IRN','Mazandaran',243636),(1415,'Khoy','IRN','West Azerbaidzan',178708),(1416,'Malayer','IRN','Hamadan',153748),(1417,'Bushehr','IRN','Bushehr',161674),(1418,'Qaemshahr','IRN','Mazandaran',174246),(1419,'Qarchak','IRN','Teheran',173832),(1420,'Qods','IRN','Teheran',158278),(1421,'Sirjan','IRN','Kerman',167014),(1422,'Bojnurd','IRN','Khorasan',172772),(1423,'Maragheh','IRN','East Azerbaidzan',146405),(1424,'Birjand','IRN','Khorasan',157848),(1425,'Ilam','IRN','Ilam',155289),(1426,'Bukan','IRN','West Azerbaidzan',149340),(1427,'Masjed-e-Soleyman','IRN','Khuzestan',106121),(1428,'Saqqez','IRN','Kordestan',131349),(1429,'Gonbad-e Qabus','IRN','Mazandaran',127167),(1430,'Saveh','IRN','Qom',179009),(1431,'Mahabad','IRN','West Azerbaidzan',133324),(1432,'Varamin','IRN','Teheran',208569),(1433,'Andimeshk','IRN','Khuzestan',119422),(1434,'Khorramshahr','IRN','Khuzestan',123866),(1435,'Shahrud','IRN','Semnan',126916),(1436,'Marv Dasht','IRN','Fars',123858),(1437,'Zabol','IRN','Sistan va Baluchesta',130642),(1438,'Shahr-e Kord','IRN','Chaharmahal va Bakht',126746),(1439,'Bandar-e Anzali','IRN','Gilan',109687),(1440,'Rafsanjan','IRN','Kerman',136388),(1441,'Marand','IRN','East Azerbaidzan',114165),(1442,'Torbat-e Heydariyeh','IRN','Khorasan',119360),(1443,'Jahrom','IRN','Fars',103023),(1444,'Semnan','IRN','Semnan',124999),(1445,'Miandoab','IRN','West Azerbaidzan',112933),(1446,'Qomsheh','IRN','Esfahan',10800),(1447,'Dublin','IRL','Leinster',527612),(1448,'Cork','IRL','Munster',119230),(1449,'Reykjavík','ISL','HÃ¶fuÃ°borgarsvÃ¦Ã°i',118488),(1450,'Jerusalem','ISR','Jerusalem',815600),(1451,'Tel Aviv-Jaffa','ISR','Tel Aviv',403700),(1452,'Haifa','ISR','Haifa',265600),(1453,'Rishon Le Ziyyon','ISR','Ha Merkaz',228200),(1454,'Beerseba','ISR','Ha Darom',197300),(1455,'Holon','ISR','Tel Aviv',184700),(1456,'Petah Tiqwa','ISR','Ha Merkaz',209600),(1457,'Ashdod','ISR','Ha Darom',206400),(1458,'Netanya','ISR','Ha Merkaz',183200),(1459,'Bat Yam','ISR','Tel Aviv',130000),(1460,'Bene Beraq','ISR','Tel Aviv',154400),(1461,'Ramat Gan','ISR','Tel Aviv',145000),(1462,'Ashqelon','ISR','Ha Darom',111900),(1463,'Rehovot','ISR','Ha Merkaz',112700),(1464,'Roma','ITA','Latium',2617175),(1465,'Milano','ITA','Lombardia',1242123),(1466,'Napoli','ITA','Campania',962003),(1467,'Torino','ITA','Piemonte',872367),(1468,'Palermo','ITA','Sisilia',657651),(1469,'Genova','ITA','Liguria',586180),(1470,'Bologna','ITA','Emilia-Romagna',371337),(1471,'Firenze','ITA','Toscana',358079),(1472,'Catania','ITA','Sisilia',293902),(1473,'Bari','ITA','Apulia',315933),(1474,'Venezia','ITA','Veneto',261362),(1475,'Messina','ITA','Sisilia',243262),(1476,'Verona','ITA','Veneto',252520),(1477,'Trieste','ITA','Friuli-Venezia Giuli',202123),(1478,'Padova','ITA','Veneto',206192),(1479,'Taranto','ITA','Apulia',200154),(1480,'Brescia','ITA','Lombardia',189902),(1481,'Reggio di Calabria','ITA','Calabria',180817),(1482,'Modena','ITA','Emilia-Romagna',179149),(1483,'Prato','ITA','Toscana',187405),(1484,'Parma','ITA','Emilia-Romagna',175895),(1485,'Cagliari','ITA','Sardinia',149576),(1486,'Livorno','ITA','Toscana',157052),(1487,'Perugia','ITA','Umbria',162449),(1488,'Foggia','ITA','Apulia',686856),(1489,'Reggio nellÂ´ Emilia','ITA','Emilia-Romagna',162082),(1490,'Salerno','ITA','Campania',139019),(1491,'Ravenna','ITA','Emilia-Romagna',153740),(1492,'Ferrara','ITA','Emilia-Romagna',135369),(1493,'Rimini','ITA','Emilia-Romagna',143321),(1494,'Syrakusa','ITA','Sisilia',123850),(1495,'Sassari','ITA','Sardinia',130658),(1496,'Monza','ITA','Lombardia',122712),(1497,'Bergamo','ITA','Lombardia',119551),(1498,'Pescara','ITA','Abruzzit',123077),(1499,'Latina','ITA','Latium',119804),(1500,'Vicenza','ITA','Veneto',115927),(1501,'Terni','ITA','Umbria',113324),(1502,'Forlì','ITA','Emilia-Romagna',118167),(1503,'Trento','ITA','Trentino-Alto Adige',115905),(1504,'Novara','ITA','Piemonte',105024),(1505,'Piacenza','ITA','Emilia-Romagna',103206),(1506,'Ancona','ITA','Marche',102997),(1507,'Lecce','ITA','Apulia',95520),(1508,'Bolzano','ITA','Trentino-Alto Adige',104029),(1509,'Catanzaro','ITA','Calabria',93124),(1510,'La Spezia','ITA','Liguria',95378),(1511,'Udine','ITA','Friuli-Venezia Giuli',99627),(1512,'Torre del Greco','ITA','Campania',87197),(1513,'Andria','ITA','Apulia',100086),(1514,'Brindisi','ITA','Apulia',89780),(1515,'Giugliano in Campania','ITA','Campania',117963),(1516,'Pisa','ITA','Toscana',88217),(1517,'Barletta','ITA','Apulia',94459),(1518,'Arezzo','ITA','Toscana',100212),(1519,'Alessandria','ITA','Piemonte',94974),(1520,'Cesena','ITA','Emilia-Romagna',97056),(1521,'Pesaro','ITA','Marche',95011),(1522,'Dili','TMP','Dili',193563),(1523,'Wien','AUT','Wien',1664146),(1524,'Graz','AUT','Steiermark',247698),(1525,'Linz','AUT','North Austria',188894),(1526,'Salzburg','AUT','Salzburg',149018),(1527,'Innsbruck','AUT','Tiroli',117693),(1528,'Klagenfurt','AUT','Carinthia',92397),(1529,'Spanish Town','JAM','St. Catherine',162359),(1530,'Kingston','JAM','St. Andrew',937700),(1531,'Portmore','JAM','St. Andrew',182153),(1532,'Tokyo','JPN','Tokyo-to',8949447),(1533,'Jokohama [Yokohama]','JPN','Kanagawa',3689603),(1534,'Osaka','JPN','Osaka',2666371),(1535,'Nagoya','JPN','Aichi',2263907),(1536,'Sapporo','JPN','Hokkaido',1914434),(1537,'Kioto','JPN','Kyoto',1474473),(1538,'Kobe','JPN','Hyogo',1544873),(1539,'Fukuoka','JPN','Fukuoka',1463826),(1540,'Kawasaki','JPN','Kanagawa',1425678),(1541,'Hiroshima','JPN','Hiroshima',1174209),(1542,'Kitakyushu','JPN','Fukuoka',977288),(1543,'Sendai','JPN','Miyagi',1045903),(1544,'Chiba','JPN','Chiba',962130),(1545,'Sakai','JPN','Osaka',842134),(1546,'Kumamoto','JPN','Kumamoto',734294),(1547,'Okayama','JPN','Okayama',709622),(1548,'Sagamihara','JPN','Kanagawa',717561),(1549,'Hamamatsu','JPN','Shizuoka',800912),(1550,'Kagoshima','JPN','Kagoshima',605940),(1551,'Funabashi','JPN','Chiba',609081),(1552,'Higashiosaka','JPN','Osaka',509632),(1553,'Hachioji','JPN','Tokyo-to',579799),(1554,'Niigata','JPN','Niigata',812192),(1555,'Amagasaki','JPN','Hyogo',453608),(1556,'Himeji','JPN','Hyogo',536338),(1557,'Shizuoka','JPN','Shizuoka',716328),(1558,'Urawa','JPN','Saitama',484845),(1559,'Matsuyama','JPN','Ehime',517088),(1560,'Matsudo','JPN','Chiba',484639),(1561,'Kanazawa','JPN','Ishikawa',462478),(1562,'Kawaguchi','JPN','Saitama',500311),(1563,'Ichikawa','JPN','Chiba',474926),(1564,'Omiya','JPN','Saitama',1222910),(1565,'Utsunomiya','JPN','Tochigi',511296),(1566,'Oita','JPN','Oita',473955),(1567,'Nagasaki','JPN','Nagasaki',443469),(1568,'Yokosuka','JPN','Kanagawa',418325),(1569,'Kurashiki','JPN','Okayama',475421),(1570,'Gifu','JPN','Gifu',413239),(1571,'Hirakata','JPN','Osaka',407997),(1572,'Nishinomiya','JPN','Hyogo',482790),(1573,'Toyonaka','JPN','Osaka',389341),(1574,'Wakayama','JPN','Wakayama',370364),(1575,'Fukuyama','JPN','Hiroshima',461357),(1576,'Fujisawa','JPN','Kanagawa',409657),(1577,'Asahikawa','JPN','Hokkaido',347095),(1578,'Machida','JPN','Tokyo-to',426987),(1579,'Nara','JPN','Nara',366591),(1580,'Takatsuki','JPN','Osaka',357359),(1581,'Iwaki','JPN','Fukushima',342249),(1582,'Nagano','JPN','Nagano',381511),(1583,'Toyohashi','JPN','Aichi',376665),(1584,'Toyota','JPN','Aichi',421552),(1585,'Suita','JPN','Osaka',355567),(1586,'Takamatsu','JPN','Kagawa',419291),(1587,'Koriyama','JPN','Fukushima',338772),(1588,'Okazaki','JPN','Aichi',372472),(1589,'Kawagoe','JPN','Saitama',342670),(1590,'Tokorozawa','JPN','Saitama',341924),(1591,'Toyama','JPN','Toyama',421953),(1592,'Kochi','JPN','Kochi',595575),(1593,'Kashiwa','JPN','Chiba',404012),(1594,'Akita','JPN','Akita',323600),(1595,'Miyazaki','JPN','Miyazaki',403784),(1596,'Koshigaya','JPN','Saitama',326313),(1597,'Naha','JPN','Okinawa',315954),(1598,'Aomori','JPN','Aomori',299520),(1599,'Hakodate','JPN','Hokkaido',279127),(1600,'Akashi','JPN','Hyogo',290959),(1601,'Yokkaichi','JPN','Mie',307766),(1602,'Fukushima','JPN','Fukushima',292590),(1603,'Morioka','JPN','Iwate',298348),(1604,'Maebashi','JPN','Gumma',340291),(1605,'Kasugai','JPN','Aichi',305569),(1606,'Otsu','JPN','Shiga',337634),(1607,'Ichihara','JPN','Chiba',280416),(1608,'Yao','JPN','Osaka',268652),(1609,'Ichinomiya','JPN','Aichi',380000),(1610,'Tokushima','JPN','Tokushima',264764),(1611,'Kakogawa','JPN','Hyogo',266869),(1612,'Ibaraki','JPN','Osaka',274832),(1613,'Neyagawa','JPN','Osaka',238244),(1614,'Shimonoseki','JPN','Yamaguchi',280987),(1615,'Yamagata','JPN','Yamagata',254084),(1616,'Fukui','JPN','Fukui',266831),(1617,'Hiratsuka','JPN','Kanagawa',260776),(1618,'Mito','JPN','Ibaragi',268818),(1619,'Sasebo','JPN','Nagasaki',261146),(1620,'Hachinohe','JPN','Aomori',237473),(1621,'Takasaki','JPN','Gumma',371302),(1622,'Shimizu','JPN','Shizuoka',202283),(1623,'Kurume','JPN','Fukuoka',302402),(1624,'Fuji','JPN','Shizuoka',254049),(1625,'Soka','JPN','Saitama',244062),(1626,'Fuchu','JPN','Tokyo-to',255453),(1627,'Chigasaki','JPN','Kanagawa',235140),(1628,'Atsugi','JPN','Kanagawa',224426),(1629,'Numazu','JPN','Shizuoka',202283),(1630,'Ageo','JPN','Saitama',223882),(1631,'Yamato','JPN','Kanagawa',230709),(1632,'Matsumoto','JPN','Nagano',243070),(1633,'Kure','JPN','Hiroshima',239973),(1634,'Takarazuka','JPN','Hyogo',225587),(1635,'Kasukabe','JPN','Saitama',237178),(1636,'Chofu','JPN','Tokyo-to',223609),(1637,'Odawara','JPN','Kanagawa',198327),(1638,'Kofu','JPN','Yamanashi',198992),(1639,'Kushiro','JPN','Hokkaido',181169),(1640,'Kishiwada','JPN','Osaka',199234),(1641,'Hitachi','JPN','Ibaragi',274832),(1642,'Nagaoka','JPN','Niigata',282719),(1643,'Itami','JPN','Hyogo',196127),(1644,'Uji','JPN','Kyoto',189609),(1645,'Suzuka','JPN','Mie',199293),(1646,'Hirosaki','JPN','Aomori',183473),(1647,'Ube','JPN','Yamaguchi',173772),(1648,'Kodaira','JPN','Tokyo-to',187035),(1649,'Takaoka','JPN','Toyama',176061),(1650,'Obihiro','JPN','Hokkaido',168057),(1651,'Tomakomai','JPN','Hokkaido',173320),(1652,'Saga','JPN','Saga',853363),(1653,'Sakura','JPN','Chiba',172183),(1654,'Kamakura','JPN','Kanagawa',174314),(1655,'Mitaka','JPN','Tokyo-to',186083),(1656,'Izumi','JPN','Osaka',184988),(1657,'Hino','JPN','Tokyo-to',182092),(1658,'Hadano','JPN','Kanagawa',170145),(1659,'Ashikaga','JPN','Tochigi',154530),(1660,'Tsu','JPN','Mie',285746),(1661,'Sayama','JPN','Saitama',155727),(1662,'Yachiyo','JPN','Chiba',189781),(1663,'Tsukuba','JPN','Ibaragi',214590),(1664,'Tachikawa','JPN','Tokyo-to',179668),(1665,'Kumagaya','JPN','Saitama',203180),(1666,'Moriguchi','JPN','Osaka',146697),(1667,'Otaru','JPN','Hokkaido',131928),(1668,'Anjo','JPN','Aichi',178691),(1669,'Narashino','JPN','Chiba',164530),(1670,'Oyama','JPN','Tochigi',172820),(1671,'Ogaki','JPN','Gifu',161160),(1672,'Matsue','JPN','Shimane',194258),(1673,'Kawanishi','JPN','Hyogo',156423),(1674,'Hitachinaka','JPN','Tokyo-to',157060),(1675,'Niiza','JPN','Saitama',158777),(1676,'Nagareyama','JPN','Chiba',163984),(1677,'Tottori','JPN','Tottori',588715),(1678,'Tama','JPN','Ibaragi',143616),(1679,'Iruma','JPN','Saitama',149872),(1680,'Ota','JPN','Gumma',676458),(1681,'Omuta','JPN','Fukuoka',123638),(1682,'Komaki','JPN','Aichi',147132),(1683,'Ome','JPN','Tokyo-to',139339),(1684,'Kadoma','JPN','Osaka',130282),(1685,'Yamaguchi','JPN','Yamaguchi',196628),(1686,'Higashimurayama','JPN','Tokyo-to',153557),(1687,'Yonago','JPN','Tottori',148271),(1688,'Matsubara','JPN','Osaka',124594),(1689,'Musashino','JPN','Tokyo-to',138734),(1690,'Tsuchiura','JPN','Ibaragi',134072),(1691,'Joetsu','JPN','Niigata',143839),(1692,'Miyakonojo','JPN','Miyazaki',169602),(1693,'Misato','JPN','Saitama',132937),(1694,'Kakamigahara','JPN','Gifu',145604),(1695,'Daito','JPN','Osaka',127534),(1696,'Seto','JPN','Aichi',132224),(1697,'Kariya','JPN','Aichi',145781),(1698,'Urayasu','JPN','Chiba',164877),(1699,'Beppu','JPN','Oita',125385),(1700,'Niihama','JPN','Ehime',121735),(1701,'Minoo','JPN','Osaka',129895),(1702,'Fujieda','JPN','Shizuoka',142151),(1703,'Abiko','JPN','Chiba',134017),(1704,'Nobeoka','JPN','Miyazaki',131182),(1705,'Tondabayashi','JPN','Osaka',119576),(1706,'Ueda','JPN','Nagano',159597),(1707,'Kashihara','JPN','Nara',125605),(1708,'Matsusaka','JPN','Mie',168017),(1709,'Isesaki','JPN','Gumma',207221),(1710,'Zama','JPN','Kanagawa',129436),(1711,'Kisarazu','JPN','Chiba',129312),(1712,'Noda','JPN','Chiba',155491),(1713,'Ishinomaki','JPN','Miyagi',160826),(1714,'Fujinomiya','JPN','Shizuoka',132001),(1715,'Kawachinagano','JPN','Osaka',112490),(1716,'Imabari','JPN','Ehime',166532),(1717,'Aizuwakamatsu','JPN','Fukushima',126220),(1718,'Higashihiroshima','JPN','Hiroshima',190135),(1719,'Habikino','JPN','Osaka',117681),(1720,'Ebetsu','JPN','Hokkaido',123722),(1721,'Hofu','JPN','Yamaguchi',116611),(1722,'Kiryu','JPN','Gumma',121704),(1723,'Okinawa','JPN','Okinawa',138431),(1724,'Yaizu','JPN','Shizuoka',143249),(1725,'Toyokawa','JPN','Aichi',181928),(1726,'Ebina','JPN','Kanagawa',127707),(1727,'Asaka','JPN','Saitama',129691),(1728,'Higashikurume','JPN','Tokyo-to',116546),(1729,'Ikoma','JPN','Nara',118113),(1730,'Kitami','JPN','Hokkaido',125689),(1731,'Koganei','JPN','Tokyo-to',118852),(1732,'Iwatsuki','JPN','Saitama',111723),(1733,'Mishima','JPN','Shizuoka',111726),(1734,'Handa','JPN','Aichi',118828),(1735,'Muroran','JPN','Hokkaido',93716),(1736,'Komatsu','JPN','Ishikawa',108433),(1737,'Yatsushiro','JPN','Kumamoto',132266),(1738,'Iida','JPN','Nagano',107583),(1739,'Tokuyama','JPN','Yamaguchi',150000),(1740,'Kokubunji','JPN','Tokyo-to',120650),(1741,'Akishima','JPN','Tokyo-to',112),(1742,'Iwakuni','JPN','Yamaguchi',143857),(1743,'Kusatsu','JPN','Shiga',130874),(1744,'Kuwana','JPN','Mie',140290),(1745,'Sanda','JPN','Hyogo',114216),(1746,'Hikone','JPN','Shiga',112156),(1747,'Toda','JPN','Saitama',124085),(1748,'Tajimi','JPN','Gifu',112595),(1749,'Ikeda','JPN','Osaka',104704),(1750,'Fukaya','JPN','Saitama',144618),(1751,'Ise','JPN','Mie',123129),(1752,'Sakata','JPN','Yamagata',111151),(1753,'Kasuga','JPN','Fukuoka',106780),(1754,'Kamagaya','JPN','Chiba',108816),(1755,'Tsuruoka','JPN','Yamagata',136623),(1756,'Hoya','JPN','Tokyo-to',102720),(1757,'Nishio','JPN','Chiba',106823),(1758,'Tokai','JPN','Aichi',109253),(1759,'Inazawa','JPN','Aichi',136442),(1760,'Sakado','JPN','Saitama',100),(1761,'Isehara','JPN','Kanagawa',101039),(1762,'Takasago','JPN','Hyogo',95259),(1763,'Fujimi','JPN','Saitama',106736),(1764,'Urasoe','JPN','Okinawa',110351),(1765,'Yonezawa','JPN','Yamagata',88443),(1766,'Konan','JPN','Aichi',99590),(1767,'Yamatokoriyama','JPN','Nara',93280),(1768,'Maizuru','JPN','Kyoto',89626),(1769,'Onomichi','JPN','Hiroshima',145202),(1770,'Higashimatsuyama','JPN','Saitama',89647),(1771,'Kimitsu','JPN','Chiba',88409),(1772,'Isahaya','JPN','Nagasaki',140752),(1773,'Kanuma','JPN','Tochigi',102825),(1774,'Izumisano','JPN','Osaka',100022),(1775,'Kameoka','JPN','Kyoto',92889),(1776,'Mobara','JPN','Chiba',91439),(1777,'Narita','JPN','Chiba',128933),(1778,'Kashiwazaki','JPN','Niigata',92947),(1779,'Tsuyama','JPN','Okayama',106788),(1780,'Sanaa','YEM','Sanaa',2431649),(1781,'Aden','YEM','Aden',507355),(1782,'Taizz','YEM','Taizz',596672),(1783,'Hodeida','YEM','Hodeida',548433),(1784,'al-Mukalla','YEM','Hadramawt',144137),(1785,'Ibb','YEM','Ibb',225611),(1786,'Amman','JOR','Amman',1919000),(1787,'al-Zarqa','JOR','al-Zarqa',395227),(1788,'Irbid','JOR','Irbid',292040),(1789,'al-Rusayfa','JOR','al-Zarqa',280000),(1790,'Wadi al-Sir','JOR','Amman',181212),(1791,'Flying Fish Cove','CXR','Â–',2072),(1792,'Beograd','YUG','Central Serbia',1166763),(1793,'Novi Sad','YUG','Vojvodina',250439),(1794,'NiÂš','YUG','Central Serbia',183164),(1795,'PriÂština','YUG','Kosovo and Metohija',155496),(1796,'Kragujevac','YUG','Central Serbia',58745),(1797,'Podgorica','YUG','Montenegro',135000),(1798,'Subotica','YUG','Vojvodina',97910),(1799,'Prizren','YUG','Kosovo and Metohija',92303),(1800,'Phnom Penh','KHM','Phnom Penh',1501725),(1801,'Battambang','KHM','Battambang',180853),(1802,'Siem Reap','KHM','Siem Reap',174265),(1803,'Douala','CMR','Littoral',2446945),(1804,'Yaoundé','CMR','Centre',2440062),(1805,'Garoua','CMR','Nord',296870),(1806,'Maroua','CMR','ExtrÃªme-Nord',239026),(1807,'Bamenda','CMR','Nord-Ouest',348766),(1808,'Bafoussam','CMR','Ouest',301894),(1809,'Nkongsamba','CMR','Littoral',111142),(1810,'Montreal','CAN','Quebec',3407963),(1811,'Calgary','CAN','Alberta',1095404),(1812,'Toronto','CAN','Ontario',5132794),(1813,'North York','CAN','Ontario',655913),(1814,'Winnipeg','CAN','Manitoba',671551),(1815,'Edmonton','CAN','Alberta',960015),(1816,'Mississauga','CAN','Ontario',668550),(1817,'Scarborough','CAN','Ontario',625698),(1818,'Vancouver','CAN','British Colombia',603502),(1819,'Etobicoke','CAN','Ontario',347948),(1820,'London','CAN','Ontario',366151),(1821,'Hamilton','CAN','Ontario',519949),(1822,'Ottawa','CAN','Ontario',883391),(1823,'Laval','CAN','Quebec',401553),(1824,'Surrey','CAN','British Colombia',468251),(1825,'Brampton','CAN','Ontario',523911),(1826,'Windsor','CAN','Ontario',210891),(1827,'Saskatoon','CAN','Saskatchewan',222189),(1828,'Kitchener','CAN','Ontario',219153),(1829,'Markham','CAN','Ontario',301709),(1830,'Regina','CAN','Saskatchewan',193100),(1831,'Burnaby','CAN','British Colombia',223218),(1832,'Quebec','CAN','Quebec',516622),(1833,'York','CAN','Ontario',174980),(1834,'Richmond','CAN','British Colombia',190473),(1835,'Vaughan','CAN','Ontario',288301),(1836,'Burlington','CAN','Ontario',175779),(1837,'Oshawa','CAN','Ontario',149607),(1838,'Oakville','CAN','Ontario',182520),(1839,'Saint Catharines','CAN','Ontario',131400),(1840,'Longueuil','CAN','Quebec',231409),(1841,'Richmond Hill','CAN','Ontario',185541),(1842,'Thunder Bay','CAN','Ontario',108359),(1843,'Nepean','CAN','Ontario',156298),(1844,'Cape Breton','CAN','Nova Scotia',97398),(1845,'East York','CAN','Ontario',115365),(1846,'Halifax','CAN','Nova Scotia',372680),(1847,'Cambridge','CAN','Ontario',126748),(1848,'Gloucester','CAN','Ontario',123678),(1849,'Abbotsford','CAN','British Colombia',133497),(1850,'Guelph','CAN','Ontario',121688),(1851,'St. John\'s','CAN','Newfoundland',106172),(1852,'Coquitlam','CAN','British Colombia',126456),(1853,'Saanich','CAN','British Colombia',109752),(1854,'Gatineau','CAN','Quebec',265349),(1855,'Delta','CAN','British Colombia',99863),(1856,'Sudbury','CAN','Ontario',160274),(1857,'Kelowna','CAN','British Colombia',117312),(1858,'Barrie','CAN','Ontario',135711),(1859,'Praia','CPV','SÃ£o Tiago',127899),(1860,'Almaty','KAZ','Almaty Qalasy',1477564),(1861,'Qaraghandy','KAZ','Qaraghandy',459778),(1862,'Shymkent','KAZ','South Kazakstan',637800),(1863,'Taraz','KAZ','Taraz',406262),(1864,'Astana','KAZ','Astana',780880),(1865,'Öskemen','KAZ','East Kazakstan',321251),(1866,'Pavlodar','KAZ','Pavlodar',333412),(1867,'Semey','KAZ','East Kazakstan',299264),(1868,'Aktobe','KAZ','Aktobe',371546),(1869,'Qostanay','KAZ','Qostanay',214916),(1870,'Petropavl','KAZ','North Kazakstan',201446),(1871,'Oral','KAZ','West Kazakstan',271900),(1872,'Temirtau','KAZ','Qaraghandy',169590),(1873,'Qyzylorda','KAZ','Qyzylorda',200900),(1874,'Aqtau','KAZ','Mangghystau',178187),(1875,'Atyrau','KAZ','Atyrau',163221),(1876,'Ekibastuz','KAZ','Pavlodar',146991),(1877,'Kokshetau','KAZ','North Kazakstan',153057),(1878,'Rudnyy','KAZ','Qostanay',109659),(1879,'Taldyqorghan','KAZ','Almaty',29960),(1880,'Zhezqazghan','KAZ','Qaraghandy',86227),(1881,'Nairobi','KEN','Nairobi',3138369),(1882,'Mombasa','KEN','Coast',939370),(1883,'Kisumu','KEN','Nyanza',388311),(1884,'Nakuru','KEN','Rift Valley',307990),(1885,'Machakos','KEN','Eastern',150041),(1886,'Eldoret','KEN','Rift Valley',289380),(1887,'Meru','KEN','Eastern',240900),(1888,'Nyeri','KEN','Central',119353),(1889,'Bangui','CAF','Bangui',734350),(1890,'Shanghai','CHN','Shanghai',27965403),(1891,'Beijing','CHN','Peking',19785051),(1892,'Chongqing','CHN','Chongqing',6777200),(1893,'Tianjin','CHN','Tianjin',9562255),(1894,'Wuhan','CHN','Hubei',7541527),(1895,'Harbin','CHN','Heilongjiang',4933054),(1896,'Shenyang','CHN','Liaoning',5718232),(1897,'Kanton [Guangzhou]','CHN','Guangdong',9702144),(1898,'Chengdu','CHN','Sichuan',6316922),(1899,'Nanking [Nanjing]','CHN','Jiangsu',6238186),(1900,'Changchun','CHN','Jilin',3411209),(1901,'XiÂ´an','CHN','Shaanxi',5206253),(1902,'Dalian','CHN','Liaoning',3902467),(1903,'Qingdao','CHN','Shandong',3990942),(1904,'Jinan','CHN','Shandong',3527566),(1905,'Hangzhou','CHN','Zhejiang',5162093),(1906,'Zhengzhou','CHN','Henan',3677032),(1907,'Shijiazhuang','CHN','Hebei',2770344),(1908,'Taiyuan','CHN','Shanxi',3154157),(1909,'Kunming','CHN','Yunnan',3392409),(1910,'Changsha','CHN','Hunan',3193354),(1911,'Nanchang','CHN','Jiangxi',2223661),(1912,'Fuzhou','CHN','Fujian',2824414),(1913,'Lanzhou','CHN','Gansu',2438595),(1914,'Guiyang','CHN','Guizhou',2520061),(1915,'Ningbo','CHN','Zhejiang',2583073),(1916,'Hefei','CHN','Anhui',3098727),(1917,'Ürümqi [ÃœrÃ¼mqi]','CHN','Xinxiang',2853398),(1918,'Anshan','CHN','Liaoning',2238480),(1919,'Fushun','CHN','Liaoning',2138090),(1920,'Nanning','CHN','Guangxi',3177450),(1921,'Zibo','CHN','Shandong',2261717),(1922,'Qiqihar','CHN','Heilongjiang',5367003),(1923,'Jilin','CHN','Jilin',1975803),(1924,'Tangshan','CHN','Hebei',3187171),(1925,'Baotou','CHN','Inner Mongolia',2034996),(1926,'Shenzhen','CHN','Guangdong',10357938),(1927,'Hohhot','CHN','Inner Mongolia',1980774),(1928,'Handan','CHN','Hebei',941427),(1929,'Wuxi','CHN','Jiangsu',3542319),(1930,'Xuzhou','CHN','Jiangsu',2623066),(1931,'Datong','CHN','Shanxi',1629035),(1932,'Yichun','CHN','Heilongjiang',1350150),(1933,'Benxi','CHN','Liaoning',972932),(1934,'Luoyang','CHN','Henan',1856877),(1935,'Suzhou','CHN','Jiangsu',1647642),(1936,'Xining','CHN','Qinghai',1198304),(1937,'Huainan','CHN','Anhui',1835456),(1938,'Jixi','CHN','Heilongjiang',1862161),(1939,'Daqing','CHN','Heilongjiang',1415268),(1940,'Fuxin','CHN','Liaoning',686848),(1941,'Amoy [Xiamen]','CHN','Fujian',3531347),(1942,'Liuzhou','CHN','Guangxi',1998950),(1943,'Shantou','CHN','Guangdong',1346708),(1944,'Jinzhou','CHN','Liaoning',875955),(1945,'Mudanjiang','CHN','Heilongjiang',965154),(1946,'Yinchuan','CHN','Ningxia',1290170),(1947,'Changzhou','CHN','Jiangsu',3290548),(1948,'Zhangjiakou','CHN','Hebei',4345491),(1949,'Dandong','CHN','Liaoning',798364),(1950,'Hegang','CHN','Heilongjiang',105865),(1951,'Kaifeng','CHN','Henan',896057),(1952,'Jiamusi','CHN','Heilongjiang',881711),(1953,'Liaoyang','CHN','Liaoning',655738),(1954,'Hengyang','CHN','Hunan',1135166),(1955,'Baoding','CHN','Hebei',1157891),(1956,'Hunjiang','CHN','Jilin',1082043),(1957,'Xinxiang','CHN','Henan',1047020),(1958,'Huangshi','CHN','Hubei',764571),(1959,'Haikou','CHN','Hainan',2046189),(1960,'Yantai','CHN','Shandong',1870600),(1961,'Bengbu','CHN','Anhui',972784),(1962,'Xiangtan','CHN','Hunan',959303),(1963,'Weifang','CHN','Shandong',1521600),(1964,'Wuhu','CHN','Anhui',1408917),(1965,'Pingxiang','CHN','Jiangxi',1829200),(1966,'Yingkou','CHN','Liaoning',738128),(1967,'Anyang','CHN','Henan',1146761),(1968,'Panzhihua','CHN','Sichuan',1214100),(1969,'Pingdingshan','CHN','Henan',1033975),(1970,'Xiangfan','CHN','Hubei',5820000),(1971,'Zhuzhou','CHN','Hunan',1055373),(1972,'Jiaozuo','CHN','Henan',865356),(1973,'Wenzhou','CHN','Zhejiang',3039500),(1974,'Zhangjiang','CHN','Guangdong',1248414),(1975,'Zigong','CHN','Sichuan',1362062),(1976,'Shuangyashan','CHN','Heilongjiang',1462626),(1977,'Zaozhuang','CHN','Shandong',2125136),(1978,'Yakeshi','CHN','Inner Mongolia',991627),(1979,'Yichang','CHN','Hubei',1411380),(1980,'Zhenjiang','CHN','Jiangsu',1200400),(1981,'Huaibei','CHN','Anhui',1113321),(1982,'Qinhuangdao','CHN','Hebei',1029670),(1983,'Guilin','CHN','Guangxi',975638),(1984,'Liupanshui','CHN','Guizhou',2830000),(1985,'Panjin','CHN','Liaoning',666205),(1986,'Yangquan','CHN','Shanxi',1368502),(1987,'Jinxi','CHN','Liaoning',857052),(1988,'Liaoyuan','CHN','Jilin',354141),(1989,'Lianyungang','CHN','Jiangsu',1176645),(1990,'Xianyang','CHN','Shaanxi',945420),(1991,'Taiyuan','CHN','Shandong',3426522),(1992,'Chifeng','CHN','Inner Mongolia',1333526),(1993,'Shaoguan','CHN','Guangdong',3148500),(1994,'Nantong','CHN','Jiangsu',2273326),(1995,'Leshan','CHN','Sichuan',1120000),(1996,'Baoji','CHN','Shaanxi',1437802),(1997,'Linyi','CHN','Shandong',2600200),(1998,'Tonghua','CHN','Jilin',2325242),(1999,'Siping','CHN','Jilin',3386325),(2000,'Changzhi','CHN','Shanxi',3234100),(2001,'Tengzhou','CHN','Shandong',1603700),(2002,'Chaozhou','CHN','Guangdong',452472),(2003,'Yangzhou','CHN','Jiangsu',2399079),(2004,'Dongwan','CHN','Guangdong',8220937),(2005,'MaÂ´anshan','CHN','Anhui',1366302),(2006,'Foshan','CHN','Guangdong',7194311),(2007,'Yueyang','CHN','Hunan',1232133),(2008,'Xingtai','CHN','Hebei',688876),(2009,'Changde','CHN','Hunan',1458536),(2010,'Shihezi','CHN','Xinxiang',640000),(2011,'Yancheng','CHN','Jiangsu',7260240),(2012,'Jiujiang','CHN','Jiangxi',592381),(2013,'Dongying','CHN','Shandong',756700),(2014,'Shashi','CHN','Hubei',520000),(2015,'Xintai','CHN','Shandong',1334549),(2016,'Jingdezhen','CHN','Jiangxi',1554000),(2017,'Tongchuan','CHN','Shaanxi',834437),(2018,'Zhongshan','CHN','Guangdong',3120884),(2019,'Shiyan','CHN','Hubei',3460000),(2020,'Tieli','CHN','Heilongjiang',328555),(2021,'Jining','CHN','Shandong',265248),(2022,'Wuhai','CHN','Inner Mongolia',532902),(2023,'Mianyang','CHN','Sichuan',1355331),(2024,'Luzhou','CHN','Sichuan',4218400),(2025,'Zunyi','CHN','Guizhou',1095189),(2026,'Shizuishan','CHN','Ningxia',730400),(2027,'Neijiang','CHN','Sichuan',1251095),(2028,'Tongliao','CHN','Inner Mongolia',3139153),(2029,'Tieling','CHN','Liaoning',328555),(2030,'Wafangdian','CHN','Liaoning',1026189),(2031,'Anqing','CHN','Anhui',780),(2032,'Shaoyang','CHN','Hunan',753194),(2033,'Laiwu','CHN','Shandong',1298500),(2034,'Chengde','CHN','Hebei',3610000),(2035,'Tianshui','CHN','Gansu',1197174),(2036,'Nanyang','CHN','Henan',1811732),(2037,'Cangzhou','CHN','Hebei',536793),(2038,'Yibin','CHN','Sichuan',836383),(2039,'Huaiyin','CHN','Jiangsu',4799889),(2040,'Dunhua','CHN','Jilin',480000),(2041,'Yanji','CHN','Jilin',400000),(2042,'Jiangmen','CHN','Guangdong',1822640),(2043,'Tongling','CHN','Anhui',741500),(2044,'Suihua','CHN','Heilongjiang',877682),(2045,'Gongziling','CHN','Jilin',1042000),(2046,'Xiantao','CHN','Hubei',240000),(2047,'Chaoyang','CHN','Liaoning',3044641),(2048,'Ganzhou','CHN','Jiangxi',1070654),(2049,'Huzhou','CHN','Zhejiang',2570000),(2050,'Baicheng','CHN','Jilin',2033058),(2051,'Shangzi','CHN','Heilongjiang',785373),(2052,'Yangjiang','CHN','Guangdong',676858),(2053,'Qitaihe','CHN','Heilongjiang',920419),(2054,'Gejiu','CHN','Yunnan',390000),(2055,'Jiangyin','CHN','Jiangsu',1594829),(2056,'Hebi','CHN','Henan',2212976),(2057,'Jiaxing','CHN','Zhejiang',1201900),(2058,'Wuzhou','CHN','Guangxi',3273300),(2059,'Meihekou','CHN','Jilin',617262),(2060,'Xuchang','CHN','Henan',498058),(2061,'Liaocheng','CHN','Shandong',1229800),(2062,'Haicheng','CHN','Liaoning',1201209),(2063,'Qianjiang','CHN','Hubei',998525),(2064,'Baiyin','CHN','Gansu',1708751),(2065,'Bei\'an','CHN','Heilongjiang',436444),(2066,'Yixing','CHN','Jiangsu',1235476),(2067,'Laizhou','CHN','Shandong',902000),(2068,'Qaramay','CHN','Xinxiang',290000),(2069,'Acheng','CHN','Heilongjiang',596856),(2070,'Dezhou','CHN','Shandong',679600),(2071,'Nanping','CHN','Fujian',467875),(2072,'Zhaoqing','CHN','Guangdong',644045),(2073,'Beipiao','CHN','Liaoning',573836),(2074,'Fengcheng','CHN','Jiangxi',1370000),(2075,'Fuyu','CHN','Jilin',750000),(2076,'Xinyang','CHN','Henan',1229959),(2077,'Dongtai','CHN','Jiangsu',1159400),(2078,'Yuci','CHN','Shanxi',560000),(2079,'Honghu','CHN','Hubei',335618),(2080,'Ezhou','CHN','Hubei',1048672),(2081,'Heze','CHN','Shandong',1346700),(2082,'Daxian','CHN','Sichuan',1280000),(2083,'Linfen','CHN','Shanxi',944050),(2084,'Tianmen','CHN','Hubei',1731482),(2085,'Yiyang','CHN','Hunan',4313084),(2086,'Quanzhou','CHN','Fujian',1398427),(2087,'Rizhao','CHN','Shandong',1143078),(2088,'Deyang','CHN','Sichuan',3810000),(2089,'Guangyuan','CHN','Sichuan',905057),(2090,'Changshu','CHN','Jiangsu',1510103),(2091,'Zhangzhou','CHN','Fujian',596165),(2092,'Hailar','CHN','Inner Mongolia',256000),(2093,'Nanchong','CHN','Sichuan',1771920),(2094,'Jiutai','CHN','Jilin',799729),(2095,'Zhaodong','CHN','Heilongjiang',832657),(2096,'Shaoxing','CHN','Zhejiang',883800),(2097,'Fuyang','CHN','Anhui',1768947),(2098,'Maoming','CHN','Guangdong',1217715),(2099,'Qujing','CHN','Yunnan',740925),(2100,'Ghulja','CHN','Xinxiang',357519),(2101,'Jiaohe','CHN','Jilin',470000),(2102,'Puyang','CHN','Henan',655631),(2103,'Huadian','CHN','Jilin',450000),(2104,'Jiangyou','CHN','Sichuan',849761),(2105,'Qashqar','CHN','Xinxiang',396795),(2106,'Anshun','CHN','Guizhou',2297339),(2107,'Fuling','CHN','Sichuan',1066700),(2108,'Xinyu','CHN','Jiangxi',1138873),(2109,'Hanzhong','CHN','Shaanxi',3700000),(2110,'Danyang','CHN','Jiangsu',960418),(2111,'Chenzhou','CHN','Hunan',4559600),(2112,'Xiaogan','CHN','Hubei',883123),(2113,'Shangqiu','CHN','Henan',7362472),(2114,'Zhuhai','CHN','Guangdong',1560229),(2115,'Qingyuan','CHN','Guangdong',3698394),(2116,'Aqsu','CHN','Xinxiang',535657),(2117,'Jining','CHN','Inner Mongolia',1115300),(2118,'Xiaoshan','CHN','Zhejiang',1233000),(2119,'Zaoyang','CHN','Hubei',1004741),(2120,'Xinghua','CHN','Jiangsu',1442000),(2121,'Hami','CHN','Xinxiang',364796),(2122,'Huizhou','CHN','Guangdong',2344507),(2123,'Jinmen','CHN','Hubei',360794),(2124,'Sanming','CHN','Fujian',337105),(2125,'Ulanhot','CHN','Inner Mongolia',290000),(2126,'Korla','CHN','Xinxiang',430000),(2127,'Wanxian','CHN','Sichuan',366823),(2128,'RuiÂ´an','CHN','Zhejiang',1208000),(2129,'Zhoushan','CHN','Zhejiang',843000),(2130,'Liangcheng','CHN','Shandong',656307),(2131,'Jiaozhou','CHN','Shandong',783478),(2132,'Taizhou','CHN','Jiangsu',1902500),(2133,'Suzhou','CHN','Anhui',1647642),(2134,'Yichun','CHN','Jiangxi',5100000),(2135,'Taonan','CHN','Jilin',190168),(2136,'Pingdu','CHN','Shandong',1322000),(2137,'Ji\'an','CHN','Jiangxi',473113),(2138,'Longkou','CHN','Shandong',671335),(2139,'Langfang','CHN','Hebei',868066),(2140,'Zhoukou','CHN','Henan',505139),(2141,'Suining','CHN','Sichuan',3252551),(2142,'Yulin','CHN','Guangxi',637617),(2143,'Jinhua','CHN','Zhejiang',1077300),(2144,'LiuÂ´an','CHN','Anhui',1559000),(2145,'Shuangcheng','CHN','Heilongjiang',130710),(2146,'Suizhou','CHN','Hubei',1599000),(2147,'Ankang','CHN','Shaanxi',942170),(2148,'Weinan','CHN','Shaanxi',888866),(2149,'Longjing','CHN','Jilin',261551),(2150,'DaÂ´an','CHN','Jilin',338963),(2151,'Lengshuijiang','CHN','Hunan',339701),(2152,'Laiyang','CHN','Shandong',897681),(2153,'Xianning','CHN','Hubei',2882000),(2154,'Dali','CHN','Yunnan',521169),(2155,'Anda','CHN','Heilongjiang',473091),(2156,'Jincheng','CHN','Shanxi',304221),(2157,'Longyan','CHN','Fujian',2559545),(2158,'Xichang','CHN','Sichuan',126700),(2159,'Wendeng','CHN','Shandong',675061),(2160,'Hailun','CHN','Heilongjiang',720008),(2161,'Binzhou','CHN','Shandong',709700),(2162,'Linha','CHN','Inner Mongolia',1028800),(2163,'Wuwei','CHN','Gansu',1010295),(2164,'Duyun','CHN','Guizhou',532971),(2165,'Mishan','CHN','Heilongjiang',438277),(2166,'Shangrao','CHN','Jiangxi',6579714),(2167,'Changji','CHN','Xinxiang',387169),(2168,'Meixian','CHN','Guangdong',1320700),(2169,'Yushu','CHN','Jilin',731861),(2170,'Tiefa','CHN','Liaoning',1131807),(2171,'HuaiÂ´an','CHN','Jiangsu',2494013),(2172,'Leiyang','CHN','Hunan',1300000),(2173,'Zalantun','CHN','Inner Mongolia',409051),(2174,'Weihai','CHN','Shandong',609219),(2175,'Loudi','CHN','Hunan',3785627),(2176,'Qingzhou','CHN','Shandong',894468),(2177,'Qidong','CHN','Jiangsu',972525),(2178,'Huaihua','CHN','Hunan',500000),(2179,'Luohe','CHN','Henan',2511000),(2180,'Chuzhou','CHN','Anhui',562321),(2181,'Kaiyuan','CHN','Liaoning',529736),(2182,'Linqing','CHN','Shandong',694247),(2183,'Chaohu','CHN','Anhui',778864),(2184,'Laohekou','CHN','Hubei',509468),(2185,'Dujiangyan','CHN','Sichuan',621980),(2186,'Zhumadian','CHN','Henan',338036),(2187,'Linchuan','CHN','Jiangxi',121949),(2188,'Jiaonan','CHN','Shandong',827771),(2189,'Sanmenxia','CHN','Henan',288746),(2190,'Heyuan','CHN','Guangdong',227773),(2191,'Manzhouli','CHN','Inner Mongolia',300000),(2192,'Lhasa','CHN','Tibet',559423),(2193,'Lianyuan','CHN','Hunan',995712),(2194,'Kuytun','CHN','Xinxiang',285299),(2195,'Puqi','CHN','Hubei',506509),(2196,'Hongjiang','CHN','Hunan',429400),(2197,'Qinzhou','CHN','Guangxi',944000),(2198,'Renqiu','CHN','Hebei',768900),(2199,'Yuyao','CHN','Zhejiang',852719),(2200,'Guigang','CHN','Guangxi',4400000),(2201,'Kaili','CHN','Guizhou',433236),(2202,'Yan\'an','CHN','Shaanxi',403868),(2203,'Beihai','CHN','Guangxi',668085),(2204,'Xuangzhou','CHN','Anhui',8525000),(2205,'Quzhou','CHN','Zhejiang',2456100),(2206,'Yong´an','CHN','Fujian',334852),(2207,'Zixing','CHN','Hunan',1235476),(2208,'Liyang','CHN','Jiangsu',740871),(2209,'Yizheng','CHN','Jiangsu',610356),(2210,'Yumen','CHN','Gansu',116194),(2211,'Liling','CHN','Hunan',934396),(2212,'Yuncheng','CHN','Shanxi',680043),(2213,'Shanwei','CHN','Guangdong',2130000),(2214,'Cixi','CHN','Zhejiang',1462383),(2215,'Yuanjiang','CHN','Hunan',189773),(2216,'Bozhou','CHN','Anhui',1409436),(2217,'Jinchang','CHN','Gansu',464050),(2218,'Fu´an','CHN','Fujian',597),(2219,'Suqian','CHN','Jiangsu',244651),(2220,'Shishou','CHN','Hubei',602649),(2221,'Hengshui','CHN','Hebei',422761),(2222,'Danjiangkou','CHN','Hubei',501126),(2223,'Fujin','CHN','Heilongjiang',894),(2224,'Sanya','CHN','Hainan',482296),(2225,'Guangshui','CHN','Hubei',885936),(2226,'Huangshan','CHN','Anhui',406200),(2227,'Xingcheng','CHN','Liaoning',524527),(2228,'Zhucheng','CHN','Shandong',1086200),(2229,'Kunshan','CHN','Jiangsu',750074),(2230,'Haining','CHN','Zhejiang',666080),(2231,'Pingliang','CHN','Gansu',454996),(2232,'Fuqing','CHN','Fujian',1234838),(2233,'Xinzhou','CHN','Shanxi',544682),(2234,'Jieyang','CHN','Guangdong',633570),(2235,'Zhangjiagang','CHN','Jiangsu',1248414),(2236,'Tong Xian','CHN','Peking',501200),(2237,'Ya´an','CHN','Sichuan',1),(2238,'Jinzhou','CHN','Liaoning',886008),(2239,'Emeishan','CHN','Sichuan',423070),(2240,'Enshi','CHN','Hubei',755725),(2241,'Bose','CHN','Guangxi',3332096),(2242,'Yuzhou','CHN','Henan',1131819),(2243,'Kaiyuan','CHN','Yunnan',529736),(2244,'Tumen','CHN','Jilin',136000),(2245,'Putian','CHN','Fujian',443926),(2246,'Linhai','CHN','Zhejiang',1028800),(2247,'Xilin Hot','CHN','Inner Mongolia',177000),(2248,'Shaowu','CHN','Fujian',288401),(2249,'Junan','CHN','Shandong',986661),(2250,'Huaying','CHN','Sichuan',352257),(2251,'Pingyi','CHN','Shandong',980000),(2252,'Huangyan','CHN','Zhejiang',570000),(2253,'Bishkek','KGZ','Bishkek shaary',865527),(2254,'Osh','KGZ','Osh',243216),(2255,'Bikenibeu','KIR','South Tarawa',6568),(2256,'Bairiki','KIR','South Tarawa',3524),(2257,'Santa Fé De Bogotá','COL','Santa Fé De Bogotá',7674366),(2258,'Cali','COL','Valle',2119908),(2259,'Medellín','COL','Antioquia',2214494),(2260,'Barranquilla','COL','Atlántico',1146359),(2261,'Cartagena','COL','Bolívar',892545),(2262,'Cúcuta','COL','Norte de Santander',587676),(2263,'Bucaramanga','COL','Santander',516512),(2264,'Ibagué','COL','Tolima',498401),(2265,'Pereira','COL','Risaralda',443554),(2266,'Santa Marta','COL','Magdalena',415270),(2267,'Manizales','COL','Caldas',379972),(2268,'Bello','COL','Antioquia',371973),(2269,'Pasto','COL','Nariño',500000),(2270,'Neiva','COL','Huila',352859),(2271,'Soledad','COL','Atlántico',461851),(2272,'Armenia','COL','Quindío',306930),(2273,'Villavicencio','COL','Meta',380222),(2274,'Soacha','COL','Cundinamarca',402007),(2275,'Valledupar','COL','Cesar',354180),(2276,'Montería','COL','Córdoba',381525),(2277,'Itagüí','COL','Antioquia',235016),(2278,'Palmira','COL','Valle',344470),(2279,'Buenaventura','COL','Valle',351454),(2280,'Floridablanca','COL','Santander',254683),(2281,'Sincelejo','COL','Sucre',237618),(2282,'Popayán','COL','Cauca',257512),(2283,'Barrancabermeja','COL','Santander',191403),(2284,'Dos Quebradas','COL','Risaralda',179301),(2285,'Tuluá','COL','Valle',194275),(2286,'Envigado','COL','Antioquia',174108),(2287,'Cartago','COL','Valle',164831),(2288,'Girardot','COL','Cundinamarca',90079),(2289,'Buga','COL','Valle',98203),(2290,'Tunja','COL','Boyacá',152419),(2291,'Florencia','COL','Caquetá',143871),(2292,'Maicao','COL','La Guajira',123757),(2293,'Sogamoso','COL','Boyacá',106006),(2294,'Giron','COL','Santander',117672),(2295,'Moroni','COM','Njazidja',54000),(2296,'Brazzaville','COG','Brazzaville',1307911),(2297,'Pointe-Noire','COG','Kouilou',715334),(2298,'Kinshasa','COD','Kinshasa',9046000),(2299,'Lubumbashi','COD','Shaba',1786397),(2300,'Mbuji-Mayi','COD','East Kasai',874761),(2301,'Kolwezi','COD','Shaba',451168),(2302,'Kisangani','COD','Haute-ZaÃ¯re',868672),(2303,'Kananga','COD','West Kasai',967007),(2304,'Likasi','COD','Shaba',422535),(2305,'Bukavu','COD','South Kivu',707053),(2306,'Kikwit','COD','Bandundu',370328),(2307,'Tshikapa','COD','West Kasai',524293),(2308,'Matadi','COD','Bas-ZaÃ¯re',291338),(2309,'Mbandaka','COD','Equateur',324236),(2310,'Mwene-Ditu','COD','East Kasai',190718),(2311,'Boma','COD','Bas-ZaÃ¯re',167326),(2312,'Uvira','COD','South Kivu',337488),(2313,'Butembo','COD','North Kivu',204452),(2314,'Goma','COD','North Kivu',377112),(2315,'Kalemie','COD','Shaba',92400),(2316,'Bantam','CCK','Home Island',747),(2317,'West Island','CCK','West Island',596),(2318,'Pyongyang','PRK','Pyongyang-si',3255288),(2319,'Hamhung','PRK','Hamgyong N',768551),(2320,'Chongjin','PRK','Hamgyong P',667929),(2321,'Nampo','PRK','Nampo-si',366341),(2322,'Sinuiju','PRK','Pyongan P',359341),(2323,'Wonsan','PRK','Kangwon',363127),(2324,'Phyongsong','PRK','Pyongan N',284386),(2325,'Sariwon','PRK','Hwanghae P',307764),(2326,'Haeju','PRK','Hwanghae N',273300),(2327,'Kanggye','PRK','Chagang',251971),(2328,'Kimchaek','PRK','Hamgyong P',207299),(2329,'Hyesan','PRK','Yanggang',192680),(2330,'Kaesong','PRK','Kaesong-si',308440),(2331,'Seoul','KOR','Seoul',9794304),(2332,'Pusan','KOR','Pusan',3414950),(2333,'Inchon','KOR','Inchon',2662509),(2334,'Taegu','KOR','Taegu',2446418),(2335,'Taejon','KOR','Taejon',1501859),(2336,'Kwangju','KOR','Kwangju',1469293),(2337,'Ulsan','KOR','Kyongsangnam',1082567),(2338,'Songnam','KOR','Kyonggi',949964),(2339,'Puchon','KOR','Kyonggi',853039),(2340,'Suwon','KOR','Kyonggi',1071913),(2341,'Anyang','KOR','Kyonggi',602122),(2342,'Chonju','KOR','Chollabuk',649728),(2343,'Chongju','KOR','Chungchongbuk',666924),(2344,'Koyang','KOR','Kyonggi',905076),(2345,'Ansan','KOR','Kyonggi',728775),(2346,'Pohang','KOR','Kyongsangbuk',508899),(2347,'Chang-won','KOR','Kyongsangnam',1058021),(2348,'Masan','KOR','Kyongsangnam',434371),(2349,'Kwangmyong','KOR','Kyonggi',329010),(2350,'Chonan','KOR','Chungchongnam',582753),(2351,'Chinju','KOR','Kyongsangnam',337896),(2352,'Iksan','KOR','Chollabuk',296366),(2353,'Pyongtaek','KOR','Kyonggi',427460),(2354,'Kumi','KOR','Kyongsangbuk',231000),(2355,'Uijongbu','KOR','Kyonggi',417915),(2356,'Kyongju','KOR','Kyongsangbuk',256150),(2357,'Kunsan','KOR','Chollabuk',260546),(2358,'Cheju','KOR','Cheju',401192),(2359,'Kimhae','KOR','Kyongsangnam',494510),(2360,'Sunchon','KOR','Chollanam',258670),(2361,'Mokpo','KOR','Chollanam',249960),(2362,'Yong-in','KOR','Kyonggi',856765),(2363,'Wonju','KOR','Kang-won',311449),(2364,'Kunpo','KOR','Kyonggi',278083),(2365,'Chunchon','KOR','Kang-won',276232),(2366,'Namyangju','KOR','Kyonggi',529898),(2367,'Kangnung','KOR','Kang-won',218471),(2368,'Chungju','KOR','Chungchongbuk',203212),(2369,'Andong','KOR','Kyongsangbuk',166197),(2370,'Yosu','KOR','Chollanam',269937),(2371,'Kyongsan','KOR','Kyongsangbuk',266036),(2372,'Paju','KOR','Kyonggi',328128),(2373,'Yangsan','KOR','Kyongsangnam',252507),(2374,'Ichon','KOR','Kyonggi',195175),(2375,'Asan','KOR','Chungchongnam',278676),(2376,'Koje','KOR','Kyongsangnam',231271),(2377,'Kimchon','KOR','Kyongsangbuk',127889),(2378,'Nonsan','KOR','Chungchongnam',119222),(2379,'Kuri','KOR','Kyonggi',185550),(2380,'Chong-up','KOR','Chollabuk',139111),(2381,'Chechon','KOR','Chungchongbuk',134698),(2382,'Sosan','KOR','Chungchongnam',156843),(2383,'Shihung','KOR','Kyonggi',407090),(2384,'Tong-yong','KOR','Kyongsangnam',129366),(2385,'Kongju','KOR','Chungchongnam',122153),(2386,'Yongju','KOR','Kyongsangbuk',108888),(2387,'Chinhae','KOR','Kyongsangnam',172000),(2388,'Sangju','KOR','Kyongsangbuk',98103),(2389,'Poryong','KOR','Chungchongnam',132604),(2390,'Kwang-yang','KOR','Chollanam',137810),(2391,'Miryang','KOR','Kyongsangnam',99128),(2392,'Hanam','KOR','Kyonggi',138829),(2393,'Kimje','KOR','Chollabuk',83302),(2394,'Yongchon','KOR','Kyongsangbuk',95256),(2395,'Sachon','KOR','Kyongsangnam',107524),(2396,'Uiwang','KOR','Kyonggi',144501),(2397,'Naju','KOR','Chollanam',78679),(2398,'Namwon','KOR','Chollabuk',78770),(2399,'Tonghae','KOR','Kang-won',90574),(2400,'Mun-gyong','KOR','Kyongsangbuk',69021),(2401,'Athenai','GRC','Attika',3074160),(2402,'Thessaloniki','GRC','Central Macedonia',790824),(2403,'Pireus','GRC','Attika',163688),(2404,'Patras','GRC','West Greece',214580),(2405,'Peristerion','GRC','Attika',139981),(2406,'Herakleion','GRC','Crete',173450),(2407,'Kallithea','GRC','Attika',100641),(2408,'Larisa','GRC','Thessalia',163380),(2409,'Zagreb','HRV','Grad Zagreb',792875),(2410,'Split','HRV','Split-Dalmatia',178192),(2411,'Rijeka','HRV','Primorje-Gorski Kota',128735),(2412,'Osijek','HRV','Osijek-Baranja',107784),(2413,'La Habana','CUB','La Habana',2201610),(2414,'Santiago de Cuba','CUB','Santiago de Cuba',423392),(2415,'Camagüey','CUB','Camagüey',301574),(2416,'Holguín','CUB','Holguín',269618),(2417,'Santa Clara','CUB','Villa Clara',210220),(2418,'Guantánamo','CUB','Guantánamo',208145),(2419,'Pinar del Río','CUB','Pinar del Río',139336),(2420,'Bayamo','CUB','Granma',144664),(2421,'Cienfuegos','CUB','Cienfuegos',140734),(2422,'Victoria de las Tunas','CUB','Las Tunas',143582),(2423,'Matanzas','CUB','Matanzas',127287),(2424,'Manzanillo','CUB','Granma',97038),(2425,'Sancti Spíritus','CUB','Sancti Spíritus',98283),(2426,'Ciego de Ávila','CUB','Ciego de Ávila',106225),(2427,'al-Salimiya','KWT','Hawalli',223646),(2428,'Jalib al-Shuyukh','KWT','Hawalli',122178),(2429,'Kuwait','KWT','al-Asima',151060),(2430,'Nicosia','CYP','Nicosia',310355),(2431,'Limassol','CYP','Limassol',101000),(2432,'Vientiane','LAO','Viangchan',210000),(2433,'Savannakhet','LAO','Savannakhet',120000),(2434,'Riga','LVA','Riika',703260),(2435,'Daugavpils','LVA','Daugavpils',103396),(2436,'Liepaja','LVA','Liepaja',82386),(2437,'Maseru','LSO','Maseru',227880),(2438,'Beirut','LBN','Beirut',361366),(2439,'Tripoli','LBN','al-Shamal',192572),(2440,'Monrovia','LBR','Montserrado',970824),(2441,'Tripoli','LBY','Tripoli',2220000),(2442,'Bengasi','LBY','Bengasi',631555),(2443,'Misrata','LBY','Misrata',281000),(2444,'al-Zawiya','LBY','al-Zawiya',200000),(2445,'Schaan','LIE','Schaan',5758),(2446,'Vaduz','LIE','Vaduz',5207),(2447,'Vilnius','LTU','Vilna',557126),(2448,'Kaunas','LTU','Kaunas',342768),(2449,'Klaipeda','LTU','Klaipeda',180282),(2450,'Šiauliai','LTU','Šiauliai',123211),(2451,'Panevezys','LTU','Panevezys',97343),(2452,'Luxembourg [Luxemburg/LÃ«tzebuerg]','LUX','Luxembourg',531441),(2453,'El Aaiún','ESH','El Aaiún',196331),(2454,'Macao','MAC','Macau',556783),(2455,'Antananarivo','MDG','Antananarivo',2075000),(2456,'Toamasina','MDG','Toamasina',179045),(2457,'Antsirabe','MDG','Antananarivo',186253),(2458,'Mahajanga','MDG','Mahajanga',135660),(2459,'Fianarantsoa','MDG','Fianarantsoa',144225),(2460,'Skopje','MKD','Skopje',531444),(2461,'Blantyre','MWI','Blantyre',661444),(2462,'Lilongwe','MWI','Lilongwe',781538),(2463,'Malé','MDV','Maale',103693),(2464,'Kuala Lumpur','MYS','Wilayah Persekutuan',1674621),(2465,'Ipoh','MYS','Perak',704572),(2466,'Johor Baharu','MYS','Johor',916409),(2467,'Petaling Jaya','MYS','Selangor',638516),(2468,'Kelang','MYS','Selangor',744062),(2469,'Kuala Terengganu','MYS','Terengganu',343284),(2470,'Pinang','MYS','Pulau Pinang',520202),(2471,'Kota Bharu','MYS','Kelantan',491237),(2472,'Kuantan','MYS','Pahang',461906),(2473,'Taiping','MYS','Perak',245182),(2474,'Seremban','MYS','Negeri Sembilan',555935),(2475,'Kuching','MYS','Sarawak',617887),(2476,'Sibu','MYS','Sarawak',247995),(2477,'Sandakan','MYS','Sabah',409056),(2478,'Alor Setar','MYS','Kedah',405523),(2479,'Selayang Baru','MYS','Selangor',542409),(2480,'Sungai Petani','MYS','Kedah',443458),(2481,'Shah Alam','MYS','Selangor',541306),(2482,'Bamako','MLI','Bamako',1809106),(2483,'Birkirkara','MLT','Outer Harbour',22232),(2484,'Valletta','MLT','Inner Harbour',6280),(2485,'Casablanca','MAR','Casablanca',2936874),(2486,'Rabat','MAR','Rabat-Salé-Zemmour-Z',620996),(2487,'Marrakech','MAR','Marrakech-Tensift-Al',794620),(2488,'Fes','MAR','Fès-Boulemane',944376),(2489,'Tanger','MAR','Tangier-Tetouan',664295),(2490,'Salé','MAR','Rabat-Salé-Zemmour-Z',814871),(2491,'Meknes','MAR','Meknès-Tafilalet',535066),(2492,'Oujda','MAR','Oriental',398131),(2493,'Kenitra','MAR','Gharb-Chrarda-Béni',352058),(2494,'Tétouan','MAR','Tangier-Tetouan',318698),(2495,'Safi','MAR','Doukkala-Abda',282227),(2496,'Agadir','MAR','Souss-Massa-Drâa',344422),(2497,'Mohammedia','MAR','Casablanca',187708),(2498,'Khouribga','MAR','Chaouia-Ouardigha',165976),(2499,'Beni-Mellal','MAR','Tadla-Azilal',162341),(2500,'Temara','MAR','Rabat-Salé-Zemmour-',225084),(2501,'El Jadida','MAR','Doukkala-Abda',143419),(2502,'Nador','MAR','Oriental',124915),(2503,'Ksar el Kebir','MAR','Tangier-Tetouan',107120),(2504,'Settat','MAR','Chaouia-Ouardigha',116548),(2505,'Taza','MAR','Taza-Al Hoceima-Taou',137778),(2506,'El Araich','MAR','Tangier-Tetouan',106895),(2507,'Dalap-Uliga-Darrit','MHL','Majuro',44000),(2508,'Fort-de-France','MTQ','Fort-de-France',90347),(2509,'Nouakchott','MRT','Nouakchott',881000),(2510,'Nouadhibou','MRT','Dakhlet Nouadhibou',90000),(2511,'Port-Louis','MUS','Port-Louis',148638),(2512,'Beau Bassin-Rose Hill','MUS','Plaines Wilhelms',111355),(2513,'Vacoas-Phoenix','MUS','Plaines Wilhelms',108186),(2514,'Mamoutzou','MYT','Mamoutzou',57281),(2515,'Mexico City','MEX','Distrito Federal',8851080),(2516,'Guadalajara','MEX','Jalisco',1564514),(2517,'Ecatepec de Morelos','MEX','México',1655015),(2518,'Puebla','MEX','Puebla',1539819),(2519,'Nezahualcóyotl','MEX','México',1109363),(2520,'Juárez','MEX','Chihuahua',1321004),(2521,'Tijuana','MEX','Baja California',1300983),(2522,'León','MEX','Guanajuato',1436733),(2523,'Monterrey','MEX','Nuevo León',1130960),(2524,'Zapopan','MEX','Jalisco',1155790),(2525,'Naucalpan de Juárez','MEX','México',792211),(2526,'Mexicali','MEX','Baja California',689775),(2527,'Culiacán','MEX','Sinaloa',675773),(2528,'Acapulco de Juárez','MEX','Guerrero',673479),(2529,'Tlalnepantla de Baz','MEX','México',653410),(2530,'Mérida','MEX','Yucatán',777615),(2531,'Chihuahua','MEX','Chihuahua',809232),(2532,'San Luis Potosí','MEX','San Luis Potosí',722772),(2533,'Guadalupe','MEX','Nuevo León',673616),(2534,'Toluca','MEX','México',489333),(2535,'Aguascalientes','MEX','Aguascalientes',722250),(2536,'Querétaro','MEX','Querétaro',626495),(2537,'Morelia','MEX','Michoacán de Ocampo',597511),(2538,'Hermosillo','MEX','Sonora',715061),(2539,'Saltillo','MEX','Coahuila de Zaragoza',709671),(2540,'Torreón','MEX','Coahuila de Zaragoza',608836),(2541,'Centro (Villahermosa)','MEX','Tabasco',353577),(2542,'San Nicolás de los Garza','MEX','Nuevo León',443273),(2543,'Durango','MEX','Durango',518709),(2544,'Chimalhuacán','MEX','México',612383),(2545,'Tlaquepaque','MEX','Jalisco',575942),(2546,'Atizapán de Zaragoza','MEX','México',489937),(2547,'Veracruz','MEX','Veracruz',552156),(2548,'Cuautitlán Izcalli','MEX','México',484573),(2549,'Irapuato','MEX','Guanajuato',380941),(2550,'Tuxtla Gutiérrez','MEX','Chiapas',537102),(2551,'Tultitlán','MEX','México',524074),(2552,'Reynosa','MEX','Tamaulipas',589466),(2553,'Benito  Juárez','MEX','Quintana Roo',151893),(2554,'Matamoros','MEX','Tamaulipas',489193),(2555,'Xalapa','MEX','Veracruz',424755),(2556,'Celaya','MEX','Guanajuato',468469),(2557,'Mazatlán','MEX','Sinaloa',381583),(2558,'Ensenada','MEX','Baja California',279765),(2559,'Ahome','MEX','Sinaloa',416299),(2560,'Cajeme','MEX','Sonora',398800),(2561,'Cuernavaca','MEX','Morelos',338650),(2562,'Tonalá','MEX','Jalisco',408759),(2563,'Valle de Chalco Solidaridad','MEX','México',357637),(2564,'Nuevo Laredo','MEX','Tamaulipas',373725),(2565,'Tepic','MEX','Nayarit',332863),(2566,'Tampico','MEX','Tamaulipas',297284),(2567,'Ixtapaluca','MEX','México',467361),(2568,'Apodaca','MEX','Nuevo León',523270),(2569,'Guasave','MEX','Sinaloa',285919),(2570,'Gómez Palacio','MEX','Durango',257352),(2571,'Tapachula','MEX','Chiapas',202672),(2572,'Nicolás Romero','MEX','México',366604),(2573,'Coatzacoalcos','MEX','Veracruz',305225),(2574,'Uruapan','MEX','Michoacán de Ocampo',264439),(2575,'Victoria','MEX','Tamaulipas',305155),(2576,'Oaxaca de Juárez','MEX','Oaxaca',265006),(2577,'Coacalco de Berriozábal','MEX','México',277959),(2578,'Pachuca de Soto','MEX','Hidalgo',244688),(2579,'General Escobedo','MEX','Nuevo León',357256),(2580,'Salamanca','MEX','Guanajuato',260759),(2581,'Santa Catarina','MEX','Nuevo León',268347),(2582,'Tehuacán','MEX','Puebla',248716),(2583,'Chalco','MEX','México',310124),(2584,'Cárdenas','MEX','Tabasco',248507),(2585,'Campeche','MEX','Campeche',220389),(2586,'La Paz','MEX','México',215178),(2587,'Othón P. Blanco (Chetumal)','MEX','Quintana Roo',151243),(2588,'Texcoco','MEX','México',105165),(2589,'La Paz','MEX','Baja California Sur',253077),(2590,'Metepec','MEX','México',214159),(2591,'Monclova','MEX','Coahuila de Zaragoza',215271),(2592,'Huixquilucan','MEX','México',242166),(2593,'Chilpancingo de los Bravo','MEX','Guerrero',187251),(2594,'Puerto Vallarta','MEX','Jalisco',203342),(2595,'Fresnillo','MEX','Zacatecas',120944),(2596,'Ciudad Madero','MEX','Tamaulipas',196937),(2597,'Soledad de Graciano Sánchez','MEX','San Luis Potosí',255015),(2598,'San Juan del Río','MEX','Querétaro',138878),(2599,'San Felipe del Progreso','MEX','México',100201),(2600,'Córdoba','MEX','Veracruz',140896),(2601,'TecÃ¡mac','MEX','México',364579),(2602,'Ocosingo','MEX','Chiapas',198637),(2603,'Carmen','MEX','Campeche',221143),(2604,'Lázaro Cárdenas','MEX','Michoacán de Ocampo',178825),(2605,'Jiutepec','MEX','Morelos',162427),(2606,'Papantla','MEX','Veracruz',143524),(2607,'Comalcalco','MEX','Tabasco',192802),(2608,'Zamora','MEX','Michoacán de Ocampo',185711),(2609,'Nogales','MEX','Sonora',212533),(2610,'Huimanguillo','MEX','Tabasco',179463),(2611,'Cuautla','MEX','Morelos',175208),(2612,'Minatitlán','MEX','Veracruz',112046),(2613,'Poza Rica de Hidalgo','MEX','Veracruz',185242),(2614,'Ciudad Valles','MEX','San Luis Potosí',124644),(2615,'Navolato','MEX','Sinaloa',131085),(2616,'San Luis Río Colorado','MEX','Sonora',158089),(2617,'Pénjamo','MEX','Guanajuato',134151),(2618,'San Andrés Tuxtla','MEX','Veracruz',148447),(2619,'Guanajuato','MEX','Guanajuato',171623),(2620,'Navojoa','MEX','Sonora',113836),(2621,'Zitácuaro','MEX','Michoacán de Ocampo',136879),(2622,'Boca del Río','MEX','Veracruz-Llave',126507),(2623,'Allende','MEX','Guanajuato',160383),(2624,'Silao','MEX','Guanajuato',173024),(2625,'Macuspana','MEX','Tabasco',150400),(2626,'San Juan Bautista Tuxtepec','MEX','Oaxaca',147682),(2627,'San Cristóbal de las Casas','MEX','Chiapas',158027),(2628,'Valle de Santiago','MEX','Guanajuato',123855),(2629,'Guaymas','MEX','Sonora',113082),(2630,'Colima','MEX','Colima',137383),(2631,'Dolores Hidalgo','MEX','Guanajuato',134647),(2632,'Lagos de Moreno','MEX','Jalisco',153817),(2633,'Piedras Negras','MEX','Coahuila de Zaragoza',150178),(2634,'Altamira','MEX','Tamaulipas',211996),(2635,'Tuxpan','MEX','Veracruz',141826),(2636,'San Pedro Garza García','MEX','Nuevo León',122627),(2637,'Cuauhtémoc','MEX','Chihuahua',137450),(2638,'Manzanillo','MEX','Colima',130035),(2639,'Iguala de la Independencia','MEX','Guerrero',118468),(2640,'Zacatecas','MEX','Zacatecas',129011),(2641,'Tlajomulco de Zúñiga','MEX','Jalisco',416626),(2642,'Tulancingo de Bravo','MEX','Hidalgo',102406),(2643,'Zinacantepec','MEX','México',167638),(2644,'San Martín Texmelucan','MEX','Puebla',138128),(2645,'Tepatitlán de Morelos','MEX','Jalisco',136703),(2646,'Martínez de la Torre','MEX','Veracruz',100377),(2647,'Orizaba','MEX','Veracruz',120844),(2648,'Apatzingán','MEX','Michoacán de Ocampo',143649),(2649,'Atlixco','MEX','Puebla',119128),(2650,'Delicias','MEX','Chihuahua',118071),(2651,'Ixtlahuaca','MEX','México',136696),(2652,'El Mante','MEX','Tamaulipas',108048),(2653,'Lerdo','MEX','Durango',143206),(2654,'Almoloya de JuÃ¡rez','MEX','México',139821),(2655,'Acambaro','MEX','Guanajuato',101762),(2656,'Acuña','MEX','Coahuila de Zaragoza',135605),(2657,'Guadalupe','MEX','Zacatecas',124623),(2658,'Huejutla de Reyes','MEX','Hidalgo',125806),(2659,'Hidalgo','MEX','Michoacán de Ocampo',109637),(2660,'Los Cabos','MEX','Baja California Sur',238352),(2661,'Comitán de DomÃ­nguez','MEX','Chiapas',128941),(2662,'Cunduacán','MEX','Tabasco',115976),(2663,'Río Bravo','MEX','Tamaulipas',107656),(2664,'Temapache','MEX','Veracruz',101558),(2665,'Chilapa de Alvarez','MEX','Guerrero',119188),(2666,'Hidalgo del Parral','MEX','Chihuahua',104836),(2667,'San Francisco del Rincón','MEX','Guanajuato',106278),(2668,'Taxco de Alarcón','MEX','Guerrero',98854),(2669,'Zumpango','MEX','México',145293),(2670,'San Pedro Cholula','MEX','Puebla',121080),(2671,'Lerma','MEX','México',112596),(2672,'Tecoman','MEX','Colima',112726),(2673,'Las Margaritas','MEX','Chiapas',103403),(2674,'Cosoleacaque','MEX','Veracruz',111796),(2675,'San Luis de la Paz','MEX','Guanajuato',101148),(2676,'José Azueta','MEX','Guerrero',106540),(2677,'Santiago Ixcuintla','MEX','Nayarit',84314),(2678,'San Felipe','MEX','Guanajuato',106952),(2679,'Tejupilco','MEX','México',71077),(2680,'Tantoyuca','MEX','Veracruz',103610),(2681,'Salvatierra','MEX','Guanajuato',94558),(2682,'Tultepec','MEX','México',122682),(2683,'Temixco','MEX','Morelos',104120),(2684,'Matamoros','MEX','Coahuila de Zaragoza',104024),(2685,'Pánuco','MEX','Veracruz',33122),(2686,'El Fuerte','MEX','Sinaloa',12566),(2687,'Tierra Blanca','MEX','Veracruz',44171),(2688,'Weno','FSM','Chuuk',13856),(2689,'Palikir','FSM','Pohnpei',7000),(2690,'Chisinau','MDA','Chisinau',664686),(2691,'Tiraspol','MDA','Dnjestria',135700),(2692,'Balti','MDA','Balti',143645),(2693,'Bender (TÃ®ghina)','MDA','Bender (TÃ®ghina)',93751),(2694,'Monte-Carlo','MCO','Â–',37),(2695,'Monaco-Ville','MCO','Â–',985),(2696,'Ulan Bator','MNG','Ulaanbaatar',1318100),(2697,'Plymouth','MSR','Plymouth',2000),(2698,'Maputo','MOZ','Maputo',1766184),(2699,'Matola','MOZ','Maputo',675422),(2700,'Beira','MOZ','Sofala',546000),(2701,'Nampula','MOZ','Nampula',477900),(2702,'Chimoio','MOZ','Manica',238976),(2703,'Nacala-Porto','MOZ','Nampula',207894),(2704,'Quelimane','MOZ','Zambezia',192876),(2705,'Mocuba','MOZ','Zambezia',69045),(2706,'Tete','MOZ','Tete',155909),(2707,'Xai-Xai','MOZ','Gaza',116343),(2708,'Gurue','MOZ','Zambezia',116922),(2709,'Maxixe','MOZ','Inhambane',105895),(2710,'Rangoon (Yangon)','MMR','Rangoon [Yangon]',4572948),(2711,'Mandalay','MMR','Mandalay',1237028),(2712,'Moulmein (Mawlamyine)','MMR','Mon',451011),(2713,'Pegu (Bago)','MMR','Pegu [Bago]',248899),(2714,'Bassein (Pathein)','MMR','Irrawaddy [Ayeyarwad',241624),(2715,'Monywa','MMR','Sagaing',185783),(2716,'Sittwe (Akyab)','MMR','Rakhine',181172),(2717,'Taunggyi (Taunggye)','MMR','Shan',162396),(2718,'Meikhtila','MMR','Mandalay',181744),(2719,'Mergui (Myeik)','MMR','Tenasserim [Tanintha',177961),(2720,'Lashio (Lasho)','MMR','Shan',131000),(2721,'Prome (Pyay)','MMR','Pegu [Bago]',243011),(2722,'Henzada (Hinthada)','MMR','Irrawaddy [Ayeyarwad',170312),(2723,'Myingyan','MMR','Mandalay',123700),(2724,'Tavoy (Dawei)','MMR','Tenasserim [Tanintha',139900),(2725,'Pagakku (Pakokku)','MMR','Magwe [Magway]',94800),(2726,'Windhoek','NAM','Khomas',322500),(2727,'Yangor','NRU','Â–',4050),(2728,'Yaren','NRU','Â–',1100),(2729,'Kathmandu','NPL','Central',975453),(2730,'Biratnagar','NPL','Eastern',201125),(2731,'Pokhara','NPL','Western',255465),(2732,'Lalitapur','NPL','Central',220802),(2733,'Birgunj','NPL','Central',135904),(2734,'Managua','NIC','Managua',1262978),(2735,'León','NIC','León',355779),(2736,'Chinandega','NIC','Chinandega',378970),(2737,'Masaya','NIC','Masaya',289988),(2738,'Niamey','NER','Niamey',1302910),(2739,'Zinder','NER','Zinder',170574),(2740,'Maradi','NER','Maradi',174485),(2741,'Lagos','NGA','Lagos',8029200),(2742,'Ibadan','NGA','Oyo & Osun',3078400),(2743,'Ogbomosho','NGA','Oyo & Osun',726300),(2744,'Kano','NGA','Kano & Jigawa',3248700),(2745,'Oshogbo','NGA','Oyo & Osun',421000),(2746,'Ilorin','NGA','Kwara & Kogi',756400),(2747,'Abeokuta','NGA','Ogun',529700),(2748,'Port Harcourt','NGA','Rivers & Bayelsa',1053900),(2749,'Zaria','NGA','Kaduna',898900),(2750,'Ilesha','NGA','Oyo & Osun',233900),(2751,'Onitsha','NGA','Anambra & Enugu & Eb',509500),(2752,'Iwo','NGA','Oyo & Osun',191348),(2753,'Ado-Ekiti','NGA','Ondo & Ekiti',241200),(2754,'Abuja','NGA','Federal Capital Dist',159900),(2755,'Kaduna','NGA','Kaduna',1458900),(2756,'Mushin','NGA','Lagos',633009),(2757,'Maiduguri','NGA','Borno & Yobe',971700),(2758,'Enugu','NGA','Anambra & Enugu & Eb',593300),(2759,'Ede','NGA','Oyo & Osun',307100),(2760,'Aba','NGA','Imo & Abia',784500),(2761,'Ife','NGA','Oyo & Osun',313400),(2762,'Ila','NGA','Oyo & Osun',150700),(2763,'Oyo','NGA','Oyo & Osun',620400),(2764,'Ikerre','NGA','Ondo & Ekiti',159),(2765,'Benin City','NGA','Edo & Delta',1051600),(2766,'Iseyin','NGA','Oyo & Osun',286700),(2767,'Katsina','NGA','Katsina',387000),(2768,'Jos','NGA','Plateau & Nassarawa',742100),(2769,'Sokoto','NGA','Sokoto & Kebbi & Zam',500500),(2770,'Ilobu','NGA','Oyo & Osun',30825),(2771,'Offa','NGA','Kwara & Kogi',105700),(2772,'Ikorodu','NGA','Lagos',535619),(2773,'Ilawe-Ekiti','NGA','Ondo & Ekiti',179900),(2774,'Owo','NGA','Ondo & Ekiti',243000),(2775,'Ikirun','NGA','Oyo & Osun',160826),(2776,'Shaki','NGA','Oyo & Osun',150300),(2777,'Calabar','NGA','Cross River',431200),(2778,'Ondo','NGA','Ondo & Ekiti',225800),(2779,'Akure','NGA','Ondo & Ekiti',369700),(2780,'Gusau','NGA','Sokoto & Kebbi & Zam',201200),(2781,'Ijebu-Ode','NGA','Ogun',154032),(2782,'Effon-Alaiye','NGA','Oyo & Osun',153100),(2783,'Kumo','NGA','Bauchi & Gombe',337853),(2784,'Shomolu','NGA','Lagos',147700),(2785,'Oka-Akoko','NGA','Ondo & Ekiti',142900),(2786,'Ikare','NGA','Ondo & Ekiti',160600),(2787,'Sapele','NGA','Edo & Delta',151000),(2788,'Deba Habe','NGA','Bauchi & Gombe',255248),(2789,'Minna','NGA','Niger',270600),(2790,'Warri','NGA','Edo & Delta',500900),(2791,'Bida','NGA','Niger',159100),(2792,'Ikire','NGA','Oyo & Osun',77884),(2793,'Makurdi','NGA','Benue',249000),(2794,'Lafia','NGA','Plateau & Nassarawa',115500),(2795,'Inisa','NGA','Oyo & Osun',180553),(2796,'Shagamu','NGA','Ogun',253412),(2797,'Awka','NGA','Anambra & Enugu & Eb',152300),(2798,'Gombe','NGA','Bauchi & Gombe',230900),(2799,'Igboho','NGA','Oyo & Osun',115000),(2800,'Ejigbo','NGA','Oyo & Osun',132641),(2801,'Agege','NGA','Lagos',459939),(2802,'Ise-Ekiti','NGA','Ondo & Ekiti',167100),(2803,'Ugep','NGA','Cross River',187000),(2804,'Epe','NGA','Lagos',181409),(2805,'Alofi','NIU','Â–',581),(2806,'Kingston','NFK','Â–',2302),(2807,'Oslo','NOR','Oslo',593045),(2808,'Bergen','NOR','Hordaland',258496),(2809,'Trondheim','NOR','Sør-Trøndelag',172211),(2810,'Stavanger','NOR','Rogaland',124936),(2811,'Bærum','NOR','Akershus',113659),(2812,'Abidjan','CIV','Abidjan',4476397),(2813,'Bouaké','CIV','Bouaké',659233),(2814,'Yamoussoukro','CIV','Yamoussoukro',200659),(2815,'Daloa','CIV','Daloa',215100),(2816,'Korhogo','CIV','Korhogo',174000),(2817,'al-Sib','OMN','Masqat',221115),(2818,'Salala','OMN','Zufar',197169),(2819,'Bawshar','OMN','Masqat',150420),(2820,'Suhar','OMN','al-Batina',126800),(2821,'Masqat','OMN','Masqat',734697),(2822,'Karachi','PAK','Sindh',13205339),(2823,'Lahore','PAK','Punjab',9129609),(2824,'Faisalabad','PAK','Punjab',4271924),(2825,'Rawalpindi','PAK','Punjab',2424983),(2826,'Multan','PAK','Punjab',2050046),(2827,'Hyderabad','PAK','Sindh',1578367),(2828,'Gujranwala','PAK','Punjab',1866063),(2829,'Peshawar','PAK','Nothwest Border Prov',1439205),(2830,'Quetta','PAK','Baluchistan',896090),(2831,'Islamabad','PAK','Islamabad',889249),(2832,'Sargodha','PAK','Punjab',1276000),(2833,'Sialkot','PAK','Punjab',860300),(2834,'Bahawalpur','PAK','Punjab',850678),(2835,'Sukkur','PAK','Sindh',493438),(2836,'Jhang','PAK','Punjab',833770),(2837,'Sheikhupura','PAK','Punjab',762808),(2838,'Larkana','PAK','Sindh',456544),(2839,'Gujrat','PAK','Punjab',738558),(2840,'Mardan','PAK','Nothwest Border Prov',279914),(2841,'Kasur','PAK','Punjab',288181),(2842,'Rahim Yar Khan','PAK','Punjab',353203),(2843,'Sahiwal','PAK','Punjab',207388),(2844,'Okara','PAK','Punjab',1887915),(2845,'Wah','PAK','Punjab',350000),(2846,'Dera Ghazi Khan','PAK','Punjab',119045),(2847,'Mirpur Khas','PAK','Sind',242887),(2848,'Nawabshah','PAK','Sind',272598),(2849,'Mingora','PAK','Nothwest Border Prov',176156),(2850,'Chiniot','PAK','Punjab',219254),(2851,'Kamoke','PAK','Punjab',167300),(2852,'Mandi Burewala','PAK','Punjab',209343),(2853,'Jhelum','PAK','Punjab',172073),(2854,'Sadiqabad','PAK','Punjab',205797),(2855,'Jacobabad','PAK','Sind',200815),(2856,'Shikarpur','PAK','Sind',177682),(2857,'Khanewal','PAK','Punjab',165038),(2858,'Hafizabad','PAK','Punjab',165936),(2859,'Kohat','PAK','Nothwest Border Prov',148587),(2860,'Muzaffargarh','PAK','Punjab',158597),(2861,'Khanpur','PAK','Punjab',156152),(2862,'Gojra','PAK','Punjab',117892),(2863,'Bahawalnagar','PAK','Punjab',134936),(2864,'Muridke','PAK','Punjab',108600),(2865,'Pak Pattan','PAK','Punjab',136510),(2866,'Abottabad','PAK','Nothwest Border Prov',880666),(2867,'Tando Adam','PAK','Sind',145719),(2868,'Jaranwala','PAK','Punjab',103300),(2869,'Khairpur','PAK','Sind',102188),(2870,'Chishtian Mandi','PAK','Punjab',101659),(2871,'Daska','PAK','Punjab',440200),(2872,'Dadu','PAK','Sind',146179),(2873,'Mandi Bahauddin','PAK','Punjab',150980),(2874,'Ahmadpur East','PAK','Punjab',296000),(2875,'Kamalia','PAK','Punjab',257820),(2876,'Khuzdar','PAK','Baluchistan',148089),(2877,'Vihari','PAK','Punjab',654955),(2878,'Dera Ismail Khan','PAK','Nothwest Border Prov',111871),(2879,'Wazirabad','PAK','Punjab',129700),(2880,'Nowshera','PAK','Nothwest Border Prov',103432),(2881,'Koror','PLW','Koror',14000),(2882,'Ciudad de Panamá','PAN','Panamá',880691),(2883,'San Miguelito','PAN','San Miguelito',293745),(2884,'Port Moresby','PNG','National Capital Dis',307643),(2885,'Asunción','PRY','Asunción',512112),(2886,'Ciudad del Este','PRY','Alto Paraná',222274),(2887,'San Lorenzo','PRY','Central',204356),(2888,'Lambaré','PRY','Central',119795),(2889,'Fernando de la Mora','PRY','Central',113560),(2890,'Lima','PER','Lima',9735587),(2891,'Arequipa','PER','Arequipa',909955),(2892,'Trujillo','PER','La Libertad',935147),(2893,'Chiclayo','PER','Lambayeque',801580),(2894,'Callao','PER','Callao',876877),(2895,'Iquitos','PER','Loreto',467493),(2896,'Chimbote','PER','Ancash',378358),(2897,'Huancayo','PER','Junin',362716),(2898,'Piura','PER','Piura',510488),(2899,'Cusco','PER','Cusco',427974),(2900,'Pucallpa','PER','Ucayali',270780),(2901,'Tacna','PER','Tacna',242451),(2902,'Ica','PER','Ica',227552),(2903,'Sullana','PER','Piura',170302),(2904,'Juliaca','PER','Puno',216716),(2905,'Huánuco','PER','Huanuco',146750),(2906,'Ayacucho','PER','Ayacucho',149391),(2907,'Chincha Alta','PER','Ica',153598),(2908,'Cajamarca','PER','Cajamarca',161215),(2909,'Puno','PER','Puno',119116),(2910,'Ventanilla','PER','Callao',243526),(2911,'Castilla','PER','Piura',141175),(2912,'Adamstown','PCN','Â–',52),(2913,'Garapan','MNP','Saipan',3588),(2914,'Lisboa','PRT','Lisboa',547631),(2915,'Porto','PRT','Porto',237559),(2916,'Amadora','PRT','Lisboa',175135),(2917,'Coimbra','PRT','Coimbra',102455),(2918,'Braga','PRT','Braga',143532),(2919,'San Juan','PRI','San Juan',395326),(2920,'Bayamón','PRI','Bayamón',208116),(2921,'Ponce','PRI','Ponce',166327),(2922,'Carolina','PRI','Carolina',176762),(2923,'Caguas','PRI','Caguas',142893),(2924,'Arecibo','PRI','Arecibo',96440),(2925,'Guaynabo','PRI','Guaynabo',97924),(2926,'Mayagüez','PRI','Mayagüez',89080),(2927,'Toa Baja','PRI','Toa Baja',89609),(2928,'Warszawa','POL','Mazowieckie',1706624),(2929,'?ód?','POL','Lodzkie',753192),(2930,'Kraków','POL','Malopolskie',766583),(2931,'Wroclaw','POL','Dolnoslaskie',632930),(2932,'Poznan','POL','Wielkopolskie',567932),(2933,'Gdansk','POL','Pomorskie',458717),(2934,'Szczecin','POL','Zachodnio-Pomorskie',410811),(2935,'Bydgoszcz','POL','Kujawsko-Pomorskie',361222),(2936,'Lublin','POL','Lubelskie',351806),(2937,'Katowice','POL','Slaskie',317220),(2938,'Bialystok','POL','Podlaskie',294143),(2939,'Czestochowa','POL','Slaskie',242300),(2940,'Gdynia','POL','Pomorskie',250242),(2941,'Sosnowiec','POL','Slaskie',222586),(2942,'Radom','POL','Mazowieckie',224857),(2943,'Kielce','POL','Swietokrzyskie',205902),(2944,'Gliwice','POL','Slaskie',197393),(2945,'Torun','POL','Kujawsko-Pomorskie',206619),(2946,'Bytom','POL','Slaskie',184765),(2947,'Zabrze','POL','Slaskie',189062),(2948,'Bielsko-Biala','POL','Slaskie',175690),(2949,'Olsztyn','POL','Warminsko-Mazurskie',175710),(2950,'Rzeszów','POL','Podkarpackie',166454),(2951,'Ruda Slaska','POL','Slaskie',144584),(2952,'Rybnik','POL','Slaskie',141080),(2953,'Walbrzych','POL','Dolnoslaskie',123635),(2954,'Tychy','POL','Slaskie',129776),(2955,'D?browa Górnicza','POL','Slaskie',128795),(2956,'Plock','POL','Mazowieckie',126968),(2957,'Elblag','POL','Warminsko-Mazurskie',126710),(2958,'Opole','POL','Opolskie',126748),(2959,'Gorzów Wielkopolski','POL','Lubuskie',125411),(2960,'Wloclawek','POL','Kujawsko-Pomorskie',118432),(2961,'Chorzów','POL','Slaskie',113678),(2962,'Tarnów','POL','Malopolskie',116118),(2963,'Zielona Góra','POL','Lubuskie',117523),(2964,'Koszalin','POL','Zachodnio-Pomorskie',112375),(2965,'Legnica','POL','Dolnoslaskie',104754),(2966,'Kalisz','POL','Wielkopolskie',108031),(2967,'Grudziadz','POL','Kujawsko-Pomorskie',99090),(2968,'Slupsk','POL','Pomorskie',97419),(2969,'Jastrz?bie Zdrój','POL','Slaskie',93939),(2970,'Jaworzno','POL','Slaskie',96600),(2971,'Jelenia Góra','POL','Dolnoslaskie',84306),(2972,'Malabo','GNQ','Bioko',187302),(2973,'Doha','QAT','Doha',1312947),(2974,'Paris','FRA','Île-de-France',10413386),(2975,'Marseille','FRA','Provence-Alpes-Côte',1604550),(2976,'Lyon','FRA','Rhône-Alpes',472000),(2977,'Toulouse','FRA','Midi-Pyrénées',850873),(2978,'Nice','FRA','Provence-Alpes-Côte',344875),(2979,'Nantes','FRA','Pays de la Loire',280000),(2980,'Strasbourg','FRA','Alsace',272000),(2981,'Montpellier','FRA','Languedoc-Roussillon',255080),(2982,'Bordeaux','FRA','Aquitaine',230000),(2983,'Rennes','FRA','Haute-Normandie',210000),(2984,'Le Havre','FRA','Champagne-Ardenne',200000),(2985,'Reims','FRA','Nord-Pas-de-Calais',200000),(2986,'Lille','FRA','RhÃ´ne-Alpes',226800),(2987,'Saint-Étienne','FRA','Bretagne',178530),(2988,'Toulon','FRA','Provence-Alpes-Côte',170041),(2989,'Grenoble','FRA','Rhône-Alpes',156000),(2990,'Angers','FRA','Pays de la Loire',160000),(2991,'Dijon','FRA','Bourgogne',149867),(2992,'Brest','FRA','Bretagne',149634),(2993,'Le Mans','FRA','Pays de la Loire',148169),(2994,'Clermont-Ferrand','FRA','Auvergne',143000),(2995,'Amiens','FRA','Picardie',145000),(2996,'Aix-en-Provence','FRA','Provence-Alpes-Côte',150000),(2997,'Limoges','FRA','Limousin',142000),(2998,'Nîmes','FRA','Languedoc-Roussillon',133424),(2999,'Tours','FRA','Centre',143000),(3000,'Villeurbanne','FRA','Rhône-Alpes',130000),(3001,'Metz','FRA','Lorraine',143776),(3002,'Besançon','FRA','Free County',157733),(3003,'Caen','FRA','Basse-Normandie',112790),(3004,'Orléans','FRA','Centre',130000),(3005,'Mulhouse','FRA','Alsace',130359),(3006,'Rouen','FRA','Haute-Normandie',116592),(3007,'Boulogne-Billancourt','FRA','Île-de-France',156367),(3008,'Perpignan','FRA','Languedoc-Roussillon',117419),(3009,'Nancy','FRA','Lorraine',110630),(3010,'Roubaix','FRA','Nord-Pas-de-Calais',108494),(3011,'Argenteuil','FRA','Île-de-France',102003),(3012,'Tourcoing','FRA','Nord-Pas-de-Calais',102540),(3013,'Montreuil','FRA','Île-de-France',102889),(3014,'Cayenne','GUF','Cayenne',103142),(3015,'Faaa','PYF','Tahiti',29851),(3016,'Papeete','PYF','Tahiti',133627),(3017,'Saint-Denis','REU','Saint-Denis',142241),(3018,'Bucuresti','ROM','Bukarest',1883425),(3019,'Iasi','ROM','Iasi',309631),(3020,'Constanta','ROM','Constanta',301221),(3021,'Cluj-Napoca','ROM','Cluj',305636),(3022,'Galati','ROM','Galati',290593),(3023,'Timisoara','ROM','Timis',311428),(3024,'Brasov','ROM','Brasov',276914),(3025,'Craiova','ROM','Dolj',298740),(3026,'Ploiesti','ROM','Prahova',227194),(3027,'Braila','ROM','Braila',168389),(3028,'Oradea','ROM','Bihor',204625),(3029,'Bacau','ROM','Bacau',175546),(3030,'Pitesti','ROM','Arges',166594),(3031,'Arad','ROM','Arad',164665),(3032,'Sibiu','ROM','Sibiu',154220),(3033,'Târgu Mures','ROM','Mures',134290),(3034,'Baia Mare','ROM','Maramures',138182),(3035,'Buzau','ROM','Buzau',131377),(3036,'Satu Mare','ROM','Satu Mare',111877),(3037,'Botosani','ROM','Botosani',114953),(3038,'Piatra Neamt','ROM','Neamt',106611),(3039,'Râmnicu Vâlcea','ROM','VÃ¢lcea',110731),(3040,'Suceava','ROM','Suceava',107317),(3041,'Drobeta-Turnu Severin','ROM','Mehedinti',105739),(3042,'Târgovi?te','ROM','Dâmbovi?a',73964),(3043,'Focsani','ROM','Vrancea',98045),(3044,'Târgu Jiu','ROM','Gorj',78553),(3045,'Tulcea','ROM','Tulcea',92379),(3046,'Resita','ROM','Caras-Severin',65509),(3047,'Kigali','RWA','Kigali',1135428),(3048,'Stockholm','SWE','Lisboa',1372565),(3049,'Gothenburg [Göteborg]','SWE','West GÃ¶tanmaan lÃ¤n',549839),(3050,'Malmö','SWE','SkÃ¥ne lÃ¤n',280415),(3051,'Uppsala','SWE','Uppsala lÃ¤n',140454),(3052,'Linköping','SWE','East GÃ¶tanmaan lÃ¤n',104232),(3053,'Västerås','SWE','VÃ¤stmanlands lÃ¤n',110877),(3054,'Örebro','SWE','Ã–rebros lÃ¤n',107038),(3055,'Norrköping','SWE','East GÃ¶tanmaan lÃ¤n',87247),(3056,'Helsingborg','SWE','SkÃ¥ne lÃ¤n',97122),(3057,'Jönköping','SWE','JÃ¶nkÃ¶pings lÃ¤n',89396),(3058,'Umeå','SWE','VÃ¤sterbottens lÃ¤n',79594),(3059,'Lund','SWE','SkÃ¥ne lÃ¤n',82800),(3060,'Borås','SWE','West GÃ¶tanmaan lÃ¤n',66273),(3061,'Sundsvall','SWE','VÃ¤sternorrlands lÃ¤',50712),(3062,'Gävle','SWE','GÃ¤vleborgs lÃ¤n',71033),(3063,'Jamestown','SHN','Saint Helena',714),(3064,'Basseterre','KNA','St George Basseterre',15500),(3065,'Castries','LCA','Castries',61341),(3066,'Kingstown','VCT','St George',24518),(3067,'Saint-Pierre','SPM','Saint-Pierre',5888),(3068,'Berlin','DEU','Berliini',3460725),(3069,'Hamburg','DEU','Hamburg',1786448),(3070,'Munich [München]','DEU','Baijeri',1353186),(3071,'Köln','DEU','Nordrhein-Westfalen',1007119),(3072,'Frankfurt am Main','DEU','Hessen',679664),(3073,'Essen','DEU','Nordrhein-Westfalen',574635),(3074,'Dortmund','DEU','Nordrhein-Westfalen',580444),(3075,'Stuttgart','DEU','Baden-Württemberg',606588),(3076,'Düsseldorf','DEU','Nordrhein-Westfalen',588735),(3077,'Bremen','DEU','Bremen',547340),(3078,'Duisburg','DEU','Nordrhein-Westfalen',489599),(3079,'Hannover','DEU','Niedersachsen',522686),(3080,'Leipzig','DEU','Saksi',522883),(3081,'Nürnberg','DEU','Baijeri',505664),(3082,'Dresden','DEU','Saksi',523058),(3083,'Bochum','DEU','Nordrhein-Westfalen',374737),(3084,'Wuppertal','DEU','Nordrhein-Westfalen',349721),(3085,'Bielefeld','DEU','Nordrhein-Westfalen',323270),(3086,'Mannheim','DEU','Baden-Württemberg',313174),(3087,'Bonn','DEU','Nordrhein-Westfalen',324899),(3088,'Gelsenkirchen','DEU','Nordrhein-Westfalen',257981),(3089,'Karlsruhe','DEU','Baden-Württemberg',294761),(3090,'Wiesbaden','DEU','Hessen',275976),(3091,'Münster','DEU','Nordrhein-Westfalen',279803),(3092,'Mönchengladbach','DEU','Nordrhein-Westfalen',257993),(3093,'Chemnitz','DEU','Saksi',243248),(3094,'Augsburg','DEU','Baijeri',264708),(3095,'Halle/Saale','DEU','Anhalt Sachsen',232963),(3096,'Braunschweig','DEU','Niedersachsen',248867),(3097,'Aachen','DEU','Nordrhein-Westfalen',258664),(3098,'Krefeld','DEU','Nordrhein-Westfalen',235076),(3099,'Magdeburg','DEU','Anhalt Sachsen',231549),(3100,'Kiel','DEU','Schleswig-Holstein',239526),(3101,'Oberhausen','DEU','Nordrhein-Westfalen',212945),(3102,'Lübeck','DEU','Schleswig-Holstein',210232),(3103,'Hagen','DEU','Nordrhein-Westfalen',188529),(3104,'Rostock','DEU','Mecklenburg-Vorpomme',202735),(3105,'Freiburg im Breisgau','DEU','Baden-Württemberg',229144),(3106,'Erfurt','DEU','Thuringia',204994),(3107,'Kassel','DEU','Hessen',195530),(3108,'Saarbrücken','DEU','Saarland',175741),(3109,'Mainz','DEU','Rheinland-Pfalz',199237),(3110,'Hamm','DEU','Nordrhein-Westfalen',181783),(3111,'Herne','DEU','Nordrhein-Westfalen',164762),(3112,'Mülheim an der Ruhr','DEU','Nordrhein-Westfalen',167344),(3113,'Solingen','DEU','Nordrhein-Westfalen',159927),(3114,'Osnabrück','DEU','Niedersachsen',164119),(3115,'Ludwigshafen am Rhein','DEU','Rheinland-Pfalz',164177),(3116,'Leverkusen','DEU','Nordrhein-Westfalen',160772),(3117,'Oldenburg','DEU','Niedersachsen',162173),(3118,'Neuss','DEU','Nordrhein-Westfalen',151388),(3119,'Heidelberg','DEU','Baden-Württemberg',147312),(3120,'Darmstadt','DEU','Hessen',144402),(3121,'Paderborn','DEU','Nordrhein-Westfalen',146283),(3122,'Potsdam','DEU','Brandenburg',156906),(3123,'Würzburg','DEU','Baijeri',133799),(3124,'Regensburg','DEU','Baijeri',135520),(3125,'Recklinghausen','DEU','Nordrhein-Westfalen',118365),(3126,'Göttingen','DEU','Niedersachsen',121060),(3127,'Bremerhaven','DEU','Bremen',113366),(3128,'Wolfsburg','DEU','Niedersachsen',121451),(3129,'Bottrop','DEU','Nordrhein-Westfalen',116771),(3130,'Remscheid','DEU','Nordrhein-Westfalen',110563),(3131,'Heilbronn','DEU','Baden-Württemberg',122879),(3132,'Pforzheim','DEU','Baden-Württemberg',119781),(3133,'Offenbach am Main','DEU','Hessen',679664),(3134,'Ulm','DEU','Baden-Württemberg',122801),(3135,'Ingolstadt','DEU','Baijeri',125088),(3136,'Gera','DEU','Thuringia',98762),(3137,'Salzgitter','DEU','Niedersachsen',102394),(3138,'Cottbus','DEU','Brandenburg',102091),(3139,'Reutlingen','DEU','Baden-Württemberg',112484),(3140,'Fürth','DEU','Baijeri',114628),(3141,'Siegen','DEU','Nordrhein-Westfalen',103424),(3142,'Koblenz','DEU','Rheinland-Pfalz',106417),(3143,'Moers','DEU','Nordrhein-Westfalen',105506),(3144,'Bergisch Gladbach','DEU','Nordrhein-Westfalen',105723),(3145,'Zwickau','DEU','Saksi',94029),(3146,'Hildesheim','DEU','Niedersachsen',102794),(3147,'Witten','DEU','Nordrhein-Westfalen',96136),(3148,'Schwerin','DEU','Mecklenburg-Vorpomme',91264),(3149,'Erlangen','DEU','Baijeri',105629),(3150,'Kaiserslautern','DEU','Rheinland-Pfalz',99790),(3151,'Trier','DEU','Rheinland-Pfalz',105260),(3152,'Jena','DEU','Thuringia',105129),(3153,'Iserlohn','DEU','Nordrhein-Westfalen',95179),(3154,'Gütersloh','DEU','Nordrhein-Westfalen',94973),(3155,'Marl','DEU','Nordrhein-Westfalen',87557),(3156,'Lünen','DEU','Nordrhein-Westfalen',87610),(3157,'Düren','DEU','Nordrhein-Westfalen',92820),(3158,'Ratingen','DEU','Nordrhein-Westfalen',91088),(3159,'Velbert','DEU','Nordrhein-Westfalen',84033),(3160,'Esslingen am Neckar','DEU','Baden-Württemberg',91573),(3161,'Honiara','SLB','Honiara',64609),(3162,'Lusaka','ZMB','Lusaka',2146522),(3163,'Ndola','ZMB','Copperbelt',467529),(3164,'Kitwe','ZMB','Copperbelt',409865),(3165,'Kabwe','ZMB','Central',193100),(3166,'Chingola','ZMB','Copperbelt',148469),(3167,'Mufulira','ZMB','Copperbelt',119291),(3168,'Luanshya','ZMB','Copperbelt',112029),(3169,'Apia','WSM','Upolu',37708),(3170,'Serravalle','SMR','Serravalle/Dogano',10591),(3171,'San Marino','SMR','San Marino',31247),(3172,'São Tomé','STP','Aqua Grande',187356),(3173,'Riyadh','SAU','Riyadh',5328228),(3174,'Jedda','SAU','Mekka',3456259),(3175,'Mekka','SAU','Mekka',1675368),(3176,'Medina','SAU','Medina',1180770),(3177,'al-Dammam','SAU','al-Sharqiya',903597),(3178,'al-Taif','SAU','Mekka',987914),(3179,'Tabuk','SAU','Tabuk',569797),(3180,'Burayda','SAU','al-Qasim',614093),(3181,'al-Hufuf','SAU','al-Sharqiya',400000),(3182,'al-Mubarraz','SAU','al-Sharqiya',550000),(3183,'Khamis Mushayt','SAU','Asir',630000),(3184,'Hail','SAU','Hail',412758),(3185,'al-Kharj','SAU','Riad',376325),(3186,'al-Khubar','SAU','al-Sharqiya',578500),(3187,'Jubayl','SAU','al-Sharqiya',378949),(3188,'Hafar al-Batin','SAU','al-Sharqiya',389993),(3189,'al-Tuqba','SAU','al-Sharqiya',192000),(3190,'Yanbu','SAU','Medina',298675),(3191,'Abha','SAU','Asir',366551),(3192,'AraÂ´ar','SAU','al-Khudud al-Samaliy',166512),(3193,'al-Qatif','SAU','al-Sharqiya',524182),(3194,'al-Hawiya','SAU','Mekka',173900),(3195,'Unayza','SAU','Qasim',163729),(3196,'Najran','SAU','Najran',298288),(3197,'Pikine','SEN','Cap-Vert',834246),(3198,'Dakar','SEN','Cap-Vert',1998635),(3199,'Thiès','SEN','ThiÃ¨s',240152),(3200,'Kaolack','SEN','Kaolack',173782),(3201,'Ziguinchor','SEN','Ziguinchor',162436),(3202,'Rufisque','SEN','Cap-Vert',187203),(3203,'Saint-Louis','SEN','Saint-Louis',130750),(3204,'Mbour','SEN','Thiès',170699),(3205,'Diourbel','SEN','Diourbel',93767),(3206,'Victoria','SYC','MahÃ©',25000),(3207,'Freetown','SLE','Western',1200000),(3208,'Singapore','SGP','Â–',5312000),(3209,'Bratislava','SVK','Bratislava',411228),(3210,'Košice','SVK','VÃ½chodnÃ© Slovensko',240596),(3211,'Prešov','SVK','VÃ½chodnÃ© Slovensko',91650),(3212,'Ljubljana','SVN','Osrednjeslovenska',272220),(3213,'Maribor','SVN','Podravska',95171),(3214,'Mogadishu','SOM','Banaadir',1353000),(3215,'Hargeysa','SOM','Woqooyi Galbeed',1200000),(3216,'Kismaayo','SOM','Jubbada Hoose',183300),(3217,'Colombo','LKA','Western',752993),(3218,'Dehiwala','LKA','Western',245974),(3219,'Moratuwa','LKA','Western',207755),(3220,'Jaffna','LKA','Northern',88138),(3221,'Kandy','LKA','Central',125351),(3222,'Sri Jayawardenepura Kotte','LKA','Western',135806),(3223,'Negombo','LKA','Western',127754),(3224,'Omdurman','SDN','Khartum',2970099),(3225,'Khartum','SDN','Khartum',2090001),(3226,'Sharq al-Nil','SDN','Khartum',1626638),(3227,'Port Sudan','SDN','al-Bahr al-Ahmar',474373),(3228,'Kassala','SDN','Kassala',419031),(3229,'Obeid','SDN','Kurdufan al-Shamaliy',420000),(3230,'Nyala','SDN','Darfur al-Janubiya',532183),(3231,'Wad Madani','SDN','al-Jazira',345291),(3232,'al-Qadarif','SDN','al-Qadarif',336522),(3233,'Kusti','SDN','al-Bahr al-Abyad',364331),(3234,'al-Fashir','SDN','Darfur al-Shamaliya',264734),(3235,'Juba','SDN','Bahr al-Jabal',372410),(3236,'Helsinki [Helsingfors]','FIN','Newmaa',610601),(3237,'Espoo','FIN','Newmaa',259383),(3238,'Tampere','FIN','Pirkanmaa',219624),(3239,'Vantaa','FIN','Newmaa',206960),(3240,'Turku [Ã…bo]','FIN','Varsinais-Suomi',181569),(3241,'Oulu','FIN','Pohjois-Pohjanmaa',192680),(3242,'Lahti','FIN','PÃ¤ijÃ¤t-HÃ¤me',103344),(3243,'Paramaribo','SUR','Paramaribo',240924),(3244,'Mbabane','SWZ','Hhohho',94874),(3245,'Zürich','CHE','Zürich',379915),(3246,'Geneve','CHE','Geneve',194458),(3247,'Basel','CHE','Basel-Stadt',172091),(3248,'Bern','CHE','Bern',127515),(3249,'Lausanne','CHE','Vaud',130421),(3250,'Damascus','SYR','Damascus',1414913),(3251,'Aleppo','SYR','Aleppo',2132100),(3252,'Hims','SYR','Hims',652609),(3253,'Hama','SYR','Hama',312994),(3254,'Latakia','SYR','Latakia',383786),(3255,'al-Qamishliya','SYR','al-Hasaka',184231),(3256,'Dayr al-Zawr','SYR','Dayr al-Zawr',211857),(3257,'Jaramana','SYR','Damaskos',114363),(3258,'Duma','SYR','Damaskos',110893),(3259,'al-Raqqa','SYR','al-Raqqa',220488),(3260,'Idlib','SYR','Idlib',97969),(3261,'Dushanbe','TJK','Karotegin',679400),(3262,'Khujand','TJK','Khujand',165000),(3263,'Taipei','TWN','Taipei',3941239),(3264,'Kaohsiung','TWN','Kaohsiung',2778798),(3265,'Taichung','TWN','Taichung',2687052),(3266,'Tainan','TWN','Tainan',1881905),(3267,'Panchiao','TWN','Taipei',554568),(3268,'Chungho','TWN','Taipei',415326),(3269,'Keelung (Chilung)','TWN','Keelung',377021),(3270,'Sanchung','TWN','Taipei',389839),(3271,'Hsinchuang','TWN','Taipei',397877),(3272,'Hsinchu','TWN','Hsinchu',425450),(3273,'Chungli','TWN','Taoyuan',376491),(3274,'Fengshan','TWN','Kaohsiung',351355),(3275,'Taoyuan','TWN','Taoyuan',413917),(3276,'Chiayi','TWN','Chiayi',271256),(3277,'Hsintien','TWN','Taipei',263603),(3278,'Changhwa','TWN','Changhwa',236633),(3279,'Yungho','TWN','Taipei',227700),(3280,'Tucheng','TWN','Taipei',284897),(3281,'Pingtung','TWN','Pingtung',208361),(3282,'Yungkang','TWN','Tainan',203005),(3283,'Pingchen','TWN','Taoyuan',209821),(3284,'Tali','TWN','Taichung',171940),(3285,'Taiping','TWN','',165524),(3286,'Pate','TWN','Taoyuan',171996),(3287,'Fengyuan','TWN','Taichung',124999),(3288,'Luchou','TWN','Taipei',143633),(3289,'Hsichuh','TWN','Taipei',415557),(3290,'Shulin','TWN','Taipei',170355),(3291,'Yuanlin','TWN','Changhwa',125476),(3292,'Yangmei','TWN','Taoyuan',154427),(3293,'Taliao','TWN','',115897),(3294,'Kueishan','TWN','',122195),(3295,'Tanshui','TWN','Taipei',131882),(3296,'Taitung','TWN','Taitung',107698),(3297,'Hualien','TWN','Hualien',108031),(3298,'Nantou','TWN','Nantou',103234),(3299,'Lungtan','TWN','Taipei',114714),(3300,'Touliu','TWN','YÃ¼nlin',120639),(3301,'Tsaotun','TWN','Nantou',106800),(3302,'Kangshan','TWN','Kaohsiung',92200),(3303,'Ilan','TWN','Ilan',96013),(3304,'Miaoli','TWN','Miaoli',91043),(3305,'Dar es Salaam','TZA','Dar es Salaam',4364541),(3306,'Dodoma','TZA','Dodoma',410956),(3307,'Mwanza','TZA','Mwanza',706543),(3308,'Zanzibar','TZA','Zanzibar West',223033),(3309,'Tanga','TZA','Tanga',273332),(3310,'Mbeya','TZA','Mbeya',385279),(3311,'Morogoro','TZA','Morogoro',315866),(3312,'Arusha','TZA','Arusha',416442),(3313,'Moshi','TZA','Kilimanjaro',184292),(3314,'Tabora','TZA','Tabora',226999),(3315,'København','DNK','København',528208),(3316,'Aarhus','DNK','Aarhus',242914),(3317,'Odense','DNK','Fyn',166305),(3318,'Aalborg','DNK','Nordjylland',102312),(3319,'Frederiksberg','DNK','Frederiksberg',96718),(3320,'Bangkok','THA','Bangkok',8280925),(3321,'Nonthaburi','THA','Nonthaburi',262158),(3322,'Nakhon Ratchasima','THA','Nakhon Ratchasima',142645),(3323,'Chiang Mai','THA','Chiang Mai',142632),(3324,'Udon Thani','THA','Udon Thani',138332),(3325,'Hat Yai','THA','Songkhla',158007),(3326,'Khon Kaen','THA','Khon Kaen',114335),(3327,'Pak Kret','THA','Nonthaburi',178114),(3328,'Nakhon Sawan','THA','Nakhon Sawan',91748),(3329,'Ubon Ratchathani','THA','Ubon Ratchathani',84727),(3330,'Songkhla','THA','Songkhla',72797),(3331,'Nakhon Pathom','THA','Nakhon Pathom',83215),(3332,'Lomé','TGO','Maritime',837437),(3333,'Fakaofo','TKL','Fakaofo',483),(3334,'NukuÂ´alofa','TON','Tongatapu',24500),(3335,'Chaguanas','TTO','Caroni',83516),(3336,'Port-of-Spain','TTO','Port-of-Spain',49301),(3337,'N’Djamena','TCD','Chari-Baguirmi',1092066),(3338,'Moundou','TCD','Logone Occidental',137929),(3339,'Praha','CZE','HlavnÃ­ mesto Praha',1241664),(3340,'Brno','CZE','JiznÃ­ Morava',385913),(3341,'Ostrava','CZE','SevernÃ­ Morava',299622),(3342,'Plzen','CZE','ZapadnÃ­ Cechy',170322),(3343,'Olomouc','CZE','SevernÃ­ Morava',101003),(3344,'Liberec','CZE','SevernÃ­ Cechy',102005),(3345,'?eské Bud?jovice','CZE','JiznÃ­ Cechy',96053),(3346,'Hradec Králové','CZE','VÃ½chodnÃ­ Cechy',93490),(3347,'Ústí nad Labem','CZE','SevernÃ­ Cechy',95464),(3348,'Pardubice','CZE','VÃ½chodnÃ­ Cechy',89552),(3349,'Tunis','TUN','Tunis',983861),(3350,'Sfax','TUN','Sfax',855256),(3351,'Ariana','TUN','Ariana',97687),(3352,'Ettadhamen','TUN','Ariana',422246),(3353,'Sousse','TUN','Sousse',544413),(3354,'Kairouan','TUN','Kairouan',119794),(3355,'Biserta','TUN','Biserta',114371),(3356,'Gabès','TUN','Gabès',342630),(3357,'Istanbul','TUR','Istanbul',12829960),(3358,'Ankara','TUR','Ankara',4306105),(3359,'Izmir','TUR','Izmir',3276815),(3360,'Adana','TUR','Adana',1563545),(3361,'Bursa','TUR','Bursa',1854285),(3362,'Gaziantep','TUR','Gaziantep',1495050),(3363,'Konya','TUR','Konya',1003373),(3364,'Mersin (IÃ§el)','TUR','IÃ§el',842230),(3365,'Antalya','TUR','Antalya',955573),(3366,'Diyarbakir','TUR','Diyarbakir',614310),(3367,'Kayseri','TUR','Kayseri',911984),(3368,'Eskisehir','TUR','Eskisehir',617215),(3369,'Sanliurfa','TUR','Sanliurfa',465748),(3370,'Samsun','TUR','Samsun',511601),(3371,'Malatya','TUR','Malatya',388590),(3372,'Gebze','TUR','Kocaeli',282444),(3373,'Denizli','TUR','Denizli',492815),(3374,'Sivas','TUR','Sivas',282984),(3375,'Erzurum','TUR','Erzurum',358344),(3376,'Tarsus','TUR','Adana',227021),(3377,'Kahramanmaras','TUR','Kahramanmaras',384953),(3378,'Elâz??','TUR','Elâz??',305787),(3379,'Van','TUR','Van',352292),(3380,'Sultanbeyli','TUR','Istanbul',301068),(3381,'Izmit (Kocaeli)','TUR','Kocaeli',293339),(3382,'Manisa','TUR','Manisa',291374),(3383,'Batman','TUR','Batman',313355),(3384,'Balikesir','TUR','Balikesir',259157),(3385,'Sakarya (Adapazari)','TUR','Sakarya',399022),(3386,'Iskenderun','TUR','Hatay',175454),(3387,'Osmaniye','TUR','Osmaniye',197747),(3388,'Çorum','TUR','Çorum',210822),(3389,'Kütahya','TUR','Kütahya',212444),(3390,'Hatay (Antakya)','TUR','Hatay',190377),(3391,'Kirikkale','TUR','Kirikkale',276647),(3392,'Adiyaman','TUR','Adiyaman',590935),(3393,'Trabzon','TUR','Trabzon',211027),(3394,'Ordu','TUR','Ordu',135878),(3395,'Aydin','TUR','Aydin',195951),(3396,'Usak','TUR','Usak',173397),(3397,'Edirne','TUR','Edirne',140374),(3398,'Çorlu','TUR','Tekirdag',273362),(3399,'Isparta','TUR','Isparta',166895),(3400,'Karabük','TUR','Karabük',103302),(3401,'Kilis','TUR','Kilis',79690),(3402,'Alanya','TUR','Antalya',94316),(3403,'Kiziltepe','TUR','Mardin',228356),(3404,'Zonguldak','TUR','Zonguldak',104604),(3405,'Siirt','TUR','Siirt',127327),(3406,'Viransehir','TUR','Sanliurfa',89940),(3407,'Tekirdag','TUR','Tekirdag',142602),(3408,'Karaman','TUR','Karaman',132064),(3409,'Afyon','TUR','Afyon',170455),(3410,'Aksaray','TUR','Aksaray',171423),(3411,'Ceyhan','TUR','Adana',104542),(3412,'Erzincan','TUR','Erzincan',85323),(3413,'Bismil','TUR','Diyarbakir',55421),(3414,'Nazilli','TUR','Aydin',110437),(3415,'Tokat','TUR','Tokat',121004),(3416,'Kars','TUR','Kars',76729),(3417,'?negöl','TUR','Bursa',162452),(3418,'Bandirma','TUR','Balikesir',139874),(3419,'Ashgabat','TKM','Ahal',1031992),(3420,'Türkmenabat','TKM','Lebap',253000),(3421,'Dashhowuz','TKM','Dashhowuz',210000),(3422,'Mary','TKM','Mary',123000),(3423,'Cockburn Town','TCA','Grand Turk',3700),(3424,'Funafuti','TUV','Funafuti',4492),(3425,'Kampala','UGA','Central',1659600),(3426,'Kyiv','UKR','Kiova',2847200),(3427,'Harkova [Harkiv]','UKR','Harkova',1442910),(3428,'Dnipropetrovsk','UKR','Dnipropetrovsk',1001612),(3429,'Donetsk','UKR','Donetsk',975959),(3430,'Odesa','UKR','Odesa',1003705),(3431,'Zaporizzja','UKR','Zaporizzja',770411),(3432,'Lviv','UKR','Lviv',729842),(3433,'Kryvyi Rig','UKR','Dnipropetrovsk',664499),(3434,'Mykolajiv','UKR','Mykolajiv',498748),(3435,'Mariupol','UKR','Donetsk',492176),(3436,'Lugansk','UKR','Lugansk',445900),(3437,'Vinnytsja','UKR','Vinnytsja',370100),(3438,'Makijivka','UKR','Donetsk',389589),(3439,'Herson','UKR','Herson',358000),(3440,'Sevastopol','UKR','Krim',379200),(3441,'Simferopol','UKR','Krim',340600),(3442,'Pultava [Poltava]','UKR','Pultava',298652),(3443,'Chernihiv','UKR','Chernihiv',296008),(3444,'Cherkasy','UKR','Cherkasy',286037),(3445,'Gorlivka','UKR','Donetsk',289872),(3446,'Zytomyr','UKR','Zytomyr',271172),(3447,'Sumy','UKR','Sumy',283700),(3448,'Dniprodzerzynsk','UKR','Dnipropetrovsk',252100),(3449,'Kirovograd','UKR','Kirovograd',239400),(3450,'Hmelnytskyi','UKR','Hmelnytskyi',262000),(3451,'Chernivtsi','UKR','Chernivtsi',259419),(3452,'Rivne','UKR','Rivne',247750),(3453,'Kremenchuk','UKR','Pultava',231202),(3454,'Ivano-Frankivsk','UKR','Ivano-Frankivsk',226124),(3455,'Ternopil','UKR','Ternopil',218641),(3456,'Lutsk','UKR','Volynia',202900),(3457,'Bila Tserkva','UKR','Kiova',210977),(3458,'Kramatorsk','UKR','Donetsk',173700),(3459,'Melitopol','UKR','Zaporizzja',158700),(3460,'Kerch','UKR','Krim',151300),(3461,'Nikopol','UKR','Dnipropetrovsk',122873),(3462,'Berdjansk','UKR','Zaporizzja',117149),(3463,'Pavlograd','UKR','Dnipropetrovsk',118800),(3464,'Sjeverodonetsk','UKR','Lugansk',121000),(3465,'Slovjansk','UKR','Donetsk',129600),(3466,'Uzgorod','UKR','Taka-Karpatia',116400),(3467,'Alchevsk','UKR','Lugansk',114624),(3468,'Lysychansk','UKR','Lugansk',104314),(3469,'Jevpatorija','UKR','Krim',123456),(3470,'Kamjanets-Podilskyi','UKR','Hmelnytskyi',103036),(3471,'Jenakijeve','UKR','Donetsk',84187),(3472,'Krasnyi Luch','UKR','Lugansk',89688),(3473,'Stahanov','UKR','Lugansk',122300),(3474,'Oleksandrija','UKR','Kirovograd',93357),(3475,'Konotop','UKR','Sumy',93671),(3476,'Kostjantynivka','UKR','Donetsk',94886),(3477,'Berdychiv','UKR','Zytomyr',86200),(3478,'Izmajil','UKR','Odesa',84800),(3479,'Shostka','UKR','Sumy',85800),(3480,'Uman','UKR','TÂšerkasy',86911),(3481,'Brovary','UKR','Kiova',97146),(3482,'Mukacheve','UKR','Taka-Karpatia',93738),(3483,'Budapest','HUN','Budapest',1740041),(3484,'Debrecen','HUN','HajdÃº-Bihar',207594),(3485,'Miskolc','HUN','Borsod-AbaÃºj-ZemplÃ',166823),(3486,'Szeged','HUN','CsongrÃ¡d',170052),(3487,'Pécs','HUN','Baranya',156801),(3488,'Gy?r','HUN','Gy?r-Moson-Sopron',131564),(3489,'Nyíregyháza','HUN','Szabolcs-SzatmÃ¡r-Be',117658),(3490,'Kecskemét','HUN','BÃ¡cs-Kiskun',114226),(3491,'Székesfehérvár','HUN','FejÃ©r',101722),(3492,'Montevideo','URY','Montevideo',1319108),(3493,'Nouméa','NCL','Â–',163723),(3494,'Auckland','NZL','Auckland',1418000),(3495,'Christchurch','NZL','Canterbury',379100),(3496,'Manukau','NZL','Auckland',375600),(3497,'North Shore','NZL','Auckland',229000),(3498,'Waitakere','NZL','Auckland',208100),(3499,'Wellington','NZL','Wellington',397900),(3500,'Dunedin','NZL','Dunedin',119100),(3501,'Hamilton','NZL','Hamilton',212000),(3502,'Lower Hutt','NZL','Wellington',102900),(3503,'Toskent','UZB','Toskent Shahri',2309600),(3504,'Namangan','UZB','Namangan',449200),(3505,'Samarkand','UZB','Samarkand',596300),(3506,'Andijon','UZB','Andijon',580619),(3507,'Buhoro','UZB','Buhoro',263400),(3508,'Karsi','UZB','Qashqadaryo',274100),(3509,'Nukus','UZB','Karakalpakistan',260000),(3510,'KÃ¼kon','UZB','Fargona',203100),(3511,'Fargona','UZB','Fargona',187100),(3512,'Circik','UZB','Toskent',141742),(3513,'Margilon','UZB','Fargona',197000),(3514,'Ãœrgenc','UZB','Khorazm',176590),(3515,'Angren','UZB','Toskent',126530),(3516,'Cizah','UZB','Cizah',124800),(3517,'Navoi','UZB','Navoi',125800),(3518,'Olmalik','UZB','Toskent',112078),(3519,'Termiz','UZB','Surkhondaryo',140404),(3520,'Minsk','BLR','Horad Minsk',1834200),(3521,'Gomel','BLR','Gomel',484300),(3522,'Mogiljov','BLR','Mogiljov',354000),(3523,'Vitebsk','BLR','Vitebsk',348800),(3524,'Grodno','BLR','Grodno',328000),(3525,'Brest','BLR','Brest',310800),(3526,'Bobruisk','BLR','Mogiljov',215100),(3527,'BaranovitÂši','BLR','Brest',168200),(3528,'Borisov','BLR','Minsk',147100),(3529,'Pinsk','BLR','Brest',130600),(3530,'Orša','BLR','Vitebsk',117200),(3531,'Mozyr','BLR','Gomel',108800),(3532,'Novopolotsk','BLR','Vitebsk',98200),(3533,'Lida','BLR','Grodno',97600),(3534,'Soligorsk','BLR','Minsk',102300),(3535,'MolodetÂšno','BLR','Minsk',94200),(3536,'Mata-Utu','WLF','Wallis',1191),(3537,'Port-Vila','VUT','Shefa',44040),(3538,'Città del Vaticano','VAT','Â–',839),(3539,'Caracas','VEN','Distrito Federal',5576000),(3540,'Maracaibo','VEN','Zulia',4163670),(3541,'Barquisimeto','VEN','Lara',1600000),(3542,'Valencia','VEN','Carabobo',2585202),(3543,'Ciudad Guayana','VEN','Bolívar',946606),(3544,'Petare','VEN','Miranda',369000),(3545,'Maracay','VEN','Aragua',1302000),(3546,'Barcelona','VEN','Anzoátegui',750000),(3547,'Maturín','VEN','Monagas',410967),(3548,'San Cristóbal','VEN','Táchira',246620),(3549,'Ciudad Bolívar','VEN','Bolívar',291170),(3550,'Cumaná','VEN','Sucre',257821),(3551,'Mérida','VEN','Mérida',215289),(3552,'Cabimas','VEN','Zulia',200859),(3553,'Barinas','VEN','Barinas',284305),(3554,'Turmero','VEN','Aragua',344746),(3555,'Baruta','VEN','Miranda',266261),(3556,'Puerto Cabello','VEN','Carabobo',163886),(3557,'Santa Ana de Coro','VEN','Falcón',135246),(3558,'Los Teques','VEN','Miranda',279424),(3559,'Punto Fijo','VEN','Falcón',277017),(3560,'Guarenas','VEN','Miranda',181657),(3561,'Acarigua','VEN','Portuguesa',143739),(3562,'Puerto La Cruz','VEN','Anzoátegui',218228),(3563,'Ciudad Losada','VEN','',115827),(3564,'Guacara','VEN','Carabobo',151788),(3565,'Valera','VEN','Trujillo',135215),(3566,'Guanare','VEN','Portuguesa',112315),(3567,'Carúpano','VEN','Sucre',112102),(3568,'Catia La Mar','VEN','Distrito Federal',106850),(3569,'El Tigre','VEN','Anzoátegui',151011),(3570,'Guatire','VEN','Miranda',192291),(3571,'Calabozo','VEN','GuÃ¡rico',117148),(3572,'Pozuelos','VEN','Anzoátegui',85000),(3573,'Ciudad Ojeda','VEN','Zulia',128941),(3574,'Ocumare del Tuy','VEN','Miranda',166112),(3575,'Valle de la Pascua','VEN','Guárico',139095),(3576,'Araure','VEN','Portuguesa',111908),(3577,'San Fernando de Apure','VEN','Apure',175000),(3578,'San Felipe','VEN','Yaracuy',220786),(3579,'El Limón','VEN','Aragua',148270),(3580,'Moscow','RUS','Moscow (City)',11514330),(3581,'St Petersburg','RUS','Pietari',4848742),(3582,'Novosibirsk','RUS','Novosibirsk',1473737),(3583,'Nizni Novgorod','RUS','Nizni Novgorod',1250615),(3584,'Jekaterinburg','RUS','Sverdlovsk',1350136),(3585,'Samara','RUS','Samara',1164896),(3586,'Omsk','RUS','Omsk',1153971),(3587,'Kazan','RUS','Tatarstan',1143546),(3588,'Ufa','RUS','Bashkortostan',1062300),(3589,'Chelyabinsk','RUS','Chelyabinsk',1130273),(3590,'Rostov-na-Donu','RUS','Rostov-na-Donu',1089851),(3591,'Perm','RUS','Perm',991530),(3592,'Volgograd','RUS','Volgograd',1021244),(3593,'Voronez','RUS','Voronez',889989),(3594,'Krasnojarsk','RUS','Krasnojarsk',973891),(3595,'Saratov','RUS','Saratov',837831),(3596,'Toljatti','RUS','Samara',719514),(3597,'Uljanovsk','RUS','Uljanovsk',613793),(3598,'Izevsk','RUS','Udmurtia',628116),(3599,'Krasnodar','RUS','Krasnodar',744933),(3600,'Jaroslavl','RUS','Jaroslavl',591486),(3601,'Habarovsk','RUS','Habarovsk',577668),(3602,'Vladivostok','RUS','Primorje',592069),(3603,'Irkutsk','RUS','Irkutsk',587225),(3604,'Barnaul','RUS','Altai',612091),(3605,'Novokuznetsk','RUS','Kemerovo',547885),(3606,'Penza','RUS','Penza',517137),(3607,'Rjazan','RUS','Rjazan',1143546),(3608,'Orenburg','RUS','Orenburg',544987),(3609,'Lipetsk','RUS','Lipetsk',508124),(3610,'Nabereznyje Chelny','RUS','Tatarstan',513242),(3611,'Tula','RUS','Tula',501129),(3612,'Tjumen','RUS','Tjumen',581758),(3613,'Kemerovo','RUS','Kemerovo',532884),(3614,'Astrahan','RUS','Astrahan',520662),(3615,'Tomsk','RUS','Tomsk',522940),(3616,'Kirov','RUS','Kirov',473668),(3617,'Ivanovo','RUS','Ivanovo',409277),(3618,'Cheboksary','RUS','TÂšuvassia',453645),(3619,'Brjansk','RUS','Brjansk',415640),(3620,'Tver','RUS','Tver',403726),(3621,'Kursk','RUS','Kursk',414595),(3622,'Magnitogorsk','RUS','TÂšeljabinsk',408401),(3623,'Kaliningrad','RUS','Kaliningrad',431491),(3624,'Nizni Tagil','RUS','Sverdlovsk',361883),(3625,'Murmansk','RUS','Murmansk',307664),(3626,'Ulan-Ude','RUS','Burjatia',404357),(3627,'Kurgan','RUS','Kurgan',333640),(3628,'Arkangeli','RUS','Arkangeli',348716),(3629,'Sochi','RUS','Krasnodar',343285),(3630,'Smolensk','RUS','Smolensk',326863),(3631,'Orjol','RUS','Orjol',317854),(3632,'Stavropol','RUS','Stavropol',398266),(3633,'Belgorod','RUS','Belgorod',356426),(3634,'Kaluga','RUS','Kaluga',325185),(3635,'Vladimir','RUS','Vladimir',345598),(3636,'Makhachkala','RUS','Dagestan',577990),(3637,'Cherepovets','RUS','Vologda',312311),(3638,'Saransk','RUS','Mordva',297425),(3639,'Tambov','RUS','Tambov',312000),(3640,'Vladikavkaz','RUS','North Ossetia-Alania',311635),(3641,'Chita','RUS','Chita',323964),(3642,'Vologda','RUS','Vologda',301642),(3643,'Veliki Novgorod','RUS','Novgorod',218724),(3644,'Komsomolsk-na-Amure','RUS','Habarovsk',263906),(3645,'Kostroma','RUS','Kostroma',268617),(3646,'Volzski','RUS','Volgograd',314436),(3647,'Taganrog','RUS','Rostov-na-Donu',263540),(3648,'Petroskoi','RUS','Karjala',263540),(3649,'Bratsk','RUS','Irkutsk',246348),(3650,'Dzerzinsk','RUS','Nizni Novgorod',240762),(3651,'Surgut','RUS','Hanti-Mansia',306703),(3652,'Orsk','RUS','Orenburg',239752),(3653,'Sterlitamak','RUS','BaÂškortostan',273432),(3654,'Angarsk','RUS','Irkutsk',233765),(3655,'Yoshkar-Ola','RUS','Marinmaa',248688),(3656,'Rybinsk','RUS','Jaroslavl',200771),(3657,'Prokopjevsk','RUS','Kemerovo',210150),(3658,'Niznevartovsk','RUS','Hanti-Mansia',251860),(3659,'Nalchik','RUS','Kabardi-Balkaria',240095),(3660,'Syktyvkar','RUS','Komi',235006),(3661,'Severodvinsk','RUS','Arkangeli',192265),(3662,'Bijsk','RUS','Altai',210055),(3663,'Niznekamsk','RUS','Tatarstan',234108),(3664,'Blagoveshchensk','RUS','Amur',214397),(3665,'Shakhty','RUS','Rostov-na-Donu',240152),(3666,'Staryi Oskol','RUS','Belgorod',221163),(3667,'Zelenograd','RUS','Moscow (City)',237651),(3668,'Balakovo','RUS','Saratov',199573),(3669,'Novorossijsk','RUS','Krasnodar',241788),(3670,'Pihkova','RUS','Pihkova',203281),(3671,'Zlatoust','RUS','TÂšeljabinsk',174985),(3672,'Jakutsk','RUS','Saha (Jakutia)',269486),(3673,'Podolsk','RUS','Moskova',187956),(3674,'Petropavlovsk-Kamchatsky','RUS','KamtÂšatka',179526),(3675,'Kamensk-Uralski','RUS','Sverdlovsk',174710),(3676,'Engels','RUS','Saratov',202401),(3677,'Syzran','RUS','Samara',178773),(3678,'Grozny','RUS','TÂšetÂšenia',271596),(3679,'Novocherkassk','RUS','Rostov-na-Donu',169039),(3680,'Berezniki','RUS','Perm',156512),(3681,'Juzno-Sahalinsk','RUS','Sahalin',181727),(3682,'Volgodonsk','RUS','Rostov-na-Donu',170621),(3683,'Abakan','RUS','Hakassia',165183),(3684,'Maikop','RUS','Adygea',144246),(3685,'Miass','RUS','TÂšeljabinsk',151812),(3686,'Armavir','RUS','Krasnodar',188897),(3687,'Ljubertsy','RUS','Moskova',171978),(3688,'Rubtsovsk','RUS','Altai',147008),(3689,'Kovrov','RUS','Vladimir',145492),(3690,'Nahodka','RUS','Primorje',159695),(3691,'Ussurijsk','RUS','Primorje',157946),(3692,'Salavat','RUS','BaÂškortostan',156085),(3693,'Mytishchi','RUS','Moskova',173341),(3694,'Kolomna','RUS','Moskova',144642),(3695,'Elektrostal','RUS','Moskova',155324),(3696,'Murom','RUS','Vladimir',116078),(3697,'Kolpino','RUS','Pietari',138979),(3698,'Norilsk','RUS','Krasnojarsk',175301),(3699,'Almetjevsk','RUS','Tatarstan',146309),(3700,'Novomoskovsk','RUS','Tula',131227),(3701,'Dimitrovgrad','RUS','Uljanovsk',122549),(3702,'Pervouralsk','RUS','Sverdlovsk',124555),(3703,'Himki','RUS','Moskova',207125),(3704,'Balashikha','RUS','Moskova',215353),(3705,'Nevinnomyssk','RUS','Stavropol',118351),(3706,'Pjatigorsk','RUS','Stavropol',142397),(3707,'Korolev','RUS','Moskova',183452),(3708,'Serpuhov','RUS','Moskova',126496),(3709,'Odintsovo','RUS','Moskova',139021),(3710,'Orehovo-Zujevo','RUS','Moskova',120620),(3711,'Kamyshin','RUS','Volgograd',119924),(3712,'Novocheboksarsk','RUS','TÂšuvassia',124113),(3713,'Cherkessk','RUS','KaratÂšai-TÂšerkessi',121439),(3714,'Abinsk','RUS','Krasnojarsk',134992),(3715,'Magadan','RUS','Magadan',95925),(3716,'Michurinsk','RUS','Tambov',98758),(3717,'Kislovodsk','RUS','Stavropol',128502),(3718,'Jelets','RUS','Lipetsk',108404),(3719,'Seversk','RUS','Tomsk',108466),(3720,'Noginsk','RUS','Moskova',99762),(3721,'Velikije Luki','RUS','Pihkova',98778),(3722,'Novokuybyshevsk','RUS','Samara',108449),(3723,'Neftekamsk','RUS','BaÂškortostan',121757),(3724,'Leninsk-Kuznetski','RUS','Kemerovo',101666),(3725,'Oktjabrski','RUS','BaÂškortostan',109379),(3726,'Sergijev Posad','RUS','Moskova',110878),(3727,'Arzamas','RUS','Nizni Novgorod',106367),(3728,'Kiseljovsk','RUS','Kemerovo',98382),(3729,'Novotroitsk','RUS','Orenburg',98184),(3730,'Obninsk','RUS','Kaluga',104798),(3731,'Kansk','RUS','Krasnojarsk',94230),(3732,'Glazov','RUS','Udmurtia',95835),(3733,'Solikamsk','RUS','Perm',97239),(3734,'Sarapul','RUS','Udmurtia',101390),(3735,'Ust-Ilimsk','RUS','Irkutsk',86591),(3736,'Shchyolkovo','RUS','Moskova',110411),(3737,'Mezhdurechensk','RUS','Kemerovo',101678),(3738,'Usolje-Sibirskoje','RUS','Irkutsk',83364),(3739,'Elista','RUS','Kalmykia',103728),(3740,'Novoshakhtinsk','RUS','Rostov-na-Donu',111087),(3741,'Votkinsk','RUS','Udmurtia',100034),(3742,'Kyzyl','RUS','Tyva',109906),(3743,'Serov','RUS','Sverdlovsk',99381),(3744,'Zelenodolsk','RUS','Tatarstan',97651),(3745,'Zeleznodoroznyi','RUS','Moskova',102651),(3746,'Kineshma','RUS','Ivanovo',88113),(3747,'Kuznetsk','RUS','Penza',88883),(3748,'Uhta','RUS','Komi',99642),(3749,'Jessentuki','RUS','Stavropol',100969),(3750,'Tobolsk','RUS','Tjumen',99698),(3751,'Neftejugansk','RUS','Hanti-Mansia',123276),(3752,'Bataisk','RUS','Rostov-na-Donu',111856),(3753,'Nojabrsk','RUS','Yamalin Nenetsia',110572),(3754,'Balashov','RUS','Saratov',82222),(3755,'Zeleznogorsk','RUS','Kursk',95049),(3756,'Zukovski','RUS','Moskova',104736),(3757,'Anzero-Sudzensk','RUS','Kemerovo',76669),(3758,'Bugulma','RUS','Tatarstan',89144),(3759,'Zeleznogorsk','RUS','Krasnojarsk',84795),(3760,'Novouralsk','RUS','Sverdlovsk',85519),(3761,'Pushkino','RUS','Pietari',102840),(3762,'Vorkuta','RUS','Komi',70551),(3763,'Derbent','RUS','Dagestan',119961),(3764,'Kirovo-Chepetsk','RUS','Kirov',80920),(3765,'Krasnogorsk','RUS','Moskova',116738),(3766,'Klin','RUS','Moskova',80584),(3767,'TÂšaikovski','RUS','Perm',82933),(3768,'Novyi Urengoi','RUS','Yamalin Nenetsia',104144),(3769,'Ho Chi Minh City','VNM','Ho Chi Minh City',7162864),(3770,'Hanoi','VNM','Hanoi',6448837),(3771,'Haiphong','VNM','Haiphong',1837302),(3772,'Da Nang','VNM','Quang Nam-Da Nang',887069),(3773,'Biên Hòa','VNM','Dong Nai',784398),(3774,'Nha Trang','VNM','Khanh Hoa',392279),(3775,'Hue','VNM','Thua Thien-Hue',333715),(3776,'Can Tho','VNM','Can Tho',1187089),(3777,'Cam Pha','VNM','Quang Binh',195800),(3778,'Nam Dinh','VNM','Nam Ha',191900),(3779,'Quy Nhon','VNM','Binh Dinh',311000),(3780,'Vung Tau','VNM','Ba Ria-Vung Tau',240000),(3781,'Rach Gia','VNM','Kien Giang',228360),(3782,'Long Xuyen','VNM','An Giang',227300),(3783,'Thai Nguyen','VNM','Bac Thai',330000),(3784,'Hong Gai','VNM','Quang Ninh',108016),(3785,'Phan Thi?t','VNM','Binh Thuan',255000),(3786,'Cam Ranh','VNM','Khanh Hoa',128358),(3787,'Vinh','VNM','Nghe An',282981),(3788,'My Tho','VNM','Tien Giang',215000),(3789,'Da Lat','VNM','Lam Dong',256393),(3790,'Buon Ma Thuot','VNM','Dac Lac',340000),(3791,'Tallinn','EST','Harjumaa',430184),(3792,'Tartu','EST','Tartumaa',103512),(3793,'New York','USA','New York',8336697),(3794,'Los Angeles','USA','California',3857799),(3795,'Chicago','USA','Illinois',2714856),(3796,'Houston','USA','Texas',2160821),(3797,'Philadelphia','USA','Pennsylvania',1547607),(3798,'Phoenix','USA','Arizona',1488750),(3799,'San Diego','USA','California',1338348),(3800,'Dallas','USA','Texas',1241162),(3801,'San Antonio','USA','Texas',1382951),(3802,'Detroit','USA','Michigan',701475),(3803,'San Jose','USA','California',982765),(3804,'Indianapolis','USA','Indiana',834852),(3805,'San Francisco','USA','California',825863),(3806,'Jacksonville','USA','Florida',836507),(3807,'Columbus','USA','Ohio',809798),(3808,'Austin','USA','Texas',842592),(3809,'Baltimore','USA','Maryland',621342),(3810,'Memphis','USA','Tennessee',655155),(3811,'Milwaukee','USA','Wisconsin',598916),(3812,'Boston','USA','Massachusetts',636479),(3813,'Washington','USA','District of Columbia',632323),(3814,'Nashville-Davidson','USA','Tennessee',624496),(3815,'El Paso','USA','Texas',672538),(3816,'Seattle','USA','Washington',634535),(3817,'Denver','USA','Colorado',634265),(3818,'Charlotte','USA','North Carolina',775202),(3819,'Fort Worth','USA','Texas',777992),(3820,'Portland','USA','Oregon',603106),(3821,'Oklahoma City','USA','Oklahoma',599199),(3822,'Tucson','USA','Arizona',524295),(3823,'New Orleans','USA','Louisiana',369250),(3824,'Las Vegas','USA','Nevada',596424),(3825,'Cleveland','USA','Ohio',390928),(3826,'Long Beach','USA','California',467892),(3827,'Albuquerque','USA','New Mexico',555417),(3828,'Kansas City','USA','Missouri',464310),(3829,'Fresno','USA','California',505882),(3830,'Virginia Beach','USA','Virginia',447021),(3831,'Atlanta','USA','Georgia',443775),(3832,'Sacramento','USA','California',475516),(3833,'Oakland','USA','California',400740),(3834,'Mesa','USA','Arizona',452084),(3835,'Tulsa','USA','Oklahoma',393987),(3836,'Omaha','USA','Nebraska',421570),(3837,'Minneapolis','USA','Minnesota',392880),(3838,'Honolulu','USA','Hawaii',345610),(3839,'Miami','USA','Florida',413892),(3840,'Colorado Springs','USA','Colorado',431834),(3841,'Saint Louis','USA','Missouri',318172),(3842,'Wichita','USA','Kansas',385577),(3843,'Santa Ana','USA','California',330920),(3844,'Pittsburgh','USA','Pennsylvania',306211),(3845,'Arlington','USA','Texas',375600),(3846,'Cincinnati','USA','Ohio',296550),(3847,'Anaheim','USA','California',343248),(3848,'Toledo','USA','Ohio',284012),(3849,'Tampa','USA','Florida',347645),(3850,'Buffalo','USA','New York',259384),(3851,'Saint Paul','USA','Minnesota',290770),(3852,'Corpus Christi','USA','Texas',312195),(3853,'Aurora','USA','Colorado',199932),(3854,'Raleigh','USA','North Carolina',423179),(3855,'Newark','USA','New Jersey',277727),(3856,'Lexington-Fayette','USA','Kentucky',310573),(3857,'Anchorage','USA','Alaska',298610),(3858,'Louisville','USA','Kentucky',605110),(3859,'Riverside','USA','California',313673),(3860,'Saint Petersburg','USA','Florida',246541),(3861,'Bakersfield','USA','California',358597),(3862,'Stockton','USA','California',297984),(3863,'Birmingham','USA','Alabama',212038),(3864,'Jersey City','USA','New Jersey',254441),(3865,'Norfolk','USA','Virginia',245782),(3866,'Baton Rouge','USA','Louisiana',230058),(3867,'Hialeah','USA','Florida',231941),(3868,'Lincoln','USA','Nebraska',265404),(3869,'Greensboro','USA','North Carolina',277080),(3870,'Plano','USA','Texas',272068),(3871,'Rochester','USA','New York',210532),(3872,'Glendale','USA','Arizona',194478),(3873,'Akron','USA','Ohio',198549),(3874,'Garland','USA','Texas',233564),(3875,'Madison','USA','Wisconsin',240323),(3876,'Fort Wayne','USA','Indiana',254555),(3877,'Fremont','USA','California',221986),(3878,'Scottsdale','USA','Arizona',223514),(3879,'Montgomery','USA','Alabama',205293),(3880,'Shreveport','USA','Louisiana',201867),(3881,'Augusta-Richmond County','USA','Georgia',197872),(3882,'Lubbock','USA','Texas',236065),(3883,'Chesapeake','USA','Virginia',228417),(3884,'Mobile','USA','Alabama',194822),(3885,'Des Moines','USA','Iowa',206688),(3886,'Grand Rapids','USA','Michigan',190411),(3887,'Richmond','USA','Virginia',106516),(3888,'Yonkers','USA','New York',198449),(3889,'Spokane','USA','Washington',209525),(3890,'Glendale','USA','California',194478),(3891,'Tacoma','USA','Washington',202010),(3892,'Irving','USA','Texas',225427),(3893,'Huntington Beach','USA','California',194708),(3894,'Modesto','USA','California',203547),(3895,'Durham','USA','North Carolina',239358),(3896,'Columbus','USA','Georgia',198413),(3897,'Orlando','USA','Florida',249562),(3898,'Boise City','USA','Idaho',212303),(3899,'Winston-Salem','USA','North Carolina',234349),(3900,'San Bernardino','USA','California',213295),(3901,'Jackson','USA','Mississippi',175437),(3902,'Little Rock','USA','Arkansas',196537),(3903,'Salt Lake City','USA','Utah',189314),(3904,'Reno','USA','Nevada',231027),(3905,'Newport News','USA','Virginia',180726),(3906,'Chandler','USA','Arizona',245628),(3907,'Laredo','USA','Texas',244731),(3908,'Henderson','USA','Nevada',265679),(3909,'Arlington','USA','Virginia',207627),(3910,'Knoxville','USA','Tennessee',182200),(3911,'Amarillo','USA','Texas',195250),(3912,'Providence','USA','Rhode Island',178432),(3913,'Chula Vista','USA','California',252422),(3914,'Worcester','USA','Massachusetts',182669),(3915,'Oxnard','USA','California',201555),(3916,'Dayton','USA','Ohio',141359),(3917,'Garden Grove','USA','California',174389),(3918,'Oceanside','USA','California',171293),(3919,'Tempe','USA','Arizona',166842),(3920,'Huntsville','USA','Alabama',183739),(3921,'Ontario','USA','California',167211),(3922,'Chattanooga','USA','Tennessee',171279),(3923,'Fort Lauderdale','USA','Florida',170747),(3924,'Springfield','USA','Massachusetts',153552),(3925,'Springfield','USA','Missouri',162191),(3926,'Santa Clarita','USA','California',179013),(3927,'Salinas','USA','California',154484),(3928,'Tallahassee','USA','Florida',186971),(3929,'Rockford','USA','Illinois',150843),(3930,'Pomona','USA','California',150812),(3931,'Metairie','USA','Louisiana',138481),(3932,'Paterson','USA','New Jersey',145219),(3933,'Overland Park','USA','Kansas',178919),(3934,'Santa Rosa','USA','California',170685),(3935,'Syracuse','USA','New York',144170),(3936,'Kansas City','USA','Kansas',147268),(3937,'Hampton','USA','Virginia',136836),(3938,'Lakewood','USA','Colorado',145516),(3939,'Vancouver','USA','Washington',165489),(3940,'Irvine','USA','California',229985),(3941,'Aurora','USA','Illinois',199932),(3942,'Moreno Valley','USA','California',199552),(3943,'Pasadena','USA','California',152272),(3944,'Hayward','USA','California',149392),(3945,'Brownsville','USA','Texas',180097),(3946,'Bridgeport','USA','Connecticut',146425),(3947,'Hollywood','USA','Florida',145236),(3948,'Warren','USA','Michigan',134141),(3949,'Torrance','USA','California',147027),(3950,'Eugene','USA','Oregon',157986),(3951,'Pembroke Pines','USA','Florida',160306),(3952,'Salem','USA','Oregon',157429),(3953,'Pasadena','USA','Texas',152272),(3954,'Escondido','USA','California',147575),(3955,'Sunnyvale','USA','California',146197),(3956,'Savannah','USA','Georgia',142022),(3957,'Fontana','USA','California',201812),(3958,'Orange','USA','California',139419),(3959,'Naperville','USA','Illinois',143684),(3960,'Alexandria','USA','Virginia',146294),(3961,'Rancho Cucamonga','USA','California',170746),(3962,'Grand Prairie','USA','Texas',181824),(3963,'East Los Angeles','USA','California',126496),(3964,'Fullerton','USA','California',138574),(3965,'Corona','USA','California',158391),(3966,'Flint','USA','Michigan',100515),(3967,'Paradise','USA','Nevada',223167),(3968,'Mesquite','USA','Texas',143195),(3969,'Sterling Heights','USA','Michigan',130410),(3970,'Sioux Falls','USA','South Dakota',159908),(3971,'New Haven','USA','Connecticut',130741),(3972,'Topeka','USA','Kansas',127939),(3973,'Concord','USA','California',124711),(3974,'Evansville','USA','Indiana',120235),(3975,'Hartford','USA','Connecticut',124893),(3976,'Fayetteville','USA','North Carolina',202103),(3977,'Cedar Rapids','USA','Iowa',128119),(3978,'Elizabeth','USA','New Jersey',126458),(3979,'Lansing','USA','Michigan',113996),(3980,'Lancaster','USA','California',159055),(3981,'Fort Collins','USA','Colorado',148612),(3982,'Coral Springs','USA','Florida',125287),(3983,'Stamford','USA','Connecticut',125109),(3984,'Thousand Oaks','USA','California',128412),(3985,'Vallejo','USA','California',117796),(3986,'Palmdale','USA','California',155650),(3987,'Columbia','USA','South Carolina',131686),(3988,'El Monte','USA','California',115111),(3989,'Abilene','USA','Texas',118887),(3990,'North Las Vegas','USA','Nevada',223491),(3991,'Ann Arbor','USA','Michigan',116121),(3992,'Beaumont','USA','Texas',118228),(3993,'Waco','USA','Texas',127018),(3994,'Macon','USA','Georgia',91351),(3995,'Independence','USA','Missouri',117270),(3996,'Peoria','USA','Illinois',115687),(3997,'Inglewood','USA','California',111182),(3998,'Springfield','USA','Illinois',117126),(3999,'Simi Valley','USA','California',125793),(4000,'Lafayette','USA','Louisiana',122761),(4001,'Gilbert','USA','Arizona',221140),(4002,'Carrollton','USA','Texas',125409),(4003,'Bellevue','USA','Washington',126439),(4004,'West Valley City','USA','Utah',132434),(4005,'Clarksville','USA','Tennessee',142519),(4006,'Costa Mesa','USA','California',111918),(4007,'Peoria','USA','Arizona',159789),(4008,'South Bend','USA','Indiana',100800),(4009,'Downey','USA','California',112873),(4010,'Waterbury','USA','Connecticut',109915),(4011,'Manchester','USA','New Hampshire',110209),(4012,'Allentown','USA','Pennsylvania',118974),(4013,'McAllen','USA','Texas',134719),(4014,'Joliet','USA','Illinois',148268),(4015,'Lowell','USA','Massachusetts',108522),(4016,'Provo','USA','Utah',115919),(4017,'West Covina','USA','California',107440),(4018,'Wichita Falls','USA','Texas',104552),(4019,'Erie','USA','Pennsylvania',101047),(4020,'Daly City','USA','California',103690),(4021,'Citrus Heights','USA','California',84870),(4022,'Norwalk','USA','California',106278),(4023,'Gary','USA','Indiana',80294),(4024,'Berkeley','USA','California',115403),(4025,'Santa Clara','USA','California',119311),(4026,'Green Bay','USA','Wisconsin',104868),(4027,'Cape Coral','USA','Florida',161248),(4028,'Arvada','USA','Colorado',109745),(4029,'Pueblo','USA','Colorado',107772),(4030,'Sandy','USA','Utah',89344),(4031,'Athens-Clarke County','USA','Georgia',118999),(4032,'Cambridge','USA','Massachusetts',106471),(4033,'Westminster','USA','Colorado',109169),(4034,'San Buenaventura','USA','California',107734),(4035,'Portsmouth','USA','Virginia',95535),(4036,'Livonia','USA','Michigan',96942),(4037,'Burbank','USA','California',104391),(4038,'Clearwater','USA','Florida',108732),(4039,'Midland','USA','Texas',119385),(4040,'Davenport','USA','Iowa',101363),(4041,'Mission Viejo','USA','California',95290),(4042,'Miami Beach','USA','Florida',90588),(4043,'Sunrise Manor','USA','Nevada',189372),(4044,'New Bedford','USA','Massachusetts',95072),(4045,'El Cajon','USA','California',101435),(4046,'Norman','USA','Oklahoma',115562),(4047,'Richmond','USA','California',106516),(4048,'Albany','USA','New York',97856),(4049,'Brockton','USA','Massachusetts',94094),(4050,'Roanoke','USA','Virginia',97032),(4051,'Billings','USA','Montana',106954),(4052,'Compton','USA','California',97559),(4053,'Gainesville','USA','Florida',126047),(4054,'Fairfield','USA','California',107684),(4055,'Arden-Arcade','USA','California',92186),(4056,'San Mateo','USA','California',99670),(4057,'Visalia','USA','California',127081),(4058,'Boulder','USA','Colorado',101808),(4059,'Cary','USA','North Carolina',145693),(4060,'Santa Monica','USA','California',91812),(4061,'Fall River','USA','Massachusetts',88857),(4062,'Kenosha','USA','Wisconsin',100150),(4063,'Elgin','USA','Illinois',109927),(4064,'Odessa','USA','Texas',106102),(4065,'Carson','USA','California',93002),(4066,'Charleston','USA','South Carolina',125583),(4067,'Charlotte Amalie','VIR','St Thomas',18481),(4068,'Harare','ZWE','Harare',1485231),(4069,'Bulawayo','ZWE','Bulawayo',653337),(4070,'Chitungwiza','ZWE','Harare',356840),(4071,'Mount Darwin','ZWE','Harare',167462),(4072,'Mutare','ZWE','Manicaland',187621),(4073,'Gweru','ZWE','Midlands',157865),(4074,'Gaza','PSE','Gaza',949221),(4075,'Khan Yunis','PSE','Khan Yunis',142637),(4076,'Hebron','PSE','Hebron',563146),(4077,'Jabaliya','PSE','North Gaza',82900),(4078,'Nablus','PSE','Nablus',426132),(4079,'Rafah','PSE','Rafah',71003),(4080,'Podgorica','MNE','Podgorica',185937),(4081,'Niksic','MNE','Niksic',57278),(4082,'Belgrade','RSD','Belgrade',1659440),(4083,'Novi Sad','RSD','South Backa',341625),(4084,'Nis','RSD','Nisava',260237),(4085,'Kragujevac','RSD','Sumadija',179417),(4086,'Subotica','RSD','North Backa',141554),(4087,'Zrenjanin','RSD','Central Banat',123362),(4088,'Pancevo','RSD','South Banat',123414);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `Code` char(3) NOT NULL DEFAULT '',
  `Name` char(52) NOT NULL DEFAULT '',
  `Continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') NOT NULL DEFAULT 'Asia',
  `Region` char(26) NOT NULL DEFAULT '',
  `SurfaceArea` float(10,2) NOT NULL DEFAULT '0.00',
  `IndepYear` smallint DEFAULT NULL,
  `Population` int NOT NULL DEFAULT '0',
  `LifeExpectancy` float(3,1) DEFAULT NULL,
  `GNP` float(10,2) DEFAULT NULL,
  `GNPOld` float(10,2) DEFAULT NULL,
  `LocalName` char(45) NOT NULL DEFAULT '',
  `GovernmentForm` char(45) NOT NULL DEFAULT '',
  `HeadOfState` char(60) DEFAULT NULL,
  `Capital` int DEFAULT NULL,
  `Code2` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`Code`),
  KEY `fk_cap_idx` (`Capital`),
  CONSTRAINT `fk_cap` FOREIGN KEY (`Capital`) REFERENCES `city` (`ID`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('ABW','Aruba','North America','Caribbean',193.00,NULL,101484,75.3,828.00,793.00,'Aruba','Nonmetropolitan Territory of The Netherlands','Michiel Godfried Eman',129,'AW'),('AFG','Afghanistan','Asia','Southern and Central Asia',652090.00,1919,25500100,58.2,18034.00,15937.00,'Afganistan/Afqanestan','Islamic Emirate','Hamid Karzai',1,'AF'),('AGO','Angola','Africa','Central Africa',1246700.00,1975,20609294,57.9,92035.00,74299.00,'Angola','Republic','José Eduardo dos Santos',56,'AO'),('AIA','Anguilla','North America','Caribbean',96.00,NULL,13452,76.1,63.20,NULL,'Anguilla','Dependent Territory of the UK','Elisabeth II',62,'AI'),('ALB','Albania','Europe','Southern Europe',28748.00,1912,2821977,72.0,12893.00,11759.00,'Shqipëria','Republic','Bujar Nishani',34,'AL'),('AND','Andorra','Europe','Southern Europe',468.00,1278,76246,79.8,1630.00,NULL,'Andorra','Parliamentary Coprincipality','',55,'AD'),('ANT','Netherlands Antilles','North America','Caribbean',800.00,NULL,227049,76.6,1941.00,NULL,'Nederlandse Antillen','Nonmetropolitan Territory of The Netherlands','Willem-Alexander',33,'AN'),('ARE','United Arab Emirates','Asia','Middle East',83600.00,1971,8264070,76.5,360245.00,297548.00,'Al-Imarat al-´Arabiya al-Muttahida','Emirate Federation','Khalifa bin Zayed Al Nahyan',65,'AE'),('ARG','Argentina','South America','South America',2780400.00,1816,40117096,76.9,435223.00,358619.00,'Argentina','Federal Republic','Cristina Fernández de Kirchner',69,'AR'),('ARM','Armenia','Asia','Middle East',29800.00,1991,3024100,72.6,10693.00,9599.00,'Hajastan','Republic','Robert Kotšarjan',126,'AM'),('ASM','American Samoa','Oceania','Polynesia',199.00,NULL,55591,75.1,0.00,NULL,'Amerika Samoa','US Territory','Barrack Obama',54,'AS'),('ATA','Antarctica','Antarctica','Antarctica',13120000.00,NULL,0,NULL,0.00,NULL,'–','Co-administrated','',NULL,'AQ'),('ATF','French Southern territories','Antarctica','Antarctica',7780.00,NULL,0,NULL,0.00,NULL,'Terres australes françaises','Nonmetropolitan Territory of France','François Hollande',NULL,'TF'),('ATG','Antigua and Barbuda','North America','Caribbean',442.00,1981,86925,74.7,1081.00,1104.00,'Antigua and Barbuda','Constitutional Monarchy','Elisabeth II',63,'AG'),('AUS','Australia','Oceania','Australia and New Zealand',7741220.00,1901,23328152,81.8,1331262.00,1094161.00,'Australia','Constitutional Monarchy, Federation','Elisabeth II',135,'AU'),('AUT','Austria','Europe','Western Europe',83859.00,1918,8501502,79.7,416230.00,375961.00,'Österreich','Federal Republic','Heinz Fischer',1523,'AT'),('AZE','Azerbaijan','Asia','Middle East',86600.00,1991,9235100,66.6,56402.00,49437.00,'Azärbaycan','Federal Republic','Ilham Aliyev',144,'AZ'),('BDI','Burundi','Africa','Eastern Africa',27834.00,1962,10163000,52.1,2337.00,2015.00,'Burundi/Uburundi','Republic','Pierre Nkurunziza',552,'BI'),('BEL','Belgium','Europe','Western Europe',30518.00,1830,11180320,79.5,519476.00,477724.00,'België/Belgique','Constitutional Monarchy, Federation','Philippe',179,'BE'),('BEN','Benin','Africa','Western Africa',112622.00,1960,10323000,59.0,7260.00,6505.00,'Bénin','Republic','Yayi Boni',187,'BJ'),('BFA','Burkina Faso','Africa','Western Africa',274000.00,1960,17322796,52.9,10392.00,2201.09,'Burkina Faso','Republic','Blaise Compaoré',549,'BF'),('BGD','Bangladesh','Asia','Southern and Central Asia',143998.00,1971,152518015,60.3,122091.00,109695.00,'Bangladesh','Republic','Abdul Hamid',150,'BD'),('BGR','Bulgaria','Europe','Eastern Europe',110994.00,1908,7282041,73.1,51024.00,46226.00,'Balgarija','Republic','Rosen Plevneliev',539,'BG'),('BHR','Bahrain','Asia','Middle East',694.00,1971,1234571,78.1,20562.00,20572.00,'Al-Bahrayn','Monarchy (Emirate)','Hamad bin Isa Al Khalifa',149,'BH'),('BHS','Bahamas','North America','Caribbean',13878.00,1973,351461,72.0,7599.00,7564.00,'The Bahamas','Constitutional Monarchy','Elisabeth II',148,'BS'),('BIH','Bosnia and Herzegovina','Europe','Southern Europe',51197.00,1992,3791622,78.8,18470.00,17054.00,'Bosna i Hercegovina','Federal Republic','Željko Komši?',201,'BA'),('BLR','Belarus','Europe','Eastern Europe',207600.00,1991,9467200,70.6,63537.00,54058.00,'Belarus','Republic','Alexander Lukashenko',3520,'BY'),('BLZ','Belize','North America','Central America',22696.00,1981,312971,68.3,1322.00,1240.00,'Belize','Constitutional Monarchy','Elisabeth II',185,'BZ'),('BMU','Bermuda','North America','North America',53.00,NULL,64327,80.7,6815.00,7195.00,'Bermuda','Dependent Territory of the UK','Elisabeth II',191,'BM'),('BOL','Bolivia','South America','South America',1098581.00,1825,10027254,66.9,22788.00,18786.00,'Bolivia','Republic','Evo Morales',194,'BO'),('BRA','Brazil','South America','South America',8547403.00,1822,201032714,71.9,2429947.00,2104366.00,'Brasil','Federal Republic','Dilma Rousseff',211,'BR'),('BRB','Barbados','North America','Caribbean',430.00,1966,274200,73.9,2223.00,2186.00,'Barbados','Constitutional Monarchy','Elisabeth II',174,'BB'),('BRN','Brunei','Asia','Southeast Asia',5765.00,1984,393162,75.7,11705.00,12460.00,'Brunei Darussalam','Monarchy (Sultanate)','Hassanal Bolkiah',538,'BN'),('BTN','Bhutan','Asia','Southern and Central Asia',47000.00,1910,742360,66.1,1729.00,1497.00,'Druk-Yul','Monarchy','Jigme Singye Wangchuk',192,'BT'),('BVT','Bouvet Island','Antarctica','Antarctica',59.00,NULL,0,NULL,0.00,NULL,'Bouvetøya','Dependent Territory of Norway','Harald V',NULL,'BV'),('BWA','Botswana','Africa','Southern Africa',581730.00,1966,2024904,61.9,15811.00,13690.00,'Botswana','Republic','Ian Khama',204,'BW'),('CAF','Central African Republic','Africa','Central Africa',622984.00,1960,4616000,44.5,2163.00,1982.00,'Centrafrique/Bê-Afrîka','Republic','Michel Djotodia',1889,'CF'),('CAN','Canada','North America','North America',9970610.00,1867,35295770,81.4,1777789.00,1549652.00,'Canada','Constitutional Monarchy, Federation','Elisabeth II',1822,'CA'),('CCK','Cocos (Keeling) Islands','Oceania','Australia and New Zealand',14.00,NULL,550,NULL,0.00,NULL,'Cocos (Keeling) Islands','Territory of Australia','Elisabeth II',2317,'CC'),('CHE','Switzerland','Europe','Western Europe',41284.00,1499,8112200,81.0,676078.00,584914.00,'Schweiz/Suisse/Svizzera/Svizra','Federation','Didier Burkhalter',3248,'CH'),('CHL','Chile','South America','South America',756626.00,1810,16634603,77.7,237042.00,202925.00,'Chile','Republic','Sebastián Piñera',554,'CL'),('CHN','China','Asia','Eastern Asia',9572900.00,-1523,1361880000,63.5,7310070.00,5904632.00,'Zhongquo','People\'sRepublic','Xi Jinping',1891,'CN'),('CIV','Côte d’Ivoire','Africa','Western Africa',322463.00,1960,19840000,55.5,23035.00,21923.00,'Côte d’Ivoire','Republic','Laurent Gbagbo',2814,'CI'),('CMR','Cameroon','Africa','Central Africa',475442.00,1960,20386799,53.7,25018.00,22224.00,'Cameroun/Cameroon','Republic','Paul Biya',1804,'CM'),('COD','Congo, The Democratic Republic of the','Africa','Central Africa',2344858.00,1960,67514000,54.4,14379.00,12197.00,'République Démocratique du Congo','Republic','Joseph Kabila',2298,'CD'),('COG','Congo','Africa','Central Africa',342000.00,1960,2943000,48.0,10713.00,9024.00,'Congo','Republic','Denis Sassou Nguesso',2296,'CG'),('COK','Cook Islands','Oceania','Polynesia',236.00,NULL,14974,74.2,100.00,87.00,'The Cook Islands','Nonmetropolitan Territory of New Zealand','Elisabeth II',583,'CK'),('COL','Colombia','South America','South America',1138914.00,1810,47391000,72.8,320353.00,274993.00,'Colombia','Republic','Juan Manuel Santos',2257,'CO'),('COM','Comoros','Africa','Eastern Africa',1862.00,1975,743797,63.4,609.00,541.00,'Komori/Comores','Republic','Ikililou Dhoinine',2295,'KM'),('CPV','Cape Verde','Africa','Western Africa',4033.00,1975,491875,71.6,1846.00,1586.00,'Cabo Verde','Republic','Jorge Carlos Fonseca',1859,'CV'),('CRI','Costa Rica','North America','Central America',51100.00,1821,4667096,77.7,40050.00,35317.00,'Costa Rica','Republic','Laura Chinchilla',584,'CR'),('CUB','Cuba','North America','Caribbean',110861.00,1902,11167325,77.7,17843.00,18862.00,'Cuba','Socialistic Republic','Raúl Castro',2413,'CU'),('CXR','Christmas Island','Oceania','Australia and New Zealand',135.00,NULL,2072,NULL,0.00,NULL,'Christmas Island','Territory of Australia','Elisabeth II',1791,'CX'),('CYM','Cayman Islands','North America','Caribbean',264.00,NULL,55456,80.7,1263.00,1182.00,'Cayman Islands','Dependent Territory of the UK','Elisabeth II',553,'KY'),('CYP','Cyprus','Asia','Middle East',9251.00,1960,865878,77.8,25097.00,22539.00,'Kýpros/Kibris','Republic','Nicos Anastasiades',2430,'CY'),('CZE','Czech Republic','Europe','Eastern Europe',78866.00,1993,10513800,77.2,201462.00,183558.00,'¸esko','Republic','Miloš Zeman',3339,'CZ'),('DEU','Germany','Europe','Western Europe',357022.00,1955,80548000,80.0,3667931.00,3350868.00,'Deutschland','Federal Republic',' Joachim Gauck',3068,'DE'),('DJI','Djibouti','Africa','Eastern Africa',23200.00,1977,873000,43.4,382.00,373.00,'Djibouti/Jibuti','Republic','Ismaïl Omar Guelleh',585,'DJ'),('DMA','Dominica','North America','Caribbean',751.00,1978,71293,75.5,466.00,465.00,'Dominica','Republic','Charles Savarin',586,'DM'),('DNK','Denmark','Europe','Nordic Countries',43094.00,800,5623501,78.6,341683.00,320683.00,'Danmark','Constitutional Monarchy','Margrethe II',3315,'DK'),('DOM','Dominican Republic','North America','Caribbean',48511.00,1844,9445281,77.3,53579.00,49968.00,'República Dominicana','Republic','Danilo Medina',587,'DO'),('DZA','Algeria','Africa','Northern Africa',2381741.00,1962,37900000,74.3,181167.00,155538.00,'Al-Jaza’ir/Algérie','Republic','Abdelaziz Bouteflika',35,'DZ'),('ECU','Ecuador','South America','South America',283561.00,1822,15644300,75.3,76476.00,66585.00,'Ecuador','Republic','Rafael Correa',594,'EC'),('EGY','Egypt','Africa','Northern Africa',1001449.00,1922,83661000,77.1,232593.00,217727.00,'Misr','Republic','Adly Mansour',608,'EG'),('ERI','Eritrea','Africa','Eastern Africa',117600.00,1993,6333000,61.8,2584.00,2097.00,'Ertra','Republic','Isaias Afewerki',652,'ER'),('ESH','Western Sahara','Africa','Northern Africa',266000.00,NULL,567000,54.3,60.00,NULL,'As-Sahrawiya','Occupied by Marocco','Mohammed Abdel Aziz',2453,'EH'),('ESP','Spain','Europe','Southern Europe',505992.00,1492,46704314,81.2,1447083.00,1362576.00,'España','Constitutional Monarchy','Juan Carlos I',653,'ES'),('EST','Estonia','Europe','Baltic Countries',45227.00,1991,1286540,72.8,21000.00,17794.00,'Eesti','Republic','Toomas Hendrik Ilves',3791,'EE'),('ETH','Ethiopia','Africa','Eastern Africa',1104300.00,-1000,86631986,55.4,31639.00,29598.00,'YeItyop´iya','Republic','Mulatu Teshome',756,'ET'),('FIN','Finland','Europe','Nordic Countries',338145.00,1917,5449657,79.2,264394.00,238758.00,'Suomi','Republic','Sauli Niinistö',3236,'FI'),('FJI','Fiji Islands','Oceania','Melanesia',18274.00,1970,858038,70.7,3699.00,3072.00,'Fiji Islands','Republic','Ratu Epeli Nailatikau',764,'FJ'),('FLK','Falkland Islands','South America','South America',12173.00,NULL,2563,NULL,0.00,NULL,'Falkland Islands','Dependent Territory of the UK','Elisabeth II',763,'FK'),('FRA','France','Europe','Western Europe',551500.00,843,65384000,74.6,2838881.00,2600104.00,'France','Republic','François Hollande',2974,'FR'),('FRO','Faroe Islands','Europe','Nordic Countries',1399.00,NULL,48159,79.7,0.00,NULL,'Føroyar','Part of Denmark','Margrethe II',901,'FO'),('FSM','Micronesia, Federated States of','Oceania','Micronesia',702.00,1990,119000,67.2,325.00,308.00,'Micronesia','Federal Republic','Manny Mori',2689,'FM'),('GAB','Gabon','Africa','Central Africa',267668.00,1960,1672000,53.1,16298.00,12732.00,'Le Gabon','Republic','Ali Bongo Ondimba',902,'GA'),('GBR','United Kingdom','Europe','British Islands',242900.00,1066,63705000,80.1,2469882.00,2275451.00,'United Kingdom','Constitutional Monarchy','Elisabeth II',456,'GB'),('GEO','Georgia','Asia','Middle East',69700.00,1991,4483800,77.1,14012.00,11416.00,'Sakartvelo','Republic','Giorgi Margvelashvili',905,'GE'),('GHA','Ghana','Africa','Western Africa',238533.00,1957,24658823,59.8,37922.00,31765.00,'Ghana','Republic','John Dramani Mahama',910,'GH'),('GIB','Gibraltar','Europe','Southern Europe',6.00,NULL,30001,78.6,258.00,NULL,'Gibraltar','Dependent Territory of the UK','Elisabeth II',915,'GI'),('GIN','Guinea','Africa','Western Africa',245857.00,1958,10824200,57.1,4651.00,4302.00,'Guinée','Republic','Alpha Condé',926,'GN'),('GLP','Guadeloupe','North America','Caribbean',1705.00,NULL,403355,70.3,3501.00,NULL,'Guadeloupe','Overseas Department of France','François Hollande',919,'GP'),('GMB','Gambia','Africa','Western Africa',11295.00,1965,1849000,52.2,868.00,922.00,'The Gambia','Republic','Yahya Jammeh',904,'GM'),('GNB','Guinea-Bissau','Africa','Western Africa',36125.00,1974,1704000,47.9,967.00,834.00,'Guiné-Bissau','Republic','Manuel Serifo Nhamadjo',927,'GW'),('GNQ','Equatorial Guinea','Africa','Central Africa',28051.00,1968,1622000,66.6,10652.00,6785.00,'Guinea Ecuatorial','Republic','Teodoro Obiang Nguema Mbasogo',2972,'GQ'),('GRC','Greece','Europe','Southern Europe',131626.00,1830,10815197,79.9,281225.00,284101.00,'Elláda','Republic','Karolos Papoulias',2401,'GR'),('GRD','Grenada','North America','Caribbean',344.00,1974,103328,65.9,749.00,NULL,'Grenada','Constitutional Monarchy','Elisabeth II',916,'GD'),('GRL','Greenland','North America','North America',2166090.00,NULL,56370,70.1,0.00,NULL,'Kalaallit Nunaat/Grønland','Part of Denmark','Margrethe II',917,'GL'),('GTM','Guatemala','North America','Central America',108889.00,1821,15438384,70.2,45330.00,40129.00,'Guatemala','Republic','Otto Pérez Molina',922,'GT'),('GUF','French Guiana','South America','South America',90000.00,NULL,229040,75.0,681.00,NULL,'Guyane française','Overseas Department of France','François Hollande',3014,'GF'),('GUM','Guam','Oceania','Micronesia',549.00,NULL,159358,74.2,1197.00,1136.00,'Guam','US Territory','Barrack Obama',921,'GU'),('GUY','Guyana','South America','South America',214969.00,1966,784894,66.7,2567.00,2272.00,'Guyana','Republic','Donald Ramotar',928,'GY'),('HKG','Hong Kong','Asia','Eastern Asia',1075.00,NULL,7184000,82.0,255512.00,233535.00,'Xianggang/Hong Kong','Special Administrative Region of China','Leung Chun-ying',937,'HK'),('HMD','Heard Island and McDonald Islands','Antarctica','Antarctica',359.00,NULL,0,NULL,0.00,NULL,'Heard and McDonald Islands','Territory of Australia','Elisabeth II',NULL,'HM'),('HND','Honduras','North America','Central America',112088.00,1838,8555072,69.4,16450.00,14668.00,'Honduras','Republic','Juan Orlando Hernández',933,'HN'),('HRV','Croatia','Europe','Southern Europe',56538.00,1991,4284889,75.3,59561.00,56813.00,'Hrvatska','Republic',' Kolinda Grabar-Kitarovi?',2409,'HR'),('HTI','Haiti','North America','Caribbean',27750.00,1804,10413211,60.7,7387.00,6657.00,'Haïti/Dayti','Republic','Michel Martelly',929,'HT'),('HUN','Hungary','Europe','Eastern Europe',93030.00,1918,9906000,74.8,131829.00,122372.00,'Magyarország','Republic','János Áder',3483,'HU'),('IDN','Indonesia','Asia','Southeast Asia',1904569.00,1945,249866000,70.7,822205.00,689283.00,'Indonesia','Republic','Susilo Bambang Yudhoyono',939,'ID'),('IND','India','Asia','Southern and Central Asia',3287263.00,1947,1238270000,69.9,1856813.00,1692962.00,'Bharat/India','Federal Republic',' Pranab Mukherjee',1109,'IN'),('IOT','British Indian Ocean Territory','Africa','Eastern Africa',78.00,NULL,0,NULL,0.00,NULL,'British Indian Ocean Territory','Dependent Territory of the UK','Elisabeth II',NULL,'IO'),('IRL','Ireland','Europe','British Islands',70273.00,1921,4593100,80.1,178199.00,172747.00,'Ireland/Éire','Republic','Michael D. Higgins',1447,'IE'),('IRN','Iran','Asia','Southern and Central Asia',1648195.00,1906,77095000,71.1,195746.00,160151.00,'Iran','Islamic Republic','Hassan Rouhani',1380,'IR'),('IRQ','Iraq','Asia','Middle East',438317.00,1932,34035000,69.9,180402.00,137081.00,'Al-´Iraq','Republic','Jalal Talabani',1365,'IQ'),('ISL','Iceland','Europe','Nordic Countries',103000.00,1944,325010,80.9,12083.00,10360.00,'Ísland','Republic','Ólafur Ragnar Grímsson',1449,'IS'),('ISR','Israel','Asia','Middle East',21056.00,1948,8107000,80.9,236682.00,211158.00,'Yisra’el/Isra’il','Republic','Shimon Peres',1450,'IL'),('ITA','Italy','Europe','Southern Europe',301316.00,1861,59901141,81.7,2179939.00,12709.00,'Italia','Republic','Giorgio Napolitano',1464,'IT'),('JAM','Jamaica','North America','Caribbean',10990.00,1962,2711476,75.5,13890.00,6722.00,'Jamaica','Constitutional Monarchy','Elisabeth II',1530,'JM'),('JOR','Jordan','Asia','Middle East',88946.00,1946,6528600,80.0,28660.00,26334.00,'Al-Urdunn','Constitutional Monarchy','Abdullah II',1786,'JO'),('JPN','Japan','Asia','Eastern Asia',377829.00,-660,127270000,82.3,6080788.00,5643184.00,'Nihon/Nippon','Constitutional Monarchy','Akihito',1532,'JP'),('KAZ','Kazakstan','Asia','Southern and Central Asia',2724900.00,1991,17099000,67.8,160413.00,128701.00,'Qazaqstan','Republic','Nursultan Nazarbayev',1864,'KZ'),('KEN','Kenya','Africa','Eastern Africa',580367.00,1963,44354000,57.8,33628.00,32040.00,'Kenya','Republic','Uhuru Kenyatta',1881,'KE'),('KGZ','Kyrgyzstan','Asia','Southern and Central Asia',199900.00,1991,5747000,69.4,5668.00,4450.00,'Kyrgyzstan','Republic','Almazbek Atambayev',2253,'KG'),('KHM','Cambodia','Asia','Southeast Asia',181035.00,1953,15135000,62.1,12108.00,10711.00,'Kâmpuchéa','Constitutional Monarchy','Norodom Sihamoni',1800,'KH'),('KIR','Kiribati','Oceania','Micronesia',726.00,1979,106461,63.2,236.00,213.00,'Kiribati','Republic','Anote Tong',2256,'KI'),('KNA','Saint Kitts and Nevis','North America','Caribbean',261.00,1983,54000,73.2,719.00,686.00,'Saint Kitts and Nevis','Constitutional Monarchy','Elisabeth II',3064,'KN'),('KOR','South Korea','Asia','Eastern Asia',99434.00,1948,50219669,79.0,320749.00,220469.00,'Taehan Min’guk (Namhan)','Republic','Park Geun-hye',2331,'KR'),('KWT','Kuwait','Asia','Middle East',17818.00,1961,3582054,77.0,270037.00,232166.00,'Al-Kuwayt','Constitutional Monarchy (Emirate)','Sabah Al-Ahmad Al-Jaber Al-Sabah',2429,'KW'),('LAO','Laos','Asia','Southeast Asia',236800.00,1953,6580800,56.6,7741.00,6713.00,'Lao','Republic','Choummaly Sayasone',2432,'LA'),('LBN','Lebanon','Asia','Middle East',10400.00,1941,4822000,73.7,39916.00,36615.00,'Lubnan','Republic','Michel Suleiman',2438,'LB'),('LBR','Liberia','Africa','Western Africa',111369.00,1847,4294000,41.8,1428.00,1113.00,'Liberia','Republic','Ellen Johnson Sirleaf',2440,'LR'),('LBY','Libyan Arab Jamahiriya','Africa','Northern Africa',1759540.00,1951,6202000,77.6,44806.00,40562.00,'Libiya','Socialistic State','Nouri Abusahmain',2441,'LY'),('LCA','Saint Lucia','North America','Caribbean',622.00,1979,166526,76.8,1195.00,1160.00,'Saint Lucia','Constitutional Monarchy','Elisabeth II',3065,'LC'),('LIE','Liechtenstein','Europe','Western Europe',160.00,1806,36942,80.3,1119.00,1084.00,'Liechtenstein','Constitutional Monarchy','Hans-Adam II',2446,'LI'),('LKA','Sri Lanka','Asia','Southern and Central Asia',65610.00,1948,20277597,75.1,58535.00,48948.00,'Sri Lanka/Ilankai','Republic','Mahinda Rajapaksa',3217,'LK'),('LSO','Lesotho','Africa','Southern Africa',30355.00,1966,2074000,40.4,2857.00,2622.00,'Lesotho','Constitutional Monarchy','Letsie III',2437,'LS'),('LTU','Lithuania','Europe','Baltic Countries',65301.00,1991,2945951,74.9,41289.00,36013.00,'Lietuva','Republic','Dalia Grybauskait?',2447,'LT'),('LUX','Luxembourg','Europe','Western Europe',2586.00,1867,537000,79.6,42741.00,35895.00,'Luxembourg/Lëtzebuerg','Constitutional Monarchy','Henri',2452,'LU'),('LVA','Latvia','Europe','Baltic Countries',64589.00,1991,2008700,72.1,28632.00,24517.00,'Latvija','Republic','Andris B?rzi?š',2434,'LV'),('MAC','Macao','Asia','Eastern Asia',18.00,NULL,598200,84.4,31809.00,25310.00,'Macau/Aomen','Special Administrative Region of China','Leung Chun-ying',2454,'MO'),('MAR','Morocco','Africa','Northern Africa',446550.00,1956,33125300,71.8,96120.00,88305.00,'Al-Maghrib','Constitutional Monarchy','Mohammed VI',2486,'MA'),('MCO','Monaco','Europe','Western Europe',1.50,1861,36136,89.7,776.00,NULL,'Monaco','Constitutional Monarchy','Albert II',2695,'MC'),('MDA','Moldova','Europe','Eastern Europe',33851.00,1991,3559500,70.8,7580.00,1872.00,'Moldova','Republic','Nicolae Timofti',2690,'MD'),('MDG','Madagascar','Africa','Eastern Africa',587041.00,1960,21263403,62.9,9724.00,8750.00,'Madagasikara/Madagascar','Federal Republic','Andry Rajoelina',2455,'MG'),('MDV','Maldives','Asia','Southern and Central Asia',298.00,1965,317280,73.4,1833.00,1823.00,'Dhivehi Raajje/Maldives','Republic','Abdulla Yameen',2463,'MV'),('MEX','Mexico','North America','Central America',1958201.00,1810,118395054,76.4,1152418.00,1023985.00,'México','Federal Republic','Enrique Peña Nieto',2515,'MX'),('MHL','Marshall Islands','Oceania','Micronesia',181.00,1990,56086,71.1,215.00,197.00,'Marshall Islands/Majol','Republic','Christopher Loeak',2507,'MH'),('MKD','Macedonia','Europe','Southern Europe',25713.00,1991,2062294,74.6,10266.00,9215.00,'Makedonija','Republic','Gjorge Ivanov',2460,'MK'),('MLI','Mali','Africa','Western Africa',1240192.00,1960,15302000,50.3,10195.00,9003.00,'Mali','Republic','Ibrahim Boubacar Keïta',2482,'ML'),('MLT','Malta','Europe','Southern Europe',316.00,1964,416055,79.7,8626.00,7493.00,'Malta','Republic','George Abela',2484,'MT'),('MMR','Myanmar','Asia','Southeast Asia',676578.00,1948,45611000,53.1,180375.00,171028.00,'Myanma Pye','Republic','Thein Sein',2710,'MM'),('MNE','Montenegro','Europe','Southern Europe',13812.00,2006,625266,74.5,4290.00,3959.00,'Crna Gora','Parliamentary republic','Filip Vujanovic',4080,'ME'),('MNG','Mongolia','Asia','Eastern Asia',1566500.00,1921,2754685,67.6,7918.00,5640.00,'Mongol Uls','Republic','Tsakhiagiin Elbegdorj',2696,'MN'),('MNP','Northern Mariana Islands','Oceania','Micronesia',464.00,NULL,53883,77.0,0.00,NULL,'Northern Mariana Islands','Commonwealth of the US','Barrack Obama',2913,'MP'),('MOZ','Mozambique','Africa','Eastern Africa',801590.00,1975,23700715,41.2,12379.00,9192.00,'Moçambique','Republic','Armando Guebuza',2698,'MZ'),('MRT','Mauritania','Africa','Western Africa',1025520.00,1960,3461041,60.3,4090.00,3603.00,'Muritaniya/Mauritanie','Republic','Mohamed Ould Abdel Aziz',2509,'MR'),('MSR','Montserrat','North America','Caribbean',102.00,NULL,11000,72.7,250.00,NULL,'Montserrat','Dependent Territory of the UK','Elisabeth II',2697,'MS'),('MTQ','Martinique','North America','Caribbean',1102.00,NULL,394173,75.4,2731.00,2559.00,'Martinique','Overseas Department of France','François Hollande',2508,'MQ'),('MUS','Mauritius','Africa','Eastern Africa',2040.00,1968,1257900,74.0,11325.00,9835.00,'Mauritius','Republic','Rajkeswur Purryag',2511,'MU'),('MWI','Malawi','Africa','Eastern Africa',118484.00,1964,16363000,43.8,5493.00,5272.00,'Malawi','Republic','Joyce Banda',2462,'MW'),('MYS','Malaysia','Asia','Southeast Asia',329758.00,1957,29941000,73.3,280754.00,238591.00,'Malaysia','Constitutional Monarchy, Federation','Abdul Halim',2464,'MY'),('MYT','Mayotte','Africa','Eastern Africa',373.00,NULL,212600,62.9,0.00,NULL,'Mayotte','Territorial Collectivity of France','François Hollande',2514,'YT'),('NAM','Namibia','Africa','Southern Africa',824292.00,1990,2113077,51.0,12600.00,10700.00,'Namibia','Republic','Hifikepunye Pohamba',2726,'NA'),('NCL','New Caledonia','Oceania','Melanesia',18575.00,NULL,258958,76.7,3563.00,NULL,'Nouvelle-Calédonie','Nonmetropolitan Territory of France','François Hollande',3493,'NC'),('NER','Niger','Africa','Western Africa',1267000.00,1960,17129076,52.0,5955.00,5379.00,'Niger','Republic','Mahamadou Issoufou',2738,'NE'),('NFK','Norfolk Island','Oceania','Australia and New Zealand',36.00,NULL,2302,NULL,0.00,NULL,'Norfolk Island','Territory of Australia','Elisabeth II',2806,'NF'),('NGA','Nigeria','Africa','Western Africa',923768.00,1960,173615000,46.9,221013.00,208963.00,'Nigeria','Federal Republic','Goodluck Jonathan',2754,'NG'),('NIC','Nicaragua','North America','Central America',130000.00,1838,6071045,71.5,9381.00,8344.00,'Nicaragua','Republic','Daniel Ortega',2734,'NI'),('NIU','Niue','Oceania','Polynesia',260.00,NULL,1613,NULL,0.00,NULL,'Niue','Nonmetropolitan Territory of New Zealand','Elisabeth II',2805,'NU'),('NLD','Netherlands','Europe','Western Europe',41526.00,1581,16831700,79.6,843306.00,762259.00,'Nederland','Constitutional Monarchy','Willem-Alexander',5,'NL'),('NOR','Norway','Europe','Nordic Countries',323877.00,1905,5096300,80.2,493812.00,426196.00,'Norge','Constitutional Monarchy','Harald V',2807,'NO'),('NPL','Nepal','Asia','Southern and Central Asia',147181.00,1769,26494504,65.4,19083.00,16078.00,'Nepal','Constitutional Monarchy','Ram Baran Yadav',2729,'NP'),('NRU','Nauru','Oceania','Micronesia',21.00,1968,9945,64.2,197.00,NULL,'Naoero/Nauru','Republic','Baron Waqa',2728,'NR'),('NZL','New Zealand','Oceania','Australia and New Zealand',270534.00,1907,4503550,80.6,153941.00,132729.00,'New Zealand/Aotearoa','Constitutional Monarchy','Elisabeth II',3499,'NZ'),('OMN','Oman','Asia','Middle East',309500.00,1951,3929000,74.1,16904.00,54687.00,'´Uman','Monarchy (Sultanate)','Qaboos bin Said al Said',2821,'OM'),('PAK','Pakistan','Asia','Southern and Central Asia',796095.00,1947,185192000,64.5,220327.00,183228.00,'Pakistan','Republic','Mamnoon Hussain',2831,'PK'),('PAN','Panama','North America','Central America',75517.00,1903,3405813,77.7,33170.00,28902.00,'Panamá','Republic','Ricardo Martinelli',2882,'PA'),('PCN','Pitcairn','Oceania','Polynesia',49.00,NULL,56,NULL,0.00,NULL,'Pitcairn','Dependent Territory of the UK','Elisabeth II',2912,'PN'),('PER','Peru','South America','South America',1285216.00,1821,30475144,70.7,163216.00,142406.00,'Perú/Piruw','Republic','Ollanta Humala',2890,'PE'),('PHL','Philippines','Asia','Southeast Asia',300000.00,1946,98881000,71.1,225008.00,200094.00,'Pilipinas','Republic','Benigno Aquino III',766,'PH'),('PLW','Palau','Oceania','Micronesia',459.00,1994,20901,71.2,190.00,176.00,'Belau/Palau','Republic','Tommy Remengesau',2881,'PW'),('PNG','Papua New Guinea','Oceania','Melanesia',462840.00,1975,7059653,66.3,12003.00,9262.00,'Papua New Guinea/Papua Niugini','Constitutional Monarchy','Elisabeth II',2884,'PG'),('POL','Poland','Europe','Eastern Europe',323250.00,1918,38502396,76.2,492921.00,450650.00,'Polska','Republic','Bronis?aw Komorowski',2928,'PL'),('PRI','Puerto Rico','North America','Caribbean',8875.00,NULL,3667084,78.9,64106.00,63058.00,'Puerto Rico','Commonwealth of the US','Barrack Obama',2919,'PR'),('PRK','North Korea','Asia','Eastern Asia',120538.00,1948,24895000,63.8,5332.00,NULL,'Choson Minjujuui In´min Konghwaguk (Bukhan)','Socialistic Republic','Kim Jong-un',2318,'KP'),('PRT','Portugal','Europe','Southern Europe',91982.00,1143,10487289,79.4,228622.00,219651.00,'Portugal','Republic','Aníbal Cavaco Silva',2914,'PT'),('PRY','Paraguay','South America','South America',406752.00,1811,6783374,75.7,24841.00,18617.00,'Paraguay','Republic','Horacio Cartes',2885,'PY'),('PSE','Palestine','Asia','Middle East',6257.00,NULL,4420549,71.0,4173.00,NULL,'Filastin','Autonomous Area','Mahmoud Abbas',4074,'PS'),('PYF','French Polynesia','Oceania','Polynesia',4000.00,NULL,268270,77.1,818.00,781.00,'Polynésie française','Nonmetropolitan Territory of France','François Hollande',3016,'PF'),('QAT','Qatar','Asia','Middle East',11000.00,1971,2068050,75.4,169302.00,125699.00,'Qatar','Monarchy','Tamim bin Hamad Al Thani',2973,'QA'),('REU','Réunion','Africa','Eastern Africa',2510.00,NULL,821136,72.1,8287.00,7988.00,'Réunion','Overseas Department of France','François Hollande',3017,'RE'),('ROM','Romania','Europe','Eastern Europe',238391.00,1878,20121641,72.4,187306.00,162477.00,'România','Republic','Traian B?sescu',3018,'RO'),('RSD','Serbia','Europe','Southern Europe',88361.00,2006,7209764,75.2,12480.00,NULL,'Srbija','Parliamentary republic','Tomislav Nikolic',4082,'RS'),('RUS','Russian Federation','Europe','Eastern Europe',17075400.00,1991,143600000,70.3,1838878.00,1476302.00,'Rossija','Federal Republic','Vladimir Putin',3580,'RU'),('RWA','Rwanda','Africa','Eastern Africa',26338.00,1962,10537222,50.5,6302.00,5582.00,'Rwanda/Urwanda','Republic','Paul Kagame',3047,'RW'),('SAU','Saudi Arabia','Asia','Middle East',2149690.00,1932,29994272,76.3,587171.00,457836.00,'Al-´Arabiya as-Sa´udiya','Monarchy','Abdullah',3173,'SA'),('SDN','Sudan','Africa','Northern Africa',2505813.00,1956,37964000,62.6,15609.00,59579.00,'As-Sudan','Islamic Republic','Salva Kiir Mayardit',3225,'SD'),('SEN','Senegal','Africa','Western Africa',196722.00,1960,13567338,59.0,14282.00,12722.00,'Sénégal/Sounougal','Republic','Macky Sall',3198,'SN'),('SGP','Singapore','Asia','Southeast Asia',618.00,1965,5399200,82.1,243010.00,216147.00,'Singapore/Singapura/Xinjiapo/Singapur','Republic','Tony Tan',3208,'SG'),('SGS','South Georgia and the South Sandwich Islands','Antarctica','Antarctica',3903.00,NULL,0,NULL,0.00,NULL,'South Georgia and the South Sandwich Islands','Dependent Territory of the UK','Elisabeth II',NULL,'GS'),('SHN','Saint Helena','Africa','Western Africa',314.00,NULL,4000,78.7,0.00,NULL,'Saint Helena','Dependent Territory of the UK','Elisabeth II',3063,'SH'),('SJM','Svalbard and Jan Mayen','Europe','Nordic Countries',62422.00,NULL,2655,NULL,0.00,NULL,'Svalbard og Jan Mayen','Dependent Territory of Norway','Harald V',938,'SJ'),('SLB','Solomon Islands','Oceania','Melanesia',28896.00,1978,561000,73.7,673.00,555.00,'Solomon Islands','Constitutional Monarchy','Elisabeth II',3161,'SB'),('SLE','Sierra Leone','Africa','Western Africa',71740.00,1961,6190280,41.2,2903.00,2526.00,'Sierra Leone','Republic','Ernest Bai Koroma',3207,'SL'),('SLV','El Salvador','North America','Central America',21041.00,1841,6340000,72.3,22463.00,20877.00,'El Salvador','Republic','Mauricio Funes',645,'SV'),('SMR','San Marino','Europe','Southern Europe',61.00,885,32499,83.0,510.00,NULL,'San Marino','Republic',NULL,3171,'SM'),('SOM','Somalia','Africa','Eastern Africa',637657.00,1960,10496000,49.6,935.00,NULL,'Soomaaliya','Republic','Hassan Sheikh Mohamud',3214,'SO'),('SPM','Saint Pierre and Miquelon','North America','North America',242.00,NULL,6081,79.7,0.00,NULL,'Saint-Pierre-et-Miquelon','Territorial Collectivity of France','François Hollande',3067,'PM'),('STP','Sao Tome and Principe','Africa','Central Africa',964.00,1975,187356,65.1,248.00,201.00,'São Tomé e Príncipe','Republic','Manuel Pinto da Costa',3172,'ST'),('SUR','Suriname','South America','South America',163265.00,1975,534189,73.7,4042.00,4265.00,'Suriname','Republic','Dési Bouterse',3243,'SR'),('SVK','Slovakia','Europe','Eastern Europe',49012.00,1993,5412008,75.4,93950.00,81901.00,'Slovensko','Republic','Ivan Gašparovi?',3209,'SK'),('SVN','Slovenia','Europe','Southern Europe',20256.00,1991,2061094,77.3,49583.00,46217.00,'Slovenija','Republic','Borut Pahor',3212,'SI'),('SWE','Sweden','Europe','Nordic Countries',449964.00,836,9633490,81.1,553245.00,473310.00,'Sverige','Constitutional Monarchy','Carl XVI Gustaf',3048,'SE'),('SWZ','Swaziland','Africa','Southern Africa',17364.00,1968,1250000,31.9,3718.00,3465.00,'kaNgwane','Monarchy','Mswati III',3244,'SZ'),('SYC','Seychelles','Africa','Eastern Africa',455.00,1976,90945,73.0,1009.00,926.00,'Sesel/Seychelles','Republic','James Michel',3206,'SC'),('SYR','Syria','Asia','Middle East',185180.00,1941,21898000,71.2,65984.00,57266.00,'Suriya','Republic','Bashar al-Assad',3250,'SY'),('TCA','Turks and Caicos Islands','North America','Caribbean',430.00,NULL,31458,79.1,96.00,51.00,'The Turks and Caicos Islands','Dependent Territory of the UK','Elisabeth II',3423,'TC'),('TCD','Chad','Africa','Central Africa',1284000.00,1960,12825000,47.7,9592.00,7850.00,'Tchad/Tshad','Republic','Michel Djotodia',3337,'TD'),('TGO','Togo','Africa','Western Africa',56785.00,1960,6191155,58.6,3198.00,2762.00,'Togo','Republic','Faure Gnassingbé',3332,'TG'),('THA','Thailand','Asia','Southeast Asia',513115.00,1350,65926261,73.1,333324.00,305181.00,'Prathet Thai','Constitutional Monarchy','Bhumibol Adulyadej',3320,'TH'),('TJK','Tajikistan','Asia','Southern and Central Asia',143100.00,1991,8000000,65.3,6441.00,5571.00,'Toçikiston','Republic','Emomalii Rahmon',3261,'TJ'),('TKL','Tokelau','Oceania','Polynesia',12.00,NULL,1411,NULL,0.00,NULL,'Tokelau','Nonmetropolitan Territory of New Zealand','Elisabeth II',3333,'TK'),('TKM','Turkmenistan','Asia','Southern and Central Asia',488100.00,1991,5240000,67.8,26363.00,20689.00,'Türkmenostan','Republic','Gurbanguly Berdimuhamedow',3419,'TM'),('TMP','East Timor','Asia','Southeast Asia',14874.00,NULL,1210000,67.2,4216.00,3167.00,'Timor Timur','Administrated by the UN','Taur Matan Ruak',1522,'TP'),('TON','Tonga','Oceania','Polynesia',650.00,1970,103036,70.7,439.00,373.00,'Tonga','Monarchy','Taufa\'ahau Tupou IV',3334,'TO'),('TTO','Trinidad and Tobago','North America','Caribbean',5130.00,1962,1328019,70.8,21959.00,19603.00,'Trinidad and Tobago','Republic','Anthony Carmona',3336,'TT'),('TUN','Tunisia','Africa','Northern Africa',163610.00,1956,10833431,75.7,44116.00,42121.00,'Tunis/Tunisie','Republic','Moncef Marzouki',3349,'TN'),('TUR','Turkey','Asia','Middle East',774815.00,1923,75627384,71.9,766862.00,724027.00,'Türkiye','Republic','Abdullah Gül',3358,'TR'),('TUV','Tuvalu','Oceania','Polynesia',26.00,1978,11323,69.3,56.00,NULL,'Tuvalu','Constitutional Monarchy','Elisabeth II',3424,'TV'),('TWN','Taiwan','Asia','Eastern Asia',36188.00,1945,23367320,79.3,256254.00,263451.00,'T’ai-wan','Republic',' Ma Ying-jeou',3263,'TW'),('TZA','Tanzania','Africa','Eastern Africa',883749.00,1961,44928923,52.0,23609.00,22607.00,'Tanzania','Republic','Jakaya Kikwete',3306,'TZ'),('UGA','Uganda','Africa','Eastern Africa',241038.00,1962,35357000,52.7,15671.00,15813.00,'Uganda','Republic','Yoweri Museveni',3425,'UG'),('UKR','Ukraine','Europe','Eastern Europe',603700.00,1991,45447010,68.2,161449.00,134410.00,'Ukrajina','Republic','Viktor Yanukovych',3426,'UA'),('UMI','United States Minor Outlying Islands','Oceania','Micronesia/Caribbean',16.00,NULL,0,NULL,0.00,NULL,'United States Minor Outlying Islands','Dependent Territory of the US','Barack Obama',NULL,'UM'),('URY','Uruguay','South America','South America',175016.00,1828,3286314,76.4,44824.00,37344.00,'Uruguay','Republic','José Mujica',3492,'UY'),('USA','United States','North America','North America',9363520.00,1776,317354000,78.3,15211300.00,14605300.00,'United States','Federal Republic','Barack Obama',3813,'US'),('UZB','Uzbekistan','Asia','Southern and Central Asia',447400.00,1991,30183400,71.2,47104.00,40492.00,'Uzbekiston','Republic','Islam Karimov',3503,'UZ'),('VAT','Holy See (Vatican City State)','Europe','Southern Europe',0.40,1929,1000,NULL,9.00,NULL,'Santa Sede/Città del Vaticano','Independent Church State','Giuseppe Bertello',3538,'VA'),('VCT','Saint Vincent and the Grenadines','North America','Caribbean',388.00,1979,109000,73.6,678.00,669.00,'Saint Vincent and the Grenadines','Constitutional Monarchy','Elisabeth II',3066,'VC'),('VEN','Venezuela','South America','South America',912050.00,1811,28946101,73.6,309380.00,387524.00,'Venezuela','Federal Republic','Nicolás Maduro',3539,'VE'),('VGB','Virgin Islands, British','North America','Caribbean',151.00,NULL,21000,78.4,612.00,573.00,'British Virgin Islands','Dependent Territory of the UK','Elisabeth II',537,'VG'),('VIR','Virgin Islands, U.S.','North America','Caribbean',347.00,NULL,106405,77.1,0.00,NULL,'Virgin Islands of the United States','US Territory','Barrack Obama',4067,'VI'),('VNM','Vietnam','Asia','Southeast Asia',331689.00,1945,90388000,71.6,117759.00,102008.00,'Viêt Nam','Socialistic Republic','Tr??ng T?n Sang',3770,'VN'),('VUT','Vanuatu','Oceania','Melanesia',12189.00,1980,264652,63.9,766.00,679.00,'Vanuatu','Republic','Iolu Abil',3537,'VU'),('WLF','Wallis and Futuna','Oceania','Polynesia',200.00,NULL,13135,78.9,0.00,NULL,'Wallis-et-Futuna','Nonmetropolitan Territory of France','François Hollande',3536,'WF'),('WSM','Samoa','Oceania','Polynesia',2831.00,1962,187820,69.2,608.00,554.00,'Samoa','Parlementary Monarchy','Tufuga Efi',3169,'WS'),('YEM','Yemen','Asia','Middle East',527968.00,1918,25235000,63.2,29442.00,29922.00,'Al-Yaman','Republic','Abd Rabbuh Mansur Hadi',1780,'YE'),('YUG','Yugoslavia','Europe','Southern Europe',102173.00,1918,23720000,75.1,17000.00,NULL,'Jugoslavija','Federal Republic','Vojislav Koštunica',1792,'YU'),('ZAF','South Africa','Africa','Southern Africa',1221037.00,1910,52981991,48.9,392634.00,356012.00,'South Africa','Republic','Jacob Zuma',716,'ZA'),('ZMB','Zambia','Africa','Eastern Africa',752618.00,1964,13092666,38.6,18049.00,14827.00,'Zambia','Republic','Michael Sata',3162,'ZM'),('ZWE','Zimbabwe','Africa','Eastern Africa',390757.00,1980,12973808,45.7,9137.00,7012.00,'Zimbabwe','Republic','Robert Mugabe',4068,'ZW');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customerNumber` int NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `contactLastName` varchar(50) NOT NULL,
  `contactFirstName` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postalCode` varchar(15) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `salesRepEmployeeNumber` int DEFAULT NULL,
  `creditLimit` double DEFAULT NULL,
  PRIMARY KEY (`customerNumber`),
  KEY `custSalesRep` (`salesRepEmployeeNumber`),
  CONSTRAINT `custSalesRep` FOREIGN KEY (`salesRepEmployeeNumber`) REFERENCES `employees` (`employeeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (103,'Atelier graphique','Schmitt','Carine ','40.32.2555','54, rue Royale',NULL,'Nantes',NULL,'44000','France',1370,21000),(112,'Signal Gift Stores','King','Jean','7025551838','8489 Strong St.',NULL,'Las Vegas','NV','83030','USA',1166,71800),(114,'Australian Collectors, Co.','Ferguson','Peter','03 9520 4555','636 St Kilda Road','Level 3','Melbourne','Victoria','3004','Australia',1611,117300),(119,'La Rochelle Gifts','Labrune','Janine ','40.67.8555','67, rue des Cinquante Otages',NULL,'Nantes',NULL,'44000','France',1370,118200),(121,'Baane Mini Imports','Bergulfsen','Jonas ','07-98 9555','Erling Skakkes gate 78',NULL,'Stavern',NULL,'4110','Norway',1504,81700),(124,'Mini Gifts Distributors Ltd.','Nelson','Susan','4155551450','5677 Strong St.',NULL,'San Rafael','CA','97562','USA',1165,210500),(125,'Havel & Zbyszek Co','Piestrzeniewicz','Zbyszek ','(26) 642-7555','ul. Filtrowa 68',NULL,'Warszawa',NULL,'01-012','Poland',NULL,0),(128,'Blauer See Auto, Co.','Keitel','Roland','+49 69 66 90 2555','Lyonerstr. 34',NULL,'Frankfurt',NULL,'60528','Germany',1504,59700),(129,'Mini Wheels Co.','Murphy','Julie','6505555787','5557 North Pendale Street',NULL,'San Francisco','CA','94217','USA',1165,64600),(131,'Land of Toys Inc.','Lee','Kwai','2125557818','897 Long Airport Avenue',NULL,'NYC','NY','10022','USA',1323,114900),(141,'Euro+ Shopping Channel','Freyre','Diego ','(91) 555 94 44','C/ Moralzarzal, 86',NULL,'Madrid',NULL,'28034','Spain',1370,227600),(144,'Volvo Model Replicas, Co','Berglund','Christina ','0921-12 3555','Berguvsvägen  8',NULL,'Luleå',NULL,'S-958 22','Sweden',1504,53100),(145,'Danish Wholesale Imports','Petersen','Jytte ','31 12 3555','Vinbæltet 34',NULL,'Kobenhavn',NULL,'1734','Denmark',1401,83400),(146,'Saveley & Henriot, Co.','Saveley','Mary ','78.32.5555','2, rue du Commerce',NULL,'Lyon',NULL,'69004','France',1337,123900),(148,'Dragon Souveniers, Ltd.','Natividad','Eric','+65 221 7555','Bronz Sok.','Bronz Apt. 3/6 Tesvikiye','Singapore',NULL,'079903','Singapore',1621,103800),(151,'Muscle Machine Inc','Young','Jeff','2125557413','4092 Furth Circle','Suite 400','NYC','NY','10022','USA',1286,138500),(157,'Diecast Classics Inc.','Leong','Kelvin','2155551555','7586 Pompton St.',NULL,'Allentown','PA','70267','USA',1216,100600),(161,'Technics Stores Inc.','Hashimoto','Juri','6505556809','9408 Furth Circle',NULL,'Burlingame','CA','94217','USA',1165,84600),(166,'Handji Gifts& Co','Victorino','Wendy','+65 224 1555','106 Linden Road Sandown','2nd Floor','Singapore',NULL,'069045','Singapore',1612,97900),(167,'Herkku Gifts','Oeztan','Veysel','+47 2267 3215','Brehmen St. 121','PR 334 Sentrum','Bergen',NULL,'N 5804','Norway  ',1504,96800),(168,'American Souvenirs Inc','Franco','Keith','2035557845','149 Spinnaker Dr.','Suite 101','New Haven','CT','97823','USA',1286,0),(169,'Porto Imports Co.','de Castro','Isabel ','(1) 356-5555','Estrada da saúde n. 58',NULL,'Lisboa',NULL,'1756','Portugal',NULL,0),(171,'Daedalus Designs Imports','Rancé','Martine ','20.16.1555','184, chaussée de Tournai',NULL,'Lille',NULL,'59000','France',1370,82900),(172,'La Corne D\'abondance, Co.','Bertrand','Marie','(1) 42.34.2555','265, boulevard Charonne',NULL,'Paris',NULL,'75012','France',1337,84300),(173,'Cambridge Collectables Co.','Tseng','Jerry','6175555555','4658 Baden Av.',NULL,'Cambridge','MA','51247','USA',1188,43400),(175,'Gift Depot Inc.','King','Julie','2035552570','25593 South Bay Ln.',NULL,'Bridgewater','CT','97562','USA',1323,84300),(177,'Osaka Souveniers Co.','Kentary','Mory','+81 06 6342 5555','1-6-20 Dojima',NULL,'Kita-ku','Osaka',' 530-0003','Japan',1621,81200),(181,'Vitachrome Inc.','Frick','Michael','2125551500','2678 Kingston Rd.','Suite 101','NYC','NY','10022','USA',1286,76400),(186,'Toys of Finland, Co.','Karttunen','Matti','90-224 8555','Keskuskatu 45',NULL,'Helsinki',NULL,'21240','Finland',1501,96500),(187,'AV Stores, Co.','Ashworth','Rachel','(171) 555-1555','Fauntleroy Circus',NULL,'Manchester',NULL,'EC2 5NT','UK',1501,136800),(189,'Clover Collections, Co.','Cassidy','Dean','+353 1862 1555','25 Maiden Lane','Floor No. 4','Dublin',NULL,'2','Ireland',1504,69400),(198,'Auto-Moto Classics Inc.','Taylor','Leslie','6175558428','16780 Pompton St.',NULL,'Brickhaven','MA','58339','USA',1216,23000),(201,'UK Collectables, Ltd.','Devon','Elizabeth','(171) 555-2282','12, Berkeley Gardens Blvd',NULL,'Liverpool',NULL,'WX1 6LT','UK',1501,92700),(202,'Canadian Gift Exchange Network','Tamuri','Yoshi ','(604) 555-3392','1900 Oak St.',NULL,'Vancouver','BC','V3F 2K1','Canada',1323,90300),(204,'Online Mini Collectables','Barajas','Miguel','6175557555','7635 Spinnaker Dr.',NULL,'Brickhaven','MA','58339','USA',1188,68700),(205,'Toys4GrownUps.com','Young','Julie','6265557265','78934 Hillside Dr.',NULL,'Pasadena','CA','90003','USA',1166,90700),(206,'Asian Shopping Network, Co','Walker','Brydey','+612 9411 1555','Suntec Tower Three','8 Temasek','Singapore',NULL,'038988','Singapore',NULL,0),(209,'Mini Caravy','Citeaux','Frédérique ','88.60.1555','24, place Kléber',NULL,'Strasbourg',NULL,'67000','France',1370,53800),(211,'King Kong Collectables, Co.','Gao','Mike','+852 2251 1555','Bank of China Tower','1 Garden Road','Central Hong Kong',NULL,NULL,'Hong Kong',1621,58600),(216,'Enaco Distributors','Saavedra','Eduardo ','(93) 203 4555','Rambla de Cataluña, 23',NULL,'Barcelona',NULL,'08022','Spain',1702,60300),(219,'Boards & Toys Co.','Young','Mary','3105552373','4097 Douglas Av.',NULL,'Glendale','CA','92561','USA',1166,11000),(223,'Natürlich Autos','Kloss','Horst ','0372-555188','Taucherstraße 10',NULL,'Cunewalde',NULL,'01307','Germany',NULL,0),(227,'Heintze Collectables','Ibsen','Palle','86 21 3555','Smagsloget 45',NULL,'Århus',NULL,'8200','Denmark',1401,120800),(233,'Québec Home Shopping Network','Fresnière','Jean ','(514) 555-8054','43 rue St. Laurent',NULL,'Montréal','Québec','H1J 1C3','Canada',1286,48700),(237,'ANG Resellers','Camino','Alejandra ','(91) 745 6555','Gran Vía, 1',NULL,'Madrid',NULL,'28001','Spain',NULL,0),(239,'Collectable Mini Designs Co.','Thompson','Valarie','7605558146','361 Furth Circle',NULL,'San Diego','CA','91217','USA',1166,105000),(240,'giftsbymail.co.uk','Bennett','Helen ','(198) 555-8888','Garden House','Crowther Way 23','Cowes','Isle of Wight','PO31 7PJ','UK',1501,93900),(242,'Alpha Cognac','Roulet','Annette ','61.77.6555','1 rue Alsace-Lorraine',NULL,'Toulouse',NULL,'31000','France',1370,61100),(247,'Messner Shopping Network','Messner','Renate ','069-0555984','Magazinweg 7',NULL,'Frankfurt',NULL,'60528','Germany',NULL,0),(249,'Amica Models & Co.','Accorti','Paolo ','011-4988555','Via Monte Bianco 34',NULL,'Torino',NULL,'10100','Italy',1401,113000),(250,'Lyon Souveniers','Da Silva','Daniel','+33 1 46 62 7555','27 rue du Colonel Pierre Avia',NULL,'Paris',NULL,'75508','France',1337,68100),(256,'Auto Associés & Cie.','Tonini','Daniel ','30.59.8555','67, avenue de l\'Europe',NULL,'Versailles',NULL,'78000','France',1370,77900),(259,'Toms Spezialitäten, Ltd','Pfalzheim','Henriette ','0221-5554327','Mehrheimerstr. 369',NULL,'Köln',NULL,'50739','Germany',1504,120400),(260,'Royal Canadian Collectables, Ltd.','Lincoln','Elizabeth ','(604) 555-4555','23 Tsawassen Blvd.',NULL,'Tsawassen','BC','T2F 8M4','Canada',1323,89600),(273,'Franken Gifts, Co','Franken','Peter ','089-0877555','Berliner Platz 43',NULL,'München',NULL,'80805','Germany',NULL,0),(276,'Anna\'s Decorations, Ltd','O\'Hara','Anna','02 9936 8555','201 Miller Street','Level 15','North Sydney','NSW','2060','Australia',1611,107800),(278,'Rovelli Gifts','Rovelli','Giovanni ','035-640555','Via Ludovico il Moro 22',NULL,'Bergamo',NULL,'24100','Italy',1401,119600),(282,'Souveniers And Things Co.','Huxley','Adrian','+61 2 9495 8555','Monitor Money Building','815 Pacific Hwy','Chatswood','NSW','2067','Australia',1611,93300),(286,'Marta\'s Replicas Co.','Hernandez','Marta','6175558555','39323 Spinnaker Dr.',NULL,'Cambridge','MA','51247','USA',1216,123700),(293,'BG&E Collectables','Harrison','Ed','+41 26 425 50 01','Rte des Arsenaux 41 ',NULL,'Fribourg',NULL,'1700','Switzerland',NULL,0),(298,'Vida Sport, Ltd','Holz','Mihael','0897-034555','Grenzacherweg 237',NULL,'Genève',NULL,'1203','Switzerland',1702,141300),(299,'Norway Gifts By Mail, Co.','Klaeboe','Jan','+47 2212 1555','Drammensveien 126A','PB 211 Sentrum','Oslo',NULL,'N 0106','Norway  ',1504,95100),(303,'Schuyler Imports','Schuyler','Bradley','+31 20 491 9555','Kingsfordweg 151',NULL,'Amsterdam',NULL,'1043 GR','Netherlands',NULL,0),(307,'Der Hund Imports','Andersen','Mel','030-0074555','Obere Str. 57',NULL,'Berlin',NULL,'12209','Germany',NULL,0),(311,'Oulu Toy Supplies, Inc.','Koskitalo','Pirkko','981-443655','Torikatu 38',NULL,'Oulu',NULL,'90110','Finland',1501,90500),(314,'Petit Auto','Dewey','Catherine ','(02) 5554 67','Rue Joseph-Bens 532',NULL,'Bruxelles',NULL,'B-1180','Belgium',1401,79900),(319,'Mini Classics','Frick','Steve','9145554562','3758 North Pendale Street',NULL,'White Plains','NY','24067','USA',1323,102700),(320,'Mini Creations Ltd.','Huang','Wing','5085559555','4575 Hillside Dr.',NULL,'New Bedford','MA','50553','USA',1188,94500),(321,'Corporate Gift Ideas Co.','Brown','Julie','6505551386','7734 Strong St.',NULL,'San Francisco','CA','94217','USA',1165,105000),(323,'Down Under Souveniers, Inc','Graham','Mike','+64 9 312 5555','162-164 Grafton Road','Level 2','Auckland  ',NULL,NULL,'New Zealand',1612,88000),(324,'Stylish Desk Decors, Co.','Brown','Ann ','(171) 555-0297','35 King George',NULL,'London',NULL,'WX3 6FW','UK',1501,77000),(328,'Tekni Collectables Inc.','Brown','William','2015559350','7476 Moss Rd.',NULL,'Newark','NJ','94019','USA',1323,43000),(333,'Australian Gift Network, Co','Calaghan','Ben','61-7-3844-6555','31 Duncan St. West End',NULL,'South Brisbane','Queensland','4101','Australia',1611,51600),(334,'Suominen Souveniers','Suominen','Kalle','+358 9 8045 555','Software Engineering Center','SEC Oy','Espoo',NULL,'FIN-02271','Finland',1501,98800),(335,'Cramer Spezialitäten, Ltd','Cramer','Philip ','0555-09555','Maubelstr. 90',NULL,'Brandenburg',NULL,'14776','Germany',NULL,0),(339,'Classic Gift Ideas, Inc','Cervantes','Francisca','2155554695','782 First Street',NULL,'Philadelphia','PA','71270','USA',1188,81100),(344,'CAF Imports','Fernandez','Jesus','+34 913 728 555','Merchants House','27-30 Merchant\'s Quay','Madrid',NULL,'28023','Spain',1702,59600),(347,'Men \'R\' US Retailers, Ltd.','Chandler','Brian','2155554369','6047 Douglas Av.',NULL,'Los Angeles','CA','91003','USA',1166,57700),(348,'Asian Treasures, Inc.','McKenna','Patricia ','2967 555','8 Johnstown Road',NULL,'Cork','Co. Cork',NULL,'Ireland',NULL,0),(350,'Marseille Mini Autos','Lebihan','Laurence ','91.24.4555','12, rue des Bouchers',NULL,'Marseille',NULL,'13008','France',1337,65000),(353,'Reims Collectables','Henriot','Paul ','26.47.1555','59 rue de l\'Abbaye',NULL,'Reims',NULL,'51100','France',1337,81100),(356,'SAR Distributors, Co','Kuger','Armand','+27 21 550 3555','1250 Pretorius Street',NULL,'Hatfield','Pretoria','0028','South Africa',NULL,0),(357,'GiftsForHim.com','MacKinlay','Wales','64-9-3763555','199 Great North Road',NULL,'Auckland',NULL,NULL,'New Zealand',1612,77700),(361,'Kommission Auto','Josephs','Karin','0251-555259','Luisenstr. 48',NULL,'Münster',NULL,'44087','Germany',NULL,0),(362,'Gifts4AllAges.com','Yoshido','Juri','6175559555','8616 Spinnaker Dr.',NULL,'Boston','MA','51003','USA',1216,41900),(363,'Online Diecast Creations Co.','Young','Dorothy','6035558647','2304 Long Airport Avenue',NULL,'Nashua','NH','62005','USA',1216,114200),(369,'Lisboa Souveniers, Inc','Rodriguez','Lino ','(1) 354-2555','Jardim das rosas n. 32',NULL,'Lisboa',NULL,'1675','Portugal',NULL,0),(376,'Precious Collectables','Urs','Braun','0452-076555','Hauptstr. 29',NULL,'Bern',NULL,'3012','Switzerland',1702,0),(379,'Collectables For Less Inc.','Nelson','Allen','6175558555','7825 Douglas Av.',NULL,'Brickhaven','MA','58339','USA',1188,70700),(381,'Royale Belge','Cartrain','Pascale ','(071) 23 67 2555','Boulevard Tirou, 255',NULL,'Charleroi',NULL,'B-6000','Belgium',1401,23500),(382,'Salzburg Collectables','Pipps','Georg ','6562-9555','Geislweg 14',NULL,'Salzburg',NULL,'5020','Austria',1401,71700),(385,'Cruz & Sons Co.','Cruz','Arnold','+63 2 555 3587','15 McCallum Street','NatWest Center #13-03','Makati City',NULL,'1227 MM','Philippines',1621,81500),(386,'L\'ordine Souveniers','Moroni','Maurizio ','0522-556555','Strada Provinciale 124',NULL,'Reggio Emilia',NULL,'42100','Italy',1401,121400),(398,'Tokyo Collectables, Ltd','Shimamura','Akiko','+81 3 3584 0555','2-2-8 Roppongi',NULL,'Minato-ku','Tokyo','106-0032','Japan',1621,94400),(406,'Auto Canal+ Petit','Perrier','Dominique','(1) 47.55.6555','25, rue Lauriston',NULL,'Paris',NULL,'75016','France',1337,95000),(409,'Stuttgart Collectable Exchange','Müller','Rita ','0711-555361','Adenauerallee 900',NULL,'Stuttgart',NULL,'70563','Germany',NULL,0),(412,'Extreme Desk Decorations, Ltd','McRoy','Sarah','04 499 9555','101 Lambton Quay','Level 11','Wellington',NULL,NULL,'New Zealand',1612,86800),(415,'Bavarian Collectables Imports, Co.','Donnermeyer','Michael',' +49 89 61 08 9555','Hansastr. 15',NULL,'Munich',NULL,'80686','Germany',1504,77000),(424,'Classic Legends Inc.','Hernandez','Maria','2125558493','5905 Pompton St.','Suite 750','NYC','NY','10022','USA',1286,67500),(443,'Feuer Online Stores, Inc','Feuer','Alexander ','0342-555176','Heerstr. 22',NULL,'Leipzig',NULL,'04179','Germany',NULL,0),(447,'Gift Ideas Corp.','Lewis','Dan','2035554407','2440 Pompton St.',NULL,'Glendale','CT','97561','USA',1323,49700),(448,'Scandinavian Gift Ideas','Larsson','Martha','0695-34 6555','Åkergatan 24',NULL,'Bräcke',NULL,'S-844 67','Sweden',1504,116400),(450,'The Sharp Gifts Warehouse','Frick','Sue','4085553659','3086 Ingle Ln.',NULL,'San Jose','CA','94217','USA',1165,77600),(452,'Mini Auto Werke','Mendel','Roland ','7675-3555','Kirchgasse 6',NULL,'Graz',NULL,'8010','Austria',1401,45300),(455,'Super Scale Inc.','Murphy','Leslie','2035559545','567 North Pendale Street',NULL,'New Haven','CT','97823','USA',1286,95400),(456,'Microscale Inc.','Choi','Yu','2125551957','5290 North Pendale Street','Suite 200','NYC','NY','10022','USA',1286,39800),(458,'Corrida Auto Replicas, Ltd','Sommer','Martín ','(91) 555 22 82','C/ Araquil, 67',NULL,'Madrid',NULL,'28023','Spain',1702,104600),(459,'Warburg Exchange','Ottlieb','Sven ','0241-039123','Walserweg 21',NULL,'Aachen',NULL,'52066','Germany',NULL,0),(462,'FunGiftIdeas.com','Benitez','Violeta','5085552555','1785 First Street',NULL,'New Bedford','MA','50553','USA',1216,85800),(465,'Anton Designs, Ltd.','Anton','Carmen','+34 913 728555','c/ Gobelas, 19-1 Urb. La Florida',NULL,'Madrid',NULL,'28023','Spain',NULL,0),(471,'Australian Collectables, Ltd','Clenahan','Sean','61-9-3844-6555','7 Allen Street',NULL,'Glen Waverly','Victoria','3150','Australia',1611,60300),(473,'Frau da Collezione','Ricotti','Franco','+39 022515555','20093 Cologno Monzese','Alessandro Volta 16','Milan',NULL,NULL,'Italy',1401,34800),(475,'West Coast Collectables Co.','Thompson','Steve','3105553722','3675 Furth Circle',NULL,'Burbank','CA','94019','USA',1166,55400),(477,'Mit Vergnügen & Co.','Moos','Hanna ','0621-08555','Forsterstr. 57',NULL,'Mannheim',NULL,'68306','Germany',NULL,0),(480,'Kremlin Collectables, Co.','Semenov','Alexander ','+7 812 293 0521','2 Pobedy Square',NULL,'Saint Petersburg',NULL,'196143','Russia',NULL,0),(481,'Raanan Stores, Inc','Altagar,G M','Raanan','+ 972 9 959 8555','3 Hagalim Blv.',NULL,'Herzlia',NULL,'47625','Israel',NULL,0),(484,'Iberia Gift Imports, Corp.','Roel','José Pedro ','(95) 555 82 82','C/ Romero, 33',NULL,'Sevilla',NULL,'41101','Spain',1702,65700),(486,'Motor Mint Distributors Inc.','Salazar','Rosa','2155559857','11328 Douglas Av.',NULL,'Philadelphia','PA','71270','USA',1323,72600),(487,'Signal Collectibles Ltd.','Taylor','Sue','4155554312','2793 Furth Circle',NULL,'Brisbane','CA','94217','USA',1165,60300),(489,'Double Decker Gift Stores, Ltd','Smith','Thomas ','(171) 555-7555','120 Hanover Sq.',NULL,'London',NULL,'WA1 1DP','UK',1501,43300),(495,'Diecast Collectables','Franco','Valarie','6175552555','6251 Ingle Ln.',NULL,'Boston','MA','51003','USA',1188,85100),(496,'Kelly\'s Gift Shop','Snowden','Tony','+64 9 5555500','Arenales 1938 3\'A\'',NULL,'Auckland  ',NULL,NULL,'New Zealand',1612,110000);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employeeNumber` int NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `officeCode` varchar(10) NOT NULL,
  `reportsTo` int DEFAULT NULL,
  `jobTitle` varchar(50) NOT NULL,
  PRIMARY KEY (`employeeNumber`),
  KEY `empOffice` (`officeCode`),
  CONSTRAINT `empOffice` FOREIGN KEY (`officeCode`) REFERENCES `offices` (`officeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1002,'Murphy','Diane','x5800','dmurphy@classicmodelcars.com','1',NULL,'President'),(1056,'Patterson','Mary','x4611','mpatterso@classicmodelcars.com','1',1002,'VP Sales'),(1076,'Firrelli','Jeff','x9273','jfirrelli@classicmodelcars.com','1',1002,'VP Marketing'),(1088,'Patterson','William','x4871','wpatterson@classicmodelcars.com','6',1056,'Sales Manager (APAC)'),(1102,'Bondur','Gerard','x5408','gbondur@classicmodelcars.com','4',1056,'Sale Manager (EMEA)'),(1143,'Bow','Anthony','x5428','abow@classicmodelcars.com','1',1056,'Sales Manager (NA)'),(1165,'Jennings','Leslie','x3291','ljennings@classicmodelcars.com','1',1143,'Sales Rep'),(1166,'Thompson','Leslie','x4065','lthompson@classicmodelcars.com','1',1143,'Sales Rep'),(1188,'Firrelli','Julie','x2173','jfirrelli@classicmodelcars.com','2',1143,'Sales Rep'),(1216,'Patterson','Steve','x4334','spatterson@classicmodelcars.com','2',1143,'Sales Rep'),(1286,'Tseng','Foon Yue','x2248','ftseng@classicmodelcars.com','3',1143,'Sales Rep'),(1323,'Vanauf','George','x4102','gvanauf@classicmodelcars.com','3',1143,'Sales Rep'),(1337,'Bondur','Loui','x6493','lbondur@classicmodelcars.com','4',1102,'Sales Rep'),(1370,'Hernandez','Gerard','x2028','ghernande@classicmodelcars.com','4',1102,'Sales Rep'),(1401,'Castillo','Pamela','x2759','pcastillo@classicmodelcars.com','4',1102,'Sales Rep'),(1501,'Bott','Larry','x2311','lbott@classicmodelcars.com','7',1102,'Sales Rep'),(1504,'Jones','Barry','x102','bjones@classicmodelcars.com','7',1102,'Sales Rep'),(1611,'Fixter','Andy','x101','afixter@classicmodelcars.com','6',1088,'Sales Rep'),(1612,'Marsh','Peter','x102','pmarsh@classicmodelcars.com','6',1088,'Sales Rep'),(1619,'King','Tom','x103','tking@classicmodelcars.com','6',1088,'Sales Rep'),(1621,'Nishi','Mami','x101','mnishi@classicmodelcars.com','5',1056,'Sales Rep'),(1625,'Kato','Yoshimi','x102','ykato@classicmodelcars.com','5',1621,'Sales Rep'),(1702,'Gerard','Martin','x2312','mgerard@classicmodelcars.com','4',1102,'Sales Rep');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaderboard`
--

DROP TABLE IF EXISTS `leaderboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leaderboard` (
  `iduser` int NOT NULL,
  `username` varchar(45) NOT NULL,
  `wins` int NOT NULL,
  KEY `iduser_idx` (`iduser`),
  KEY `username_idx` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaderboard`
--

LOCK TABLES `leaderboard` WRITE;
/*!40000 ALTER TABLE `leaderboard` DISABLE KEYS */;
INSERT INTO `leaderboard` VALUES (2,'mik',12),(1,'bon',12),(3,'san',4),(4,'ron',5),(5,'she',7),(6,'kai',14);
/*!40000 ALTER TABLE `leaderboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `longestwords`
--

DROP TABLE IF EXISTS `longestwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `longestwords` (
  `words` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `length` int DEFAULT NULL,
  KEY `username_idx` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `longestwords`
--

LOCK TABLES `longestwords` WRITE;
/*!40000 ALTER TABLE `longestwords` DISABLE KEYS */;
INSERT INTO `longestwords` VALUES ('septuagenarians','san',15),('proportioned','ron',12),('militaries','kai',10),('cobblestones','she',12),('fellowships','bon',11),('abandoning','mik',10);
/*!40000 ALTER TABLE `longestwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offices`
--

DROP TABLE IF EXISTS `offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offices` (
  `officeCode` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `postalCode` varchar(15) NOT NULL,
  `territory` varchar(10) NOT NULL,
  PRIMARY KEY (`officeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offices`
--

LOCK TABLES `offices` WRITE;
/*!40000 ALTER TABLE `offices` DISABLE KEYS */;
INSERT INTO `offices` VALUES ('1','San Francisco','+1 650 219 4782','100 Market Street','Suite 300','CA','USA','94080','NA'),('2','Boston','+1 215 837 0825','1550 Court Place','Suite 102','MA','USA','02107','NA'),('3','NYC','+1 212 555 3000','523 East 53rd Street','apt. 5A','NY','USA','10022','NA'),('4','Paris','+33 14 723 4404','43 Rue Jouffroy D\'abbans',NULL,NULL,'France','75017','EMEA'),('5','Tokyo','+81 33 224 5000','4-1 Kioicho',NULL,'Chiyoda-Ku','Japan','102-8578','Japan'),('6','Sydney','+61 2 9264 2451','5-11 Wentworth Avenue','Floor #2',NULL,'Australia','NSW 2010','APAC'),('7','London','+44 20 7877 2041','25 Old Broad Street','Level 7',NULL,'UK','EC2N 1HN','EMEA');
/*!40000 ALTER TABLE `offices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderNumber` int NOT NULL,
  `orderDate` datetime NOT NULL,
  `requiredDate` datetime NOT NULL,
  `shippedDate` datetime DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `comments` text,
  `customerNumber` int NOT NULL,
  PRIMARY KEY (`orderNumber`),
  KEY `orderCust` (`customerNumber`),
  CONSTRAINT `orderCust` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (10100,'2003-01-06 00:00:00','2003-01-13 00:00:00','2003-01-10 00:00:00','Shipped',NULL,363),(10101,'2003-01-09 00:00:00','2003-01-18 00:00:00','2003-01-11 00:00:00','Shipped','Check on availability.',128),(10102,'2003-01-10 00:00:00','2003-01-18 00:00:00','2003-01-14 00:00:00','Shipped',NULL,181),(10103,'2003-01-29 00:00:00','2003-02-07 00:00:00','2003-02-02 00:00:00','Shipped',NULL,121),(10104,'2003-01-31 00:00:00','2003-02-09 00:00:00','2003-02-01 00:00:00','Shipped',NULL,141),(10105,'2003-02-11 00:00:00','2003-02-21 00:00:00','2003-02-12 00:00:00','Shipped',NULL,145),(10106,'2003-02-17 00:00:00','2003-02-24 00:00:00','2003-02-21 00:00:00','Shipped',NULL,278),(10107,'2003-02-24 00:00:00','2003-03-03 00:00:00','2003-02-26 00:00:00','Shipped','Difficult to negotiate with customer. We need more marketing materials',131),(10108,'2003-03-03 00:00:00','2003-03-12 00:00:00','2003-03-08 00:00:00','Shipped',NULL,385),(10109,'2003-03-10 00:00:00','2003-03-19 00:00:00','2003-03-11 00:00:00','Shipped','Customer requested that FedEx Ground is used for this shipping',486),(10110,'2003-03-18 00:00:00','2003-03-24 00:00:00','2003-03-20 00:00:00','Shipped',NULL,187),(10111,'2003-03-25 00:00:00','2003-03-31 00:00:00','2003-03-30 00:00:00','Shipped',NULL,129),(10112,'2003-03-24 00:00:00','2003-04-03 00:00:00','2003-03-29 00:00:00','Shipped','Customer requested that ad materials (such as posters, pamphlets) be included in the shippment',144),(10113,'2003-03-26 00:00:00','2003-04-02 00:00:00','2003-03-27 00:00:00','Shipped',NULL,124),(10114,'2003-04-01 00:00:00','2003-04-07 00:00:00','2003-04-02 00:00:00','Shipped',NULL,172),(10115,'2003-04-04 00:00:00','2003-04-12 00:00:00','2003-04-07 00:00:00','Shipped',NULL,424),(10116,'2003-04-11 00:00:00','2003-04-19 00:00:00','2003-04-13 00:00:00','Shipped',NULL,381),(10117,'2003-04-16 00:00:00','2003-04-24 00:00:00','2003-04-17 00:00:00','Shipped',NULL,148),(10118,'2003-04-21 00:00:00','2003-04-29 00:00:00','2003-04-26 00:00:00','Shipped','Customer has worked with some of our vendors in the past and is aware of their MSRP',216),(10119,'2003-04-28 00:00:00','2003-05-05 00:00:00','2003-05-02 00:00:00','Shipped',NULL,382),(10120,'2003-04-29 00:00:00','2003-05-08 00:00:00','2003-05-01 00:00:00','Shipped',NULL,114),(10121,'2003-05-07 00:00:00','2003-05-13 00:00:00','2003-05-13 00:00:00','Shipped',NULL,353),(10122,'2003-05-08 00:00:00','2003-05-16 00:00:00','2003-05-13 00:00:00','Shipped',NULL,350),(10123,'2003-05-20 00:00:00','2003-05-29 00:00:00','2003-05-22 00:00:00','Shipped',NULL,103),(10124,'2003-05-21 00:00:00','2003-05-29 00:00:00','2003-05-25 00:00:00','Shipped','Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch',112),(10125,'2003-05-21 00:00:00','2003-05-27 00:00:00','2003-05-24 00:00:00','Shipped',NULL,114),(10126,'2003-05-28 00:00:00','2003-06-07 00:00:00','2003-06-02 00:00:00','Shipped',NULL,458),(10127,'2003-06-03 00:00:00','2003-06-09 00:00:00','2003-06-06 00:00:00','Shipped','Customer requested special shippment. The instructions were passed along to the warehouse',151),(10128,'2003-06-06 00:00:00','2003-06-12 00:00:00','2003-06-11 00:00:00','Shipped',NULL,141),(10129,'2003-06-12 00:00:00','2003-06-18 00:00:00','2003-06-14 00:00:00','Shipped',NULL,324),(10130,'2003-06-16 00:00:00','2003-06-24 00:00:00','2003-06-21 00:00:00','Shipped',NULL,198),(10131,'2003-06-16 00:00:00','2003-06-25 00:00:00','2003-06-21 00:00:00','Shipped',NULL,447),(10132,'2003-06-25 00:00:00','2003-07-01 00:00:00','2003-06-28 00:00:00','Shipped',NULL,323),(10133,'2003-06-27 00:00:00','2003-07-04 00:00:00','2003-07-03 00:00:00','Shipped',NULL,141),(10134,'2003-07-01 00:00:00','2003-07-10 00:00:00','2003-07-05 00:00:00','Shipped',NULL,250),(10135,'2003-07-02 00:00:00','2003-07-12 00:00:00','2003-07-03 00:00:00','Shipped',NULL,124),(10136,'2003-07-04 00:00:00','2003-07-14 00:00:00','2003-07-06 00:00:00','Shipped','Customer is interested in buying more Ferrari models',242),(10137,'2003-07-10 00:00:00','2003-07-20 00:00:00','2003-07-14 00:00:00','Shipped',NULL,353),(10138,'2003-07-07 00:00:00','2003-07-16 00:00:00','2003-07-13 00:00:00','Shipped',NULL,496),(10139,'2003-07-16 00:00:00','2003-07-23 00:00:00','2003-07-21 00:00:00','Shipped',NULL,282),(10140,'2003-07-24 00:00:00','2003-08-02 00:00:00','2003-07-30 00:00:00','Shipped',NULL,161),(10141,'2003-08-01 00:00:00','2003-08-09 00:00:00','2003-08-04 00:00:00','Shipped',NULL,334),(10142,'2003-08-08 00:00:00','2003-08-16 00:00:00','2003-08-13 00:00:00','Shipped',NULL,124),(10143,'2003-08-10 00:00:00','2003-08-18 00:00:00','2003-08-12 00:00:00','Shipped','Can we deliver the new Ford Mustang models by end-of-quarter?',320),(10144,'2003-08-13 00:00:00','2003-08-21 00:00:00','2003-08-14 00:00:00','Shipped',NULL,381),(10145,'2003-08-25 00:00:00','2003-09-02 00:00:00','2003-08-31 00:00:00','Shipped',NULL,205),(10146,'2003-09-03 00:00:00','2003-09-13 00:00:00','2003-09-06 00:00:00','Shipped',NULL,447),(10147,'2003-09-05 00:00:00','2003-09-12 00:00:00','2003-09-09 00:00:00','Shipped',NULL,379),(10148,'2003-09-11 00:00:00','2003-09-21 00:00:00','2003-09-15 00:00:00','Shipped','They want to reevaluate their terms agreement with Finance.',276),(10149,'2003-09-12 00:00:00','2003-09-18 00:00:00','2003-09-17 00:00:00','Shipped',NULL,487),(10150,'2003-09-19 00:00:00','2003-09-27 00:00:00','2003-09-21 00:00:00','Shipped','They want to reevaluate their terms agreement with Finance.',148),(10151,'2003-09-21 00:00:00','2003-09-30 00:00:00','2003-09-24 00:00:00','Shipped',NULL,311),(10152,'2003-09-25 00:00:00','2003-10-03 00:00:00','2003-10-01 00:00:00','Shipped',NULL,333),(10153,'2003-09-28 00:00:00','2003-10-05 00:00:00','2003-10-03 00:00:00','Shipped',NULL,141),(10154,'2003-10-02 00:00:00','2003-10-12 00:00:00','2003-10-08 00:00:00','Shipped',NULL,219),(10155,'2003-10-06 00:00:00','2003-10-13 00:00:00','2003-10-07 00:00:00','Shipped',NULL,186),(10156,'2003-10-08 00:00:00','2003-10-17 00:00:00','2003-10-11 00:00:00','Shipped',NULL,141),(10157,'2003-10-09 00:00:00','2003-10-15 00:00:00','2003-10-14 00:00:00','Shipped',NULL,473),(10158,'2003-10-10 00:00:00','2003-10-18 00:00:00','2003-10-15 00:00:00','Shipped',NULL,121),(10159,'2003-10-10 00:00:00','2003-10-19 00:00:00','2003-10-16 00:00:00','Shipped',NULL,321),(10160,'2003-10-11 00:00:00','2003-10-17 00:00:00','2003-10-17 00:00:00','Shipped',NULL,347),(10161,'2003-10-17 00:00:00','2003-10-25 00:00:00','2003-10-20 00:00:00','Shipped',NULL,227),(10162,'2003-10-18 00:00:00','2003-10-26 00:00:00','2003-10-19 00:00:00','Shipped',NULL,321),(10163,'2003-10-20 00:00:00','2003-10-27 00:00:00','2003-10-24 00:00:00','Shipped',NULL,424),(10164,'2003-10-21 00:00:00','2003-10-30 00:00:00','2003-10-23 00:00:00','Resolved','This order was disputed, but resolved on 11/1/2003; Customer doesn\'t like the colors and precision of the models.',452),(10165,'2003-10-22 00:00:00','2003-10-31 00:00:00','2003-12-26 00:00:00','Shipped','This order was on hold because customers\'s credit limit had been exceeded. Order will ship when payment is received',148),(10166,'2003-10-21 00:00:00','2003-10-30 00:00:00','2003-10-27 00:00:00','Shipped',NULL,462),(10167,'2003-10-23 00:00:00','2003-10-30 00:00:00',NULL,'Cancelled','Customer called to cancel. The warehouse was notified in time and the order didn\'t ship. They have a new VP of Sales and are shifting their sales model. Our VP of Sales should contact them.',448),(10168,'2003-10-28 00:00:00','2003-11-03 00:00:00','2003-11-01 00:00:00','Shipped',NULL,161),(10169,'2003-11-04 00:00:00','2003-11-14 00:00:00','2003-11-09 00:00:00','Shipped',NULL,276),(10170,'2003-11-04 00:00:00','2003-11-12 00:00:00','2003-11-07 00:00:00','Shipped',NULL,452),(10171,'2003-11-05 00:00:00','2003-11-13 00:00:00','2003-11-07 00:00:00','Shipped',NULL,233),(10172,'2003-11-05 00:00:00','2003-11-14 00:00:00','2003-11-11 00:00:00','Shipped',NULL,175),(10173,'2003-11-05 00:00:00','2003-11-15 00:00:00','2003-11-09 00:00:00','Shipped','Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches',278),(10174,'2003-11-06 00:00:00','2003-11-15 00:00:00','2003-11-10 00:00:00','Shipped',NULL,333),(10175,'2003-11-06 00:00:00','2003-11-14 00:00:00','2003-11-09 00:00:00','Shipped',NULL,324),(10176,'2003-11-06 00:00:00','2003-11-15 00:00:00','2003-11-12 00:00:00','Shipped',NULL,386),(10177,'2003-11-07 00:00:00','2003-11-17 00:00:00','2003-11-12 00:00:00','Shipped',NULL,344),(10178,'2003-11-08 00:00:00','2003-11-16 00:00:00','2003-11-10 00:00:00','Shipped','Custom shipping instructions sent to warehouse',242),(10179,'2003-11-11 00:00:00','2003-11-17 00:00:00','2003-11-13 00:00:00','Cancelled','Customer cancelled due to urgent budgeting issues. Must be cautious when dealing with them in the future. Since order shipped already we must discuss who would cover the shipping charges.',496),(10180,'2003-11-11 00:00:00','2003-11-19 00:00:00','2003-11-14 00:00:00','Shipped',NULL,171),(10181,'2003-11-12 00:00:00','2003-11-19 00:00:00','2003-11-15 00:00:00','Shipped',NULL,167),(10182,'2003-11-12 00:00:00','2003-11-21 00:00:00','2003-11-18 00:00:00','Shipped',NULL,124),(10183,'2003-11-13 00:00:00','2003-11-22 00:00:00','2003-11-15 00:00:00','Shipped','We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.',339),(10184,'2003-11-14 00:00:00','2003-11-22 00:00:00','2003-11-20 00:00:00','Shipped',NULL,484),(10185,'2003-11-14 00:00:00','2003-11-21 00:00:00','2003-11-20 00:00:00','Shipped',NULL,320),(10186,'2003-11-14 00:00:00','2003-11-20 00:00:00','2003-11-18 00:00:00','Shipped','They want to reevaluate their terms agreement with the VP of Sales',489),(10187,'2003-11-15 00:00:00','2003-11-24 00:00:00','2003-11-16 00:00:00','Shipped',NULL,211),(10188,'2003-11-18 00:00:00','2003-11-26 00:00:00','2003-11-24 00:00:00','Shipped',NULL,167),(10189,'2003-11-18 00:00:00','2003-11-25 00:00:00','2003-11-24 00:00:00','Shipped','They want to reevaluate their terms agreement with Finance.',205),(10190,'2003-11-19 00:00:00','2003-11-29 00:00:00','2003-11-20 00:00:00','Shipped',NULL,141),(10191,'2003-11-20 00:00:00','2003-11-30 00:00:00','2003-11-24 00:00:00','Shipped','We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.',259),(10192,'2003-11-20 00:00:00','2003-11-29 00:00:00','2003-11-25 00:00:00','Shipped',NULL,363),(10193,'2003-11-21 00:00:00','2003-11-28 00:00:00','2003-11-27 00:00:00','Shipped',NULL,471),(10194,'2003-11-25 00:00:00','2003-12-02 00:00:00','2003-11-26 00:00:00','Shipped',NULL,146),(10195,'2003-11-25 00:00:00','2003-12-01 00:00:00','2003-11-28 00:00:00','Shipped',NULL,319),(10196,'2003-11-26 00:00:00','2003-12-03 00:00:00','2003-12-01 00:00:00','Shipped',NULL,455),(10197,'2003-11-26 00:00:00','2003-12-02 00:00:00','2003-12-01 00:00:00','Shipped','Customer inquired about remote controlled models and gold models.',216),(10198,'2003-11-27 00:00:00','2003-12-06 00:00:00','2003-12-03 00:00:00','Shipped',NULL,385),(10199,'2003-12-01 00:00:00','2003-12-10 00:00:00','2003-12-06 00:00:00','Shipped',NULL,475),(10200,'2003-12-01 00:00:00','2003-12-09 00:00:00','2003-12-06 00:00:00','Shipped',NULL,211),(10201,'2003-12-01 00:00:00','2003-12-11 00:00:00','2003-12-02 00:00:00','Shipped',NULL,129),(10202,'2003-12-02 00:00:00','2003-12-09 00:00:00','2003-12-06 00:00:00','Shipped',NULL,357),(10203,'2003-12-02 00:00:00','2003-12-11 00:00:00','2003-12-07 00:00:00','Shipped',NULL,141),(10204,'2003-12-02 00:00:00','2003-12-10 00:00:00','2003-12-04 00:00:00','Shipped',NULL,151),(10205,'2003-12-03 00:00:00','2003-12-09 00:00:00','2003-12-07 00:00:00','Shipped',' I need all the information I can get on our competitors.',141),(10206,'2003-12-05 00:00:00','2003-12-13 00:00:00','2003-12-08 00:00:00','Shipped','Can we renegotiate this one?',202),(10207,'2003-12-09 00:00:00','2003-12-17 00:00:00','2003-12-11 00:00:00','Shipped','Check on availability.',495),(10208,'2004-01-02 00:00:00','2004-01-11 00:00:00','2004-01-04 00:00:00','Shipped',NULL,146),(10209,'2004-01-09 00:00:00','2004-01-15 00:00:00','2004-01-12 00:00:00','Shipped',NULL,347),(10210,'2004-01-12 00:00:00','2004-01-22 00:00:00','2004-01-20 00:00:00','Shipped',NULL,177),(10211,'2004-01-15 00:00:00','2004-01-25 00:00:00','2004-01-18 00:00:00','Shipped',NULL,406),(10212,'2004-01-16 00:00:00','2004-01-24 00:00:00','2004-01-18 00:00:00','Shipped',NULL,141),(10213,'2004-01-22 00:00:00','2004-01-28 00:00:00','2004-01-27 00:00:00','Shipped','Difficult to negotiate with customer. We need more marketing materials',489),(10214,'2004-01-26 00:00:00','2004-02-04 00:00:00','2004-01-29 00:00:00','Shipped',NULL,458),(10215,'2004-01-29 00:00:00','2004-02-08 00:00:00','2004-02-01 00:00:00','Shipped','Customer requested that FedEx Ground is used for this shipping',475),(10216,'2004-02-02 00:00:00','2004-02-10 00:00:00','2004-02-04 00:00:00','Shipped',NULL,256),(10217,'2004-02-04 00:00:00','2004-02-14 00:00:00','2004-02-06 00:00:00','Shipped',NULL,166),(10218,'2004-02-09 00:00:00','2004-02-16 00:00:00','2004-02-11 00:00:00','Shipped','Customer requested that ad materials (such as posters, pamphlets) be included in the shippment',473),(10219,'2004-02-10 00:00:00','2004-02-17 00:00:00','2004-02-12 00:00:00','Shipped',NULL,487),(10220,'2004-02-12 00:00:00','2004-02-19 00:00:00','2004-02-16 00:00:00','Shipped',NULL,189),(10221,'2004-02-18 00:00:00','2004-02-26 00:00:00','2004-02-19 00:00:00','Shipped',NULL,314),(10222,'2004-02-19 00:00:00','2004-02-27 00:00:00','2004-02-20 00:00:00','Shipped',NULL,239),(10223,'2004-02-20 00:00:00','2004-02-29 00:00:00','2004-02-24 00:00:00','Shipped',NULL,114),(10224,'2004-02-21 00:00:00','2004-03-02 00:00:00','2004-02-26 00:00:00','Shipped','Customer has worked with some of our vendors in the past and is aware of their MSRP',171),(10225,'2004-02-22 00:00:00','2004-03-01 00:00:00','2004-02-24 00:00:00','Shipped',NULL,298),(10226,'2004-02-26 00:00:00','2004-03-06 00:00:00','2004-03-02 00:00:00','Shipped',NULL,239),(10227,'2004-03-02 00:00:00','2004-03-12 00:00:00','2004-03-08 00:00:00','Shipped',NULL,146),(10228,'2004-03-10 00:00:00','2004-03-18 00:00:00','2004-03-13 00:00:00','Shipped',NULL,173),(10229,'2004-03-11 00:00:00','2004-03-20 00:00:00','2004-03-12 00:00:00','Shipped',NULL,124),(10230,'2004-03-15 00:00:00','2004-03-24 00:00:00','2004-03-20 00:00:00','Shipped','Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch',128),(10231,'2004-03-19 00:00:00','2004-03-26 00:00:00','2004-03-25 00:00:00','Shipped',NULL,344),(10232,'2004-03-20 00:00:00','2004-03-30 00:00:00','2004-03-25 00:00:00','Shipped',NULL,240),(10233,'2004-03-29 00:00:00','2004-04-04 00:00:00','2004-04-02 00:00:00','Shipped','Customer requested special shippment. The instructions were passed along to the warehouse',328),(10234,'2004-03-30 00:00:00','2004-04-05 00:00:00','2004-04-02 00:00:00','Shipped',NULL,412),(10235,'2004-04-02 00:00:00','2004-04-12 00:00:00','2004-04-06 00:00:00','Shipped',NULL,260),(10236,'2004-04-03 00:00:00','2004-04-11 00:00:00','2004-04-08 00:00:00','Shipped',NULL,486),(10237,'2004-04-05 00:00:00','2004-04-12 00:00:00','2004-04-10 00:00:00','Shipped',NULL,181),(10238,'2004-04-09 00:00:00','2004-04-16 00:00:00','2004-04-10 00:00:00','Shipped',NULL,145),(10239,'2004-04-12 00:00:00','2004-04-21 00:00:00','2004-04-17 00:00:00','Shipped',NULL,311),(10240,'2004-04-13 00:00:00','2004-04-20 00:00:00','2004-04-20 00:00:00','Shipped',NULL,177),(10241,'2004-04-13 00:00:00','2004-04-20 00:00:00','2004-04-19 00:00:00','Shipped',NULL,209),(10242,'2004-04-20 00:00:00','2004-04-28 00:00:00','2004-04-25 00:00:00','Shipped','Customer is interested in buying more Ferrari models',456),(10243,'2004-04-26 00:00:00','2004-05-03 00:00:00','2004-04-28 00:00:00','Shipped',NULL,495),(10244,'2004-04-29 00:00:00','2004-05-09 00:00:00','2004-05-04 00:00:00','Shipped',NULL,141),(10245,'2004-05-04 00:00:00','2004-05-12 00:00:00','2004-05-09 00:00:00','Shipped',NULL,455),(10246,'2004-05-05 00:00:00','2004-05-13 00:00:00','2004-05-06 00:00:00','Shipped',NULL,141),(10247,'2004-05-05 00:00:00','2004-05-11 00:00:00','2004-05-08 00:00:00','Shipped',NULL,334),(10248,'2004-05-07 00:00:00','2004-05-14 00:00:00',NULL,'Cancelled','Order was mistakenly placed. The warehouse noticed the lack of documentation.',131),(10249,'2004-05-08 00:00:00','2004-05-17 00:00:00','2004-05-11 00:00:00','Shipped','Can we deliver the new Ford Mustang models by end-of-quarter?',173),(10250,'2004-05-11 00:00:00','2004-05-19 00:00:00','2004-05-15 00:00:00','Shipped',NULL,450),(10251,'2004-05-18 00:00:00','2004-05-24 00:00:00','2004-05-24 00:00:00','Shipped',NULL,328),(10252,'2004-05-26 00:00:00','2004-06-04 00:00:00','2004-05-29 00:00:00','Shipped',NULL,406),(10253,'2004-06-01 00:00:00','2004-06-09 00:00:00','2004-06-02 00:00:00','Cancelled','Customer disputed the order and we agreed to cancel it. We must be more cautions with this customer going forward, since they are very hard to please. We must cover the shipping fees.',201),(10254,'2004-06-03 00:00:00','2004-06-13 00:00:00','2004-06-04 00:00:00','Shipped','Customer requested that DHL is used for this shipping',323),(10255,'2004-06-04 00:00:00','2004-06-12 00:00:00','2004-06-09 00:00:00','Shipped',NULL,209),(10256,'2004-06-08 00:00:00','2004-06-16 00:00:00','2004-06-10 00:00:00','Shipped',NULL,145),(10257,'2004-06-14 00:00:00','2004-06-24 00:00:00','2004-06-15 00:00:00','Shipped',NULL,450),(10258,'2004-06-15 00:00:00','2004-06-25 00:00:00','2004-06-23 00:00:00','Shipped',NULL,398),(10259,'2004-06-15 00:00:00','2004-06-22 00:00:00','2004-06-17 00:00:00','Shipped',NULL,166),(10260,'2004-06-16 00:00:00','2004-06-22 00:00:00',NULL,'Cancelled','Customer heard complaints from their customers and called to cancel this order. Will notify the Sales Manager.',357),(10261,'2004-06-17 00:00:00','2004-06-25 00:00:00','2004-06-22 00:00:00','Shipped',NULL,233),(10262,'2004-06-24 00:00:00','2004-07-01 00:00:00',NULL,'Cancelled','This customer found a better offer from one of our competitors. Will call back to renegotiate.',141),(10263,'2004-06-28 00:00:00','2004-07-04 00:00:00','2004-07-02 00:00:00','Shipped',NULL,175),(10264,'2004-06-30 00:00:00','2004-07-06 00:00:00','2004-07-01 00:00:00','Shipped','Customer will send a truck to our local warehouse on 7/1/2004',362),(10265,'2004-07-02 00:00:00','2004-07-09 00:00:00','2004-07-07 00:00:00','Shipped',NULL,471),(10266,'2004-07-06 00:00:00','2004-07-14 00:00:00','2004-07-10 00:00:00','Shipped',NULL,386),(10267,'2004-07-07 00:00:00','2004-07-17 00:00:00','2004-07-09 00:00:00','Shipped',NULL,151),(10268,'2004-07-12 00:00:00','2004-07-18 00:00:00','2004-07-14 00:00:00','Shipped',NULL,412),(10269,'2004-07-16 00:00:00','2004-07-22 00:00:00','2004-07-18 00:00:00','Shipped',NULL,382),(10270,'2004-07-19 00:00:00','2004-07-27 00:00:00','2004-07-24 00:00:00','Shipped','Can we renegotiate this one?',282),(10271,'2004-07-20 00:00:00','2004-07-29 00:00:00','2004-07-23 00:00:00','Shipped',NULL,124),(10272,'2004-07-20 00:00:00','2004-07-26 00:00:00','2004-07-22 00:00:00','Shipped',NULL,157),(10273,'2004-07-21 00:00:00','2004-07-28 00:00:00','2004-07-22 00:00:00','Shipped',NULL,314),(10274,'2004-07-21 00:00:00','2004-07-29 00:00:00','2004-07-22 00:00:00','Shipped',NULL,379),(10275,'2004-07-23 00:00:00','2004-08-02 00:00:00','2004-07-29 00:00:00','Shipped',NULL,119),(10276,'2004-08-02 00:00:00','2004-08-11 00:00:00','2004-08-08 00:00:00','Shipped',NULL,204),(10277,'2004-08-04 00:00:00','2004-08-12 00:00:00','2004-08-05 00:00:00','Shipped',NULL,148),(10278,'2004-08-06 00:00:00','2004-08-16 00:00:00','2004-08-09 00:00:00','Shipped',NULL,112),(10279,'2004-08-09 00:00:00','2004-08-19 00:00:00','2004-08-15 00:00:00','Shipped','Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches',141),(10280,'2004-08-17 00:00:00','2004-08-27 00:00:00','2004-08-19 00:00:00','Shipped',NULL,249),(10281,'2004-08-19 00:00:00','2004-08-28 00:00:00','2004-08-23 00:00:00','Shipped',NULL,157),(10282,'2004-08-20 00:00:00','2004-08-26 00:00:00','2004-08-22 00:00:00','Shipped',NULL,124),(10283,'2004-08-20 00:00:00','2004-08-30 00:00:00','2004-08-23 00:00:00','Shipped',NULL,260),(10284,'2004-08-21 00:00:00','2004-08-29 00:00:00','2004-08-26 00:00:00','Shipped','Custom shipping instructions sent to warehouse',299),(10285,'2004-08-27 00:00:00','2004-09-04 00:00:00','2004-08-31 00:00:00','Shipped',NULL,286),(10286,'2004-08-28 00:00:00','2004-09-06 00:00:00','2004-09-01 00:00:00','Shipped',NULL,172),(10287,'2004-08-30 00:00:00','2004-09-06 00:00:00','2004-09-01 00:00:00','Shipped',NULL,298),(10288,'2004-09-01 00:00:00','2004-09-11 00:00:00','2004-09-05 00:00:00','Shipped',NULL,166),(10289,'2004-09-03 00:00:00','2004-09-13 00:00:00','2004-09-04 00:00:00','Shipped','We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.',167),(10290,'2004-09-07 00:00:00','2004-09-15 00:00:00','2004-09-13 00:00:00','Shipped',NULL,198),(10291,'2004-09-08 00:00:00','2004-09-17 00:00:00','2004-09-14 00:00:00','Shipped',NULL,448),(10292,'2004-09-08 00:00:00','2004-09-18 00:00:00','2004-09-11 00:00:00','Shipped','They want to reevaluate their terms agreement with Finance.',131),(10293,'2004-09-09 00:00:00','2004-09-18 00:00:00','2004-09-14 00:00:00','Shipped',NULL,249),(10294,'2004-09-10 00:00:00','2004-09-17 00:00:00','2004-09-14 00:00:00','Shipped',NULL,204),(10295,'2004-09-10 00:00:00','2004-09-17 00:00:00','2004-09-14 00:00:00','Shipped','They want to reevaluate their terms agreement with Finance.',362),(10296,'2004-09-15 00:00:00','2004-09-22 00:00:00','2004-09-16 00:00:00','Shipped',NULL,415),(10297,'2004-09-16 00:00:00','2004-09-22 00:00:00','2004-09-21 00:00:00','Shipped','We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.',189),(10298,'2004-09-27 00:00:00','2004-10-05 00:00:00','2004-10-01 00:00:00','Shipped',NULL,103),(10299,'2004-09-30 00:00:00','2004-10-10 00:00:00','2004-10-01 00:00:00','Shipped',NULL,186),(10300,'2003-10-04 00:00:00','2003-10-13 00:00:00','2003-10-09 00:00:00','Shipped',NULL,128),(10301,'2003-10-05 00:00:00','2003-10-15 00:00:00','2003-10-08 00:00:00','Shipped',NULL,299),(10302,'2003-10-06 00:00:00','2003-10-16 00:00:00','2003-10-07 00:00:00','Shipped',NULL,201),(10303,'2004-10-06 00:00:00','2004-10-14 00:00:00','2004-10-09 00:00:00','Shipped','Customer inquired about remote controlled models and gold models.',484),(10304,'2004-10-11 00:00:00','2004-10-20 00:00:00','2004-10-17 00:00:00','Shipped',NULL,256),(10305,'2004-10-13 00:00:00','2004-10-22 00:00:00','2004-10-15 00:00:00','Shipped','Check on availability.',286),(10306,'2004-10-14 00:00:00','2004-10-21 00:00:00','2004-10-17 00:00:00','Shipped',NULL,187),(10307,'2004-10-14 00:00:00','2004-10-23 00:00:00','2004-10-20 00:00:00','Shipped',NULL,339),(10308,'2004-10-15 00:00:00','2004-10-24 00:00:00','2004-10-20 00:00:00','Shipped','Customer requested that FedEx Ground is used for this shipping',319),(10309,'2004-10-15 00:00:00','2004-10-24 00:00:00','2004-10-18 00:00:00','Shipped',NULL,121),(10310,'2004-10-16 00:00:00','2004-10-24 00:00:00','2004-10-18 00:00:00','Shipped',NULL,259),(10311,'2004-10-16 00:00:00','2004-10-23 00:00:00','2004-10-20 00:00:00','Shipped','Difficult to negotiate with customer. We need more marketing materials',141),(10312,'2004-10-21 00:00:00','2004-10-27 00:00:00','2004-10-23 00:00:00','Shipped',NULL,124),(10313,'2004-10-22 00:00:00','2004-10-28 00:00:00','2004-10-25 00:00:00','Shipped','Customer requested that FedEx Ground is used for this shipping',202),(10314,'2004-10-22 00:00:00','2004-11-01 00:00:00','2004-10-23 00:00:00','Shipped',NULL,227),(10315,'2004-10-29 00:00:00','2004-11-08 00:00:00','2004-10-30 00:00:00','Shipped',NULL,119),(10316,'2004-11-01 00:00:00','2004-11-09 00:00:00','2004-11-07 00:00:00','Shipped','Customer requested that ad materials (such as posters, pamphlets) be included in the shippment',240),(10317,'2004-11-02 00:00:00','2004-11-12 00:00:00','2004-11-08 00:00:00','Shipped',NULL,161),(10318,'2004-11-02 00:00:00','2004-11-09 00:00:00','2004-11-07 00:00:00','Shipped',NULL,157),(10319,'2004-11-03 00:00:00','2004-11-11 00:00:00','2004-11-06 00:00:00','Shipped','Customer requested that DHL is used for this shipping',456),(10320,'2004-11-03 00:00:00','2004-11-13 00:00:00','2004-11-07 00:00:00','Shipped',NULL,144),(10321,'2004-11-04 00:00:00','2004-11-12 00:00:00','2004-11-07 00:00:00','Shipped',NULL,462),(10322,'2004-11-04 00:00:00','2004-11-12 00:00:00','2004-11-10 00:00:00','Shipped','Customer has worked with some of our vendors in the past and is aware of their MSRP',363),(10323,'2004-11-05 00:00:00','2004-11-12 00:00:00','2004-11-09 00:00:00','Shipped',NULL,128),(10324,'2004-11-05 00:00:00','2004-11-11 00:00:00','2004-11-08 00:00:00','Shipped',NULL,181),(10325,'2004-11-05 00:00:00','2004-11-13 00:00:00','2004-11-08 00:00:00','Shipped',NULL,121),(10326,'2004-11-09 00:00:00','2004-11-16 00:00:00','2004-11-10 00:00:00','Shipped',NULL,144),(10327,'2004-11-10 00:00:00','2004-11-19 00:00:00','2004-11-13 00:00:00','Resolved','Order was disputed and resolved on 12/1/04. The Sales Manager was involved. Customer claims the scales of the models don\'t match what was discussed.',145),(10328,'2004-11-12 00:00:00','2004-11-21 00:00:00','2004-11-18 00:00:00','Shipped','Customer very concerned about the exact color of the models. There is high risk that he may dispute the order because there is a slight color mismatch',278),(10329,'2004-11-15 00:00:00','2004-11-24 00:00:00','2004-11-16 00:00:00','Shipped',NULL,131),(10330,'2004-11-16 00:00:00','2004-11-25 00:00:00','2004-11-21 00:00:00','Shipped',NULL,385),(10331,'2004-11-17 00:00:00','2004-11-23 00:00:00','2004-11-23 00:00:00','Shipped','Customer requested special shippment. The instructions were passed along to the warehouse',486),(10332,'2004-11-17 00:00:00','2004-11-25 00:00:00','2004-11-18 00:00:00','Shipped',NULL,187),(10333,'2004-11-18 00:00:00','2004-11-27 00:00:00','2004-11-20 00:00:00','Shipped',NULL,129),(10334,'2004-11-19 00:00:00','2004-11-28 00:00:00',NULL,'On Hold','The outstaniding balance for this customer exceeds their credit limit. Order will be shipped when a payment is received.',144),(10335,'2004-11-19 00:00:00','2004-11-29 00:00:00','2004-11-23 00:00:00','Shipped',NULL,124),(10336,'2004-11-20 00:00:00','2004-11-26 00:00:00','2004-11-24 00:00:00','Shipped','Customer requested that DHL is used for this shipping',172),(10337,'2004-11-21 00:00:00','2004-11-30 00:00:00','2004-11-26 00:00:00','Shipped',NULL,424),(10338,'2004-11-22 00:00:00','2004-12-02 00:00:00','2004-11-27 00:00:00','Shipped',NULL,381),(10339,'2004-11-23 00:00:00','2004-11-30 00:00:00','2004-11-30 00:00:00','Shipped',NULL,398),(10340,'2004-11-24 00:00:00','2004-12-01 00:00:00','2004-11-25 00:00:00','Shipped','Customer is interested in buying more Ferrari models',216),(10341,'2004-11-24 00:00:00','2004-12-01 00:00:00','2004-11-29 00:00:00','Shipped',NULL,382),(10342,'2004-11-24 00:00:00','2004-12-01 00:00:00','2004-11-29 00:00:00','Shipped',NULL,114),(10343,'2004-11-24 00:00:00','2004-12-01 00:00:00','2004-11-26 00:00:00','Shipped',NULL,353),(10344,'2004-11-25 00:00:00','2004-12-02 00:00:00','2004-11-29 00:00:00','Shipped',NULL,350),(10345,'2004-11-25 00:00:00','2004-12-01 00:00:00','2004-11-26 00:00:00','Shipped',NULL,103),(10346,'2004-11-29 00:00:00','2004-12-05 00:00:00','2004-11-30 00:00:00','Shipped',NULL,112),(10347,'2004-11-29 00:00:00','2004-12-07 00:00:00','2004-11-30 00:00:00','Shipped','Can we deliver the new Ford Mustang models by end-of-quarter?',114),(10348,'2004-11-01 00:00:00','2004-11-08 00:00:00','2004-11-05 00:00:00','Shipped',NULL,458),(10349,'2004-12-01 00:00:00','2004-12-07 00:00:00','2004-12-03 00:00:00','Shipped',NULL,151),(10350,'2004-12-02 00:00:00','2004-12-08 00:00:00','2004-12-05 00:00:00','Shipped',NULL,141),(10351,'2004-12-03 00:00:00','2004-12-11 00:00:00','2004-12-07 00:00:00','Shipped',NULL,324),(10352,'2004-12-03 00:00:00','2004-12-12 00:00:00','2004-12-09 00:00:00','Shipped',NULL,198),(10353,'2004-12-04 00:00:00','2004-12-11 00:00:00','2004-12-05 00:00:00','Shipped',NULL,447),(10354,'2004-12-04 00:00:00','2004-12-10 00:00:00','2004-12-05 00:00:00','Shipped',NULL,323),(10355,'2004-12-07 00:00:00','2004-12-14 00:00:00','2004-12-13 00:00:00','Shipped',NULL,141),(10356,'2004-12-09 00:00:00','2004-12-15 00:00:00','2004-12-12 00:00:00','Shipped',NULL,250),(10357,'2004-12-10 00:00:00','2004-12-16 00:00:00','2004-12-14 00:00:00','Shipped',NULL,124),(10358,'2004-12-10 00:00:00','2004-12-16 00:00:00','2004-12-16 00:00:00','Shipped','Customer requested that DHL is used for this shipping',141),(10359,'2004-12-15 00:00:00','2004-12-23 00:00:00','2004-12-18 00:00:00','Shipped',NULL,353),(10360,'2004-12-16 00:00:00','2004-12-22 00:00:00','2004-12-18 00:00:00','Shipped',NULL,496),(10361,'2004-12-17 00:00:00','2004-12-24 00:00:00','2004-12-20 00:00:00','Shipped',NULL,282),(10362,'2005-01-05 00:00:00','2005-01-16 00:00:00','2005-01-10 00:00:00','Shipped',NULL,161),(10363,'2005-01-06 00:00:00','2005-01-12 00:00:00','2005-01-10 00:00:00','Shipped',NULL,334),(10364,'2005-01-06 00:00:00','2005-01-17 00:00:00','2005-01-09 00:00:00','Shipped',NULL,350),(10365,'2005-01-07 00:00:00','2005-01-18 00:00:00','2005-01-11 00:00:00','Shipped',NULL,320),(10366,'2005-01-10 00:00:00','2005-01-19 00:00:00','2005-01-12 00:00:00','Shipped',NULL,381),(10367,'2005-01-12 00:00:00','2005-01-21 00:00:00','2005-01-16 00:00:00','Resolved','This order was disputed and resolved on 2/1/2005. Customer claimed that container with shipment was damaged. FedEx\'s investigation proved this wrong.',205),(10368,'2005-01-19 00:00:00','2005-01-27 00:00:00','2005-01-24 00:00:00','Shipped','Can we renegotiate this one?',124),(10369,'2005-01-20 00:00:00','2005-01-28 00:00:00','2005-01-24 00:00:00','Shipped',NULL,379),(10370,'2005-01-20 00:00:00','2005-02-01 00:00:00','2005-01-25 00:00:00','Shipped',NULL,276),(10371,'2005-01-23 00:00:00','2005-02-03 00:00:00','2005-01-25 00:00:00','Shipped',NULL,124),(10372,'2005-01-26 00:00:00','2005-02-05 00:00:00','2005-01-28 00:00:00','Shipped',NULL,398),(10373,'2005-01-31 00:00:00','2005-02-08 00:00:00','2005-02-06 00:00:00','Shipped',NULL,311),(10374,'2005-02-02 00:00:00','2005-02-09 00:00:00','2005-02-03 00:00:00','Shipped',NULL,333),(10375,'2005-02-03 00:00:00','2005-02-10 00:00:00','2005-02-06 00:00:00','Shipped',NULL,119),(10376,'2005-02-08 00:00:00','2005-02-18 00:00:00','2005-02-13 00:00:00','Shipped',NULL,219),(10377,'2005-02-09 00:00:00','2005-02-21 00:00:00','2005-02-12 00:00:00','Shipped','Cautious optimism. We have happy customers here, if we can keep them well stocked.  I need all the information I can get on the planned shippments of Porches',186),(10378,'2005-02-10 00:00:00','2005-02-18 00:00:00','2005-02-11 00:00:00','Shipped',NULL,141),(10379,'2005-02-10 00:00:00','2005-02-18 00:00:00','2005-02-11 00:00:00','Shipped',NULL,141),(10380,'2005-02-16 00:00:00','2005-02-24 00:00:00','2005-02-18 00:00:00','Shipped',NULL,141),(10381,'2005-02-17 00:00:00','2005-02-25 00:00:00','2005-02-18 00:00:00','Shipped',NULL,321),(10382,'2005-02-17 00:00:00','2005-02-23 00:00:00','2005-02-18 00:00:00','Shipped','Custom shipping instructions sent to warehouse',124),(10383,'2005-02-22 00:00:00','2005-03-02 00:00:00','2005-02-25 00:00:00','Shipped',NULL,141),(10384,'2005-02-23 00:00:00','2005-03-06 00:00:00','2005-02-27 00:00:00','Shipped',NULL,321),(10385,'2005-02-28 00:00:00','2005-03-09 00:00:00','2005-03-01 00:00:00','Shipped',NULL,124),(10386,'2005-03-01 00:00:00','2005-03-09 00:00:00','2005-03-06 00:00:00','Resolved','Disputed then Resolved on 3/15/2005. Customer doesn\'t like the craftsmaship of the models.',141),(10387,'2005-03-02 00:00:00','2005-03-09 00:00:00','2005-03-06 00:00:00','Shipped','We need to keep in close contact with their Marketing VP. He is the decision maker for all their purchases.',148),(10388,'2005-03-03 00:00:00','2005-03-11 00:00:00','2005-03-09 00:00:00','Shipped',NULL,462),(10389,'2005-03-03 00:00:00','2005-03-09 00:00:00','2005-03-08 00:00:00','Shipped',NULL,448),(10390,'2005-03-04 00:00:00','2005-03-11 00:00:00','2005-03-07 00:00:00','Shipped','They want to reevaluate their terms agreement with Finance.',124),(10391,'2005-03-09 00:00:00','2005-03-20 00:00:00','2005-03-15 00:00:00','Shipped',NULL,276),(10392,'2005-03-10 00:00:00','2005-03-18 00:00:00','2005-03-12 00:00:00','Shipped',NULL,452),(10393,'2005-03-11 00:00:00','2005-03-22 00:00:00','2005-03-14 00:00:00','Shipped','They want to reevaluate their terms agreement with Finance.',323),(10394,'2005-03-15 00:00:00','2005-03-25 00:00:00','2005-03-19 00:00:00','Shipped',NULL,141),(10395,'2005-03-17 00:00:00','2005-03-24 00:00:00','2005-03-23 00:00:00','Shipped','We must be cautions with this customer. Their VP of Sales resigned. Company may be heading down.',250),(10396,'2005-03-23 00:00:00','2005-04-02 00:00:00','2005-03-28 00:00:00','Shipped',NULL,124),(10397,'2005-03-28 00:00:00','2005-04-09 00:00:00','2005-04-01 00:00:00','Shipped',NULL,242),(10398,'2005-03-30 00:00:00','2005-04-09 00:00:00','2005-03-31 00:00:00','Shipped',NULL,353),(10399,'2005-04-01 00:00:00','2005-04-12 00:00:00','2005-04-03 00:00:00','Shipped',NULL,496),(10400,'2005-04-01 00:00:00','2005-04-11 00:00:00','2005-04-04 00:00:00','Shipped','Customer requested that DHL is used for this shipping',450),(10401,'2005-04-03 00:00:00','2005-04-14 00:00:00',NULL,'On Hold','Customer credit limit exceeded. Will ship when a payment is received.',328),(10402,'2005-04-07 00:00:00','2005-04-14 00:00:00','2005-04-12 00:00:00','Shipped',NULL,406),(10403,'2005-04-08 00:00:00','2005-04-18 00:00:00','2005-04-11 00:00:00','Shipped',NULL,201),(10404,'2005-04-08 00:00:00','2005-04-14 00:00:00','2005-04-11 00:00:00','Shipped',NULL,323),(10405,'2005-04-14 00:00:00','2005-04-24 00:00:00','2005-04-20 00:00:00','Shipped',NULL,209),(10406,'2005-04-15 00:00:00','2005-04-25 00:00:00','2005-04-21 00:00:00','Disputed','Customer claims container with shipment was damaged during shipping and some items were missing. I am talking to FedEx about this.',145),(10407,'2005-04-22 00:00:00','2005-05-04 00:00:00',NULL,'On Hold','Customer credit limit exceeded. Will ship when a payment is received.',450),(10408,'2005-04-22 00:00:00','2005-04-29 00:00:00','2005-04-27 00:00:00','Shipped',NULL,398),(10409,'2005-04-23 00:00:00','2005-05-05 00:00:00','2005-04-24 00:00:00','Shipped',NULL,166),(10410,'2005-04-29 00:00:00','2005-05-10 00:00:00','2005-04-30 00:00:00','Shipped',NULL,357),(10411,'2005-05-01 00:00:00','2005-05-08 00:00:00','2005-05-06 00:00:00','Shipped',NULL,233),(10412,'2005-05-03 00:00:00','2005-05-13 00:00:00','2005-05-05 00:00:00','Shipped',NULL,141),(10413,'2005-05-05 00:00:00','2005-05-14 00:00:00','2005-05-09 00:00:00','Shipped','Customer requested that DHL is used for this shipping',175),(10414,'2005-05-06 00:00:00','2005-05-13 00:00:00',NULL,'On Hold','Customer credit limit exceeded. Will ship when a payment is received.',362),(10415,'2005-05-09 00:00:00','2005-05-20 00:00:00','2005-05-12 00:00:00','Disputed','Customer claims the scales of the models don\'t match what was discussed. I keep all the paperwork though to prove otherwise',471),(10416,'2005-05-10 00:00:00','2005-05-16 00:00:00','2005-05-14 00:00:00','Shipped',NULL,386),(10417,'2005-05-13 00:00:00','2005-05-19 00:00:00','2005-05-19 00:00:00','Disputed','Customer doesn\'t like the colors and precision of the models.',141),(10418,'2005-05-16 00:00:00','2005-05-24 00:00:00','2005-05-20 00:00:00','Shipped',NULL,412),(10419,'2005-05-17 00:00:00','2005-05-28 00:00:00','2005-05-19 00:00:00','Shipped',NULL,382),(10420,'2005-05-29 00:00:00','2005-06-07 00:00:00',NULL,'In Process',NULL,282),(10421,'2005-05-29 00:00:00','2005-06-06 00:00:00',NULL,'In Process','Custom shipping instructions were sent to warehouse',124),(10422,'2005-05-30 00:00:00','2005-06-11 00:00:00',NULL,'In Process',NULL,157),(10423,'2005-05-30 00:00:00','2005-06-05 00:00:00',NULL,'In Process',NULL,314),(10424,'2005-05-31 00:00:00','2005-06-08 00:00:00',NULL,'In Process',NULL,141),(10425,'2005-05-31 00:00:00','2005-06-07 00:00:00',NULL,'In Process',NULL,119);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `scheduleID` varchar(45) NOT NULL,
  `sportsID` varchar(45) NOT NULL,
  `coordinatorID` varchar(45) NOT NULL,
  `area` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `start-time` time NOT NULL,
  `end-time` time NOT NULL,
  PRIMARY KEY (`scheduleID`),
  UNIQUE KEY `scheduleID_UNIQUE` (`scheduleID`),
  KEY `sportsID` (`sportsID`),
  KEY `coordinatorID` (`coordinatorID`),
  CONSTRAINT `sports-coordinators-fk` FOREIGN KEY (`coordinatorID`) REFERENCES `sports-coordinators` (`coordinatorID`) ON UPDATE CASCADE,
  CONSTRAINT `sports-fk` FOREIGN KEY (`sportsID`) REFERENCES `sports` (`sportsID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES ('SCH01','SPTS0101','C01','Room101','2023-02-20','09:00:00','10:00:00'),('SCH02','SPTS0201','C02','VolleyballCourt','2023-02-21','13:00:00','15:00:00'),('SCH03','SPTS0302','C03','BasketballCourt','2023-02-21','13:00:00','15:00:00'),('SCH04','SPTS0101','C01','Room102','2023-02-20','16:00:00','17:00:00'),('SCH05','SPTS04a','C09','Ping-Pong Area','2023-02-20','13:00:00','16:00:00'),('SCH06','SPTS04b','C08','Ping-Pong Area','2023-02-22','13:00:00','16:00:00');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports`
--

DROP TABLE IF EXISTS `sports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports` (
  `sportsID` varchar(45) NOT NULL,
  `sports-name` varchar(45) NOT NULL,
  `number-of-auditionee` int NOT NULL,
  `availability` varchar(45) NOT NULL,
  PRIMARY KEY (`sportsID`),
  UNIQUE KEY `sportsID_UNIQUE` (`sportsID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports`
--

LOCK TABLES `sports` WRITE;
/*!40000 ALTER TABLE `sports` DISABLE KEYS */;
INSERT INTO `sports` VALUES ('SPTS0101','Chess',8,'0'),('SPTS0201','Women\'s Volleyball',29,'1'),('SPTS0202','Men\'s Volleyball',32,'1'),('SPTS0301','Women\'s Basketball',26,'1'),('SPTS0302','Men\'s Basketball',47,'0'),('SPTS04a','Table Tennis Singles',9,'1'),('SPTS04b','Table Tennis Doubles',22,'1'),('SPTS05a','Badminton Singles',16,'0'),('SPTS05b','Badminton Singles',28,'0');
/*!40000 ALTER TABLE `sports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports-coordinators`
--

DROP TABLE IF EXISTS `sports-coordinators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports-coordinators` (
  `coordinatorID` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`coordinatorID`),
  UNIQUE KEY `coordinatorID_UNIQUE` (`coordinatorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports-coordinators`
--

LOCK TABLES `sports-coordinators` WRITE;
/*!40000 ALTER TABLE `sports-coordinators` DISABLE KEYS */;
INSERT INTO `sports-coordinators` VALUES ('C01','Kimmy Boi','password123','c01@prof.edu'),('C02','Sheena Shield','password234','c02@prof.edu'),('C03','Ron Ron','password345','c03@prof.edu'),('C04','Eric Dimatulac','password456','c04@prof.edu'),('C05','Kyra Mae De Vera','password567','c05@prof.edu'),('C06','Jocelyn De Guzman','password678','c06@prof.edu'),('C07','Mike Enrico','password789','c07@prof.edu'),('C08','Mika Abrenica','password8910','c08@prof.edu'),('C09','Porter Robinson','password91011','c09@prof.edu'),('C10','Michael Phelps','password32165','c10@prof.edu');
/*!40000 ALTER TABLE `sports-coordinators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student-details`
--

DROP TABLE IF EXISTS `student-details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student-details` (
  `studentID` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contactNumber` longblob NOT NULL,
  PRIMARY KEY (`studentID`),
  UNIQUE KEY `studentID_UNIQUE` (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student-details`
--

LOCK TABLES `student-details` WRITE;
/*!40000 ALTER TABLE `student-details` DISABLE KEYS */;
INSERT INTO `student-details` VALUES ('2222202','Mika Abrenica','password789','2222202@stud.edu',_binary '09260473221'),('2222203','Ella Marites','password678','2222203@stud.edu',_binary '09065467771'),('2222204','Jayson Xander','password567','2222204@stud.edu',_binary '09147778151'),('2222205','Xanthe Nicole','password123','2222205@stud.edu',_binary '09352512427'),('2254365','Kate Lyn','password234','2254365@stud.edu',_binary '09752163624'),('2416452','Enrico Co','password345','2416452@stud.edu',_binary '09747524163'),('2416453','Baggo Ong','password456','2416453@stud.edu',_binary '09368212101');
/*!40000 ALTER TABLE `student-details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student-tryout-details`
--

DROP TABLE IF EXISTS `student-tryout-details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student-tryout-details` (
  `studentID` varchar(45) NOT NULL,
  `scheduleID` varchar(45) NOT NULL,
  `attempts` int NOT NULL,
  `evaluation` varchar(45) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  KEY `studentID` (`studentID`),
  KEY `scheduleID` (`scheduleID`),
  CONSTRAINT `schedules-fk` FOREIGN KEY (`scheduleID`) REFERENCES `schedules` (`scheduleID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student-details-fk` FOREIGN KEY (`studentID`) REFERENCES `student-details` (`studentID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student-tryout-details`
--

LOCK TABLES `student-tryout-details` WRITE;
/*!40000 ALTER TABLE `student-tryout-details` DISABLE KEYS */;
INSERT INTO `student-tryout-details` VALUES ('2222205','SCH01',3,'Accepted','also good for chess'),('2254365','SCH02',2,'Pending',NULL),('2416452','SCH04',1,'Rejected',NULL),('2222205','SCH02',2,'Accepted',NULL),('2222205','SCH05',2,'Pending',NULL),('2416453','SCH04',1,'Accepted',NULL),('2222204','SCH04',3,'Rejected',NULL),('2222203','SCH02',3,'Pending',NULL),('2416452','SCH05',1,'Accepted',NULL),('2222202','SCH02',2,'Pending',NULL);
/*!40000 ALTER TABLE `student-tryout-details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idUsers` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `loggedIn` tinyint NOT NULL DEFAULT '0',
  `isInGame` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`idUsers`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'bon','nie',0,0),(2,'mik','kita',0,0),(3,'san','tea',0,0),(4,'ron','nor',0,0),(5,'she','ena',0,0),(6,'kai','zer',0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-30  5:21:02
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: comprogres
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `leaderboard`
--

DROP TABLE IF EXISTS `leaderboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leaderboard` (
  `iduser` int NOT NULL,
  `username` varchar(45) NOT NULL,
  `wins` int NOT NULL,
  KEY `iduser_idx` (`iduser`),
  KEY `username_idx` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaderboard`
--

LOCK TABLES `leaderboard` WRITE;
/*!40000 ALTER TABLE `leaderboard` DISABLE KEYS */;
INSERT INTO `leaderboard` VALUES (2,'mik',12),(1,'bon',12),(3,'san',4),(4,'ron',5),(5,'she',7),(6,'kai',14);
/*!40000 ALTER TABLE `leaderboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `longestwords`
--

DROP TABLE IF EXISTS `longestwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `longestwords` (
  `words` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `length` int DEFAULT NULL,
  KEY `username_idx` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `longestwords`
--

LOCK TABLES `longestwords` WRITE;
/*!40000 ALTER TABLE `longestwords` DISABLE KEYS */;
INSERT INTO `longestwords` VALUES ('septuagenarians','san',15),('proportioned','ron',12),('militaries','kai',10),('cobblestones','she',12),('fellowships','bon',11),('abandoning','mik',10);
/*!40000 ALTER TABLE `longestwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idUsers` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `loggedIn` tinyint NOT NULL DEFAULT '0',
  `isInGame` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`idUsers`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'bon','nie',0,0),(2,'mik','kita',1,0),(3,'san','tea',0,0),(4,'ron','nor',0,0),(5,'she','ena',1,0),(6,'kai','zer',1,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-30  5:21:02
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tryouts
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminID` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`adminID`),
  UNIQUE KEY `adminID_UNIQUE` (`adminID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('AD01','Josephine Bracken','choochoo','ad01@admin.edu'),('AD02','Jocelyn Marquez','hoothoot','ad02@admin.edu');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `scheduleID` varchar(45) NOT NULL,
  `sportsID` varchar(45) NOT NULL,
  `coordinatorID` varchar(45) NOT NULL,
  `area` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `start-time` time NOT NULL,
  `end-time` time NOT NULL,
  PRIMARY KEY (`scheduleID`),
  UNIQUE KEY `scheduleID_UNIQUE` (`scheduleID`),
  KEY `sportsID` (`sportsID`),
  KEY `coordinatorID` (`coordinatorID`),
  CONSTRAINT `sports-coordinators-fk` FOREIGN KEY (`coordinatorID`) REFERENCES `sports-coordinators` (`coordinatorID`) ON UPDATE CASCADE,
  CONSTRAINT `sports-fk` FOREIGN KEY (`sportsID`) REFERENCES `sports` (`sportsID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES ('SCH01','SPTS0101','C01','Room101','2023-02-20','09:00:00','10:00:00'),('SCH02','SPTS0201','C02','VolleyballCourt','2023-02-21','13:00:00','15:00:00'),('SCH03','SPTS0302','C03','BasketballCourt','2023-02-21','13:00:00','15:00:00'),('SCH04','SPTS0101','C01','Room102','2023-02-20','16:00:00','17:00:00'),('SCH05','SPTS04a','C09','Ping-Pong Area','2023-02-20','13:00:00','16:00:00'),('SCH06','SPTS04b','C08','Ping-Pong Area','2023-02-22','13:00:00','16:00:00');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports`
--

DROP TABLE IF EXISTS `sports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports` (
  `sportsID` varchar(45) NOT NULL,
  `sports-name` varchar(45) NOT NULL,
  `number-of-auditionee` int NOT NULL,
  `availability` varchar(45) NOT NULL,
  PRIMARY KEY (`sportsID`),
  UNIQUE KEY `sportsID_UNIQUE` (`sportsID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports`
--

LOCK TABLES `sports` WRITE;
/*!40000 ALTER TABLE `sports` DISABLE KEYS */;
INSERT INTO `sports` VALUES ('SPTS0101','Chess',8,'0'),('SPTS0201','Women\'s Volleyball',29,'1'),('SPTS0202','Men\'s Volleyball',32,'1'),('SPTS0301','Women\'s Basketball',26,'1'),('SPTS0302','Men\'s Basketball',47,'0'),('SPTS04a','Table Tennis Singles',9,'1'),('SPTS04b','Table Tennis Doubles',22,'1'),('SPTS05a','Badminton Singles',16,'0'),('SPTS05b','Badminton Singles',28,'0');
/*!40000 ALTER TABLE `sports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports-coordinators`
--

DROP TABLE IF EXISTS `sports-coordinators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports-coordinators` (
  `coordinatorID` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`coordinatorID`),
  UNIQUE KEY `coordinatorID_UNIQUE` (`coordinatorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports-coordinators`
--

LOCK TABLES `sports-coordinators` WRITE;
/*!40000 ALTER TABLE `sports-coordinators` DISABLE KEYS */;
INSERT INTO `sports-coordinators` VALUES ('C01','Kimmy Boi','password123','c01@prof.edu'),('C02','Sheena Shield','password234','c02@prof.edu'),('C03','Ron Ron','password345','c03@prof.edu'),('C04','Eric Dimatulac','password456','c04@prof.edu'),('C05','Kyra Mae De Vera','password567','c05@prof.edu'),('C06','Jocelyn De Guzman','password678','c06@prof.edu'),('C07','Mike Enrico','password789','c07@prof.edu'),('C08','Mika Abrenica','password8910','c08@prof.edu'),('C09','Porter Robinson','password91011','c09@prof.edu'),('C10','Michael Phelps','password32165','c10@prof.edu');
/*!40000 ALTER TABLE `sports-coordinators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student-details`
--

DROP TABLE IF EXISTS `student-details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student-details` (
  `studentID` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contactNumber` longblob NOT NULL,
  PRIMARY KEY (`studentID`),
  UNIQUE KEY `studentID_UNIQUE` (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student-details`
--

LOCK TABLES `student-details` WRITE;
/*!40000 ALTER TABLE `student-details` DISABLE KEYS */;
INSERT INTO `student-details` VALUES ('2222202','Mika Abrenica','password789','2222202@stud.edu',_binary '09260473221'),('2222203','Ella Marites','password678','2222203@stud.edu',_binary '09065467771'),('2222204','Jayson Xander','password567','2222204@stud.edu',_binary '09147778151'),('2222205','Xanthe Nicole','password123','2222205@stud.edu',_binary '09352512427'),('2254365','Kate Lyn','password234','2254365@stud.edu',_binary '09752163624'),('2416452','Enrico Co','password345','2416452@stud.edu',_binary '09747524163'),('2416453','Baggo Ong','password456','2416453@stud.edu',_binary '09368212101');
/*!40000 ALTER TABLE `student-details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student-tryout-details`
--

DROP TABLE IF EXISTS `student-tryout-details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student-tryout-details` (
  `studentID` varchar(45) NOT NULL,
  `scheduleID` varchar(45) NOT NULL,
  `attempts` int NOT NULL,
  `evaluation` varchar(45) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  KEY `studentID` (`studentID`),
  KEY `scheduleID` (`scheduleID`),
  CONSTRAINT `schedules-fk` FOREIGN KEY (`scheduleID`) REFERENCES `schedules` (`scheduleID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student-details-fk` FOREIGN KEY (`studentID`) REFERENCES `student-details` (`studentID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student-tryout-details`
--

LOCK TABLES `student-tryout-details` WRITE;
/*!40000 ALTER TABLE `student-tryout-details` DISABLE KEYS */;
INSERT INTO `student-tryout-details` VALUES ('2222205','SCH01',3,'Accepted','also good for chess'),('2254365','SCH02',2,'Pending',NULL),('2416452','SCH04',1,'Rejected',NULL),('2222205','SCH02',2,'Accepted',NULL),('2222205','SCH05',2,'Pending',NULL),('2416453','SCH04',1,'Accepted',NULL),('2222204','SCH04',3,'Rejected',NULL),('2222203','SCH02',3,'Pending',NULL),('2416452','SCH05',1,'Accepted',NULL),('2222202','SCH02',2,'Pending',NULL),('2222205','SCH06',1,'Pending',''),('2222205','SCH04',1,'Pending','');
/*!40000 ALTER TABLE `student-tryout-details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-30  5:21:03
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sys
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Temporary view structure for view `host_summary`
--

DROP TABLE IF EXISTS `host_summary`;
/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io`
--

DROP TABLE IF EXISTS `host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_stages`
--

DROP TABLE IF EXISTS `host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_lock_waits`
--

DROP TABLE IF EXISTS `innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_table_schema`,
 1 AS `locked_table_name`,
 1 AS `locked_table_partition`,
 1 AS `locked_table_subpartition`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `latest_file_io`
--

DROP TABLE IF EXISTS `latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_total`
--

DROP TABLE IF EXISTS `memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!50001 DROP VIEW IF EXISTS `metrics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `metrics` AS SELECT 
 1 AS `Variable_name`,
 1 AS `Variable_value`,
 1 AS `Type`,
 1 AS `Enabled`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `processlist`
--

DROP TABLE IF EXISTS `processlist`;
/*!50001 DROP VIEW IF EXISTS `processlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ps_check_lost_instrumentation`
--

DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;
/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ps_check_lost_instrumentation` AS SELECT 
 1 AS `variable_name`,
 1 AS `variable_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_auto_increment_columns`
--

DROP TABLE IF EXISTS `schema_auto_increment_columns`;
/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_auto_increment_columns` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `column_name`,
 1 AS `data_type`,
 1 AS `column_type`,
 1 AS `is_signed`,
 1 AS `is_unsigned`,
 1 AS `max_value`,
 1 AS `auto_increment`,
 1 AS `auto_increment_ratio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_index_statistics`
--

DROP TABLE IF EXISTS `schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_object_overview`
--

DROP TABLE IF EXISTS `schema_object_overview`;
/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_object_overview` AS SELECT 
 1 AS `db`,
 1 AS `object_type`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_redundant_indexes`
--

DROP TABLE IF EXISTS `schema_redundant_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_redundant_indexes` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `redundant_index_name`,
 1 AS `redundant_index_columns`,
 1 AS `redundant_index_non_unique`,
 1 AS `dominant_index_name`,
 1 AS `dominant_index_columns`,
 1 AS `dominant_index_non_unique`,
 1 AS `subpart_exists`,
 1 AS `sql_drop_index`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_lock_waits`
--

DROP TABLE IF EXISTS `schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics`
--

DROP TABLE IF EXISTS `schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_unused_indexes`
--

DROP TABLE IF EXISTS `schema_unused_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_unused_indexes` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `index_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session`
--

DROP TABLE IF EXISTS `session`;
/*!50001 DROP VIEW IF EXISTS `session`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session_ssl_status`
--

DROP TABLE IF EXISTS `session_ssl_status`;
/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session_ssl_status` AS SELECT 
 1 AS `thread_id`,
 1 AS `ssl_version`,
 1 AS `ssl_cipher`,
 1 AS `ssl_sessions_reused`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statement_analysis`
--

DROP TABLE IF EXISTS `statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `max_controlled_memory`,
 1 AS `max_total_memory`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_sorting`
--

DROP TABLE IF EXISTS `statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_temp_tables`
--

DROP TABLE IF EXISTS `statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `variable` varchar(128) NOT NULL,
  `value` varchar(128) DEFAULT NULL,
  `set_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `set_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES ('diagnostics.allow_i_s_tables','OFF','2023-02-18 06:18:32',NULL),('diagnostics.include_raw','OFF','2023-02-18 06:18:32',NULL),('ps_thread_trx_info.max_length','65535','2023-02-18 06:18:32',NULL),('statement_performance_analyzer.limit','100','2023-02-18 06:18:32',NULL),('statement_performance_analyzer.view',NULL,'2023-02-18 06:18:32',NULL),('statement_truncate_len','64','2023-02-18 06:18:32',NULL);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_summary`
--

DROP TABLE IF EXISTS `user_summary`;
/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io`
--

DROP TABLE IF EXISTS `user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_stages`
--

DROP TABLE IF EXISTS `user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `version`
--

DROP TABLE IF EXISTS `version`;
/*!50001 DROP VIEW IF EXISTS `version`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `version` AS SELECT 
 1 AS `sys_version`,
 1 AS `mysql_version`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_global_by_latency`
--

DROP TABLE IF EXISTS `waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary`
--

DROP TABLE IF EXISTS `x$host_summary`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_stages`
--

DROP TABLE IF EXISTS `x$host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_lock_waits`
--

DROP TABLE IF EXISTS `x$innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_table_schema`,
 1 AS `locked_table_name`,
 1 AS `locked_table_partition`,
 1 AS `locked_table_subpartition`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `x$io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$latest_file_io`
--

DROP TABLE IF EXISTS `x$latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_total`
--

DROP TABLE IF EXISTS `x$memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$processlist`
--

DROP TABLE IF EXISTS `x$processlist`;
/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

DROP TABLE IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_digest_95th_percentile_by_avg_us` AS SELECT 
 1 AS `avg_us`,
 1 AS `percentile`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_avg_latency_distribution`
--

DROP TABLE IF EXISTS `x$ps_digest_avg_latency_distribution`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_digest_avg_latency_distribution` AS SELECT 
 1 AS `cnt`,
 1 AS `avg_us`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_schema_table_statistics_io`
--

DROP TABLE IF EXISTS `x$ps_schema_table_statistics_io`;
/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_schema_table_statistics_io` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `count_read`,
 1 AS `sum_number_of_bytes_read`,
 1 AS `sum_timer_read`,
 1 AS `count_write`,
 1 AS `sum_number_of_bytes_write`,
 1 AS `sum_timer_write`,
 1 AS `count_misc`,
 1 AS `sum_timer_misc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_flattened_keys`
--

DROP TABLE IF EXISTS `x$schema_flattened_keys`;
/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_flattened_keys` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `non_unique`,
 1 AS `subpart_exists`,
 1 AS `index_columns`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_index_statistics`
--

DROP TABLE IF EXISTS `x$schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_lock_waits`
--

DROP TABLE IF EXISTS `x$schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics`
--

DROP TABLE IF EXISTS `x$schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `x$schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$session`
--

DROP TABLE IF EXISTS `x$session`;
/*!50001 DROP VIEW IF EXISTS `x$session`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statement_analysis`
--

DROP TABLE IF EXISTS `x$statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `exec_secondary_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `max_controlled_memory`,
 1 AS `max_total_memory`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `x$statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `x$statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_sorting`
--

DROP TABLE IF EXISTS `x$statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_temp_tables`
--

DROP TABLE IF EXISTS `x$statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary`
--

DROP TABLE IF EXISTS `x$user_summary`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_stages`
--

DROP TABLE IF EXISTS `x$user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_global_by_latency`
--

DROP TABLE IF EXISTS `x$waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `host_summary`
--

/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary` (`host`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_users`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,format_pico_time(sum(`stmt`.`total_latency`)) AS `statement_latency`,format_pico_time(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,format_pico_time(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,format_bytes(sum(`mem`.`current_allocated`)) AS `current_memory`,format_bytes(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io` (`host`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io_type` (`host`,`event_name`,`total`,`total_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_stages` (`host`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_latency` (`host`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME`)) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_type` (`host`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_schema` (`object_schema`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,format_bytes(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,format_bytes(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_table` (`object_schema`,`object_name`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,format_bytes(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,format_bytes(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_lock_waits` (`wait_started`,`wait_age`,`wait_age_secs`,`locked_table`,`locked_table_schema`,`locked_table_name`,`locked_table_partition`,`locked_table_subpartition`,`locked_index`,`locked_type`,`waiting_trx_id`,`waiting_trx_started`,`waiting_trx_age`,`waiting_trx_rows_locked`,`waiting_trx_rows_modified`,`waiting_pid`,`waiting_query`,`waiting_lock_id`,`waiting_lock_mode`,`blocking_trx_id`,`blocking_pid`,`blocking_query`,`blocking_lock_id`,`blocking_lock_mode`,`blocking_trx_started`,`blocking_trx_age`,`blocking_trx_rows_locked`,`blocking_trx_rows_modified`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,concat(`sys`.`quote_identifier`(`rl`.`OBJECT_SCHEMA`),'.',`sys`.`quote_identifier`(`rl`.`OBJECT_NAME`)) AS `locked_table`,`rl`.`OBJECT_SCHEMA` AS `locked_table_schema`,`rl`.`OBJECT_NAME` AS `locked_table_name`,`rl`.`PARTITION_NAME` AS `locked_table_partition`,`rl`.`SUBPARTITION_NAME` AS `locked_table_subpartition`,`rl`.`INDEX_NAME` AS `locked_index`,`rl`.`LOCK_TYPE` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`sys`.`format_statement`(`r`.`trx_query`) AS `waiting_query`,`rl`.`ENGINE_LOCK_ID` AS `waiting_lock_id`,`rl`.`LOCK_MODE` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`sys`.`format_statement`(`b`.`trx_query`) AS `blocking_query`,`bl`.`ENGINE_LOCK_ID` AS `blocking_lock_id`,`bl`.`LOCK_MODE` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`performance_schema`.`data_lock_waits` `w` join `information_schema`.`INNODB_TRX` `b` on((`b`.`trx_id` = cast(`w`.`BLOCKING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `information_schema`.`INNODB_TRX` `r` on((`r`.`trx_id` = cast(`w`.`REQUESTING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `performance_schema`.`data_locks` `bl` on((`bl`.`ENGINE_LOCK_ID` = `w`.`BLOCKING_ENGINE_LOCK_ID`))) join `performance_schema`.`data_locks` `rl` on((`rl`.`ENGINE_LOCK_ID` = `w`.`REQUESTING_ENGINE_LOCK_ID`))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_by_thread_by_latency` (`user`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`thread_id`,`processlist_id`) AS select if((`performance_schema`.`threads`.`PROCESSLIST_ID` is null),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',convert(`performance_schema`.`threads`.`PROCESSLIST_HOST` using utf8mb4))) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`)) AS `avg_latency`,format_pico_time(max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_bytes` (`file`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_write`,`total`,`write_pct`) AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00)) AS `avg_write`,format_bytes((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`)) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_latency` (`file`,`total`,`total_latency`,`count_read`,`read_latency`,`count_write`,`write_latency`,`count_misc`,`misc_latency`) AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_bytes` (`event_name`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`,`total_requested`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written`,format_bytes((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`)) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_latency` (`event_name`,`total`,`total_latency`,`avg_latency`,`max_latency`,`read_latency`,`write_latency`,`misc_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ`) AS `read_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE`) AS `write_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC`) AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `latest_file_io` (`thread`,`file`,`latency`,`operation`,`requested`) AS select if((`information_schema`.`processlist`.`ID` is null),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),convert(concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`) using utf8mb4)) AS `thread`,`sys`.`format_path`(`performance_schema`.`events_waits_history_long`.`OBJECT_NAME`) AS `file`,format_pico_time(`performance_schema`.`events_waits_history_long`.`TIMER_WAIT`) AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,format_bytes(`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES`) AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`PROCESSLIST` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_host_by_current_bytes` (`host`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_thread_by_current_bytes` (`thread_id`,`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select `mt`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `mt`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_user_by_current_bytes` (`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_by_current_bytes` (`event_name`,`current_count`,`current_alloc`,`current_avg_alloc`,`high_count`,`high_alloc`,`high_avg_alloc`) AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,format_bytes(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_alloc`,format_bytes(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0)) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,format_bytes(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED`) AS `high_alloc`,format_bytes(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0)) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_total` (`total_allocated`) AS select format_bytes(sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `metrics`
--

/*!50001 DROP VIEW IF EXISTS `metrics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `metrics` (`Variable_name`,`Variable_value`,`Type`,`Enabled`) AS select lower(`performance_schema`.`global_status`.`VARIABLE_NAME`) AS `Variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `Variable_value`,'Global Status' AS `Type`,'YES' AS `Enabled` from `performance_schema`.`global_status` union all select `information_schema`.`innodb_metrics`.`NAME` AS `Variable_name`,`information_schema`.`innodb_metrics`.`COUNT` AS `Variable_value`,concat('InnoDB Metrics - ',`information_schema`.`innodb_metrics`.`SUBSYSTEM`) AS `Type`,if((`information_schema`.`innodb_metrics`.`STATUS` = 'enabled'),'YES','NO') AS `Enabled` from `information_schema`.`INNODB_METRICS` where (`information_schema`.`innodb_metrics`.`NAME` not in ('lock_row_lock_time','lock_row_lock_time_avg','lock_row_lock_time_max','lock_row_lock_waits','buffer_pool_reads','buffer_pool_read_requests','buffer_pool_write_requests','buffer_pool_wait_free','buffer_pool_read_ahead','buffer_pool_read_ahead_evicted','buffer_pool_pages_total','buffer_pool_pages_misc','buffer_pool_pages_data','buffer_pool_bytes_data','buffer_pool_pages_dirty','buffer_pool_bytes_dirty','buffer_pool_pages_free','buffer_pages_created','buffer_pages_written','buffer_pages_read','buffer_data_reads','buffer_data_written','file_num_open_files','os_log_bytes_written','os_log_fsyncs','os_log_pending_fsyncs','os_log_pending_writes','log_waits','log_write_requests','log_writes','innodb_dblwr_writes','innodb_dblwr_pages_written','innodb_page_size')) union all select 'memory_current_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'NO'))) = 0),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name` union all select 'memory_total_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'NO'))) = 0),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name` union all select 'NOW()' AS `Variable_name`,now(3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled` union all select 'UNIX_TIMESTAMP()' AS `Variable_name`,round(unix_timestamp(now(3)),3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled` order by `Type`,`Variable_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `processlist`
--

/*!50001 DROP VIEW IF EXISTS `processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `processlist` (`thd_id`,`conn_id`,`user`,`db`,`command`,`state`,`time`,`current_statement`,`execution_engine`,`statement_latency`,`progress`,`lock_latency`,`cpu_latency`,`rows_examined`,`rows_sent`,`rows_affected`,`tmp_tables`,`tmp_disk_tables`,`full_scan`,`last_statement`,`last_statement_latency`,`current_memory`,`last_wait`,`last_wait_latency`,`source`,`trx_latency`,`trx_state`,`trx_autocommit`,`pid`,`program_name`) AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` in ('thread/sql/one_connection','thread/thread_pool/tp_one_connection')),concat(`pps`.`PROCESSLIST_USER`,'@',convert(`pps`.`PROCESSLIST_HOST` using utf8mb4)),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`sys`.`format_statement`(`pps`.`PROCESSLIST_INFO`) AS `current_statement`,`pps`.`EXECUTION_ENGINE` AS `execution_engine`,if((`esc`.`END_EVENT_ID` is null),format_pico_time(`esc`.`TIMER_WAIT`),NULL) AS `statement_latency`,if((`esc`.`END_EVENT_ID` is null),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,format_pico_time(`esc`.`LOCK_TIME`) AS `lock_latency`,format_pico_time(`esc`.`CPU_TIME`) AS `cpu_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`sys`.`format_statement`(`esc`.`SQL_TEXT`),NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),format_pico_time(`esc`.`TIMER_WAIT`),NULL) AS `last_statement_latency`,format_bytes(`mem`.`current_allocated`) AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(((`ewc`.`END_EVENT_ID` is null) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',convert(format_pico_time(`ewc`.`TIMER_WAIT`) using utf8mb4)) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,format_pico_time(`etc`.`TIMER_WAIT`) AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ps_check_lost_instrumentation`
--

/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `ps_check_lost_instrumentation` (`variable_name`,`variable_value`) AS select `performance_schema`.`global_status`.`VARIABLE_NAME` AS `variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `variable_value` from `performance_schema`.`global_status` where ((`performance_schema`.`global_status`.`VARIABLE_NAME` like 'perf%lost') and (`performance_schema`.`global_status`.`VARIABLE_VALUE` > 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_auto_increment_columns`
--

/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_auto_increment_columns` (`table_schema`,`table_name`,`column_name`,`data_type`,`column_type`,`is_signed`,`is_unsigned`,`max_value`,`auto_increment`,`auto_increment_ratio`) AS select `information_schema`.`columns`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`columns`.`TABLE_NAME` AS `TABLE_NAME`,`information_schema`.`columns`.`COLUMN_NAME` AS `COLUMN_NAME`,`information_schema`.`columns`.`DATA_TYPE` AS `DATA_TYPE`,`information_schema`.`columns`.`COLUMN_TYPE` AS `COLUMN_TYPE`,(locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) = 0) AS `is_signed`,(locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0) AS `is_unsigned`,((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1)) AS `max_value`,`information_schema`.`tables`.`AUTO_INCREMENT` AS `AUTO_INCREMENT`,(`information_schema`.`tables`.`AUTO_INCREMENT` / ((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1))) AS `auto_increment_ratio` from (`information_schema`.`COLUMNS` join `information_schema`.`TABLES` on(((`information_schema`.`columns`.`TABLE_SCHEMA` = `information_schema`.`tables`.`TABLE_SCHEMA`) and (`information_schema`.`columns`.`TABLE_NAME` = `information_schema`.`tables`.`TABLE_NAME`)))) where ((`information_schema`.`columns`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','performance_schema')) and (`information_schema`.`tables`.`TABLE_TYPE` = 'BASE TABLE') and (`information_schema`.`columns`.`EXTRA` = 'auto_increment')) order by (`information_schema`.`tables`.`AUTO_INCREMENT` / ((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1))) desc,((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_index_statistics` (`table_schema`,`table_name`,`index_name`,`rows_selected`,`select_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH`) AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE`) AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_DELETE`) AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_object_overview`
--

/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_object_overview` (`db`,`object_type`,`count`) AS select `information_schema`.`routines`.`ROUTINE_SCHEMA` AS `db`,`information_schema`.`routines`.`ROUTINE_TYPE` AS `object_type`,count(0) AS `count` from `information_schema`.`ROUTINES` group by `information_schema`.`routines`.`ROUTINE_SCHEMA`,`information_schema`.`routines`.`ROUTINE_TYPE` union select `information_schema`.`tables`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` AS `TABLE_TYPE`,count(0) AS `COUNT(*)` from `information_schema`.`TABLES` group by `information_schema`.`tables`.`TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` union select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,concat('INDEX (',`information_schema`.`statistics`.`INDEX_TYPE`,')') AS `CONCAT('INDEX (', INDEX_TYPE, ')')`,count(0) AS `COUNT(*)` from `information_schema`.`STATISTICS` group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`INDEX_TYPE` union select `information_schema`.`triggers`.`TRIGGER_SCHEMA` AS `TRIGGER_SCHEMA`,'TRIGGER' AS `TRIGGER`,count(0) AS `COUNT(*)` from `information_schema`.`TRIGGERS` group by `information_schema`.`triggers`.`TRIGGER_SCHEMA` union select `information_schema`.`events`.`EVENT_SCHEMA` AS `EVENT_SCHEMA`,'EVENT' AS `EVENT`,count(0) AS `COUNT(*)` from `information_schema`.`EVENTS` group by `information_schema`.`events`.`EVENT_SCHEMA` order by `db`,`object_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_redundant_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_redundant_indexes` (`table_schema`,`table_name`,`redundant_index_name`,`redundant_index_columns`,`redundant_index_non_unique`,`dominant_index_name`,`dominant_index_columns`,`dominant_index_non_unique`,`subpart_exists`,`sql_drop_index`) AS select `redundant_keys`.`table_schema` AS `table_schema`,`redundant_keys`.`table_name` AS `table_name`,`redundant_keys`.`index_name` AS `redundant_index_name`,`redundant_keys`.`index_columns` AS `redundant_index_columns`,`redundant_keys`.`non_unique` AS `redundant_index_non_unique`,`dominant_keys`.`index_name` AS `dominant_index_name`,`dominant_keys`.`index_columns` AS `dominant_index_columns`,`dominant_keys`.`non_unique` AS `dominant_index_non_unique`,if(((0 <> `redundant_keys`.`subpart_exists`) or (0 <> `dominant_keys`.`subpart_exists`)),1,0) AS `subpart_exists`,concat('ALTER TABLE `',`redundant_keys`.`table_schema`,'`.`',`redundant_keys`.`table_name`,'` DROP INDEX `',`redundant_keys`.`index_name`,'`') AS `sql_drop_index` from (`x$schema_flattened_keys` `redundant_keys` join `x$schema_flattened_keys` `dominant_keys` on(((`redundant_keys`.`table_schema` = `dominant_keys`.`table_schema`) and (`redundant_keys`.`table_name` = `dominant_keys`.`table_name`)))) where ((`redundant_keys`.`index_name` <> `dominant_keys`.`index_name`) and (((`redundant_keys`.`index_columns` = `dominant_keys`.`index_columns`) and ((`redundant_keys`.`non_unique` > `dominant_keys`.`non_unique`) or ((`redundant_keys`.`non_unique` = `dominant_keys`.`non_unique`) and (if((`redundant_keys`.`index_name` = 'PRIMARY'),'',`redundant_keys`.`index_name`) > if((`dominant_keys`.`index_name` = 'PRIMARY'),'',`dominant_keys`.`index_name`))))) or ((locate(concat(`redundant_keys`.`index_columns`,','),`dominant_keys`.`index_columns`) = 1) and (`redundant_keys`.`non_unique` = 1)) or ((locate(concat(`dominant_keys`.`index_columns`,','),`redundant_keys`.`index_columns`) = 1) and (`dominant_keys`.`non_unique` = 0)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_lock_waits` (`object_schema`,`object_name`,`waiting_thread_id`,`waiting_pid`,`waiting_account`,`waiting_lock_type`,`waiting_lock_duration`,`waiting_query`,`waiting_query_secs`,`waiting_query_rows_affected`,`waiting_query_rows_examined`,`blocking_thread_id`,`blocking_pid`,`blocking_account`,`blocking_lock_type`,`blocking_lock_duration`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`sys`.`format_statement`(`pt`.`PROCESSLIST_INFO`) AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics` (`table_schema`,`table_name`,`total_latency`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,format_pico_time(`pst`.`SUM_TIMER_WAIT`) AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,format_pico_time(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,format_pico_time(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,format_pico_time(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,format_pico_time(`fsbi`.`sum_timer_misc`) AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics_with_buffer` (`table_schema`,`table_name`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`,`innodb_buffer_allocated`,`innodb_buffer_data`,`innodb_buffer_free`,`innodb_buffer_pages`,`innodb_buffer_pages_hashed`,`innodb_buffer_pages_old`,`innodb_buffer_rows_cached`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,format_pico_time(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,format_pico_time(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,format_pico_time(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,format_pico_time(`fsbi`.`sum_timer_misc`) AS `io_misc_latency`,format_bytes(`ibp`.`allocated`) AS `innodb_buffer_allocated`,format_bytes(`ibp`.`data`) AS `innodb_buffer_data`,format_bytes((`ibp`.`allocated` - `ibp`.`data`)) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_tables_with_full_table_scans` (`object_schema`,`object_name`,`rows_full_scanned`,`latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT`) AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where ((`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_unused_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_unused_indexes` (`object_schema`,`object_name`,`index_name`) AS select `t`.`OBJECT_SCHEMA` AS `object_schema`,`t`.`OBJECT_NAME` AS `object_name`,`t`.`INDEX_NAME` AS `index_name` from (`performance_schema`.`table_io_waits_summary_by_index_usage` `t` join `information_schema`.`STATISTICS` `s` on(((`t`.`OBJECT_SCHEMA` = `information_schema`.`s`.`TABLE_SCHEMA`) and (`t`.`OBJECT_NAME` = `information_schema`.`s`.`TABLE_NAME`) and (`t`.`INDEX_NAME` = `information_schema`.`s`.`INDEX_NAME`)))) where ((`t`.`INDEX_NAME` is not null) and (`t`.`COUNT_STAR` = 0) and (`t`.`OBJECT_SCHEMA` <> 'mysql') and (`t`.`INDEX_NAME` <> 'PRIMARY') and (`information_schema`.`s`.`NON_UNIQUE` = 1) and (`information_schema`.`s`.`SEQ_IN_INDEX` = 1)) order by `t`.`OBJECT_SCHEMA`,`t`.`OBJECT_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session`
--

/*!50001 DROP VIEW IF EXISTS `session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session` AS select `processlist`.`thd_id` AS `thd_id`,`processlist`.`conn_id` AS `conn_id`,`processlist`.`user` AS `user`,`processlist`.`db` AS `db`,`processlist`.`command` AS `command`,`processlist`.`state` AS `state`,`processlist`.`time` AS `time`,`processlist`.`current_statement` AS `current_statement`,`processlist`.`execution_engine` AS `execution_engine`,`processlist`.`statement_latency` AS `statement_latency`,`processlist`.`progress` AS `progress`,`processlist`.`lock_latency` AS `lock_latency`,`processlist`.`cpu_latency` AS `cpu_latency`,`processlist`.`rows_examined` AS `rows_examined`,`processlist`.`rows_sent` AS `rows_sent`,`processlist`.`rows_affected` AS `rows_affected`,`processlist`.`tmp_tables` AS `tmp_tables`,`processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`processlist`.`full_scan` AS `full_scan`,`processlist`.`last_statement` AS `last_statement`,`processlist`.`last_statement_latency` AS `last_statement_latency`,`processlist`.`current_memory` AS `current_memory`,`processlist`.`last_wait` AS `last_wait`,`processlist`.`last_wait_latency` AS `last_wait_latency`,`processlist`.`source` AS `source`,`processlist`.`trx_latency` AS `trx_latency`,`processlist`.`trx_state` AS `trx_state`,`processlist`.`trx_autocommit` AS `trx_autocommit`,`processlist`.`pid` AS `pid`,`processlist`.`program_name` AS `program_name` from `processlist` where ((`processlist`.`conn_id` is not null) and (`processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session_ssl_status`
--

/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session_ssl_status` (`thread_id`,`ssl_version`,`ssl_cipher`,`ssl_sessions_reused`) AS select `sslver`.`THREAD_ID` AS `thread_id`,`sslver`.`VARIABLE_VALUE` AS `ssl_version`,`sslcip`.`VARIABLE_VALUE` AS `ssl_cipher`,`sslreuse`.`VARIABLE_VALUE` AS `ssl_sessions_reused` from ((`performance_schema`.`status_by_thread` `sslver` left join `performance_schema`.`status_by_thread` `sslcip` on(((`sslcip`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslcip`.`VARIABLE_NAME` = 'Ssl_cipher')))) left join `performance_schema`.`status_by_thread` `sslreuse` on(((`sslreuse`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslreuse`.`VARIABLE_NAME` = 'Ssl_sessions_reused')))) where (`sslver`.`VARIABLE_NAME` = 'Ssl_version') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statement_analysis` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`rows_affected`,`rows_affected_avg`,`tmp_tables`,`tmp_disk_tables`,`rows_sorted`,`sort_merge_passes`,`max_controlled_memory`,`max_total_memory`,`digest`,`first_seen`,`last_seen`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME`) AS `lock_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CPU_TIME`) AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,format_bytes(`performance_schema`.`events_statements_summary_by_digest`.`MAX_CONTROLLED_MEMORY`) AS `max_controlled_memory`,format_bytes(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TOTAL_MEMORY`) AS `max_total_memory`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_errors_or_warnings` (`query`,`db`,`exec_count`,`errors`,`error_pct`,`warnings`,`warning_pct`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_full_table_scans` (`query`,`db`,`exec_count`,`total_latency`,`no_index_used_count`,`no_good_index_used_count`,`no_index_used_pct`,`rows_sent`,`rows_examined`,`rows_sent_avg`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_runtimes_in_95th_percentile` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`stmts`.`DIGEST_TEXT`) AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,format_pico_time(`stmts`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`stmts`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`stmts`.`AVG_TIMER_WAIT`) AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_sorting` (`query`,`db`,`exec_count`,`total_latency`,`sort_merge_passes`,`avg_sort_merges`,`sorts_using_scans`,`sort_using_range`,`rows_sorted`,`avg_rows_sorted`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_temp_tables` (`query`,`db`,`exec_count`,`total_latency`,`memory_tmp_tables`,`disk_tmp_tables`,`avg_tmp_tables_per_query`,`tmp_tables_to_disk_pct`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary`
--

/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary` (`user`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_hosts`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,format_pico_time(sum(`stmt`.`total_latency`)) AS `statement_latency`,format_pico_time(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,format_pico_time(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,format_bytes(sum(`mem`.`current_allocated`)) AS `current_memory`,format_bytes(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `x$user_summary_by_statement_latency` `stmt` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `x$user_summary_by_file_io` `io` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `x$memory_by_user_by_current_bytes` `mem` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io` (`user`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io_type` (`user`,`event_name`,`total`,`latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_stages` (`user`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_latency` (`user`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME`)) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_type` (`user`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `version`
--

/*!50001 DROP VIEW IF EXISTS `version`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `version` (`sys_version`,`mysql_version`) AS select '2.1.2' AS `sys_version`,version() AS `mysql_version` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_avg_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(cast(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) as unsigned)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,format_pico_time(cast(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) as unsigned)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,format_pico_time(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_host_by_latency` (`host`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_user_by_latency` (`user`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_global_by_latency` (`events`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary` (`host`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_users`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,(sum(`stmt`.`total_latency`) / sum(`stmt`.`total`)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io` (`host`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io_type` (`host`,`event_name`,`total`,`total_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_stages` (`host`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_latency` (`host`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_type` (`host`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME` AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_schema` (`object_schema`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_table` (`object_schema`,`object_name`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_lock_waits` (`wait_started`,`wait_age`,`wait_age_secs`,`locked_table`,`locked_table_schema`,`locked_table_name`,`locked_table_partition`,`locked_table_subpartition`,`locked_index`,`locked_type`,`waiting_trx_id`,`waiting_trx_started`,`waiting_trx_age`,`waiting_trx_rows_locked`,`waiting_trx_rows_modified`,`waiting_pid`,`waiting_query`,`waiting_lock_id`,`waiting_lock_mode`,`blocking_trx_id`,`blocking_pid`,`blocking_query`,`blocking_lock_id`,`blocking_lock_mode`,`blocking_trx_started`,`blocking_trx_age`,`blocking_trx_rows_locked`,`blocking_trx_rows_modified`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,concat(`sys`.`quote_identifier`(`rl`.`OBJECT_SCHEMA`),'.',`sys`.`quote_identifier`(`rl`.`OBJECT_NAME`)) AS `locked_table`,`rl`.`OBJECT_SCHEMA` AS `locked_table_schema`,`rl`.`OBJECT_NAME` AS `locked_table_name`,`rl`.`PARTITION_NAME` AS `locked_table_partition`,`rl`.`SUBPARTITION_NAME` AS `locked_table_subpartition`,`rl`.`INDEX_NAME` AS `locked_index`,`rl`.`LOCK_TYPE` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`r`.`trx_query` AS `waiting_query`,`rl`.`ENGINE_LOCK_ID` AS `waiting_lock_id`,`rl`.`LOCK_MODE` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`b`.`trx_query` AS `blocking_query`,`bl`.`ENGINE_LOCK_ID` AS `blocking_lock_id`,`bl`.`LOCK_MODE` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`performance_schema`.`data_lock_waits` `w` join `information_schema`.`INNODB_TRX` `b` on((`b`.`trx_id` = cast(`w`.`BLOCKING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `information_schema`.`INNODB_TRX` `r` on((`r`.`trx_id` = cast(`w`.`REQUESTING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `performance_schema`.`data_locks` `bl` on((`bl`.`ENGINE_LOCK_ID` = `w`.`BLOCKING_ENGINE_LOCK_ID`))) join `performance_schema`.`data_locks` `rl` on((`rl`.`ENGINE_LOCK_ID` = `w`.`REQUESTING_ENGINE_LOCK_ID`))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_by_thread_by_latency` (`user`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`thread_id`,`processlist_id`) AS select if((`performance_schema`.`threads`.`PROCESSLIST_ID` is null),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',convert(`performance_schema`.`threads`.`PROCESSLIST_HOST` using utf8mb4))) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_bytes` (`file`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_write`,`total`,`write_pct`) AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00) AS `avg_write`,(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_latency` (`file`,`total`,`total_latency`,`count_read`,`read_latency`,`count_write`,`write_latency`,`count_misc`,`misc_latency`) AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC` AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_bytes` (`event_name`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`,`total_requested`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT` AS `min_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written`,(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_latency` (`event_name`,`total`,`total_latency`,`avg_latency`,`max_latency`,`read_latency`,`write_latency`,`misc_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC` AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$latest_file_io` (`thread`,`file`,`latency`,`operation`,`requested`) AS select if((`information_schema`.`processlist`.`ID` is null),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),convert(concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`) using utf8mb4)) AS `thread`,`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` AS `file`,`performance_schema`.`events_waits_history_long`.`TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES` AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`PROCESSLIST` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_host_by_current_bytes` (`host`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_thread_by_current_bytes` (`thread_id`,`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select `t`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `t`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_user_by_current_bytes` (`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_by_current_bytes` (`event_name`,`current_count`,`current_alloc`,`current_avg_alloc`,`high_count`,`high_alloc`,`high_avg_alloc`) AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` AS `current_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` AS `high_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_total` (`total_allocated`) AS select sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$processlist`
--

/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$processlist` (`thd_id`,`conn_id`,`user`,`db`,`command`,`state`,`time`,`current_statement`,`execution_engine`,`statement_latency`,`progress`,`lock_latency`,`cpu_latency`,`rows_examined`,`rows_sent`,`rows_affected`,`tmp_tables`,`tmp_disk_tables`,`full_scan`,`last_statement`,`last_statement_latency`,`current_memory`,`last_wait`,`last_wait_latency`,`source`,`trx_latency`,`trx_state`,`trx_autocommit`,`pid`,`program_name`) AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` in ('thread/sql/one_connection','thread/thread_pool/tp_one_connection')),concat(`pps`.`PROCESSLIST_USER`,'@',convert(`pps`.`PROCESSLIST_HOST` using utf8mb4)),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`pps`.`PROCESSLIST_INFO` AS `current_statement`,`pps`.`EXECUTION_ENGINE` AS `execution_engine`,if((`esc`.`END_EVENT_ID` is null),`esc`.`TIMER_WAIT`,NULL) AS `statement_latency`,if((`esc`.`END_EVENT_ID` is null),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,`esc`.`LOCK_TIME` AS `lock_latency`,`esc`.`CPU_TIME` AS `cpu_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`SQL_TEXT`,NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`TIMER_WAIT`,NULL) AS `last_statement_latency`,`mem`.`current_allocated` AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(((`ewc`.`END_EVENT_ID` is null) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',`ewc`.`TIMER_WAIT`) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`etc`.`TIMER_WAIT` AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_95th_percentile_by_avg_us` (`avg_us`,`percentile`) AS select `s2`.`avg_us` AS `avg_us`,ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) AS `percentile` from (`x$ps_digest_avg_latency_distribution` `s1` join `x$ps_digest_avg_latency_distribution` `s2` on((`s1`.`avg_us` <= `s2`.`avg_us`))) group by `s2`.`avg_us` having (ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) > 0.95) order by `percentile` limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_avg_latency_distribution`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_avg_latency_distribution` (`cnt`,`avg_us`) AS select count(0) AS `cnt`,round((`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` / 1000000),0) AS `avg_us` from `performance_schema`.`events_statements_summary_by_digest` group by `avg_us` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_schema_table_statistics_io`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_schema_table_statistics_io` (`table_schema`,`table_name`,`count_read`,`sum_number_of_bytes_read`,`sum_timer_read`,`count_write`,`sum_number_of_bytes_write`,`sum_timer_write`,`count_misc`,`sum_timer_misc`) AS select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `table_schema`,`table_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_flattened_keys`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_flattened_keys` (`table_schema`,`table_name`,`index_name`,`non_unique`,`subpart_exists`,`index_columns`) AS select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`statistics`.`TABLE_NAME` AS `TABLE_NAME`,`information_schema`.`statistics`.`INDEX_NAME` AS `INDEX_NAME`,max(`information_schema`.`statistics`.`NON_UNIQUE`) AS `non_unique`,max(if((`information_schema`.`statistics`.`SUB_PART` is null),0,1)) AS `subpart_exists`,group_concat(`information_schema`.`statistics`.`COLUMN_NAME` order by `information_schema`.`statistics`.`SEQ_IN_INDEX` ASC separator ',') AS `index_columns` from `information_schema`.`STATISTICS` where ((`information_schema`.`statistics`.`INDEX_TYPE` = 'BTREE') and (`information_schema`.`statistics`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','PERFORMANCE_SCHEMA'))) group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`TABLE_NAME`,`information_schema`.`statistics`.`INDEX_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_index_statistics` (`table_schema`,`table_name`,`index_name`,`rows_selected`,`select_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH` AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE` AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_DELETE` AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_lock_waits` (`object_schema`,`object_name`,`waiting_thread_id`,`waiting_pid`,`waiting_account`,`waiting_lock_type`,`waiting_lock_duration`,`waiting_query`,`waiting_query_secs`,`waiting_query_rows_affected`,`waiting_query_rows_examined`,`blocking_thread_id`,`blocking_pid`,`blocking_account`,`blocking_lock_type`,`blocking_lock_duration`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`pt`.`PROCESSLIST_INFO` AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics` (`table_schema`,`table_name`,`total_latency`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`SUM_TIMER_WAIT` AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics_with_buffer` (`table_schema`,`table_name`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`,`innodb_buffer_allocated`,`innodb_buffer_data`,`innodb_buffer_free`,`innodb_buffer_pages`,`innodb_buffer_pages_hashed`,`innodb_buffer_pages_old`,`innodb_buffer_rows_cached`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency`,`ibp`.`allocated` AS `innodb_buffer_allocated`,`ibp`.`data` AS `innodb_buffer_data`,(`ibp`.`allocated` - `ibp`.`data`) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_tables_with_full_table_scans` (`object_schema`,`object_name`,`rows_full_scanned`,`latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where ((`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$session`
--

/*!50001 DROP VIEW IF EXISTS `x$session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$session` AS select `x$processlist`.`thd_id` AS `thd_id`,`x$processlist`.`conn_id` AS `conn_id`,`x$processlist`.`user` AS `user`,`x$processlist`.`db` AS `db`,`x$processlist`.`command` AS `command`,`x$processlist`.`state` AS `state`,`x$processlist`.`time` AS `time`,`x$processlist`.`current_statement` AS `current_statement`,`x$processlist`.`execution_engine` AS `execution_engine`,`x$processlist`.`statement_latency` AS `statement_latency`,`x$processlist`.`progress` AS `progress`,`x$processlist`.`lock_latency` AS `lock_latency`,`x$processlist`.`cpu_latency` AS `cpu_latency`,`x$processlist`.`rows_examined` AS `rows_examined`,`x$processlist`.`rows_sent` AS `rows_sent`,`x$processlist`.`rows_affected` AS `rows_affected`,`x$processlist`.`tmp_tables` AS `tmp_tables`,`x$processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`x$processlist`.`full_scan` AS `full_scan`,`x$processlist`.`last_statement` AS `last_statement`,`x$processlist`.`last_statement_latency` AS `last_statement_latency`,`x$processlist`.`current_memory` AS `current_memory`,`x$processlist`.`last_wait` AS `last_wait`,`x$processlist`.`last_wait_latency` AS `last_wait_latency`,`x$processlist`.`source` AS `source`,`x$processlist`.`trx_latency` AS `trx_latency`,`x$processlist`.`trx_state` AS `trx_state`,`x$processlist`.`trx_autocommit` AS `trx_autocommit`,`x$processlist`.`pid` AS `pid`,`x$processlist`.`program_name` AS `program_name` from `x$processlist` where ((`x$processlist`.`conn_id` is not null) and (`x$processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statement_analysis` (`query`,`db`,`full_scan`,`exec_count`,`exec_secondary_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`rows_affected`,`rows_affected_avg`,`tmp_tables`,`tmp_disk_tables`,`rows_sorted`,`sort_merge_passes`,`max_controlled_memory`,`max_total_memory`,`digest`,`first_seen`,`last_seen`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_SECONDARY` AS `exec_secondary_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CPU_TIME` AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_CONTROLLED_MEMORY` AS `max_controlled_memory`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TOTAL_MEMORY` AS `max_total_memory`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_errors_or_warnings` (`query`,`db`,`exec_count`,`errors`,`error_pct`,`warnings`,`warning_pct`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_full_table_scans` (`query`,`db`,`exec_count`,`total_latency`,`no_index_used_count`,`no_good_index_used_count`,`no_index_used_pct`,`rows_sent`,`rows_examined`,`rows_sent_avg`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_runtimes_in_95th_percentile` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `stmts`.`DIGEST_TEXT` AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`stmts`.`SUM_TIMER_WAIT` AS `total_latency`,`stmts`.`MAX_TIMER_WAIT` AS `max_latency`,`stmts`.`AVG_TIMER_WAIT` AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_sorting` (`query`,`db`,`exec_count`,`total_latency`,`sort_merge_passes`,`avg_sort_merges`,`sorts_using_scans`,`sort_using_range`,`rows_sorted`,`avg_rows_sorted`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_temp_tables` (`query`,`db`,`exec_count`,`total_latency`,`memory_tmp_tables`,`disk_tmp_tables`,`avg_tmp_tables_per_query`,`tmp_tables_to_disk_pct`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary` (`user`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_hosts`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `x$user_summary_by_statement_latency` `stmt` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `x$user_summary_by_file_io` `io` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `x$memory_by_user_by_current_bytes` `mem` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io` (`user`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io_type` (`user`,`event_name`,`total`,`latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_stages` (`user`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_latency` (`user`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_type` (`user`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME` AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_avg_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_host_by_latency` (`host`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_user_by_latency` (`user`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_global_by_latency` (`events`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-30  5:21:06
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: wordy
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `leaderboard`
--

DROP TABLE IF EXISTS `leaderboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leaderboard` (
  `iduser` int NOT NULL,
  `username` varchar(45) NOT NULL,
  `wins` int NOT NULL,
  KEY `iduser_idx` (`iduser`),
  KEY `username_idx` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaderboard`
--

LOCK TABLES `leaderboard` WRITE;
/*!40000 ALTER TABLE `leaderboard` DISABLE KEYS */;
INSERT INTO `leaderboard` VALUES (2,'mik',16),(1,'bon',12),(3,'san',5),(4,'ron',5),(5,'she',9),(6,'kai',14);
/*!40000 ALTER TABLE `leaderboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `longestwords`
--

DROP TABLE IF EXISTS `longestwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `longestwords` (
  `words` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `length` int DEFAULT NULL,
  KEY `username_idx` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `longestwords`
--

LOCK TABLES `longestwords` WRITE;
/*!40000 ALTER TABLE `longestwords` DISABLE KEYS */;
INSERT INTO `longestwords` VALUES ('septuagenarians','san',15),('proportioned','ron',12),('militaries','kai',10),('cobblestones','she',12),('fellowships','bon',11),('abandoning','mik',10),('abound','mik',6),('audio','mik',5),('bumph','mik',5),('alcoves','ron',7),('agonies','san',7),('frolic','san',6),('chivy','san',5),('agonies','she',7),('admen','she',5),('cipher','she',6),('archduke','mik',8),('aspic','mik',5),('blank','mik',5),('brand','mik',5),('brand','mik',5),('ailed','mik',5),('amours','she',6),('ample','she',5),('closer','she',6),('anyhow','she',6),('adieux','mik',6),('adieus','mik',6),('agile','mik',5),('audible','mik',7),('disown','mik',6),('dourly','mik',6),('vodka','mik',5),('goads','mik',5),('admen','mik',5),('abode','mik',5),('phobia','mik',6),('vodka','mik',5);
/*!40000 ALTER TABLE `longestwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `roomNumber` varchar(50) NOT NULL,
  `playerCount` int DEFAULT NULL,
  PRIMARY KEY (`roomNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES ('06296',0),('40097',1),('64467',0),('35621',1),('89783',0),('86671',0),('31037',0),('00768',3),('93480',1),('17752',1),('61049',1),('06289',3),('62667',1),('68268',1),('16790',1),('15122',1),('11581',1),('04950',2),('87426',1),('45680',1),('99422',1),('27357',1),('45908',1),('84975',1),('97348',0),('44930',1),('28607',1),('95048',1),('68110',1),('23626',1),('60360',1),('21364',1),('16954',1),('26352',1),('45696',1),('17299',1),('96103',1),('28231',1),('30410',1),('64290',1),('49597',1),('24403',1),('18974',1),('85548',1),('73927',1),('35651',0),('43120',1),('44978',0);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idUsers` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `loggedIn` tinyint NOT NULL DEFAULT '0',
  `isInGame` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`idUsers`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'bon','nie',0,0),(2,'mik','kita',0,0),(3,'san','tea',0,0),(4,'ron','nor',0,0),(5,'she','ena',0,0),(6,'kai','zer',0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-30  5:21:07
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sample
-- ------------------------------------------------------
-- Server version	8.0.31

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-30  5:21:07
