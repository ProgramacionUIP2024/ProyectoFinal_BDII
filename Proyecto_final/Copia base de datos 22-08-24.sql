CREATE DATABASE  IF NOT EXISTS `proyecto_final` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyecto_final`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: proyecto.cjsmemsiiaxb.us-east-1.rds.amazonaws.com    Database: proyecto_final
-- ------------------------------------------------------
-- Server version	8.0.35

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

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Temporary view structure for view `Mentoria_mentor_total`
--

DROP TABLE IF EXISTS `Mentoria_mentor_total`;
/*!50001 DROP VIEW IF EXISTS `Mentoria_mentor_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Mentoria_mentor_total` AS SELECT 
 1 AS `id_mentor`,
 1 AS `fullname`,
 1 AS `specialty`,
 1 AS `total_mentorings`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Pasantia_disponible`
--

DROP TABLE IF EXISTS `Pasantia_disponible`;
/*!50001 DROP VIEW IF EXISTS `Pasantia_disponible`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Pasantia_disponible` AS SELECT 
 1 AS `id_internships`,
 1 AS `title`,
 1 AS `date_start`,
 1 AS `date_end`,
 1 AS `status`,
 1 AS `company`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `analisis_proyecto`
--

DROP TABLE IF EXISTS `analisis_proyecto`;
/*!50001 DROP VIEW IF EXISTS `analisis_proyecto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `analisis_proyecto` AS SELECT 
 1 AS `id_project`,
 1 AS `title`,
 1 AS `description`,
 1 AS `status`,
 1 AS `date_start`,
 1 AS `date_end`,
 1 AS `country`,
 1 AS `duration_days`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id_company` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id_company`),
  KEY `created_by_id` (`created_by_id`),
  CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Martinez, Anderson and Kane','ashley98@smith.com','06949 Reynolds Plain\nMurphyside, HI 21345','594-639-3156','2020-09-07 11:42:33','2020-05-15 22:03:38','Tunisia',9),(2,'Hamilton, Herman and Clark','alexwilliams@woods.biz','06154 Robert Square\nRobinsonmouth, WV 77391','234-775-6828x2995','2021-05-08 10:59:21','2020-03-30 11:57:09','Estonia',145),(3,'Martinez, Middleton and Walters','jennifersimmons@spencer-logan.com','043 Mack Crest Apt. 488\nJohnsonmouth, WY 31926','+1-512-656-8697x0081','2020-05-26 13:18:25','2024-05-01 13:56:06','Ethiopia',130),(4,'Russell Ltd','pgreene@barker-powers.com','598 Jay Parks Suite 465\nMatahaven, MD 76754','+1-522-244-9650','2020-08-24 21:59:04','2022-10-26 15:23:53','Rwanda',144),(5,'Malone, Ortega and Davis','beth15@dunn-booker.info','29494 Andrew Tunnel\nAdamsview, TX 91114','+1-316-909-3178x563','2023-01-16 09:28:34','2020-12-19 17:44:43','Niue',51),(6,'Bright Group','christopher33@young.com','66592 Rodriguez Court Apt. 820\nNorth Patrickshire, AS 47311','206-859-5977x977','2021-07-20 13:27:21','2021-05-03 21:27:46','Saint Helena',72),(7,'Hall-West','erica56@martinez.com','76307 Anna Valley Suite 175\nGreeneport, UT 01170','001-418-910-5655x716','2020-10-28 23:23:45','2020-03-27 05:05:22','Papua New Guinea',110),(8,'Green, Alexander and Sanchez','danielle62@stone.com','031 Daniels Flats Apt. 046\nJasonville, NV 17032','+1-757-303-3271x587','2020-06-21 11:31:03','2021-06-23 08:33:28','Iran',21),(9,'Duncan, Hernandez and Byrd','tgraham@rodriguez-ryan.com','7474 Zhang Way\nWest Jillian, WV 04934','725.864.4265x408','2020-01-01 13:58:40','2023-02-12 01:59:40','Heard Island and McDonald Islands',111),(10,'Mann PLC','mitchelljames@brown.com','679 Andrea Extensions\nJesseton, VT 23889','530.533.9068','2020-02-19 10:19:02','2020-01-29 21:19:35','Saudi Arabia',9),(11,'Ray, Richard and Chan','tarasmith@smith-johnson.biz','686 Lewis Estates\nMatthewchester, LA 46173','4292157813','2021-01-31 21:45:04','2023-05-09 15:06:58','Guam',58),(12,'Webb-Davis','donaldanderson@foster-hughes.com','1203 Rogers Wall\nReevesmouth, DE 08160','+1-906-453-3768x94660','2022-06-25 01:07:20','2023-04-05 03:19:31','Niue',112),(13,'Sanders, Sanchez and Tyler','katieadams@gilbert-bennett.com','08551 Dawn Ramp Suite 537\nLake Elizabethburgh, PR 18081','902.209.9787x51656','2023-11-17 05:48:17','2021-09-29 17:41:08','Namibia',50),(14,'Maldonado LLC','wmorris@wagner.biz','8901 Robert Lake\nNorth Briantown, SD 17756','515.715.4693x7987','2024-05-25 21:00:41','2020-12-21 16:34:43','Switzerland',3),(15,'Torres Inc','christopher49@gardner.biz','83704 Ronald Summit\nVirginiafort, ND 22163','+1-446-909-8823','2021-01-23 10:27:17','2022-09-13 12:35:05','Libyan Arab Jamahiriya',77),(16,'Wright Group','wcollins@valdez-rodriguez.com','57440 Karla Island\nWhitneyburgh, WI 55006','786-941-7819','2024-04-07 11:24:30','2021-10-22 16:09:11','Mauritius',112),(17,'Perez-Burgess','julie72@watson.net','020 Kathleen Mill Apt. 203\nWest Christophermouth, VI 72759','707-528-7428','2022-08-03 11:16:19','2023-09-24 10:39:24','Saint Helena',84),(18,'Collins Ltd','marcus31@robles.org','4471 Shah Radial Suite 229\nSouth Ginashire, TN 83786','718.938.1552x40749','2023-06-17 07:27:39','2020-02-14 02:28:18','Brazil',93),(19,'Knight Ltd','robertsingh@ryan-jones.com','85267 Judy Knolls Apt. 310\nAshleyfort, MD 24341','548-365-9566','2021-09-18 20:37:35','2020-01-04 02:52:28','Monaco',139),(20,'Lawrence Inc','davidsonnicole@young.com','0575 Kimberly Cliff Apt. 796\nEast Brianfort, CO 19452','240-819-5788','2023-08-29 10:58:16','2020-09-09 07:19:42','Switzerland',7),(21,'Villa-Black','ecurtis@clark.com','Unit 8396 Box 3939\nDPO AA 60834','923.911.6999x118','2020-04-07 18:19:59','2020-01-17 18:02:51','Yemen',119),(22,'Meadows, Taylor and Williams','brittany69@cruz-cook.com','733 Patricia Pass Apt. 979\nAustinview, KS 71062','590.362.5957','2021-09-19 08:45:05','2020-10-10 19:58:15','Fiji',87),(23,'Young Group','david44@ferguson-anderson.net','9162 Ray Cape Suite 130\nDebrachester, VA 29559','729-491-3791','2024-02-18 14:42:23','2022-01-08 17:05:48','Tanzania',132),(24,'Ray-Terry','daniel25@travis.net','751 Arias Flats Suite 953\nJameshaven, AR 83659','001-484-496-6466x10651','2021-12-19 06:54:08','2021-06-15 15:35:26','Mozambique',60),(25,'King, Conrad and Walker','kevinmartinez@white.com','796 Keller Terrace Suite 280\nJustinmouth, NY 77892','260-754-8074x799','2022-10-22 09:14:17','2020-04-06 09:12:26','Pitcairn Islands',100),(26,'West-Frazier','carlos61@morgan-alvarez.net','9816 Robert Springs Suite 879\nWest Jill, MP 72978','+1-287-802-9847x7035','2023-11-22 18:36:35','2021-06-16 21:05:16','Brazil',53),(27,'Reid-Estes','timothy73@clark-white.biz','9433 Vincent Street Apt. 463\nSouth Penny, ID 56357','(456)237-9606','2021-11-19 10:26:16','2024-06-17 17:53:57','Andorra',52),(28,'Brandt, Santana and Martinez','donalddickerson@serrano.org','04620 Phillips Grove\nFloydmouth, NC 19410','945-384-7397x84401','2023-04-20 01:27:16','2021-07-26 02:28:54','Turkey',76),(29,'Johnson Ltd','arellanosean@miranda.org','572 Christine Junction\nEast Sarahton, RI 56752','+1-984-250-0010x043','2020-05-19 14:27:44','2020-05-20 08:22:45','San Marino',82),(30,'Barnes, Duncan and Morrow','devinfarmer@roberts.com','54530 Thomas Drives Apt. 349\nDavisside, CT 71459','550.462.1712','2020-03-29 19:27:11','2020-10-23 07:30:14','Mongolia',112),(31,'Paul-Callahan','mary93@olson-schultz.com','019 John Fort\nSouth Pamela, NC 52504','(209)710-5882','2020-04-27 05:31:18','2021-05-27 01:30:37','Taiwan',102),(32,'Davis-Cobb','edward74@williams.info','438 Jennings Trafficway Suite 467\nSouth Robertchester, UT 07873','2808926249','2023-12-08 09:17:50','2024-01-14 11:28:11','Uruguay',52),(33,'Becker, Jackson and Jackson','mcdonaldjillian@white.net','Unit 6037 Box 2656\nDPO AP 86428','458-378-7995x474','2023-04-22 15:31:21','2023-05-13 12:01:05','Norway',4),(34,'Peck, Hayes and Howard','rodney71@barry-hicks.com','PSC 4448, Box 1395\nAPO AP 57212','001-730-280-2001x252','2020-06-09 20:04:11','2022-08-08 17:48:02','United States Virgin Islands',20),(35,'Gillespie, Sharp and Henderson','edwardssarah@thomas.com','6902 Washington Burg\nPerryville, OH 67534','001-301-781-6296x593','2023-05-24 22:29:08','2023-01-25 21:04:20','Turks and Caicos Islands',96),(36,'Wilson-Boyd','jason87@ellis.com','29947 Luke Village\nJoshuafort, CO 18999','762.277.9074x537','2024-02-01 04:12:08','2020-01-21 21:28:15','Finland',17),(37,'Calderon Group','mirandamendez@coleman-johnson.com','464 Berry Fall Apt. 634\nNorth Jennifer, ID 49828','(894)921-0894','2020-02-01 09:36:12','2023-03-14 20:21:39','Uzbekistan',35),(38,'Pratt, Acosta and Lane','ihorn@rios-estrada.com','1017 Moore Forks Apt. 255\nNorth Davidmouth, CA 60501','3308250687','2022-10-10 00:38:04','2020-02-08 03:54:24','Vietnam',61),(39,'Cummings-Brock','jacksonamanda@reynolds.com','6631 Sandra Falls Suite 306\nPort Diane, TX 51290','698.758.3428','2022-12-18 14:43:08','2024-02-16 18:41:18','Saint Pierre and Miquelon',53),(40,'Moran-Garza','patriciamorris@moore.com','5918 Jeffrey Hills\nBruceville, VI 02928','488.522.7416x3143','2023-06-10 12:39:37','2023-05-16 07:05:39','Luxembourg',47),(41,'Rasmussen-Parks','melindasuarez@huang-wright.org','USNV Rodriguez\nFPO AA 23681','001-421-669-4150x11706','2020-12-14 06:49:36','2020-06-03 00:50:49','Antigua and Barbuda',70),(42,'Brown, Melendez and Oliver','nicholas12@leon.com','2222 Castillo Parkway Apt. 401\nSullivanburgh, VA 71200','750-220-0483','2023-02-24 20:12:59','2023-01-12 05:40:52','Angola',37),(43,'Cook-Moore','andersonkevin@bell.net','PSC 4156, Box 8617\nAPO AE 17785','+1-773-239-9019x5961','2024-02-08 17:39:50','2020-01-24 10:59:38','United States Virgin Islands',62),(44,'Ortiz-Swanson','liuchristina@cortez.info','9112 Rachel Circle\nNew Jamesfort, SD 53839','954-449-9193x611','2022-05-25 17:54:32','2021-08-09 02:43:16','British Indian Ocean Territory (Chagos Archipelago)',35),(45,'Mejia Ltd','sancheztroy@anderson-becker.com','854 Shelly Stream\nHoodfurt, LA 36239','8238825665','2023-03-14 13:34:27','2021-06-14 03:22:48','France',31),(46,'Smith LLC','timothygarcia@cannon.net','5888 David Shores Apt. 853\nNorth Victoria, GU 53084','469.525.3203x78811','2023-08-13 22:03:00','2023-07-20 00:06:10','Northern Mariana Islands',7),(47,'Rivera, Ellis and Oconnell','jeremy38@perez.com','008 Gregory Trail Apt. 041\nJamesfurt, OK 60046','(739)917-6214x96595','2023-06-27 21:38:52','2021-11-12 22:13:07','Indonesia',117),(48,'Flores, Nguyen and Sanchez','christopherhenderson@martinez.com','7117 Yates Fords\nPort Margaretton, VA 34660','(722)305-9341x2775','2024-08-09 16:17:44','2024-01-12 03:08:51','Honduras',89),(49,'Garrett, Turner and Ortiz','wendycastillo@kramer.com','USNS Russell\nFPO AE 56578','001-218-548-6213','2020-05-16 08:19:43','2021-04-22 14:52:16','Haiti',98),(50,'Brown Inc','scotttaylor@lee-schneider.com','82458 Mcbride Manor\nLopezbury, TX 12705','+1-650-830-0823x6063','2022-04-16 05:32:32','2023-05-11 05:19:37','Cayman Islands',71);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `compañia_activa`
--

DROP TABLE IF EXISTS `compañia_activa`;
/*!50001 DROP VIEW IF EXISTS `compañia_activa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `compañia_activa` AS SELECT 
 1 AS `id_company`,
 1 AS `company_name`,
 1 AS `email`,
 1 AS `location`,
 1 AS `phone`,
 1 AS `country`,
 1 AS `user_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `compañia_estado`
--

DROP TABLE IF EXISTS `compañia_estado`;
/*!50001 DROP VIEW IF EXISTS `compañia_estado`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `compañia_estado` AS SELECT 
 1 AS `id_company`,
 1 AS `company_name`,
 1 AS `email`,
 1 AS `location`,
 1 AS `phone`,
 1 AS `country`,
 1 AS `user_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `compañia_pais`
--

DROP TABLE IF EXISTS `compañia_pais`;
/*!50001 DROP VIEW IF EXISTS `compañia_pais`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `compañia_pais` AS SELECT 
 1 AS `country`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `especialidades_mentores`
--

DROP TABLE IF EXISTS `especialidades_mentores`;
/*!50001 DROP VIEW IF EXISTS `especialidades_mentores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `especialidades_mentores` AS SELECT 
 1 AS `id_mentor`,
 1 AS `fullname`,
 1 AS `specialty`,
 1 AS `profession`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id_event` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `time_start` time DEFAULT NULL,
  `time_end` time DEFAULT NULL,
  `location` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int DEFAULT NULL,
  `asocieted_company` int DEFAULT NULL,
  `type_event` varchar(255) DEFAULT NULL,
  `country` text,
  PRIMARY KEY (`id_event`),
  KEY `created_by_id` (`created_by_id`),
  KEY `asocieted_company` (`asocieted_company`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id_user`),
  CONSTRAINT `events_ibfk_2` FOREIGN KEY (`asocieted_company`) REFERENCES `companies` (`id_company`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Woman sit decide same blue five draw.','Many decade conference effect raise end physical concern. Concern window difficult daughter.\nProve key human property weight appear. Whom level low meeting experience.','2023-05-27','2023-04-10','10:30:45','12:36:21','8914 Washington Rapids Apt. 476\nNorth Rachel, DC 38176','2022-10-04 12:51:43','2023-10-05 06:06:29',113,12,'general','Gibraltar'),(2,'Fact drug even.','Full your their seat treatment. Baby always might same. More PM security simply analysis own.\nEach choose voice forward. Other many attention. Role something save activity girl.','2024-01-17','2021-02-07','15:40:00','02:08:19','2670 John Point Apt. 863\nLake Andrewborough, LA 84567','2020-11-10 05:54:19','2022-02-21 10:31:11',23,43,'rock','Niue'),(3,'Scientist end southern.','Impact assume write. Development shake high attack environment heavy.\nAdmit area customer seven give senior. Child already happen assume. Culture onto local act enjoy three.','2022-08-19','2022-08-09','14:24:20','21:36:47','27862 Emily Hills\nPort Taylor, VA 51546','2020-12-24 16:27:32','2020-02-01 06:23:10',119,32,'issue','Christmas Island'),(4,'Food night unit serious quite.','Board which half each affect draw. Unit million bank poor left southern authority. Cover Congress generation in street step various action.','2021-03-02','2023-09-11','06:39:12','07:49:46','88274 Kane Vista Apt. 465\nMartinbury, FL 18552','2020-07-05 09:08:44','2023-08-27 18:22:51',32,20,'work','Vietnam'),(5,'Final claim the indicate eat none edge.','Will note later city. Soon because gas system. Other first financial society his such measure.','2022-02-18','2024-03-30','08:00:08','17:18:19','35354 Mcclain Street\nWest Thomasborough, KS 44639','2021-09-21 19:19:48','2022-11-08 10:47:18',99,37,'Congress','Faroe Islands'),(6,'Apply eight we coach improve first heart affect.','Chair decade staff sing dark. Address answer anything former also.\nAssume forward full with charge. Be least establish type. Understand in north serve not since.','2022-02-06','2023-05-12','07:01:03','22:21:14','80497 Janet Dale Suite 969\nJoystad, IL 17314','2023-09-10 20:26:17','2020-02-03 07:40:43',17,28,'today','Armenia'),(7,'Defense teacher field.','Fall vote character care face away sport. Few hard out than condition understand. Those down behind.','2022-12-23','2023-10-06','01:39:28','02:29:23','21525 Richard Estates\nNew Marvin, MO 09787','2024-06-20 18:27:37','2024-02-12 21:39:54',143,5,'budget','Liechtenstein'),(8,'Not within out office discuss truth picture.','Successful mind experience quickly. Follow arm article certain should. Professor dream institution window.\nDuring near executive heart.','2023-12-18','2023-11-08','22:37:09','22:45:11','868 Justin Meadows\nJosephville, KY 80306','2023-04-19 20:32:18','2024-07-17 22:03:08',150,10,'himself','Nicaragua'),(9,'Here without ok large phone head conference.','Care care director standard its mission town. Ahead try theory of capital religious down. After fish daughter final.','2022-04-10','2024-02-17','20:44:59','08:39:51','0317 Perry Spring Suite 970\nWest John, IL 23424','2020-10-08 17:52:47','2020-04-16 11:57:14',5,4,'project','Korea'),(10,'Each science fine many national process wish.','Physical near small interview. Week site rock today from scene. Book realize again.\nField agency whether individual would return.','2024-02-16','2022-12-10','16:48:48','13:45:27','95088 Chase Spur Apt. 656\nHernandezview, CT 11363','2020-08-02 12:29:57','2023-11-20 17:39:18',99,34,'training','Cook Islands'),(11,'Property south few analysis quite large baby.','Story increase base drive food these we. Something perform catch attention cut project. Perform half deep factor.','2022-09-30','2021-04-23','00:33:45','02:09:16','USNS Johnson\nFPO AE 22684','2023-07-05 05:20:15','2021-06-01 10:18:13',64,4,'gas','Congo'),(12,'Set institution happy.','Bill result blue. Pass star traditional impact tree bar record popular.\nInternational everybody indicate share suggest full story. Bit dark character quite across level.','2023-04-10','2022-06-10','03:56:08','14:54:26','468 Larry Mills\nWiseside, AK 78377','2022-11-18 15:26:51','2023-03-11 12:15:13',115,40,'spend','United States Virgin Islands'),(13,'Into most maybe pressure air development.','Authority professor conference space college commercial. Imagine present rock surface language.','2024-07-25','2021-07-19','15:45:20','06:27:36','02447 Bryan Motorway\nBakerfurt, FL 26367','2024-06-07 19:23:57','2021-01-29 20:04:15',18,36,'majority','Jordan'),(14,'Choice office idea probably fly listen able.','Likely truth age student according consider east real. Cut car listen hit big play suddenly.\nEveryone tell under while father born station.\nMoney least should.','2023-12-04','2020-06-28','23:52:57','06:20:27','14062 Stephanie Cliff\nPort David, SC 17224','2020-10-03 17:28:28','2020-07-24 14:40:58',127,49,'suggest','Slovakia (Slovak Republic)'),(15,'Certainly by conference like support.','Reach fire nice water arm.\nPosition ahead a reach. Both decision open example administration wrong key.','2020-04-23','2021-01-30','03:45:08','15:50:24','8758 Thornton Hollow Suite 019\nJanetborough, ND 52780','2020-12-19 07:59:04','2021-03-18 00:40:46',67,36,'drug','Suriname'),(16,'Hospital five soon sure accept item.','Floor since cup cultural age doctor within. Computer woman easy cold within such hot. Director film easy.','2022-08-06','2023-10-19','11:32:31','05:03:42','044 Tyler Fort\nWest Larryberg, MI 26539','2020-07-31 18:17:01','2022-06-01 15:46:17',131,42,'age','Sweden'),(17,'Hospital government law yard around many clear maybe.','Much child option true establish I material. Coach note exist moment quality enter doctor.\nPass use politics pressure market. Arrive sign consider college fund under third management.','2021-02-05','2021-04-23','01:11:53','19:56:52','73974 Barbara Glen Suite 513\nDanielbury, FL 67038','2022-08-29 17:34:22','2021-09-24 16:42:05',146,14,'ask','Mozambique'),(18,'Arrive final sense.','We chance wide someone employee. Media difference charge eat expect. Much attention whose deep tonight decide.','2022-03-01','2022-06-27','06:10:12','20:50:34','968 Johnson Prairie\nMurrayburgh, IA 69651','2021-08-29 13:52:28','2022-06-14 12:10:39',59,24,'trade','Bolivia'),(19,'Beat stay wind management.','Staff catch than space very grow bag. Summer history parent ok one debate prepare. Reflect bill operation per consider.','2022-11-15','2022-09-17','06:06:59','12:13:40','664 Eileen Mews\nEast Markville, NC 67473','2020-08-23 23:59:47','2023-11-29 03:25:13',124,29,'food','Myanmar'),(20,'Affect Democrat full bad discuss suddenly certainly tonight.','Main receive pattern write story season win born. Newspaper happen itself pressure which eye step.\nThat society view want. Answer state able early audience.','2020-07-13','2021-02-05','09:25:43','08:47:31','7733 Edward Estates\nNew Allenborough, KY 32385','2022-05-02 02:46:26','2023-04-12 18:32:30',125,43,'drop','Uganda'),(21,'Store newspaper tonight everything hope you.','Military cell modern throughout religious reduce. West heavy college. Find treatment usually cultural that beyond year agency. Mr consider future thousand sure hard.','2020-12-21','2024-05-11','15:37:50','13:33:39','9921 Amy Passage Apt. 896\nPowellton, RI 67553','2024-02-22 07:57:12','2021-08-22 21:52:52',47,28,'former','Brazil'),(22,'Strong talk summer into.','Art attention military air bank approach. Rest job major concern focus out.\nWhite significant eat southern west. Unit cost specific former. Buy laugh last establish safe.','2023-11-07','2022-09-27','11:59:52','07:19:22','5345 Bell Plaza Suite 666\nAmberport, MO 39751','2023-07-26 03:26:19','2023-02-05 01:12:28',133,2,'military','Mali'),(23,'Rich ok her natural.','Attack against I particular show protect. Possible interesting benefit produce could. Should occur argue response recent everything another.','2020-06-13','2021-10-17','22:40:49','15:53:05','623 French Mission Suite 926\nSouth Darleneport, AK 27837','2021-10-15 19:23:21','2022-07-18 09:42:24',60,6,'agency','Guernsey'),(24,'Mouth million agree west.','Tax civil player.\nMeeting live stage sure because could.\nSit family industry person learn. Everything without green tonight approach loss. Different admit his front.','2023-07-20','2023-06-23','12:13:03','11:20:58','USNS Stephens\nFPO AP 71962','2022-01-02 15:40:58','2023-04-26 09:02:49',17,10,'small','Hong Kong'),(25,'Record role section operation why product us.','Partner than wrong. Physical public usually whole order include should we.\nListen set general suffer. Month first stock lay. Make through white professor specific there.','2023-05-24','2022-10-01','16:56:41','10:09:26','USS Meyers\nFPO AP 43110','2020-09-01 07:35:24','2021-03-21 07:37:44',136,22,'last','Taiwan'),(26,'Power produce he ready then enjoy.','Memory news first yes administration gun not. Stay off question ten.\nRegion president throw law magazine. Certain people word. Girl news national finish gun.','2020-01-10','2022-12-06','00:32:07','17:48:32','245 Alisha Route\nHarveyport, NC 32729','2024-01-08 22:25:03','2021-08-31 17:09:31',106,48,'boy','Christmas Island'),(27,'Training community she whom cell none then.','Teach team small be Mrs put mouth heavy. Back gas write miss me. Deal ball dinner town actually.\nGreat unit reality likely year thousand. Save half material result.','2023-12-31','2024-02-03','05:04:10','17:48:14','55349 Christopher Valley Suite 960\nEast Hannah, NE 36983','2021-05-05 14:35:54','2022-03-24 23:22:23',23,25,'avoid','Turkmenistan'),(28,'Building event its door.','Green leg war dog past what occur paper. Anything total daughter tell term represent year.','2022-12-03','2022-12-07','19:19:06','17:58:22','5351 Brooke Corner Apt. 215\nStoneborough, IN 68820','2020-07-07 21:29:31','2021-09-12 07:38:22',1,14,'president','Portugal'),(29,'Dinner get wear hair.','Executive generation summer follow company hot bar operation.\nNext peace social one indeed.\nSeem factor interesting oil friend thank. Continue attorney religious. Road production career push.','2021-11-09','2022-07-24','09:10:23','14:32:50','Unit 2625 Box 2176\nDPO AA 22955','2022-09-15 06:48:02','2022-06-11 07:08:01',132,30,'make','Pakistan'),(30,'Land which away one full own clearly message.','Huge listen down PM each how. Language than history term. Simple third learn single suffer data.','2024-04-02','2023-09-07','19:59:06','09:22:31','3413 Cruz Prairie Apt. 165\nPort Samuel, NC 40668','2023-11-08 19:42:23','2020-05-03 21:02:59',76,15,'mind','United Arab Emirates'),(31,'Long around idea impact.','Hand record itself factor again. Son draw simple future.\nWait west cold purpose.\nSignificant so employee. Character help strong glass tax. Billion it challenge bag discussion threat minute.','2020-04-22','2020-11-22','05:27:00','02:45:56','755 Jenny Crest Suite 175\nJohnsontown, CO 54886','2020-12-05 06:22:05','2020-07-10 02:36:31',150,29,'fear','New Zealand'),(32,'Size report enjoy.','Her current safe until important. Occur culture create.\nTravel five ability everyone peace rock me least.\nHis stand statement magazine degree region. Shake before ability.','2023-01-27','2024-03-09','14:00:21','21:27:13','38485 Weeks Glens\nLake David, MT 33490','2024-05-25 11:01:53','2023-07-19 18:38:08',25,28,'line','Ethiopia'),(33,'Certainly single assume.','Customer performance cut manage stuff arrive interview. Whether beautiful wife their last culture send property. Environment fly network every expert.','2022-06-21','2024-01-10','02:16:28','12:37:20','146 Barnes Stream\nAndrewfurt, DC 02114','2022-12-09 06:07:16','2020-10-19 23:37:00',150,43,'instead','Guernsey'),(34,'Should source mission just risk.','Building instead identify. Method perform structure increase. Trial food real action part.','2023-08-28','2023-11-02','08:31:04','09:10:40','5844 Brian Mews\nWest Sandra, MN 77620','2022-12-22 18:45:12','2020-10-21 15:50:57',68,3,'clearly','Sudan'),(35,'Employee those recognize arrive something state.','Side way loss low style trial season participant. Relate raise executive among side suffer. Clearly international agree foot look.','2023-11-11','2020-05-11','21:53:13','09:49:09','48893 Steven Trafficway\nLake Christopher, NC 40595','2021-01-22 19:57:15','2021-07-14 08:35:47',132,24,'throughout','Israel'),(36,'Certainly hot show blue visit whether.','Rest firm positive bank. Technology relationship work conference suggest.\nLocal marriage community though reflect several write traditional. Him toward could someone source conference miss.','2023-12-30','2020-07-11','01:45:20','20:51:50','54024 Cox Turnpike Suite 675\nKellyfurt, DC 04315','2023-07-19 22:27:15','2021-12-23 09:55:37',105,48,'soon','Solomon Islands'),(37,'Decide their meet win.','Our staff study especially. And reality admit early thing action hot. Condition agency enjoy address part near author.','2020-11-18','2024-02-08','07:47:08','05:24:55','43988 Snow Valleys Suite 146\nNew Corey, SC 19197','2022-02-07 14:20:12','2021-01-12 20:59:04',61,17,'base','Solomon Islands'),(38,'Avoid great major girl product.','Effect continue official table agent painting. Year land through surface no sort nor story.\nReduce or Mrs head only. Available speak sit but military executive.','2020-02-21','2021-12-24','13:33:29','03:10:21','31286 Johnson River Apt. 511\nNew Kennethside, ME 19327','2020-08-12 02:58:26','2021-11-12 15:54:07',112,19,'the','North Macedonia'),(39,'Former pattern shoulder fish guess available.','Next reflect cost amount add administration station be. Also notice near cause. Health make campaign must.\nEdge establish soldier activity. Population local the business bank.','2020-06-25','2024-06-11','21:30:05','12:10:04','048 Weeks Ramp\nNorth William, DE 90723','2021-03-12 19:01:00','2023-10-20 10:19:58',82,38,'beautiful','Cyprus'),(40,'Realize security TV future finish major product seek.','Its carry thousand particularly somebody experience. Anyone then discussion smile student remain nearly. Lawyer factor very specific.','2022-02-26','2022-04-08','10:08:42','16:47:51','25967 Zimmerman Ferry\nWest Michael, PR 64298','2024-07-21 06:10:00','2024-07-24 22:24:27',144,38,'performance','Congo'),(41,'Plant oil run into wrong.','Director certainly garden business. Final million participant capital color. Important sign between west challenge statement.','2022-08-25','2022-10-21','10:03:47','20:31:58','370 Mcbride Mountains\nNew Amber, TX 49696','2021-08-23 23:34:28','2023-05-03 09:35:15',71,1,'exactly','Slovenia'),(42,'Simple moment mention matter present public.','Father by enough authority his. Still effect with interesting.\nHusband friend sort city land. Hit set look.','2022-03-24','2023-09-08','16:49:48','12:32:02','67243 Roy Cliff Suite 873\nBarbaraville, WV 12048','2024-03-01 07:14:41','2020-12-20 15:25:30',31,36,'grow','Malta'),(43,'Health recently rate industry suffer.','Will next commercial spend across. Move people hospital meet trial for. Green goal large student.\nSea whole tend could some page take lot. Serious someone other tonight daughter old.','2021-11-10','2021-02-05','00:27:12','14:02:39','656 Hess Shoal\nSamanthafurt, MA 66470','2021-04-21 06:51:19','2022-05-30 02:12:09',25,2,'send','Kuwait'),(44,'Material body building stock else might hold.','Send grow place break significant assume great. Either else hot.\nGreen knowledge eat whom together this. Dark minute rich teach.\nQuite piece sense again. Right loss speech notice toward skin rise.','2023-10-01','2023-06-30','01:20:43','14:13:32','40992 Roberts Rapids Suite 514\nAnthonyport, FL 85553','2020-05-14 03:32:13','2020-01-13 03:09:33',123,37,'new','Swaziland'),(45,'Make point thing long.','Ground director sense. Bed follow finish simply.\nPm from former interesting production its knowledge. Court collection general describe. Through matter case employee try.','2022-04-06','2022-04-04','18:54:57','06:57:13','Unit 2201 Box 1410\nDPO AE 96772','2023-08-10 07:11:10','2020-05-22 22:16:04',104,43,'reflect','Heard Island and McDonald Islands'),(46,'Military discover because.','Bar current crime several the. Run bar two season two stand.\nGarden and share debate news many.','2020-07-07','2022-03-21','23:31:27','10:32:05','044 Ryan Hills Apt. 631\nNew Sheribury, MD 80757','2023-05-03 03:53:34','2021-04-05 01:25:58',130,40,'give','Greece'),(47,'Oil career property blood natural anyone.','Move lawyer leader affect. Local five home doctor.\nTeach visit very economy street year man. Consumer skin whether customer still partner.','2023-06-14','2020-02-20','02:44:12','04:18:41','786 Catherine Plains\nLindamouth, UT 49757','2020-05-02 04:20:32','2023-03-21 00:12:01',143,33,'anything','Hong Kong'),(48,'Play bed people size ability.','Bar high class degree none eight want choice. Claim nation increase full staff.\nLoss office debate generation. Go organization say such lay draw nature.','2020-03-17','2021-05-18','22:24:49','14:08:57','684 Melissa Tunnel Suite 612\nCampbellbury, AL 42545','2022-12-30 02:37:05','2020-09-10 08:28:36',130,33,'anything','Austria'),(49,'Upon interview campaign prove concern.','Decide discussion because around friend other. Enter shake now story finally. Human that record how free. Raise deep since prevent range.\nPosition different space up avoid. So believe agreement news.','2022-09-27','2023-12-21','04:21:54','11:05:11','0449 Angela Walk\nNew Martinmouth, IN 86958','2022-12-01 14:26:33','2022-04-16 00:06:16',81,43,'listen','Guam'),(50,'However game team let star left represent.','And maybe check image mind forward author close. Marriage parent their kitchen sort. Accept leave series cold investment actually.','2020-09-11','2021-07-31','09:34:23','11:57:08','0802 Riggs Squares\nEast Theresa, KS 72426','2023-10-13 08:28:35','2023-04-20 15:45:05',63,13,'ten','Aruba');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `informe_compañias`
--

DROP TABLE IF EXISTS `informe_compañias`;
/*!50001 DROP VIEW IF EXISTS `informe_compañias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `informe_compañias` AS SELECT 
 1 AS `id_company`,
 1 AS `name`,
 1 AS `email`,
 1 AS `location`,
 1 AS `phone`,
 1 AS `country`,
 1 AS `total_events`,
 1 AS `total_internships`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `internships`
--

DROP TABLE IF EXISTS `internships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internships` (
  `id_internships` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `requirement` text,
  `work_area` varchar(255) DEFAULT NULL,
  `status` enum('available','unavailable') DEFAULT NULL,
  `company` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by_id` int DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_internships`),
  KEY `created_by_id` (`created_by_id`),
  KEY `company` (`company`),
  CONSTRAINT `internships_ibfk_1` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id_user`),
  CONSTRAINT `internships_ibfk_2` FOREIGN KEY (`company`) REFERENCES `companies` (`id_company`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internships`
--

LOCK TABLES `internships` WRITE;
/*!40000 ALTER TABLE `internships` DISABLE KEYS */;
INSERT INTO `internships` VALUES (1,'Issue positive next.','Opportunity worker inside firm. Many stay national. Policy go hit mother family few for.\nSpeech soon arrive close nor.','2023-04-11','2020-12-09','Fast top husband agree scientist behind. Important tree material particular alone.\nLight forget understand career. Personal should scientist building camera call.','Commercial/residential surveyor','unavailable',30,'2023-01-20 06:36:58','2023-06-24 03:03:47','2022-05-21 04:37:04',145,'Bulgaria'),(2,'Audience market to cause for particularly record.','Get toward ability forward. Which son among maybe control reveal week. Personal down per seat positive.\nFinish no Mr deep whether turn her.','2020-04-14','2023-10-06','Challenge drug task reveal more. Draw campaign off station thus short whom. Yourself drug evidence industry water town.\nEffect floor exist try environmental leg. Cause how before deal.','Engineer, petroleum','available',9,'2024-05-31 20:58:22','2021-06-26 20:29:46','2023-09-05 23:31:57',134,'Belize'),(3,'Interesting point how three this pick.','Organization officer far care concern final.\nTeacher adult manager soon. Resource read decide wonder. Future hit whatever fill where detail sport north.','2020-02-17','2023-08-24','Dark choose matter usually mean.','Nutritional therapist','unavailable',12,'2022-03-08 13:59:58','2021-05-07 03:16:50','2022-12-30 22:58:20',134,'Nauru'),(4,'Article generation issue few allow some design.','Five stop within despite bed. Itself arm must parent I compare.\nHealth doctor maintain check father poor central. Save act head care little material.','2022-12-17','2024-05-08','Risk smile military piece. As represent yourself significant city. Hot value create seat foot south.','Museum/gallery exhibitions officer','available',29,'2022-10-09 19:07:45','2023-10-08 15:48:21','2021-10-14 06:04:02',123,'Antarctica (the territory South of 60 deg S)'),(5,'Security own inside show police air ever.','Artist tree everyone marriage carry. Statement senior quite ten value write me physical. Save event maintain through despite.','2024-02-24','2022-07-21','Group dark memory figure food yard else power. It interest western development. Adult her these.\nWhole population product create address. Race spring training interesting. Sea yourself PM teach.','Fisheries officer','unavailable',10,'2021-07-10 12:43:11','2024-07-29 23:42:06','2023-11-30 13:32:10',21,'Greenland'),(6,'Father everybody remember whom.','Short here benefit close physical exactly. White move people stay. Its sometimes town that course within truth question. Again difference list major according resource pull.','2022-11-03','2024-06-15','With money lose decade fly. Fly tough record economic explain part. Performance attack watch last threat. Speak agreement ask wide wall fall.','Scientist, clinical (histocompatibility and immunogenetics)','unavailable',16,'2023-01-03 07:27:46','2020-06-30 22:25:08','2022-05-21 05:31:09',19,'Malaysia'),(7,'Order meet pretty produce method Mr.','Land than national actually anyone former treat hospital. Medical reach although. Television strong whom court treat resource certainly.','2022-07-21','2021-01-09','Only many draw. Try door only doctor. Religious interview staff throw.\nClaim hour state let.','Broadcast engineer','unavailable',6,'2020-10-26 20:56:03','2021-05-14 21:01:18','2023-05-09 06:57:15',75,'Bahamas'),(8,'Strong issue street lay focus sister black front.','Right form front carry cold total occur. Hope explain industry student speech half light concern.\nNear street modern data. Common low idea certainly. Either upon walk could.','2023-04-12','2024-04-19','Blue believe avoid financial offer financial TV.\nPeace either reality before southern. Admit rock because.','Quantity surveyor','unavailable',38,'2023-08-10 22:24:52','2022-01-28 02:20:08','2020-10-23 15:40:19',43,'Malawi'),(9,'Its huge until collection easy.','Myself large may participant. Material wife home.\nMy interest democratic fund light. Might me speak evidence.\nWhole perhaps authority reflect. Recognize respond could.','2022-10-02','2021-10-31','Concern treat positive air market official director. Market set you off per.\nProduct factor fund agency market PM. Night smile realize around maintain attack pretty.','Research scientist (medical)','unavailable',29,'2022-03-09 01:30:31','2021-11-29 13:31:41','2023-08-20 11:50:44',18,'Myanmar'),(10,'Same vote yet.','Skill animal myself west water between. Century threat traditional who music.\nSound site system action apply end day. Report country bar culture.','2022-08-05','2020-06-05','Speak politics goal physical south wife difference position. Happen raise trouble role.\nDoctor air guy how senior happy. Leader technology out over option whole me.','Mudlogger','unavailable',16,'2021-02-13 21:42:01','2023-08-31 11:21:37','2020-05-15 01:49:08',18,'Sao Tome and Principe'),(11,'Go sometimes night.','Particularly let those significant character course some much. Wrong adult without join green list.\nNone country key. Computer she road back wife. Result coach open hard former.','2020-11-06','2024-03-14','Near protect him adult up. Minute economy I show.\nNear guy impact marriage. Main during forget process sort accept. Relate side major central teach deal despite. Rise new soon cover region.','Merchandiser, retail','available',34,'2022-07-17 14:56:32','2023-01-16 07:29:11','2022-07-04 05:31:49',30,'Niger'),(12,'Probably admit form might born compare stage.','Success brother health center new every watch adult. Mind data action hand general weight.\nTest game top whatever result job. Toward through view throw night report.','2024-03-25','2020-01-27','You prove station use plant woman world. Give brother source enter structure however. Drug than either family top.\nDecade true institution be front since. Rock want Mr raise upon base discussion.','Physicist, medical','unavailable',1,'2022-10-14 02:29:57','2022-11-11 13:32:46','2020-10-08 18:29:40',123,'Venezuela'),(13,'Fear defense local really.','Economy mission claim others people ahead soon.\nVote simply art heart yourself a better. Friend her shoulder people beyond teacher identify. Consumer treatment blue tree cost.','2022-04-15','2023-09-11','Hour evidence ground against line though drug. Ball machine against country. Remain operation clear likely. Above government region crime.','Oncologist','unavailable',44,'2022-04-30 20:24:20','2021-09-25 20:59:26','2021-07-20 16:55:12',31,'Ecuador'),(14,'Agree position rest.','Suddenly end central media sport blue.\nHard Mr box realize environment culture president.\nRight walk very whether boy often. Also leave customer upon. Seven leader agree key whatever.','2022-05-10','2021-04-22','Weight bit hour walk remain election expect. Type receive pay million lay.\nEnergy officer fact network culture drive.\nHotel thing old visit south stuff owner ahead. Stock piece can local.','Educational psychologist','available',38,'2022-02-16 06:34:26','2023-08-02 03:13:28','2021-08-17 15:49:02',39,'Egypt'),(15,'Visit letter raise thousand.','Woman ready peace exactly none tell return. Hotel environment behind full edge out.\nSend world against west pressure. Pressure go future economy key everybody indeed.','2023-04-03','2023-09-25','Lay individual turn. Available probably finally market treatment. Will lose trouble standard court according stay.\nCharge natural according by. Determine though agency issue nearly travel.','Administrator, education','available',12,'2023-05-19 00:21:43','2023-06-26 08:30:14','2022-07-22 08:18:27',112,'Sweden'),(16,'Role well rest research clearly office.','Long wife decade. Experience individual policy drug far long figure company.','2024-06-24','2022-09-05','Fear article most money full like. Memory affect must test according physical.\nResponsibility just actually. Receive character beautiful white study.','Copywriter, advertising','unavailable',48,'2020-07-15 03:50:41','2020-03-08 00:38:51','2023-12-10 19:58:44',35,'Gambia'),(17,'Officer improve together network but.','Type cultural method help country.\nNation moment affect doctor check. Friend cultural natural even wall movie practice.','2023-03-15','2023-06-01','Why health thus two deal campaign.\nEven way culture. Common particular step rest. True process government include away actually.\nSpeech use unit send six draw more.','Health visitor','unavailable',8,'2023-09-25 19:38:35','2021-06-18 22:28:37','2020-01-21 07:35:58',38,'Ukraine'),(18,'Fact choice administration catch local little range.','Let word wife while meeting degree. Yet coach glass image occur himself why.\nTime cultural air. Brother create beautiful easy out.','2024-07-31','2021-08-06','Perhaps have remember stand. Yeah type whether rest suffer assume.\nProduction positive police key. Political paper want skin again society television. Make modern huge.','Warden/ranger','available',29,'2022-10-30 18:46:37','2023-07-26 22:45:58','2020-01-13 13:44:44',30,'Iraq'),(19,'South goal live get pay give.','Mean argue cell seven finish war develop attention. Evidence enjoy him establish situation. Never week myself more thing.','2020-05-16','2021-02-04','Food continue here many sell message war. Style dark upon several guess. Nearly increase thank onto however operation.','Contracting civil engineer','available',13,'2023-09-16 23:14:31','2022-08-30 05:22:35','2020-12-13 18:35:49',138,'Moldova'),(20,'Fine call food site paper once.','Woman bar probably finally. Pass store none they central.\nStrong point everyone claim. Increase by behavior know paper call.','2022-05-28','2020-09-07','Serve help whole government tree have stop. Give billion trip before.\nAcross student practice real happy. Choose hand few both world writer. Pm table window wide skill bill occur.','Therapeutic radiographer','unavailable',9,'2021-07-10 02:07:18','2023-09-22 11:16:56','2023-09-25 16:30:13',47,'Russian Federation'),(21,'Direction program Mrs western piece.','Technology physical physical reason news car. Guess father draw bar building product. Effect begin while rock white left.\nPiece change small interest. Family song across speak.','2022-01-20','2023-04-12','Be detail sort into. Laugh again list resource. Far realize also general heavy. Everything particularly sport development positive.','Animal technologist','unavailable',22,'2020-12-25 07:33:08','2021-07-29 13:12:43','2022-03-02 00:24:31',57,'Puerto Rico'),(22,'Run move matter head trouble agent.','Focus maybe another growth. Who wide artist field Congress design. Data certain purpose way between thousand suggest task. Medical condition these husband establish should.','2021-09-15','2020-12-06','Structure forward time what break cultural. Daughter budget lay treat. Professor task figure necessary true. Begin establish represent might class happy.','Publishing copy','unavailable',36,'2020-01-26 19:10:47','2022-02-04 18:53:53','2024-01-24 22:10:56',117,'Guinea'),(23,'Mean debate whatever doctor.','Instead down add prepare particular group production. Phone friend challenge. Who unit those instead black.\nPolitics the because billion affect explain energy. Expect high name anyone where.','2022-07-30','2020-11-30','Stock situation them. Husband space she personal son radio life. Debate center cost new.\nAbility anything paper significant research. Simple child summer board above film sometimes hope.','Journalist, magazine','unavailable',20,'2020-10-21 09:08:24','2021-07-24 23:10:26','2021-10-07 22:38:14',32,'Qatar'),(24,'Case population receive start probably.','Fear owner create. Hair both great still brother economic station state. Test process interview Mrs. Reveal produce name federal.','2021-08-28','2023-07-08','Computer without television. But sort visit sea beat born before.\nAnything American father today back. Decision create stand increase life after. Ability state she sing.','Surveyor, planning and development','available',25,'2020-06-07 20:36:31','2024-03-21 22:48:25','2022-07-23 08:29:52',129,'Kyrgyz Republic'),(25,'Line kind similar happy such born.','Project book when tax. Garden for throw kind action season. Challenge likely serve sea direction message stock.\nHuge Mr raise building ever sing seat.','2024-03-10','2024-03-01','Manager international good. Production would environment war. Size candidate well generation fear sure.','Commercial art gallery manager','unavailable',45,'2021-06-23 15:56:59','2020-02-01 18:06:53','2021-04-20 18:32:39',116,'Marshall Islands'),(26,'Fish friend energy officer police.','Main site section that result reflect start production.\nWear race during series. Billion final newspaper pretty.\nRock next move thousand I. Best north suddenly forward here parent a several.','2020-01-23','2021-12-28','Ground whose some land pull. Scene per could quality student morning.\nDifference hope speak bank. Film fact throw cover century.','Musician','unavailable',29,'2023-05-31 22:25:57','2020-08-08 13:42:02','2021-12-18 02:18:11',11,'Canada'),(27,'Record law responsibility article anyone develop.','Keep contain forward. Involve few your matter investment analysis. Level away total Republican.','2023-04-02','2020-11-15','Whom order suffer machine. Republican then analysis his voice.\nLarge find might senior color administration board. Agent figure dream treatment.','Public librarian','unavailable',45,'2020-06-12 08:51:07','2023-03-15 06:36:03','2021-11-28 22:00:38',91,'Romania'),(28,'Strategy offer thousand trade.','Wonder return development high get candidate. Entire business shake amount.\nBlood serve protect hit senior. Need mission time woman matter only.','2022-08-25','2020-06-23','Stock somebody some little. Start PM within want seven side money. Light fine accept daughter street think.','Statistician','available',13,'2021-05-12 05:01:32','2020-05-29 19:35:56','2024-02-16 08:31:57',51,'Solomon Islands'),(29,'No class pretty face more push.','Third hair brother really tree on. Million quality three point skin.\nFollow call either girl key should simple.\nSea environmental subject picture eat food. Third girl per.','2024-06-14','2020-07-20','Threat than behind degree individual morning. Any possible detail decision certainly question catch. Sport himself office kitchen level.','Research scientist (medical)','available',12,'2022-03-31 18:35:31','2021-02-23 05:54:04','2022-05-30 01:27:36',56,'Israel'),(30,'Site chair street time two against station month.','Community spend data future. Situation then without eat task message. Away opportunity computer.\nHand surface effect. Analysis assume hope add ball success.','2023-05-21','2021-09-06','Instead cup practice young soon necessary nation. Star fire street professor different. No north arm modern language thank million.','Journalist, broadcasting','unavailable',27,'2020-07-03 03:48:13','2021-07-26 09:34:10','2024-07-06 15:47:33',11,'Belarus'),(31,'Let defense section a.','Page new history cup leg matter sign change. Center whom notice.\nTeach father seat consider population simple community. Cost forward manager able sell person else weight.','2022-03-15','2021-09-03','He indicate participant market wind beautiful speech. Themselves yourself hold. Measure today day senior door focus yard.','Fitness centre manager','available',45,'2021-10-21 02:19:50','2021-10-29 14:41:57','2023-02-02 11:08:33',59,'Micronesia'),(32,'Talk certainly matter similar that different.','Process describe laugh. Consider have evening thousand statement.\nCertain expert year education second year from. Successful color management stay seek.','2023-04-18','2022-01-05','International receive for certainly discussion focus. Up Democrat couple. Order thing serve yes else claim.','Therapist, speech and language','available',42,'2022-01-19 02:32:40','2021-12-18 16:34:52','2022-03-02 07:57:10',137,'Cuba'),(33,'Now if material.','Condition arm evening well speech coach structure. Benefit pressure learn game. Tend again then.','2021-04-01','2021-09-29','Reason near chance of arm listen out ago. Pay lead state indicate section dream book.\nCustomer amount news campaign. Major perhaps help notice cup. Hair chance old discuss.','Psychiatric nurse','available',25,'2023-04-14 19:53:37','2022-03-31 09:29:48','2020-08-30 05:39:57',142,'Turkmenistan'),(34,'Child car next.','Watch memory great rest.\nDiscussion Mrs system. Side skill property. Old organization bit page officer.','2020-07-19','2020-05-26','Book fine laugh record. Public threat especially stuff light language music.','Art gallery manager','available',3,'2023-02-28 03:55:42','2023-01-27 04:53:31','2020-09-19 22:01:47',53,'Korea'),(35,'Send because ground black stay physical development.','Just media history minute international save.\nCivil entire away pass.\nParty key difficult. Data culture partner thus.','2021-02-03','2023-08-24','Why often accept box. Soon article environment standard many movement whose type.\nHim particularly leader. Family continue mind yourself build president economic difficult.\nFund view truth instead.','Engineer, maintenance (IT)','unavailable',50,'2022-07-06 16:28:32','2020-06-08 17:56:57','2023-02-07 01:25:32',68,'Sudan'),(36,'Would night type stay across.','Way impact bring that sister once free.\nPurpose figure guy as ahead. Gas indicate technology support quickly determine. Attack half everybody believe table stop.','2022-03-16','2020-06-30','Program baby wall likely. Accept too call understand. How put hour move put bring. Question particular blood issue.\nRock buy conference. Live trade former rock indicate quite simply.','Volunteer coordinator','available',24,'2020-11-23 23:08:46','2024-02-25 04:38:56','2021-11-02 03:35:07',150,'Saint Kitts and Nevis'),(37,'Have just nature walk buy.','Contain yourself technology theory win down skin whose. Bed along former still specific hard under view. Fly manage share hour become trouble fish.','2020-09-05','2024-03-07','Total year artist between fire research audience. Phone recently when year stay as capital.\nWonder than same culture get each. Perform save take student. Old seven certainly news financial.','Community pharmacist','available',14,'2023-05-12 21:57:44','2021-06-17 22:27:03','2023-01-18 00:56:17',1,'China'),(38,'Art successful sort generation kind article situation.','Picture agent child address light western most. Again water market within consumer same.\nAmong environmental forward. It surface operation beat.\nWish election ready artist including.','2021-11-12','2021-04-11','Air foreign sit. No child forward product necessary miss. Foot way itself contain.\nOver respond forget position current yeah window. Prove born technology me list just report.','Trade union research officer','available',25,'2022-03-08 02:14:41','2024-07-17 14:00:50','2021-08-07 22:44:06',80,'Serbia'),(39,'Improve still read.','Offer his bed really stand food what. Air tough control culture ahead. Law improve story official billion team worker they. Collection front even writer space.','2022-11-05','2022-01-23','Staff issue clear door eye sit. Our child surface eye computer teach. Glass remain tell end end.','Broadcast journalist','available',29,'2022-06-10 05:42:48','2023-10-28 18:19:07','2022-12-21 06:06:59',32,'Dominica'),(40,'Language father cultural wife.','Receive positive science himself any quickly. Much commercial resource husband charge theory travel. Property take nature design.','2021-10-08','2023-12-31','Choice fast company range serious article myself hold. Leg change class very so. Pay over too within.','Interpreter','unavailable',7,'2020-07-20 05:26:10','2024-03-23 21:05:37','2023-09-18 11:32:42',42,'Panama'),(41,'Military boy would require.','Student late part American various. Role gas hour quickly loss line away.\nEight sense not idea walk brother control.','2024-04-30','2020-01-16','Skin support get song phone character piece. Seven out ahead spend trade plant another best. Your true environment she phone crime suggest.','Scientist, physiological','available',34,'2023-12-26 19:45:58','2024-08-15 20:31:49','2023-07-25 15:49:57',19,'Ghana'),(42,'Either west condition model eat way.','Guess time discuss effect poor news down. Subject start recent crime the agree. Role southern consider after one daughter seek social.','2020-03-13','2021-10-05','Stage some Republican painting all. Beautiful statement question country view card.\nGroup college story his threat near eight. Federal memory choose activity.','Tourism officer','unavailable',29,'2021-02-06 19:38:19','2021-04-11 11:25:11','2024-02-18 02:56:26',52,'American Samoa'),(43,'Major responsibility example usually party go.','Chance act discussion during feel about. Piece top hot thousand one second. Resource how condition material impact dog family.','2022-09-08','2021-10-23','Water free learn fact north. Grow course glass room. Enjoy sea green author half. Middle apply expert.','Hospital doctor','available',33,'2020-10-18 19:36:18','2022-01-21 12:55:24','2022-04-17 22:32:40',102,'Lithuania'),(44,'Modern court himself later check else war.','Mouth push arrive old. Sense conference left bad himself.\nManage determine so tough anything. Common fill foreign wall run seven prevent. Tough majority picture letter.','2022-12-07','2020-04-22','Successful him fast score station involve particular. Parent big future ever collection need defense.','Tourism officer','unavailable',50,'2023-11-16 04:56:01','2024-06-01 04:44:38','2024-07-13 08:46:33',79,'Congo'),(45,'Two realize billion owner it.','Top laugh approach market until no. Grow hard speech evening nature inside teach.\nEvidence should nothing fine lot. Thing put Democrat really operation bar system.','2023-11-21','2023-09-02','Central bag question option. Free every lawyer reduce.\nTv amount board. Order rate his sometimes leg. Stand never subject property.','Location manager','available',49,'2022-03-01 01:55:08','2020-08-01 01:49:33','2023-07-17 11:32:42',130,'Uzbekistan'),(46,'Begin identify everybody by detail.','There whether down financial street everything. Push traditional west catch reality order. Defense value kitchen generation room soon little.','2020-11-16','2023-06-01','Carry which PM modern history lay. Nice recently reflect pattern. Own far begin throughout.\nAnimal thing thing table citizen group. Result simply common me threat on heart place.','Video editor','unavailable',16,'2022-07-14 03:15:11','2020-05-07 21:47:02','2020-11-12 10:22:02',114,'Botswana'),(47,'Pick this husband toward different point power.','The anything probably interview city fine foot. Go how mouth market house option not. Congress provide bad force go service.','2020-10-25','2023-03-22','Eat sound talk ask. Good green religious three painting. Southern newspaper billion. It add research account.','Engineer, civil (contracting)','available',40,'2021-06-11 05:19:51','2020-09-05 14:12:40','2021-06-09 23:47:31',13,'Martinique'),(48,'Investment article there citizen well certain.','Process seek gun recent must firm recent often. To before budget send. Camera window strategy method whom.','2022-01-15','2021-08-08','Send picture store animal. Car degree seem simply health return. So different any blood.','Financial manager','available',36,'2021-06-17 15:20:22','2021-05-08 00:34:01','2024-05-31 22:33:04',72,'Sao Tome and Principe'),(49,'Skin seem provide second point son.','Hope few study rise painting activity. Country appear often end. Interest property impact production style type measure.','2023-12-29','2023-08-20','Single lose single care. Middle police network skin.\nWall bank win right thus detail. Memory alone month including. Allow during where begin.','Designer, exhibition/display','available',29,'2024-04-15 03:06:11','2021-08-26 08:11:42','2021-11-02 12:00:57',135,'Algeria'),(50,'Simply would least change seem.','Community trade early fact well left. Take put production itself story.\nReturn sister chair sure with quite three join. Enter training front bag here as surface minute.','2023-11-18','2020-03-18','You time they western side up back attorney. Write talk part leg. Left would fall leg.\nWonder trade history enter man number read. Past management baby go.','Energy engineer','unavailable',38,'2022-12-27 05:21:15','2021-03-09 14:41:37','2024-03-10 08:21:13',65,'Antigua and Barbuda');
/*!40000 ALTER TABLE `internships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentorings`
--

DROP TABLE IF EXISTS `mentorings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentorings` (
  `id_mentoring` int NOT NULL AUTO_INCREMENT,
  `mentor` int DEFAULT NULL,
  `aprentice` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `topics` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_mentoring`),
  KEY `created_by_id` (`created_by_id`),
  KEY `aprentice` (`aprentice`),
  KEY `mentor` (`mentor`),
  CONSTRAINT `mentorings_ibfk_1` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id_user`),
  CONSTRAINT `mentorings_ibfk_2` FOREIGN KEY (`aprentice`) REFERENCES `users` (`id_user`),
  CONSTRAINT `mentorings_ibfk_3` FOREIGN KEY (`mentor`) REFERENCES `mentors` (`id_mentor`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentorings`
--

LOCK TABLES `mentorings` WRITE;
/*!40000 ALTER TABLE `mentorings` DISABLE KEYS */;
INSERT INTO `mentorings` VALUES (1,33,111,'2021-05-23','Interesting line her interesting keep population vote.\nCivil sense behind hear. Feeling few war future beautiful hospital.','2020-10-20 23:38:34','2024-06-25 23:51:52',8,'Cote dIvoire'),(2,3,124,'2020-07-01','Son time just development it mention brother type. Check media through career particularly left. Decision west put television up. You region Mr different this listen off.','2022-10-15 16:52:17','2020-02-16 23:24:40',122,'Hong Kong'),(3,50,79,'2022-02-08','Land one blue between most perhaps early. Soon network group executive situation ago what. Similar a thank yes true local world fight.','2023-05-02 18:13:03','2024-06-06 17:38:28',20,'Albania'),(4,8,34,'2020-09-18','Information go four trade partner central. Crime analysis require suggest option.\nTeach enough herself charge though training.','2020-04-10 05:25:12','2020-04-09 20:55:59',127,'Turks and Caicos Islands'),(5,21,104,'2022-10-04','Try even good buy. Recognize happy week fact deep prepare.\nCouple despite play center those. Shake future choose that way whole respond. Reason animal recently.','2022-08-02 02:31:43','2023-12-15 17:47:59',66,'Tokelau'),(6,7,10,'2022-02-23','Popular Congress never become but training. Floor dream use into eat. Religious weight he hit happen share with.','2023-03-28 06:29:08','2022-01-05 05:14:09',78,'Uganda'),(7,2,69,'2020-08-07','Discussion ground training they own. Believe material of quality subject region organization. Can only eye more.\nSeries will sign. Yeah ability ok likely. Serve different admit air.','2024-05-20 23:28:28','2020-12-16 18:42:10',34,'Niue'),(8,13,37,'2022-07-01','Different finally peace kid. Travel long customer control. Bit return share operation moment ahead.\nStation go magazine but. Look job fund them analysis evidence. Movement enter born.','2022-03-01 20:56:17','2021-09-30 03:19:31',75,'Ukraine'),(9,41,103,'2023-06-15','Teacher guy add political. Say political work.\nFish should thought new. Whatever network official nature use soon much. Also foot near loss.','2020-03-10 02:33:53','2020-01-28 19:48:02',49,'Malaysia'),(10,5,42,'2023-06-10','Population child any. Admit toward author everything family reflect.\nGreat red raise water sea. And cause big last.','2022-08-21 04:53:44','2020-07-03 17:25:07',42,'Kuwait'),(11,31,135,'2021-11-18','Rich mother company. Certain similar specific bad management front daughter clearly. Leader raise statement new.\nLoss picture perhaps inside bar toward enter. Effect red claim week real.','2021-01-21 18:17:48','2022-05-29 00:04:21',146,'Czech Republic'),(12,18,82,'2021-11-19','Way this something democratic cost risk plan. Price yourself lay life TV prove case pick. He physical general.','2022-02-21 09:27:39','2022-09-01 03:19:27',127,'British Virgin Islands'),(13,7,62,'2024-07-14','Treatment condition argue ground into off administration. Mind purpose on according music skin night. Movement evening thus break sound interview.','2023-06-19 16:12:58','2024-04-21 07:42:14',11,'Western Sahara'),(14,4,25,'2023-10-18','Represent face role task several. President Mr require firm enjoy worker. Media animal professor real identify yard.\nNext true pass level smile manage like. Whom individual light in happen least.','2022-01-06 19:26:33','2021-10-04 06:09:55',95,'Chile'),(15,27,95,'2023-03-18','Politics assume right building boy. Pressure customer standard truth between health sit.\nAuthority anything population attack. Eight land family read note.','2023-06-03 00:11:50','2023-08-21 09:18:24',121,'Mayotte'),(16,47,60,'2021-07-05','Response million music call scientist chair hospital. Require mouth my into.\nProfessional career alone threat network if. College smile find subject customer family school.','2020-11-24 23:47:59','2021-06-23 23:38:01',101,'Trinidad and Tobago'),(17,10,10,'2020-03-15','Give none call still region. Exist again hot.\nTax conference foot add product possible.\nOperation cold most build evening. Despite PM under poor be. Nature success hair information contain admit.','2021-09-24 21:56:45','2021-02-23 00:10:43',123,'Barbados'),(18,6,94,'2024-04-03','White person Mr test. Water call black tell save down off.\nMouth hospital way significant. Campaign add traditional.\nWrong his executive administration. See since quality deal allow task.','2020-03-04 19:31:02','2024-07-07 07:27:54',111,'United States of America'),(19,29,70,'2024-01-09','Station activity such pull point discuss seem night. Occur week government last tend. Soldier kitchen back. Involve bad anyone gun toward thank just.','2020-07-25 15:01:24','2021-07-02 23:22:24',84,'Palau'),(20,9,125,'2022-08-21','Too similar or lead level property. Morning even fall particular blood approach source. Hotel feeling five another agreement us.','2020-10-07 14:15:47','2020-02-05 14:37:45',5,'Belgium'),(21,9,39,'2022-10-02','Memory worker condition evidence water tonight. Hope effect worker. Computer require from full edge thought.','2023-04-12 09:35:00','2024-08-14 02:27:22',43,'Cook Islands'),(22,33,116,'2022-08-16','Quality brother product building change everybody middle successful. Cold these set degree fish break. Really head born theory thousand station behind.','2022-03-23 10:47:48','2020-06-26 08:03:49',1,'Turkmenistan'),(23,46,44,'2023-07-13','Sort stand event type sing.\nSuccess image benefit around article society perform. Pretty sort blue doctor positive successful contain. Concern can between on capital senior.','2023-01-08 04:59:21','2023-11-18 16:55:14',132,'Mayotte'),(24,36,55,'2023-03-08','Community grow scene professional world allow word. Expert night land control north other.','2024-03-22 16:50:31','2022-09-27 22:40:28',125,'Ethiopia'),(25,23,25,'2024-07-08','Wait half although necessary indeed. Able state friend address no them. Tonight both price term.\nTogether tend green development. Write professional down person only.','2021-07-23 07:33:54','2021-07-29 05:20:20',108,'Bhutan'),(26,11,110,'2024-08-01','Bar appear image car read radio. Short wait one air. Boy everybody scientist sing value.','2021-08-23 01:08:36','2022-02-15 09:14:11',7,'British Virgin Islands'),(27,8,81,'2021-01-11','Lawyer often smile thank spring painting mention. Her most control board. Current type floor alone. Front avoid a.\nRed line suffer far total concern. Travel look now.','2020-07-28 23:23:25','2024-05-14 01:01:15',8,'Mali'),(28,1,68,'2023-06-21','Easy certain walk role. Those treat fall TV out they baby professional.','2022-06-10 02:23:26','2024-04-12 01:39:34',111,'Turkmenistan'),(29,42,84,'2022-02-17','Operation above against imagine add miss family. Wear eye imagine. Will college particular wide individual.\nAnyone under simply if. So no much with dream computer.','2020-05-24 11:56:00','2020-12-10 15:02:21',5,'Denmark'),(30,42,1,'2023-08-03','Minute couple along moment power charge look. Interest shoulder either something.\nSeveral high including material language. Television single citizen act.','2024-04-26 15:28:35','2021-03-15 20:36:53',65,'Bulgaria'),(31,45,131,'2021-08-29','Reason might record church simply. Force Mr moment the answer.\nFinancial size final consumer fund. My final very lose important act somebody adult. Prove police long.','2024-01-14 22:42:54','2020-11-05 13:59:33',9,'Burundi'),(32,28,45,'2023-04-24','Sort together hotel fight order. She everything catch be pick.\nAgency practice production various star. Necessary suggest tend see similar member third. Court group fill letter off.','2024-05-19 16:12:59','2024-05-03 06:31:08',30,'Zimbabwe'),(33,43,87,'2021-02-27','Finally woman better interest. Single get voice on stuff sit.\nRise property lawyer southern.','2020-01-28 18:13:27','2023-12-21 13:04:55',87,'Canada'),(34,50,132,'2023-08-03','Politics western generation few form. Begin national wait hotel walk.\nSeveral doctor money. Recent focus clear general civil with mean. Story call school its over speech.','2023-07-15 06:22:26','2024-01-29 19:20:34',73,'Oman'),(35,38,16,'2024-01-25','Significant miss scientist wide though care. Sell individual down. Art prevent civil of and arm pull.\nDescribe baby fill compare part own. Power I however pattern majority instead.','2022-06-02 18:43:29','2022-04-02 16:12:45',39,'Brazil'),(36,27,4,'2022-12-27','Land economy such let both month suffer. Example upon myself cost.\nSpend street give charge plan. Other effect during husband agree. Training forward cell same debate approach energy view.','2021-05-23 16:18:49','2020-11-23 12:46:14',102,'Lesotho'),(37,22,4,'2023-03-25','Between available sea him. Environmental term beyond mean specific fine evidence police.\nFear west may ask. Brother why or Congress value organization. Deep level really agency end forward.','2022-08-07 21:38:55','2024-05-11 13:22:49',137,'Pakistan'),(38,1,150,'2022-09-09','Resource those never might less around already.\nOrganization shake new might nothing alone southern.\nMeet accept rule others. Short whatever such.\nSuffer best model fire mission store power among.','2022-05-29 18:02:47','2022-03-25 16:31:02',80,'Sweden'),(39,21,79,'2021-09-17','Able do movie owner also team enter not. Form image place major argue religious bank.\nConsumer machine join hair may sign.\nStreet respond successful may production others.','2021-12-21 07:57:25','2020-10-06 02:41:00',19,'Cook Islands'),(40,25,53,'2021-04-02','Investment draw look high popular star bank. Nature cold front college main agreement rise. Nor pay country.\nFuture out imagine police. Thought upon mouth seem difficult authority.','2020-08-18 03:21:44','2023-08-14 08:37:07',25,'Reunion'),(41,29,44,'2022-12-08','Human get everyone thus ground institution no American. Capital cut air popular.\nTeach resource pull charge effect you ask.\nA when discuss security least. Color firm catch head.','2021-02-13 07:07:16','2020-03-19 04:54:03',44,'Comoros'),(42,30,93,'2024-01-03','Physical eat fast will must. Medical body generation social.\nCitizen power possible maybe go. Throw above today central own. Join sense computer.','2024-03-22 01:28:39','2020-07-12 14:01:16',104,'Tonga'),(43,8,107,'2024-05-28','Artist provide agreement statement you. Defense across understand reduce.\nSafe allow city firm deep great.','2021-09-11 12:15:29','2020-07-16 17:30:57',32,'New Caledonia'),(44,43,144,'2024-01-21','Learn every model PM return shoulder.\nEat at hundred region radio. Across home dark audience single occur. Woman report wind.','2020-11-16 20:11:20','2023-06-13 04:25:54',27,'Turkey'),(45,46,30,'2020-10-29','Dream including trade culture study democratic four.\nInside perhaps few as bed. Author several make despite. Call former worry leg scene.\nFill nearly financial. Heart anyone art light.','2023-03-28 17:53:18','2023-10-21 12:20:10',42,'Iran'),(46,21,49,'2023-02-18','We save parent card. Series human then price gas population top. College blood run material.\nStuff ball expert stage.','2020-07-15 16:40:48','2023-06-26 17:07:56',121,'Turkmenistan'),(47,45,142,'2020-09-03','Fire heavy power sometimes. Paper notice officer thus well peace he. Assume factor past which.\nBorn order a soon media fly.','2022-04-15 12:10:43','2024-02-29 20:49:10',92,'Puerto Rico'),(48,1,99,'2021-06-22','Minute behavior attention score laugh receive hour. Truth suddenly chair pull. Civil season as mother.','2022-07-29 03:39:06','2021-11-04 20:25:16',6,'Myanmar'),(49,33,114,'2024-07-08','School sport standard above list.\nBag trip technology happen white four this brother. Vote management special notice I current know.','2023-05-19 16:12:19','2020-05-12 20:26:30',9,'Guatemala'),(50,1,4,'2023-01-25','Sort prove experience land other tree. Stage serious key cell bill only.\nCourse mind toward appear walk. Leader part step generation. Indeed type research.','2023-07-30 13:19:33','2022-07-01 20:08:54',130,'Somalia');
/*!40000 ALTER TABLE `mentorings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentors`
--

DROP TABLE IF EXISTS `mentors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentors` (
  `id_mentor` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_mentor`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `mentors_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentors`
--

LOCK TABLES `mentors` WRITE;
/*!40000 ALTER TABLE `mentors` DISABLE KEYS */;
INSERT INTO `mentors` VALUES (1,58,'Programmer, multimedia','Counsellor','2024-01-01 17:07:14','2023-01-02 08:58:45'),(2,68,'Quarry manager','Therapist, occupational','2022-02-24 09:48:13','2023-04-21 15:24:02'),(3,29,'IT trainer','Designer, industrial/product','2024-04-10 04:09:15','2023-11-04 10:16:13'),(4,78,'Optician, dispensing','Therapist, sports','2021-06-08 01:00:33','2020-08-16 09:10:55'),(5,150,'Cartographer','Psychologist, prison and probation services','2021-09-02 07:06:47','2024-03-22 15:15:06'),(6,7,'Patent examiner','Production designer, theatre/television/film','2022-01-22 05:22:56','2021-09-21 07:04:20'),(7,88,'Engineer, broadcasting (operations)','Accountant, chartered management','2023-09-21 22:12:43','2020-09-12 09:39:04'),(8,40,'Firefighter','Sales executive','2022-06-08 11:27:13','2022-08-22 09:36:53'),(9,113,'Haematologist','Geographical information systems officer','2020-10-11 05:32:05','2021-12-20 08:02:53'),(10,120,'Soil scientist','Television production assistant','2023-05-28 17:33:45','2022-08-25 14:49:49'),(11,124,'Museum/gallery conservator','Oceanographer','2020-06-15 08:36:53','2024-03-20 17:38:21'),(12,13,'Secretary/administrator','Surveyor, hydrographic','2021-10-25 02:38:27','2020-10-17 04:49:17'),(13,37,'Maintenance engineer','Youth worker','2023-11-04 18:38:09','2022-02-14 17:22:24'),(14,1,'Producer, radio','Health visitor','2023-10-14 16:31:45','2022-07-25 23:58:00'),(15,42,'Paediatric nurse','Operational investment banker','2022-04-21 03:51:41','2021-10-24 16:43:51'),(16,52,'Secretary/administrator','Information officer','2024-06-28 10:13:50','2022-02-08 13:09:41'),(17,57,'Health visitor','Equality and diversity officer','2022-11-29 15:35:58','2023-12-24 08:10:19'),(18,68,'Scientist, water quality','Contractor','2021-01-22 22:52:34','2023-03-28 13:52:25'),(19,87,'Fisheries officer','Copy','2021-08-19 05:00:33','2023-08-24 03:06:40'),(20,140,'Hospital pharmacist','Warehouse manager','2023-06-12 21:34:35','2022-03-04 15:40:05'),(21,88,'Brewing technologist','Senior tax professional/tax inspector','2024-02-27 03:20:08','2021-11-05 23:13:04'),(22,117,'Operations geologist','Midwife','2024-05-13 21:26:07','2024-08-09 08:58:43'),(23,41,'Child psychotherapist','Surveyor, insurance','2022-06-15 21:37:40','2022-05-20 01:12:47'),(24,16,'Claims inspector/assessor','Travel agency manager','2021-10-05 21:54:07','2020-05-26 14:23:49'),(25,96,'Geophysical data processor','Geographical information systems officer','2022-05-01 17:38:05','2020-07-14 17:19:52'),(26,113,'Development worker, international aid','Nurse, childrens','2024-01-11 17:20:30','2020-10-31 05:09:03'),(27,2,'Producer, radio','Investment banker, corporate','2023-01-11 13:41:45','2024-07-23 17:15:36'),(28,47,'IT trainer','Medical laboratory scientific officer','2021-07-22 18:02:59','2022-02-10 06:43:46'),(29,102,'Comptroller','Dispensing optician','2023-07-03 17:26:53','2022-07-30 19:48:38'),(30,100,'Dance movement psychotherapist','Fisheries officer','2023-12-24 15:51:41','2021-12-09 16:31:48'),(31,99,'Armed forces technical officer','Emergency planning/management officer','2020-12-15 01:20:55','2024-06-01 02:05:35'),(32,134,'Secondary school teacher','Associate Professor','2022-04-14 08:39:53','2022-10-01 11:16:30'),(33,124,'Retail manager','Scientist, biomedical','2021-01-01 00:31:40','2022-03-23 19:51:26'),(34,71,'Accommodation manager','Science writer','2021-07-04 12:35:49','2024-01-31 07:21:40'),(35,34,'Therapist, occupational','Adult guidance worker','2021-04-09 13:09:39','2024-01-18 11:39:09'),(36,10,'Secretary/administrator','Chemical engineer','2024-05-18 16:25:21','2020-08-15 02:15:51'),(37,122,'Recycling officer','Freight forwarder','2023-08-15 15:16:15','2023-06-20 12:00:06'),(38,37,'Herbalist','Paramedic','2022-09-03 01:02:25','2024-04-24 11:47:18'),(39,44,'Hotel manager','Engineer, drilling','2022-05-05 19:50:03','2021-10-30 18:26:07'),(40,59,'Surveyor, insurance','Conservation officer, historic buildings','2022-03-09 03:58:38','2024-04-07 21:36:20'),(41,56,'Operational researcher','Physiological scientist','2024-06-27 22:31:19','2022-10-22 15:51:42'),(42,129,'Air cabin crew','Games developer','2021-10-05 14:36:37','2022-11-11 02:05:52'),(43,66,'Surveyor, building control','Mental health nurse','2020-06-17 08:59:49','2020-06-13 00:20:31'),(44,126,'Energy manager','Airline pilot','2021-03-27 04:16:47','2020-12-17 00:46:33'),(45,78,'Immunologist','Community pharmacist','2022-09-03 23:57:59','2020-04-18 22:32:13'),(46,130,'Heritage manager','Intelligence analyst','2021-09-25 15:33:44','2024-06-24 18:51:49'),(47,144,'Curator','Forensic scientist','2022-05-23 11:23:33','2023-03-23 06:15:13'),(48,81,'Research officer, government','Sound technician, broadcasting/film/video','2022-10-22 19:13:27','2023-03-12 16:59:08'),(49,96,'Public house manager','Magazine features editor','2022-01-16 00:03:58','2021-10-01 13:35:46'),(50,144,'Interior and spatial designer','Product/process development scientist','2020-10-06 04:13:59','2021-01-02 09:15:38');
/*!40000 ALTER TABLE `mentors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pasantia_estado`
--

DROP TABLE IF EXISTS `pasantia_estado`;
/*!50001 DROP VIEW IF EXISTS `pasantia_estado`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pasantia_estado` AS SELECT 
 1 AS `status`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id_project` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `skill` text,
  `goals` text,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `status` enum('in_progress','completed','on_hold','cancell') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_project`),
  KEY `created_by_id` (`created_by_id`),
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Read no myself more.','Third we training cold imagine table item. Might bit around hold writer summer.\nFilm herself economic either right beat into. Along case enough bad next provide with. Which rest address look key.','network','Control skin others federal. Happy rest happy try trade decide partner listen. Total people with high maintain.','2024-03-02','2021-07-30','in_progress','2021-06-23 07:31:46','2021-10-28 04:19:47',16,'Andorra'),(2,'Break quickly seem current believe.','Job among so shoulder join.\nMaybe rest color. Prepare deal maintain nature leg.\nLocal attack enjoy worry keep pretty. Enter force age lot discover agree.','ask','Change often western structure old. Billion method service prove office as no area. Girl thousand from base push.\nMight management today. Card usually wall forget response discover nice.','2021-11-27','2020-12-31','in_progress','2021-08-26 13:23:30','2024-01-10 11:14:51',103,'South Africa'),(3,'Chance improve effort game.','Or resource somebody ask. Born make day audience none commercial hard.\nTest maintain American feeling.','south','Leave green radio card newspaper soon teacher. Value any hundred store whole operation week.','2020-11-04','2022-01-17','completed','2021-10-19 14:41:51','2020-02-04 17:36:33',102,'Ethiopia'),(4,'Win high create American.','Talk collection ready process begin great. In analysis conference go affect yourself describe test. Accept energy modern after do through trial.','third','Sing protect identify meeting. Condition unit listen role sea experience.\nManagement fly education yes. Himself south theory hair election feel clear view.','2023-01-20','2023-05-04','on_hold','2020-03-07 09:17:05','2020-04-12 13:53:03',21,'Aruba'),(5,'Today strong phone everyone.','Relate financial high key seem white. Material final offer city order ever very tough. Now own now who Mrs recognize attorney field.','fine','Ten off unit certain social dream. Instead receive baby up. Research site sing never.\nSport receive fear kind. Pay none place thus relate.','2021-10-31','2022-06-02','in_progress','2022-02-07 04:42:40','2022-07-09 19:59:04',59,'American Samoa'),(6,'Major national body sometimes plan rise customer.','Suddenly either long raise industry agree. American take system great. On million paper laugh exactly.\nBy that various range peace she catch specific. One everyone factor public still early.','modern','International movie crime than against maintain professional. Operation dream size. Class war allow report thousand build leg.','2024-03-02','2021-11-15','in_progress','2021-01-30 08:13:09','2023-03-15 20:59:48',107,'Peru'),(7,'Again provide central red physical evening.','Exactly president accept you beautiful stuff executive. Maintain them less could. Message as focus partner begin area.','cause','Project business use beyond protect quickly. Chance baby area.\nAttorney while everybody food. Brother build board information. Speak political collection already personal arrive.','2023-10-11','2020-10-03','cancell','2023-05-15 23:15:50','2023-10-20 02:19:52',47,'Puerto Rico'),(8,'Her nice recently blood recently respond impact.','Baby these woman fight. Kind state cultural inside necessary.\nGrowth meeting court run. American other score research.','at','Receive character east. Garden on happen such else.\nThemselves sort second vote among throughout rate apply. Recognize should beat almost into cost thought interview.','2021-09-05','2021-06-16','in_progress','2021-02-09 23:18:17','2022-12-30 10:31:44',21,'Anguilla'),(9,'Process official report usually total though success pass.','Mouth energy specific see.\nLine artist station might. Former party rather avoid child coach international.\nMarriage already within paper single health thank. And live take real take reduce.','conference','Like guy director. Seek four goal suggest wind card day. Difference treatment machine before sit director bring.','2022-02-08','2023-07-25','cancell','2021-03-30 19:26:22','2020-07-01 12:39:34',72,'Palau'),(10,'Own maintain event left.','Let professor image. Recently image future. Leave box nice happy only represent recent.\nFinally black consumer letter he.\nDrug view modern road. Ready fear star admit.','table','Participant let parent itself.\nOrder your difficult family.\nTwo professor man now drive painting. Spend quite radio man live husband. Consider across size rock claim.','2022-09-11','2021-06-11','completed','2021-09-25 22:23:10','2023-08-02 05:43:57',24,'Benin'),(11,'Check Democrat discover response by.','Mention use size budget century. Side stage ready per physical. Wait forget top truth itself your.\nReach sense beat pattern strong this. Relate medical sure structure.','model','Suggest really water behavior health defense. Already top notice American party book child.\nFirm network story. Arm instead international you window hear.\nCurrent yourself mouth window.','2020-01-02','2023-05-31','in_progress','2021-04-02 15:39:34','2022-09-16 17:18:35',94,'Myanmar'),(12,'You idea move hair capital institution final.','Ok yard large better most two. Clearly skill road strong foot life war.\nWorker give amount entire effort threat. Property than white pressure same. Generation trial Mrs put process side.','walk','While study check necessary receive possible.\nMedical indicate decide tonight month city lead. Tell moment goal claim organization. Information send necessary.','2020-12-15','2023-08-04','in_progress','2021-01-08 02:59:24','2024-04-16 10:23:57',20,'Korea'),(13,'Voice language represent.','Clear seven law. Stock fire center collection.\nCommon through mother. Guess live ahead take. Staff audience fill color other than.','truth','Send nothing throughout reveal situation his really prevent. Human memory dog six behavior society by.','2024-03-19','2020-12-01','cancell','2022-02-15 09:25:54','2021-02-11 05:10:23',83,'Tokelau'),(14,'Now trial administration simply learn.','Despite never strategy grow southern like happy. World challenge concern recently economy half half agreement.\nEmployee start this true. Apply work similar.','they','Seven room senior little prevent decade second. Minute seat great bad wall.\nFace bill election record site structure possible. Respond control cost million teach really its painting.','2022-07-14','2022-06-24','on_hold','2020-10-12 05:15:39','2022-12-02 08:54:05',71,'Bermuda'),(15,'Through role lose off.','Gas indeed personal million expect concern half. Wrong upon yet two avoid interesting unit show.','office','Create right explain moment your top. Current raise modern attention. Often structure such should put guess beyond.\nSeveral near pass full word. Safe central word close.','2023-09-15','2022-01-28','completed','2024-04-22 07:06:19','2023-07-02 04:47:06',46,'France'),(16,'Large play democratic improve though.','Someone light understand risk glass. Personal then husband office themselves step require. Heavy inside article practice every want arrive.','carry','Agreement war machine hand. Realize seat capital join improve member.\nMost common box will. Can reality religious foreign song statement respond.\nMachine meeting husband nice good.','2023-11-16','2023-03-19','completed','2021-04-13 03:45:18','2023-01-03 21:23:59',93,'Saudi Arabia'),(17,'Suggest trade energy high.','Can value whose. They company tree case just.\nMorning entire perhaps early option. Although nearly instead nor collection where development.','pretty','And common often instead. World wind worker air before from. Animal human technology hour theory.\nMeasure full evidence spend good.\nJoin his page not doctor will. Including face the.','2020-06-13','2024-01-02','on_hold','2024-02-06 03:12:00','2023-12-12 05:15:31',6,'Myanmar'),(18,'News too more TV alone rate.','Miss base car despite guess. Machine gun toward. Season sound phone tell whose.\nPeace full piece school issue course mean teacher. Feel major realize news. Stock suffer go against present suddenly.','quite','Fish financial purpose then leave keep improve. Ground garden will page indicate number clear call.\nAssume per certain. Mouth especially than money technology.','2022-11-30','2021-12-07','cancell','2024-05-17 14:37:38','2023-03-09 06:44:03',98,'Djibouti'),(19,'Class same chance drop only level.','Somebody leg event record increase how. Through executive life thing factor hair. Agreement others effort begin senior standard tonight.\nMessage suddenly create fight. Artist involve hair.','seat','Third few medical lawyer. Loss ahead career however past. Lose just cut ever threat of nothing.\nCharacter spring old subject force look use. Reduce section pass after.','2020-09-16','2021-04-22','cancell','2024-05-22 22:54:06','2020-09-21 11:48:39',58,'Lesotho'),(20,'A stock throughout center general.','Owner where art join claim clear ever officer. Authority how huge fight off family. Against debate step level level word.\nArrive reduce market executive would agency often.','let','Family quality tough road society. Everything various move although offer newspaper team off.','2023-01-03','2020-11-04','in_progress','2021-12-29 02:30:00','2022-09-27 22:45:42',19,'Bouvet Island (Bouvetoya)'),(21,'Simple you similar person compare.','Than require south allow. Fast nature religious and quickly. Life second cell use.\nNice sound ten wall position animal. Station almost girl like. Near star bad life evidence.','fear','Foreign personal inside realize wish own understand. Price all song court director participant usually.\nBank local pick. Network star American action. Son southern fear me.','2023-12-25','2023-10-24','on_hold','2021-06-24 04:30:40','2020-12-24 13:18:07',101,'Equatorial Guinea'),(22,'Enjoy force cup blood member.','Effort pretty push bank likely by.\nPrevent listen order same site seat. Season environment interest service. After attack must capital rate our.','attack','Evening product as affect beat visit. Mrs fund word that. On state service law market.\nWe bar day political happy buy truth. Example security Congress.\nCertain age man population ever.','2024-02-26','2022-05-06','in_progress','2022-12-11 09:33:31','2022-06-29 23:41:03',64,'Guadeloupe'),(23,'Positive rather between where head.','Wait either meet possible. Same mission store evening area consumer dream.','try','Production seek rather blood. Bad lot serious possible east.\nTravel defense food us floor strategy. Late various where international.','2023-08-30','2021-01-07','in_progress','2021-05-21 00:18:59','2022-01-21 10:59:58',117,'Niue'),(24,'Last if worry college different conference.','Safe professional religious.\nShow back color shake health theory would through. Prevent better season laugh soon heavy quality. Cell effort space difficult music.','often','Agreement trip figure year too front true. Them city bring possible.\nEight board television indicate boy last mention data. Water red lot actually early enjoy include.','2020-01-22','2020-06-22','cancell','2023-04-11 09:32:19','2021-05-25 09:30:26',29,'Liechtenstein'),(25,'Learn result program drug audience skill.','Mission outside natural work hair television health. Lay play ball group. Gun reduce expect beautiful pass.\nBook skill able military true level.','term','Win economy drop Mr. Morning sport campaign population. Together computer kitchen keep.\nDrug difference animal increase life. Perhaps play stay now. True society benefit character great today.','2021-10-11','2020-10-14','on_hold','2020-12-05 05:18:51','2022-05-02 01:29:33',146,'Cyprus'),(26,'Away thing maybe theory indeed under.','Crime lot subject sign. Behind land practice there newspaper campaign owner. Picture set art relationship approach. Indicate news easy growth.','say','Sometimes close she budget stop reason next case. Throw theory possible itself try serve record heavy. Stock couple heavy material then.','2022-02-26','2022-05-14','in_progress','2020-08-02 06:18:01','2024-01-17 06:54:15',90,'American Samoa'),(27,'Health staff shoulder those himself.','Fly heart car.\nAbility teach catch south party south bed.\nGrow defense result conference. Everyone stop check trial anything mission.','hand','Support already organization including. Once father realize central. Condition day process anyone own.','2023-03-09','2022-07-28','in_progress','2023-04-09 11:22:13','2023-10-02 12:48:53',32,'South Georgia and the South Sandwich Islands'),(28,'Ten put happy dog remain event.','Phone instead plan way. Two yes thing check company. Let put economy brother laugh need. Wonder will politics.\nEither say Republican stock huge. True direction free get maintain consider.','whatever','Must section nature professional according general paper actually. Kid whose various.\nLike idea say thought drop. Head fine member everyone same where.','2022-09-20','2023-10-14','cancell','2023-10-15 11:50:11','2021-05-20 08:20:43',14,'Belize'),(29,'Follow wall price rock floor defense market.','Decade law bank. Feel run nearly know student.\nAll rule hair according. Also media add whom whom production. Cut truth however Mrs.','number','Pattern company that turn impact. Main religious method increase type actually person.\nAgainst with herself rich expert learn. Idea between director those.','2021-08-07','2021-03-14','cancell','2024-01-18 21:21:27','2022-05-17 00:25:41',74,'Estonia'),(30,'Responsibility star end rate media south thus throw.','Girl market wish fall true term. Director let think eight.\nEmployee from nice shake mission opportunity main. Street look gas lay financial top. Newspaper share ready mission turn.','worker','Moment should rich page someone white. Can table me him value man seven.\nMeet forward throw up on yeah student. Production enjoy opportunity nothing interest.','2023-12-26','2020-01-25','on_hold','2024-04-14 23:03:21','2020-11-20 01:07:54',2,'Benin'),(31,'Suddenly want newspaper structure lawyer garden.','Whole treat up agent above voice. Behavior future interest important cut. Who nor just house focus where present. Information management recognize newspaper special structure month.','leave','Yeah feel receive about.\nWhom watch court case blue reason item debate. According ball different each environmental establish.','2024-01-28','2020-07-23','cancell','2022-06-03 04:07:00','2023-01-22 20:01:21',50,'Guam'),(32,'Degree cell popular meet situation set.','Law man read teacher. Crime man red.\nDraw add back behind although. Similar serve arrive stock.\nStock understand rest such sign.','tough','There mother practice one modern step thousand amount. Give buy all provide store.\nYour federal choice front public who yard. Win feel real smile. Way itself item wall. Early prevent bit author.','2023-03-20','2021-04-16','on_hold','2020-01-09 17:13:06','2021-09-12 17:32:52',100,'Congo'),(33,'Wear message employee purpose work role.','Moment movement lawyer. Miss power voice more turn. Stay contain occur technology seven.\nSister citizen work wind. Yes with hair else beautiful hotel true just.','do','Under check early mind. Job back direction tend.\nSuggest range produce international south. Board loss PM life option sea door watch.','2021-05-05','2022-08-28','on_hold','2022-02-13 23:36:45','2021-07-11 22:47:50',109,'Italy'),(34,'Either ago hope easy boy in early.','Pick world scene recognize better compare market.\nDirector threat son adult. Necessary head or candidate beat yet line add. Hospital scene operation rock film.','drop','Song road player exist become table bar. Down laugh activity market choose station. Position without act central this when.','2020-08-03','2023-02-21','in_progress','2020-02-07 19:14:19','2024-01-16 03:52:11',32,'Kiribati'),(35,'Practice suggest better college add.','Weight open cause people prove computer focus. With arrive deal computer popular. Marriage care morning fire into across. Conference affect fish form.','already','Us sure religious. Leg resource story these town scientist door.\nEmployee air case pay moment single quality news. Research history floor black eat fill line.','2023-09-14','2023-07-21','completed','2024-03-26 15:43:00','2024-03-26 21:41:29',42,'Jersey'),(36,'Factor short old short scientist.','Tonight leave concern issue. Teacher follow establish space national knowledge. Director of teach public.','ago','Five thousand different. Life student stay face exactly administration son.\nLetter show beautiful support. History new simply lawyer response director.','2020-06-20','2024-01-01','on_hold','2023-11-13 05:46:27','2023-01-26 12:02:55',99,'Panama'),(37,'Total thousand group rule.','Court hold improve player writer expert street. Man bit national knowledge compare.\nMaintain west authority agency now feel. Reflect behavior newspaper five sister.','wife','Radio president notice land discussion teacher security. Remain cup argue wind material. Situation care start maintain magazine compare. Drug every threat cost.','2021-10-10','2024-04-06','on_hold','2021-08-31 06:15:58','2020-01-30 18:57:18',98,'Saint Pierre and Miquelon'),(38,'Treat on again really analysis.','Occur window one reveal technology. Record detail pattern say lose as option. Story power beat resource.\nAccording practice but floor later tree sense. Federal guy executive floor gun high.','case','Light pick unit. Two every perhaps perhaps race next against production.\nAct first choose one practice. Surface down sense without.','2022-12-07','2022-12-09','completed','2023-01-31 23:54:45','2022-02-27 01:30:39',112,'Uruguay'),(39,'Organization next history any example event side top.','Half left question meet response anything will. It pay range will step save reveal local. Someone others camera.','author','Final much what anyone benefit. Report company according same collection. Suggest modern crime.\nPm figure over far. Environmental war already pull season set record. Less suggest important season.','2024-05-21','2022-12-13','in_progress','2021-12-13 08:56:55','2020-04-16 09:15:40',54,'Nepal'),(40,'Fear help much.','Discuss water new this. Full character so ten.\nArgue together suggest onto. Middle performance party serious visit.','whether','Model allow tree bank artist toward. Sit continue project.\nCenter because conference analysis get. Meet leg family exist picture. Two image human begin career common argue laugh.','2022-05-12','2021-01-26','on_hold','2022-07-14 04:04:58','2020-07-13 16:54:58',86,'Guyana'),(41,'Rock arm imagine actually writer sense thank.','Miss surface action help line glass. Herself their none evening. Order why attention.\nCity where education out wait almost stuff. Visit worry someone notice. Federal follow building must.','form','Bag perform Democrat heart young.\nInvestment want need carry coach foreign. Democrat bill throughout according serious form.','2022-03-04','2023-04-06','completed','2021-05-17 00:40:12','2020-05-25 16:15:18',2,'Slovakia (Slovak Republic)'),(42,'Fund term camera then Republican.','Nature while charge can character mother.\nEvery idea office and. Hard start hospital worker.','significant','Skin page rich sometimes term character. Operation what line possible. Probably style reveal provide physical sit before Democrat.','2022-08-24','2021-05-06','cancell','2024-05-20 02:06:02','2023-05-26 13:25:18',74,'Indonesia'),(43,'Might available consider food.','Claim quality movement can. Experience chance chance common. Long enjoy serve name tonight too.','young','Cover magazine almost someone describe soon. Minute commercial should bag.\nRecently easy left mouth establish. Watch she form interview drop range relationship.','2022-07-28','2022-08-22','cancell','2020-04-16 14:58:53','2023-03-06 11:39:19',18,'Aruba'),(44,'Style admit computer attention necessary father individual.','Call could animal human argue. Now student memory wish tree effort tend onto.\nRoad particular standard. Arm set parent grow how.','be','Lose everything tree produce. Hard important report none beyond. What color kid protect moment.','2020-12-17','2022-08-06','completed','2022-01-28 08:39:33','2022-12-05 14:15:56',16,'Argentina'),(45,'Practice want special say choice.','Name claim drive. Thousand a mean nothing.\nModern political writer action wide require our. Piece scene raise agency mother their.','none','Player police hot attorney five. Understand particular car many military bill.\nPolicy business certainly knowledge class involve.','2021-10-12','2021-12-15','on_hold','2022-08-09 11:51:59','2021-01-14 03:00:02',81,'Spain'),(46,'Allow education sister return finish.','Second ask important mission protect notice treat energy. Nor trip age reflect today head.\nSpecific very interview place middle agreement. Action total stay organization stuff something watch let.','class','Move sure quite five. Continue your book worry.\nTreat more about. Administration draw teach hear.\nChoice evidence chance weight half. Of hear provide show others learn. Behind capital class race.','2023-06-28','2024-07-01','completed','2023-11-10 11:45:42','2020-09-19 21:55:01',36,'Tokelau'),(47,'Position him reveal talk raise professional hot.','Car edge fine force herself person. Change matter behavior then page traditional.\nReason everyone maybe threat foreign know. Need eat they reason staff stop fish coach.','her','Small onto power someone wind. Wind window our reflect name account without state. Feel dream student avoid.\nStudy southern see get. Arrive side attack along approach.','2022-12-29','2022-06-10','cancell','2023-04-29 02:07:14','2023-04-14 18:24:22',119,'Barbados'),(48,'Two material wonder civil.','Commercial attack doctor available pretty of whole area. Push early contain news hold before.\nEasy may figure by figure write recognize. Future growth unit remember. Chair nothing present expect.','economic','Economic enjoy eye contain officer father but leader. Term miss surface bill. Full information laugh argue west later west.\nSea bed even. Tough both possible raise.','2020-02-21','2023-08-24','completed','2023-07-30 12:32:26','2020-09-21 14:33:46',118,'Paraguay'),(49,'Section pressure without manage office follow.','Wish day food find age collection. Event question energy.\nPolitics leave about nor boy. Catch knowledge break beat move indicate pressure. These detail win.','join','Prepare recently issue bill.\nDrop sea majority wrong customer tell office.','2020-07-06','2022-12-02','cancell','2021-05-11 20:45:39','2020-09-27 07:29:58',61,'Venezuela'),(50,'Grow ball call.','Enough citizen act eye.\nSee teacher report three. Foreign but black beyond least service cup. Citizen discuss citizen floor late.','yard','Herself film authority different understand person late. Exactly professor finish onto determine who apply. Myself same sometimes involve report century plan.','2023-03-29','2020-04-15','on_hold','2022-12-19 06:26:19','2022-01-21 22:29:07',22,'Turks and Caicos Islands');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `proyectos_estado`
--

DROP TABLE IF EXISTS `proyectos_estado`;
/*!50001 DROP VIEW IF EXISTS `proyectos_estado`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `proyectos_estado` AS SELECT 
 1 AS `status`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tipos_usuarios`
--

DROP TABLE IF EXISTS `tipos_usuarios`;
/*!50001 DROP VIEW IF EXISTS `tipos_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tipos_usuarios` AS SELECT 
 1 AS `user_type`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT NULL,
  `membership` enum('no','yes') DEFAULT NULL,
  `user_type` enum('mentor','aprentice','company','event hosting') DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'davidparsons','chloerivers@hotmail.com','*%COXiba3j','2024-05-24 11:22:38','2023-08-15 08:08:22','Xavier','Acosta','001-387-343-8609x45561','Finland','active','yes','company'),(2,'danielball','wilsonrobyn@hotmail.com','ug2gmTtOw$','2022-02-01 02:15:14','2021-03-21 09:51:02','Angela','Smith','+1-425-270-2447x81239','Seychelles','active','no','event hosting'),(3,'cody43','fespinoza@gmail.com','%uX)4OwS$1','2021-06-23 11:18:45','2023-02-21 08:26:35','Nicole','Kennedy','268.975.1846','Nicaragua','inactive','no','company'),(4,'jonathon89','john64@gmail.com','JOb@2_KlYa','2022-09-20 04:38:30','2021-08-14 03:49:09','Alison','Thompson','(479)318-1830x95783','French Polynesia','inactive','no','event hosting'),(5,'brandi42','qgallagher@gmail.com','#7V3$Yhmk!','2021-04-08 14:22:24','2023-02-27 07:14:04','Jessica','Bray','001-221-325-6167x944','Saint Kitts and Nevis','active','yes','event hosting'),(6,'marcclay','taylorharris@outlook.com','kz1&1Otu2i','2024-04-19 20:29:21','2020-04-08 00:17:17','Ashley','Massey','001-303-815-7042','Thailand','active','no','mentor'),(7,'thomasjohnson','nicholsonkenneth@hotmail.com','^M40Whb01M','2024-04-22 18:20:10','2020-02-12 12:37:07','Steven','Garcia','+1-882-306-3743x31326','Argentina','active','yes','company'),(8,'lambertsherry','mathisluis@hotmail.com','%2%G+OCnRg','2020-11-20 16:10:33','2023-09-28 13:07:56','Ryan','Carroll','001-780-305-6155x8367','Isle of Man','inactive','yes','company'),(9,'denisewilson','mary38@gmail.com','(TJZ@0WkkX','2020-05-08 04:32:28','2022-05-04 15:17:06','Timothy','Olson','891-291-3284','Denmark','inactive','no','mentor'),(10,'patricia58','debbie04@outlook.com','%%N527Msvn','2020-08-26 06:54:03','2024-07-22 17:42:18','Robert','Thompson','001-732-751-3387x99042','Cameroon','active','no','event hosting'),(11,'cynthiacole','maryleon@hotmail.com','B4Yj&sm1+h','2022-07-06 12:19:27','2020-03-06 11:44:19','April','Little','278-251-1750x509','Mauritania','active','yes','aprentice'),(12,'saramorgan','ngraves@gmail.com','fR(4HSOioh','2021-10-13 21:53:42','2023-01-03 07:45:59','Sarah','Johns','(440)607-2681x4387','Cyprus','active','no','event hosting'),(13,'kiarachavez','smithwilliam@gmail.com','(8wK%QsuM0','2022-03-26 03:42:10','2020-01-12 20:35:03','Rebecca','Mcguire','6438229894','Mayotte','inactive','no','aprentice'),(14,'joancampbell','smithgarrett@gmail.com','vU62+&Mi^(','2023-08-17 00:49:26','2021-12-02 10:07:08','Deanna','Robinson','001-555-495-3837','Saint Vincent and the Grenadines','inactive','no','company'),(15,'bbrown','ydouglas@gmail.com','ul&C0wLf#J','2021-12-24 00:44:44','2022-12-05 14:36:08','Dustin','Hanson','954-886-0218x914','Finland','active','yes','aprentice'),(16,'garrett36','jessicajohnson@hotmail.com','p4$4aWMs$*','2020-05-11 16:57:59','2022-08-15 18:05:25','Michael','Dillon','965-965-4530x784','Netherlands','inactive','yes','event hosting'),(17,'joseph87','adam18@outlook.com','&8sYGNANNe','2021-08-02 17:02:30','2020-05-11 07:20:10','Justin','Romero','358-675-1943','Canada','inactive','yes','mentor'),(18,'crystal31','dwilliams@outlook.com','A!0AzqwY6Y','2021-10-31 19:32:54','2020-10-17 17:08:21','Brian','Cunningham','001-349-271-6279x3582','Austria','inactive','yes','company'),(19,'isanders','christinadoyle@hotmail.com','uN(5ZChm)L','2023-09-11 14:42:52','2024-06-09 06:14:56','Jon','Parsons','(465)349-5411x2708','Svalbard & Jan Mayen Islands','active','yes','company'),(20,'wpena','spencer34@gmail.com',')B01Iv^$NI','2023-04-17 13:56:38','2021-09-01 05:28:10','Charles','Thomas','(330)825-8139x29977','Svalbard & Jan Mayen Islands','active','no','mentor'),(21,'ywillis','hjones@gmail.com','*Pw8DDz7Jt','2020-06-23 11:34:43','2023-09-02 14:38:57','Clifford','Thomas','287.988.3149','Djibouti','inactive','yes','aprentice'),(22,'andrew19','smithmichael@gmail.com','+s0+%I&K*1','2020-11-11 08:53:12','2020-01-07 19:38:28','Tiffany','Williams','+1-927-510-7658x4414','Haiti','active','yes','event hosting'),(23,'gcarr','mooremary@outlook.com','_37KIDk1Tv','2021-03-24 11:58:17','2020-04-07 22:31:06','Eric','Chavez','+1-342-382-1100x43971','Netherlands','active','no','mentor'),(24,'keith93','cindy02@hotmail.com','%6(HClQi$2','2021-01-18 15:21:42','2024-06-21 14:24:32','Lori','Swanson','+1-763-437-1915','Myanmar','active','yes','company'),(25,'aallen','lroth@hotmail.com',')N2!6BuOu!','2020-12-23 00:43:45','2023-03-13 07:10:57','John','Smith','(962)643-5085x6459','Honduras','active','yes','mentor'),(26,'shirley09','whobbs@outlook.com','M9V^9g0+%o','2023-03-31 04:28:54','2023-11-12 01:02:14','Logan','Little','229-506-6055','Rwanda','inactive','yes','company'),(27,'kathleen78','wrightsteven@gmail.com','Qe$6AAo1(n','2022-05-09 19:51:56','2022-09-29 11:12:09','Melissa','Hill','400-993-8626x6860','Norway','active','yes','mentor'),(28,'ilee','gary45@outlook.com','B*DH4Y6+ko','2022-06-26 17:56:36','2023-07-18 00:11:57','Michelle','Pierce','(469)440-8468','Guinea-Bissau','inactive','no','event hosting'),(29,'kelli08','kenneth95@hotmail.com','7p*8VS3n@)','2021-07-04 17:15:24','2021-09-19 06:00:49','Debra','Bradford','397.221.4373','Gibraltar','active','no','aprentice'),(30,'xblanchard','brownjeffrey@gmail.com','(3bNWeiJ)X','2022-04-30 00:25:06','2020-03-03 22:57:18','Matthew','Ayala','5862629003','Falkland Islands (Malvinas)','active','yes','event hosting'),(31,'shannon55','beckerwilliam@outlook.com','X+5Cww44L$','2021-07-07 01:57:54','2024-07-12 19:14:22','Louis','Taylor','(277)412-3100x6345','Guatemala','inactive','no','company'),(32,'brittanyholloway','jonathan53@outlook.com','NPCD7^bjk(','2022-03-02 08:46:29','2021-04-10 08:25:01','Emma','Bender','9343150033','Georgia','active','no','mentor'),(33,'herrerajoseph','cody94@outlook.com','_V9Rdn7g_Q','2023-08-20 02:41:57','2022-09-23 06:14:35','Diana','Jimenez','001-898-297-6275x7143','El Salvador','inactive','no','event hosting'),(34,'zpayne','zolson@hotmail.com','@3m3s%pgcY','2021-03-24 12:01:37','2021-09-07 20:22:16','Jose','Nichols','+1-981-291-8497','Eritrea','active','yes','company'),(35,'williamstabitha','jonesdaniel@outlook.com','+dG3G&Pjkj','2020-11-07 23:37:57','2024-05-18 21:41:00','Mark','Padilla','737.638.2599x50633','Pakistan','inactive','no','mentor'),(36,'yzimmerman','garciamatthew@gmail.com','!k*WiQRks3','2021-10-10 09:41:38','2022-04-24 07:50:11','Gregory','Flores','664.856.0875','Montserrat','inactive','yes','aprentice'),(37,'zacharyhull','khanamy@outlook.com','L6Gx935e)y','2021-10-25 10:17:03','2024-04-30 08:29:06','Jennifer','Johnson','(425)311-9075x3967','Suriname','inactive','yes','aprentice'),(38,'christopherchapman','bbarton@hotmail.com','%#CywOvc^2','2024-02-16 13:01:14','2024-08-16 00:38:11','David','Cox','827.318.9159x085','Cocos (Keeling) Islands','active','no','event hosting'),(39,'peter32','derrick96@gmail.com','M_Za$_d%(6','2022-09-04 03:21:03','2022-01-01 01:23:10','Craig','Walker','629-899-6309x26878','Timor-Leste','inactive','no','aprentice'),(40,'pamela21','ryan28@hotmail.com','HESMVZKw(0','2022-11-05 23:18:43','2020-09-05 14:46:13','Steven','Chapman','+1-965-642-3022x57422','Gibraltar','active','yes','company'),(41,'davisjames','smithkyle@outlook.com','T+M70dSw3g','2023-07-12 23:34:36','2021-07-24 08:09:46','Tonya','Lowery','997-736-1553x225','Niue','inactive','no','company'),(42,'michellehernandez','ulandry@hotmail.com','4P_K4Npm*e','2022-09-24 21:29:55','2023-05-24 10:04:13','Kimberly','Mueller','(718)796-3935x66349','Congo','active','no','company'),(43,'bbender','shaunpratt@hotmail.com','^4ZAZmahI1','2021-08-09 13:21:01','2023-04-16 18:11:57','Samantha','Garcia','(764)465-2159x658','Rwanda','active','no','aprentice'),(44,'tamiswanson','hoffmanlisa@gmail.com','S29t4Iq4+t','2022-03-06 06:41:36','2023-06-01 05:15:59','Heidi','Brooks','666.256.9755','Holy See (Vatican City State)','active','no','mentor'),(45,'harmonveronica','sarah90@gmail.com','(DqDl%o^%1','2022-11-18 08:08:56','2020-07-31 22:44:40','David','Rosales','(646)547-2083x78096','Ghana','active','yes','aprentice'),(46,'ashleycooper','ricardorodriguez@gmail.com','&!3fGn!D)o','2022-01-04 03:46:34','2023-11-13 01:32:51','Brooke','Bullock','523-509-3863x173','Guyana','active','yes','event hosting'),(47,'darius01','tdavis@gmail.com','%rXqr%m_N8','2023-09-07 02:33:43','2020-10-09 19:08:55','Adam','Reyes','+1-307-744-9582','Japan','inactive','no','mentor'),(48,'nicole49','morrisjessica@outlook.com','$05psPfqO#','2023-02-03 10:01:43','2023-07-29 17:24:45','Cheryl','Santos','+1-276-909-5044x0167','Guyana','active','no','aprentice'),(49,'charles15','alexis61@outlook.com','yB8vHEjjp+','2022-09-03 08:19:38','2023-04-04 00:17:15','Brenda','Brooks','428.736.5915','Ireland','inactive','yes','event hosting'),(50,'patrick92','ugutierrez@hotmail.com','(6qeWu8ugL','2020-09-18 17:29:05','2023-06-05 04:11:35','Melinda','Dodson','(865)582-7571','Poland','active','no','event hosting'),(51,'williamsjoseph','jonathon17@outlook.com',')MMW82KbP#','2022-05-23 12:02:19','2022-05-15 14:29:00','Sharon','Raymond','001-327-628-4976x553','Cocos (Keeling) Islands','active','yes','event hosting'),(52,'justin82','simsantonio@outlook.com','gF3DAt@e*4','2024-01-29 03:55:00','2024-07-23 18:13:48','Curtis','Mccarthy','001-392-205-3796x00997','Argentina','inactive','no','aprentice'),(53,'mdonovan','emily40@gmail.com','W%G08sVeow','2022-02-04 14:17:00','2021-06-19 13:03:07','Walter','Sanchez','001-406-787-6417x383','New Caledonia','inactive','yes','event hosting'),(54,'andrewsmith','pjenkins@outlook.com','^CV2TDujx6','2020-09-27 01:09:41','2022-09-19 05:18:53','Edward','Martin','+1-389-724-5985x26321','Marshall Islands','active','yes','mentor'),(55,'jenniferpace','bridgetanderson@outlook.com','_9h3ULs%xP','2022-07-05 01:38:16','2022-08-24 23:54:02','Sandy','Martin','(660)207-4474x258','Tajikistan','inactive','yes','aprentice'),(56,'lisa46','lisablake@hotmail.com','(gFMUGrxJ8','2022-09-23 19:00:35','2021-03-05 07:20:07','Dana','Stevens','360-647-9161x447','Nauru','inactive','yes','aprentice'),(57,'hudsonstephanie','hrodriguez@outlook.com','!95#KbtCJh','2021-06-16 22:55:55','2022-02-19 09:24:00','Patrick','Rodriguez','381-368-4774x50537','Philippines','inactive','no','aprentice'),(58,'pearsonjessica','grimesjessica@gmail.com','%7TQHGuQ72','2020-08-03 10:18:00','2023-11-27 05:25:52','Susan','Frazier','679.789.6057x41671','Marshall Islands','active','yes','mentor'),(59,'gpotter','angelaford@hotmail.com','Abs2J&vLP(','2022-06-28 21:20:32','2023-10-22 11:00:35','Laura','Dawson','+1-656-995-0648x0463','Tuvalu','inactive','no','mentor'),(60,'arnoldadam','nsmith@hotmail.com','L_)0JekLB)','2024-03-25 11:48:11','2021-02-10 13:51:49','Christopher','Ray','+1-690-662-8352x23659','Fiji','active','no','company'),(61,'wesley86','rlogan@outlook.com','Fet1uVCA%$','2023-02-08 23:41:40','2021-07-17 01:50:17','Joseph','Cameron','618-926-6413','Nauru','active','no','mentor'),(62,'rebecca88','bakercassandra@gmail.com','DnL6DalyG$','2022-12-17 10:55:25','2020-11-21 10:58:00','Melissa','Hull','220.536.9081','Congo','active','yes','company'),(63,'steven44','tperez@hotmail.com','lJXkxk#s+3','2020-06-20 16:11:59','2022-01-22 05:03:07','Wendy','Jones','976-263-2940x886','Turks and Caicos Islands','active','no','company'),(64,'santiagolauren','marcus86@gmail.com','X#Q*1Ytapm','2022-12-30 12:06:08','2022-07-25 03:04:45','Stephanie','Weaver','995.287.5083','Macao','active','no','event hosting'),(65,'marcus32','kylewilliams@gmail.com','Yu78OMQf)S','2020-03-03 19:30:05','2023-10-12 22:41:30','Kristin','Townsend','2905598200','Tunisia','inactive','no','mentor'),(66,'belinda92','martinpeggy@outlook.com','!7U7tb)R_r','2023-11-23 17:29:27','2020-12-09 22:52:09','Charles','Green','831-789-6864','Mauritius','active','no','event hosting'),(67,'anna41','victoria72@outlook.com','!15nG1TxoX','2023-04-11 05:09:53','2023-04-24 03:03:08','Kevin','Davidson','001-548-257-2910','Rwanda','active','yes','company'),(68,'hcarpenter','lacey40@outlook.com','3QTA$Vmv&D','2023-07-15 22:32:41','2024-08-11 03:23:54','Elizabeth','Allen','001-263-384-0174x42437','Norfolk Island','active','no','aprentice'),(69,'kelseyross','jasonjacobs@outlook.com','CIy2+ZLct)','2023-03-02 07:52:55','2022-02-18 02:59:50','Jose','Gregory','652-487-5355','Paraguay','inactive','no','company'),(70,'delgadopamela','rhondaduffy@hotmail.com','+fUFJY0!2F','2023-12-06 11:43:19','2024-05-24 04:55:11','Brett','Rios','(474)503-4061','Nicaragua','active','no','aprentice'),(71,'marydavis','alyssacooley@gmail.com','kh$5nPPdB#','2024-02-07 14:30:40','2020-01-20 06:37:10','Victoria','Robinson','(664)412-2489x8270','Zambia','inactive','no','aprentice'),(72,'kathrynwise','lsimpson@gmail.com','%6XT0KK)w8','2022-05-05 18:03:13','2023-03-28 21:56:14','Sylvia','Johnson','531.708.1335x480','Sao Tome and Principe','inactive','yes','company'),(73,'mccoyamy','iperez@outlook.com','#1*BIOlUoK','2021-01-20 19:04:03','2023-07-02 04:53:23','Tiffany','Castaneda','(870)568-5459','British Virgin Islands','active','yes','aprentice'),(74,'pthompson','vanessashelton@gmail.com','@n!Jes^l7u','2020-12-09 07:59:50','2023-08-14 23:38:01','Stacie','Jackson','001-971-607-4416x42086','Micronesia','active','no','company'),(75,'westnicholas','srobinson@outlook.com','@j!UeMnz65','2021-09-20 15:16:14','2023-06-07 04:26:47','Marie','Watkins','+1-845-727-7674x16544','Russian Federation','inactive','no','company'),(76,'pjohnson','courtneystevenson@gmail.com','&6GCYXVyjV','2021-02-07 20:06:51','2023-08-24 05:03:12','James','Clayton','001-258-385-5419x50578','Andorra','active','yes','mentor'),(77,'michaelaguilar','kyle22@gmail.com','uSi8_JqkF*','2024-03-17 03:24:49','2024-02-05 02:16:29','Sean','Weber','001-585-408-1375','Russian Federation','inactive','yes','mentor'),(78,'stonerachel','jeremiah88@hotmail.com',')PxXR5jo+9','2021-02-03 19:57:26','2023-08-23 11:07:16','Elizabeth','Torres','819-672-6080x18049','Oman','inactive','yes','event hosting'),(79,'nicholas53','benjamin56@outlook.com','*0&IcLmxxA','2023-02-05 10:36:30','2024-01-24 12:53:58','Mark','Irwin','738.756.5196','Bhutan','active','yes','company'),(80,'thomas67','zmayer@gmail.com','bXvF1&Cfp(','2021-06-20 04:58:04','2020-12-28 07:38:38','Emily','Fernandez','(276)388-6286x41172','Macao','active','yes','event hosting'),(81,'jodijohnson','xwilson@hotmail.com','zy!3GSus_3','2021-10-25 06:29:34','2023-08-06 23:33:17','Antonio','Schroeder','001-779-823-0567x475','American Samoa','active','no','mentor'),(82,'rodriguezmichael','carlosandrews@gmail.com','N#$jh9Kp6!','2021-05-04 09:16:03','2022-12-30 06:26:42','William','Bass','841.496.0920x19511','Saint Martin','inactive','no','mentor'),(83,'vincentjose','melissa67@gmail.com','OY1Ya@d)i!','2020-09-22 16:49:50','2024-03-28 08:56:26','Shelly','Snow','+1-729-536-6463x4794','Aruba','active','no','event hosting'),(84,'frank45','edecker@outlook.com','#mWK5Zcy8j','2021-06-26 15:28:39','2024-08-11 10:57:56','Blake','Baxter','001-265-868-4408','Niue','active','yes','aprentice'),(85,'destinyjohnson','pmitchell@hotmail.com','%pHDd9_p5%','2024-08-16 01:14:36','2020-08-09 09:44:24','James','Pugh','+1-976-464-1854','Croatia','inactive','yes','mentor'),(86,'selena55','toddjulie@gmail.com','!)4LDv)6wP','2023-08-16 04:22:42','2023-05-17 13:52:45','Jacqueline','Lara','282-437-8854x50409','Ethiopia','active','no','company'),(87,'johncain','jonesdonna@outlook.com',')2f@u1CCCn','2024-03-18 09:14:11','2023-11-29 23:50:44','Danielle','Martinez','538-951-0031','Svalbard & Jan Mayen Islands','active','yes','company'),(88,'thomasanne','crystal39@hotmail.com','8d^BTd%9$Y','2022-09-09 19:18:18','2020-08-03 20:03:39','Mark','Lewis','001-255-664-9448x567','Serbia','active','yes','company'),(89,'edelgado','joseph83@gmail.com','5jGuUamA)v','2020-11-16 06:17:53','2023-09-18 12:38:49','Nicole','Thompson','712.698.5934x186','British Virgin Islands','active','no','company'),(90,'brianoliver','james91@outlook.com','**7AbQrKl6','2020-06-27 18:43:07','2021-08-26 03:03:27','Amy','Williams','(471)784-1308','Iraq','inactive','yes','aprentice'),(91,'lewisderrick','daniel97@gmail.com','EKk7Iyt^H#','2023-08-18 08:52:10','2023-04-12 15:02:18','Patricia','Medina','001-424-970-0037x51174','Ghana','inactive','yes','company'),(92,'coxjennifer','timothy52@gmail.com','1miOcdL6^n','2020-07-18 14:50:44','2022-07-12 04:39:42','Jane','Beltran','503.453.5241','United States Virgin Islands','inactive','no','mentor'),(93,'lclark','dmarsh@hotmail.com','(Am!9Jqmig','2020-07-21 18:38:16','2023-11-28 04:48:27','Kathy','Daniels','+1-769-881-4352x643','Nicaragua','active','yes','aprentice'),(94,'edwardfoster','sscott@outlook.com','1p)4PHr^Kw','2020-09-03 03:10:06','2020-08-24 10:00:21','Kenneth','Mitchell','+1-269-307-2657','British Indian Ocean Territory (Chagos Archipelago)','active','no','company'),(95,'mmullins','phillip34@gmail.com','uz#1TsbJ6R','2023-08-02 02:24:28','2024-05-06 11:01:41','Nicole','Peterson','453.400.3974','Mongolia','inactive','yes','mentor'),(96,'rwilliams','jennifer84@hotmail.com','!9M0)eCl&4','2022-12-31 05:40:55','2024-02-28 12:24:28','Mike','Hood','562-935-7491x958','United Arab Emirates','active','yes','aprentice'),(97,'michaelgreen','jasonstokes@hotmail.com','$0Bv)_gFPS','2024-01-13 20:27:16','2024-01-20 08:21:16','Jeffery','Brown','+1-452-520-1890','Iran','active','yes','company'),(98,'lmartin','odonnellregina@outlook.com','!2ULd*A4fR','2023-07-26 06:33:15','2023-06-15 17:35:43','Brandon','Houston','478-921-6806x725','Taiwan','inactive','yes','mentor'),(99,'spearspatrick','cynthia51@hotmail.com','3_(8UzmMzZ','2020-03-26 05:49:57','2022-08-23 09:38:25','Candice','Powell','+1-439-644-8611x521','New Zealand','inactive','yes','event hosting'),(100,'bdavis','alexandrarandolph@hotmail.com','blZSI+Ho#3','2021-08-13 02:26:11','2024-03-03 10:16:20','Steven','Shannon','(754)761-0821','Brazil','active','no','event hosting'),(101,'currydouglas','josephfriedman@hotmail.com','9pnZtfHk&3','2024-05-28 22:15:54','2021-09-20 16:54:47','Tim','Cross','226.790.7720x1508','French Guiana','inactive','yes','company'),(102,'john69','jacobkim@outlook.com','651zYlON8$','2024-05-19 20:33:57','2022-02-17 12:44:02','Jacob','Lopez','(786)519-7805x80312','French Southern Territories','active','yes','company'),(103,'rebeccaholmes','fisherkristen@outlook.com','!8Xqaw$wti','2024-05-05 18:00:57','2021-10-28 10:26:44','Crystal','Joseph','+1-396-219-8671x629','Jamaica','inactive','yes','aprentice'),(104,'emilybyrd','william20@hotmail.com','+Ug7VWmrN5','2023-01-02 15:07:34','2024-05-19 05:06:57','James','Lane','(512)556-4525','Bangladesh','inactive','no','company'),(105,'jenkinstimothy','jperkins@outlook.com','^9Xs8YsJKb','2020-01-01 12:48:23','2021-12-20 15:12:08','Nathan','Michael','(642)336-9752x494','Denmark','active','yes','company'),(106,'ortizeric','jodylong@hotmail.com','@KqE^xvz+2','2024-01-07 22:01:17','2020-03-31 07:29:26','Terri','Evans','726.947.4655x38596','United Arab Emirates','active','no','company'),(107,'loriflynn','johnsoncassandra@gmail.com','HM(2RLceCO','2021-05-21 09:37:16','2020-08-22 17:39:13','Jessica','Simmons','398-750-1357x9367','Solomon Islands','active','no','event hosting'),(108,'marysanchez','griffinbeverly@hotmail.com','!HcxQMoY3w','2021-06-16 09:32:55','2021-09-02 05:28:19','Cheryl','Lee','553-261-4238x81099','Niger','active','no','company'),(109,'jenniferking','jennifer28@hotmail.com','Ul6iMMny!*','2023-01-01 23:47:30','2020-02-13 09:11:12','Jeffrey','Bailey','(746)952-0120x89646','Svalbard & Jan Mayen Islands','inactive','yes','mentor'),(110,'vmorris','benjaminellis@gmail.com','+0P99vpg(c','2024-02-02 00:10:17','2023-09-23 16:09:56','Stacy','Vazquez','735.669.2628','Antigua and Barbuda','inactive','no','mentor'),(111,'whoffman','zlandry@hotmail.com','20de5L%p^@','2023-04-25 23:25:13','2023-08-16 18:38:28','Barbara','Garza','(476)614-6340','Lithuania','active','yes','mentor'),(112,'preid','thomasmiranda@hotmail.com','9$I$4Vny_u','2023-05-25 07:59:57','2021-02-28 17:45:16','April','King','6193597682','Equatorial Guinea','inactive','no','event hosting'),(113,'natalie25','bruce74@gmail.com','hl4n6C$ky@','2020-09-16 11:34:52','2024-06-10 08:33:50','Yolanda','Barber','001-909-259-2630','Cuba','active','yes','mentor'),(114,'robbinspatrick','rachaelharris@outlook.com','rx6&5Qct!+','2023-07-18 11:55:57','2022-06-14 02:43:31','Jonathon','Parker','688-648-1082','Tunisia','active','yes','event hosting'),(115,'andradesarah','jenkinsjohn@outlook.com','%Mi9HfeRw7','2022-10-15 08:59:27','2023-05-29 10:24:51','Kristen','Pittman','(631)808-4484','Luxembourg','active','no','mentor'),(116,'phillipssarah','davidfoster@hotmail.com','L0C9Um+m)i','2023-02-16 02:47:04','2024-07-06 11:28:21','Ashley','Valentine','297.402.7627','Mozambique','active','no','company'),(117,'jessicanorton','pleon@outlook.com','d4nETJts%q','2023-09-06 13:02:46','2020-01-21 20:42:32','Angela','Dunn','+1-530-765-7895x1192','Antarctica (the territory South of 60 deg S)','active','yes','aprentice'),(118,'tgoodman','dicksondonna@outlook.com','E@b1rS)i&$','2021-05-14 18:47:36','2021-09-22 18:58:52','Holly','Schultz','629.663.1292x736','Zimbabwe','active','no','mentor'),(119,'jamieparker','ricky35@hotmail.com','B_4wkWM0Ru','2023-07-23 11:49:50','2021-03-17 11:02:44','Gabrielle','Barker','728.248.1627','Lithuania','active','no','mentor'),(120,'christopher93','stevetucker@outlook.com',')xOcQ_eQz5','2023-09-04 17:26:58','2024-04-23 21:19:09','Dawn','Jimenez','709-232-4014x9667','United States of America','inactive','no','mentor'),(121,'clarklarry','shirleybennett@gmail.com','khXK_b3E_0','2023-12-11 13:15:41','2022-02-24 17:13:52','Elizabeth','Nichols','734.940.8386x42296','Brunei Darussalam','active','yes','company'),(122,'kennedysarah','crystalporter@gmail.com','#3$u6)Vgu!','2021-09-19 23:04:28','2023-06-16 06:49:01','Thomas','Cisneros','552.772.6450','Gabon','active','no','company'),(123,'johnsonbrian','jeff89@outlook.com','p$wY84u(!0','2020-02-20 04:43:20','2021-04-14 15:37:27','Madison','David','683-774-3319x799','Ecuador','inactive','no','company'),(124,'keith16','robertstone@outlook.com','55hNLItf+U','2021-06-27 01:05:16','2021-12-11 16:42:46','Mariah','Chandler','+1-431-782-6249','Zimbabwe','active','yes','event hosting'),(125,'smithstephen','vincentwang@gmail.com','k7@(MF$j)o','2022-11-20 09:11:15','2024-08-03 14:09:46','Nicole','Ward','001-352-923-6134x1985','Algeria','inactive','yes','aprentice'),(126,'ipierce','brianpeterson@hotmail.com','$h3DpY3bLr','2024-04-18 12:44:03','2024-05-11 01:59:59','Sharon','Smith','001-223-966-5655x310','Venezuela','active','yes','aprentice'),(127,'apetersen','ashleyshannon@gmail.com','$9#p^DzY^5','2020-07-15 17:37:38','2023-04-14 00:41:31','Stephen','Obrien','6745466706','Gabon','inactive','yes','company'),(128,'tina40','brookecarrillo@gmail.com','!qWvvl1r7N','2021-11-16 18:15:46','2024-04-23 20:44:48','Jill','Lee','714.996.5460x95004','Malta','inactive','no','event hosting'),(129,'sharonparker','david32@outlook.com','@3nrON0o%^','2022-11-28 07:02:48','2021-09-28 08:14:44','Stanley','Conrad','(229)466-8760x0738','Tunisia','active','no','company'),(130,'richard94','djohnson@outlook.com','#52U7+at1k','2022-01-11 02:04:35','2023-07-19 15:41:40','Theresa','Perry','(402)293-3538x46443','French Guiana','active','no','aprentice'),(131,'jamiecunningham','lawsonmary@gmail.com','OV5ZgOesU*','2024-05-13 01:03:41','2021-08-05 16:33:15','Amy','Martinez','001-251-557-0246x54435','Belgium','inactive','no','event hosting'),(132,'thomashorton','ellenmueller@hotmail.com','(h1NdZWz8(','2020-04-11 11:12:02','2023-05-21 01:34:44','Christopher','Heath','001-542-839-8914x955','Uruguay','inactive','yes','aprentice'),(133,'wrightmelanie','chelseanewton@outlook.com','cGwl00Lg(@','2022-01-31 06:27:01','2022-12-19 05:19:07','Jill','Powers','850.362.6867x9719','Tonga','active','yes','event hosting'),(134,'samantha40','ichase@hotmail.com','v+!1T5jZE+','2023-01-22 16:27:13','2021-08-06 16:15:11','Sharon','Walton','001-521-455-5823x946','Comoros','active','no','event hosting'),(135,'jason72','gonzaleztrevor@gmail.com','kLK(Li7x+0','2020-09-20 04:23:55','2023-07-18 11:12:49','Alexa','Edwards','001-663-680-5711x114','Namibia','active','yes','mentor'),(136,'tiffany51','nelsontheresa@gmail.com','d!3NbHyeIu','2020-05-25 04:14:10','2023-12-21 19:15:09','Christopher','Garrett','8043643197','Micronesia','active','yes','mentor'),(137,'hansonrita','eric15@outlook.com',')$7WekqS@c','2024-07-03 10:49:10','2024-06-09 03:09:20','Kirk','Hernandez','001-765-436-4527x282','Myanmar','inactive','yes','event hosting'),(138,'vglover','sean19@outlook.com','I_wVP4#jaA','2022-08-15 16:18:32','2020-06-22 02:13:16','Jacqueline','Hodges','+1-323-824-0880x428','Grenada','inactive','no','event hosting'),(139,'angelaford','slewis@outlook.com','E$T7F)l!5W','2022-12-04 10:01:34','2021-08-14 13:11:27','Heather','Salazar','+1-841-395-4206x1279','Belgium','active','yes','mentor'),(140,'spencercatherine','dclark@outlook.com','%eTs4mUM82','2023-06-04 23:29:50','2020-05-25 05:18:25','Stacy','Mejia','001-852-782-9278x717','Malta','inactive','yes','event hosting'),(141,'scottcourtney','patriciarice@outlook.com','_O4VVz7g+P','2020-06-28 12:53:55','2022-02-21 21:35:49','Kimberly','Scott','001-286-957-1026x2424','Lebanon','active','yes','aprentice'),(142,'christinecarter','emily08@gmail.com','OrWk*cBa!4','2022-09-10 16:55:30','2022-07-01 10:21:22','Traci','Johnson','(719)526-1212','Svalbard & Jan Mayen Islands','active','yes','company'),(143,'uroberts','qshannon@outlook.com','_7HQMuJfT+','2021-10-01 11:58:59','2021-08-25 05:19:30','Jeremy','Patel','(228)362-3749','Norfolk Island','inactive','yes','aprentice'),(144,'hartjesse','calhoundawn@outlook.com','W4DDFwXi&6','2020-06-02 01:35:59','2022-06-15 12:14:30','Brittany','Thomas','(925)504-0509x030','United Kingdom','active','yes','event hosting'),(145,'turnerrebecca','rebecca15@outlook.com','g7nGYY8f)4','2022-08-16 23:59:41','2021-04-04 14:17:48','Tina','Levy','+1-767-368-0046x94628','Bosnia and Herzegovina','active','no','mentor'),(146,'dawsonthomas','kellynatalie@hotmail.com','oL*!$1sv+2','2023-12-25 05:35:47','2022-10-17 19:05:03','Rachel','Reyes','+1-216-276-0567x10244','Eritrea','inactive','yes','mentor'),(147,'klang','smorris@hotmail.com','%GJMQlCuh8','2024-08-07 02:10:18','2022-02-18 06:34:19','Brian','Richardson','001-446-823-1979x3114','Vietnam','active','yes','event hosting'),(148,'marissaortiz','lamsamantha@outlook.com','g9Go#H)Z_v','2022-07-13 04:50:46','2024-06-12 18:25:52','Maureen','Salas','(888)370-4776x436','Moldova','active','no','event hosting'),(149,'ihernandez','griffithalbert@outlook.com','MS@8Bo*k!E','2021-09-09 17:57:49','2020-01-08 15:11:13','David','Schaefer','937-604-6163','Yemen','inactive','no','event hosting'),(150,'gerickson','angela90@gmail.com',')^A*Zxkj2^','2022-07-17 07:50:09','2023-01-30 09:57:30','Frances','Conley','293.436.2325','Guadeloupe','inactive','no','mentor');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `usuarios_mienbros`
--

DROP TABLE IF EXISTS `usuarios_mienbros`;
/*!50001 DROP VIEW IF EXISTS `usuarios_mienbros`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usuarios_mienbros` AS SELECT 
 1 AS `membership`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `usuarios_pais`
--

DROP TABLE IF EXISTS `usuarios_pais`;
/*!50001 DROP VIEW IF EXISTS `usuarios_pais`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usuarios_pais` AS SELECT 
 1 AS `country`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'proyecto_final'
--

--
-- Dumping routines for database 'proyecto_final'
--
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_pasantia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `actualizar_pasantia`(
    IN p_id_internships INT,
    IN p_status ENUM('available', 'unavailable')
)
BEGIN
    UPDATE internships
    SET
        status = p_status
    WHERE id_internships = p_id_internships;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_proyectos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `actualizar_proyectos`(
IN p_id_project INT,
IN p_status ENUM('in_progress', 'completed', 'on_hold', 'cancell'),
IN p_country VARCHAR(255)
)
BEGIN
    UPDATE projects
    SET
        status = p_status,
        country = p_country
    WHERE id_project = p_id_project;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `actualizar_usuario`(
    IN p_id_user INT,
    IN p_username VARCHAR(255),
    IN p_status ENUM('active', 'inactive'),
    IN p_membership ENUM('no', 'yes')
)
BEGIN
    UPDATE users
    SET username = p_username,
        status = p_status,
        membership = p_membership,
        updated_at = NOW()
    WHERE id_user = p_id_user;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `Mentoria_mentor_total`
--

/*!50001 DROP VIEW IF EXISTS `Mentoria_mentor_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Mentoria_mentor_total` AS select `m`.`id_mentor` AS `id_mentor`,concat(`u`.`first_name`,' ',`u`.`last_name`) AS `fullname`,`m`.`specialty` AS `specialty`,count(`mento`.`id_mentoring`) AS `total_mentorings` from ((`mentors` `m` join `users` `u` on((`m`.`id_user` = `u`.`id_user`))) left join `mentorings` `mento` on((`m`.`id_mentor` = `mento`.`mentor`))) group by `m`.`id_mentor`,`u`.`username`,`m`.`specialty` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Pasantia_disponible`
--

/*!50001 DROP VIEW IF EXISTS `Pasantia_disponible`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Pasantia_disponible` AS select `i`.`id_internships` AS `id_internships`,`i`.`title` AS `title`,`i`.`date_start` AS `date_start`,`i`.`date_end` AS `date_end`,`i`.`status` AS `status`,`c`.`name` AS `company` from (`internships` `i` join `companies` `c` on((`i`.`company` = `c`.`id_company`))) where (`i`.`status` = 'available') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `analisis_proyecto`
--

/*!50001 DROP VIEW IF EXISTS `analisis_proyecto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `analisis_proyecto` AS select `p`.`id_project` AS `id_project`,`p`.`title` AS `title`,`p`.`description` AS `description`,`p`.`status` AS `status`,`p`.`date_start` AS `date_start`,`p`.`date_end` AS `date_end`,`p`.`country` AS `country`,(`p`.`date_end` - `p`.`date_start`) AS `duration_days` from `projects` `p` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `compañia_activa`
--

/*!50001 DROP VIEW IF EXISTS `compañia_activa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `compañia_activa` AS select `c`.`id_company` AS `id_company`,`c`.`name` AS `company_name`,`c`.`email` AS `email`,`c`.`location` AS `location`,`c`.`phone` AS `phone`,`c`.`country` AS `country`,`u`.`status` AS `user_status` from (`companies` `c` join `users` `u` on((`c`.`created_by_id` = `u`.`id_user`))) where (`u`.`status` = 'active') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `compañia_estado`
--

/*!50001 DROP VIEW IF EXISTS `compañia_estado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `compañia_estado` AS select `c`.`id_company` AS `id_company`,`c`.`name` AS `company_name`,`c`.`email` AS `email`,`c`.`location` AS `location`,`c`.`phone` AS `phone`,`c`.`country` AS `country`,`u`.`status` AS `user_status` from (`companies` `c` join `users` `u` on((`c`.`created_by_id` = `u`.`id_user`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `compañia_pais`
--

/*!50001 DROP VIEW IF EXISTS `compañia_pais`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `compañia_pais` AS select `companies`.`country` AS `country`,count(0) AS `count` from `companies` group by `companies`.`country` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `especialidades_mentores`
--

/*!50001 DROP VIEW IF EXISTS `especialidades_mentores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `especialidades_mentores` AS select `m`.`id_mentor` AS `id_mentor`,concat(`u`.`first_name`,' ',`u`.`last_name`) AS `fullname`,`m`.`specialty` AS `specialty`,`m`.`profession` AS `profession` from (`mentors` `m` join `users` `u` on((`m`.`id_user` = `u`.`id_user`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `informe_compañias`
--

/*!50001 DROP VIEW IF EXISTS `informe_compañias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `informe_compañias` AS select `c`.`id_company` AS `id_company`,`c`.`name` AS `name`,`c`.`email` AS `email`,`c`.`location` AS `location`,`c`.`phone` AS `phone`,`c`.`country` AS `country`,count(distinct `e`.`id_event`) AS `total_events`,count(distinct `i`.`id_internships`) AS `total_internships` from ((`companies` `c` left join `events` `e` on((`c`.`id_company` = `e`.`asocieted_company`))) left join `internships` `i` on((`c`.`id_company` = `i`.`company`))) group by `c`.`id_company` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pasantia_estado`
--

/*!50001 DROP VIEW IF EXISTS `pasantia_estado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pasantia_estado` AS select `internships`.`status` AS `status`,count(0) AS `count` from `internships` group by `internships`.`status` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `proyectos_estado`
--

/*!50001 DROP VIEW IF EXISTS `proyectos_estado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `proyectos_estado` AS select `projects`.`status` AS `status`,count(0) AS `count` from `projects` group by `projects`.`status` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tipos_usuarios`
--

/*!50001 DROP VIEW IF EXISTS `tipos_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tipos_usuarios` AS select `users`.`user_type` AS `user_type`,count(0) AS `count` from `users` group by `users`.`user_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usuarios_mienbros`
--

/*!50001 DROP VIEW IF EXISTS `usuarios_mienbros`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `usuarios_mienbros` AS select `users`.`membership` AS `membership`,count(0) AS `count` from `users` group by `users`.`membership` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usuarios_pais`
--

/*!50001 DROP VIEW IF EXISTS `usuarios_pais`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `usuarios_pais` AS select `users`.`country` AS `country`,count(0) AS `count` from `users` group by `users`.`country` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-22 13:51:30
