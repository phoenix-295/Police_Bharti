-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: security_police_bharti
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `my_aspnet_applications`
--

DROP TABLE IF EXISTS `my_aspnet_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_applications`
--

LOCK TABLES `my_aspnet_applications` WRITE;
/*!40000 ALTER TABLE `my_aspnet_applications` DISABLE KEYS */;
INSERT INTO `my_aspnet_applications` VALUES (1,'/','MySQL Role provider');
/*!40000 ALTER TABLE `my_aspnet_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_membership`
--

DROP TABLE IF EXISTS `my_aspnet_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_membership` (
  `userId` int NOT NULL,
  `Email` varchar(128) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  `Password` varchar(128) NOT NULL,
  `PasswordKey` char(32) DEFAULT NULL,
  `PasswordFormat` tinyint DEFAULT NULL,
  `PasswordQuestion` varchar(255) DEFAULT NULL,
  `PasswordAnswer` varchar(255) DEFAULT NULL,
  `IsApproved` tinyint(1) DEFAULT NULL,
  `LastActivityDate` datetime DEFAULT NULL,
  `LastLoginDate` datetime DEFAULT NULL,
  `LastPasswordChangedDate` datetime DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `IsLockedOut` tinyint(1) DEFAULT NULL,
  `LastLockedOutDate` datetime DEFAULT NULL,
  `FailedPasswordAttemptCount` int unsigned DEFAULT NULL,
  `FailedPasswordAttemptWindowStart` datetime DEFAULT NULL,
  `FailedPasswordAnswerAttemptCount` int unsigned DEFAULT NULL,
  `FailedPasswordAnswerAttemptWindowStart` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_membership`
--

LOCK TABLES `my_aspnet_membership` WRITE;
/*!40000 ALTER TABLE `my_aspnet_membership` DISABLE KEYS */;
INSERT INTO `my_aspnet_membership` VALUES (1,'nikhil295@gmail.com','','iSJfCYhYs0Xrayh2dXqXvHlk5Ul4/8Z/gUFy896OJVw=','L4N8uGKD9J0femSZsg88Eg==',1,'1','MV8CXWFPYRxlc8wrRveoa1iqty0smlCEhjsmC9wGJoo=',1,'2021-01-19 09:47:02','2021-01-19 09:47:02','2020-12-19 08:49:50','2020-12-19 08:49:50',0,'2020-12-19 08:49:50',1,'2020-12-19 10:15:08',0,'2020-12-19 08:49:50'),(5,'nikhil295@gmail.com','','9Q3QGKQAZq9U+OJu/t7QiIpq5WWJT9FWIWz1Dxe10Zs=','T/te0hddWKa4b1WNc+WsFQ==',1,'1','mhb+8Z87EIttpjDE5o7L3HsPcqXca3BtVXYFdJg/EfE=',1,'2021-01-12 12:56:35','2021-01-12 12:56:35','2021-01-10 09:48:55','2021-01-10 09:48:55',0,'2021-01-10 09:48:55',0,'2021-01-10 09:48:55',0,'2021-01-10 09:48:55'),(6,'nikhil295@gmail.com','','kvZcxTc/VhPfP3BRw20q7ztgmwmR4T1hOcaOHPz2eV0=','Pyvh1YiJjZ0uoah38RxRXA==',1,'1','tBPAbc424tDII3g2DWTgTMe51fvMU7j01xH3EQZbs/A=',1,'2021-01-14 10:36:36','2021-01-14 10:36:36','2021-01-14 10:36:36','2021-01-14 10:36:36',0,'2021-01-14 10:36:36',0,'2021-01-14 10:36:36',0,'2021-01-14 10:36:36'),(7,'nikhil295@gmail.com','','dd1nwgEksVkx0Wso6H5pG2fpnq2NQQE7XAks3WE6Yqw=','5SsfHttELDZh+G2vtSurBA==',1,'1','31JZ3IEydtDXZavgOwvgQSQJhdtTgRStDqXsFZkWHgM=',1,'2021-01-14 10:40:35','2021-01-14 10:40:35','2021-01-14 10:40:35','2021-01-14 10:40:35',0,'2021-01-14 10:40:35',0,'2021-01-14 10:40:35',0,'2021-01-14 10:40:35');
/*!40000 ALTER TABLE `my_aspnet_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_paths`
--

DROP TABLE IF EXISTS `my_aspnet_paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_paths` (
  `applicationId` int NOT NULL,
  `pathId` varchar(36) NOT NULL,
  `path` varchar(256) NOT NULL,
  `loweredPath` varchar(256) NOT NULL,
  PRIMARY KEY (`pathId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_paths`
--

LOCK TABLES `my_aspnet_paths` WRITE;
/*!40000 ALTER TABLE `my_aspnet_paths` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_aspnet_paths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_personalizationallusers`
--

DROP TABLE IF EXISTS `my_aspnet_personalizationallusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_personalizationallusers` (
  `pathId` varchar(36) NOT NULL,
  `pageSettings` blob NOT NULL,
  `lastUpdatedDate` datetime NOT NULL,
  PRIMARY KEY (`pathId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_personalizationallusers`
--

LOCK TABLES `my_aspnet_personalizationallusers` WRITE;
/*!40000 ALTER TABLE `my_aspnet_personalizationallusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_aspnet_personalizationallusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_personalizationperuser`
--

DROP TABLE IF EXISTS `my_aspnet_personalizationperuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_personalizationperuser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `applicationId` int NOT NULL,
  `pathId` varchar(36) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `pageSettings` blob NOT NULL,
  `lastUpdatedDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_personalizationperuser`
--

LOCK TABLES `my_aspnet_personalizationperuser` WRITE;
/*!40000 ALTER TABLE `my_aspnet_personalizationperuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_aspnet_personalizationperuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_profiles`
--

DROP TABLE IF EXISTS `my_aspnet_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_profiles` (
  `userId` int NOT NULL,
  `valueindex` longtext,
  `stringdata` longtext,
  `binarydata` longblob,
  `lastUpdatedDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_profiles`
--

LOCK TABLES `my_aspnet_profiles` WRITE;
/*!40000 ALTER TABLE `my_aspnet_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_aspnet_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_roles`
--

DROP TABLE IF EXISTS `my_aspnet_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `applicationId` int NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_roles`
--

LOCK TABLES `my_aspnet_roles` WRITE;
/*!40000 ALTER TABLE `my_aspnet_roles` DISABLE KEYS */;
INSERT INTO `my_aspnet_roles` VALUES (1,1,'Admin'),(4,1,'CityAdmin'),(5,1,'GraminAdmin'),(6,1,'CDSP'),(7,1,'CPSI'),(8,1,'GPSI'),(9,1,'GDSP');
/*!40000 ALTER TABLE `my_aspnet_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_schemaversion`
--

DROP TABLE IF EXISTS `my_aspnet_schemaversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_schemaversion` (
  `version` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_schemaversion`
--

LOCK TABLES `my_aspnet_schemaversion` WRITE;
/*!40000 ALTER TABLE `my_aspnet_schemaversion` DISABLE KEYS */;
INSERT INTO `my_aspnet_schemaversion` VALUES (10);
/*!40000 ALTER TABLE `my_aspnet_schemaversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_sessioncleanup`
--

DROP TABLE IF EXISTS `my_aspnet_sessioncleanup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_sessioncleanup` (
  `LastRun` datetime NOT NULL,
  `IntervalMinutes` int NOT NULL,
  `ApplicationId` int NOT NULL,
  PRIMARY KEY (`ApplicationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_sessioncleanup`
--

LOCK TABLES `my_aspnet_sessioncleanup` WRITE;
/*!40000 ALTER TABLE `my_aspnet_sessioncleanup` DISABLE KEYS */;
INSERT INTO `my_aspnet_sessioncleanup` VALUES ('2021-01-19 10:20:38',10,1);
/*!40000 ALTER TABLE `my_aspnet_sessioncleanup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_sessions`
--

DROP TABLE IF EXISTS `my_aspnet_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_sessions` (
  `SessionId` varchar(191) NOT NULL,
  `ApplicationId` int NOT NULL,
  `Created` datetime NOT NULL,
  `Expires` datetime NOT NULL,
  `LockDate` datetime NOT NULL,
  `LockId` int NOT NULL,
  `Timeout` int NOT NULL,
  `Locked` tinyint(1) NOT NULL,
  `SessionItems` longblob,
  `Flags` int NOT NULL,
  PRIMARY KEY (`SessionId`,`ApplicationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_sessions`
--

LOCK TABLES `my_aspnet_sessions` WRITE;
/*!40000 ALTER TABLE `my_aspnet_sessions` DISABLE KEYS */;
INSERT INTO `my_aspnet_sessions` VALUES ('3ixvha1sdut3mvfg1jjij5ag',1,'2021-01-19 10:20:39','2021-01-19 10:40:39','2021-01-19 10:20:39',1,20,0,NULL,0),('3tpmfop0ql5drq2rq2uraych',1,'2021-01-19 10:26:57','2021-01-19 10:46:57','2021-01-19 10:26:57',1,20,0,NULL,0),('dcx2kcrm0qx2idap01cwtgrb',1,'2021-01-19 10:21:37','2021-01-19 10:41:37','2021-01-19 10:21:37',1,20,0,NULL,0),('exml3zuhnhhad3yam3hp4m5i',1,'2021-01-19 10:18:42','2021-01-19 10:40:02','2021-01-19 10:20:02',10,20,0,NULL,0),('gcx3v54hkuapomv5h4g4wj1z',1,'2021-01-19 10:09:17','2021-01-19 10:29:21','2021-01-19 10:09:21',2,20,0,NULL,0),('lfqprq1eo4ka4yip5x4ojhyz',1,'2021-01-19 10:21:31','2021-01-19 10:41:37','2021-01-19 10:21:37',2,20,0,NULL,0),('mcvq4t1mhetxof1u2crqqd5o',1,'2021-01-19 10:12:58','2021-01-19 10:36:30','2021-01-19 10:16:30',8,20,0,NULL,0),('pabxdtqywkevqfqcxh51li00',1,'2021-01-19 10:09:40','2021-01-19 10:29:54','2021-01-19 10:09:54',4,20,0,NULL,0),('pbmyasmfwr2j4g2cfkwb1qcf',1,'2021-01-19 09:56:36','2021-01-19 10:29:17','2021-01-19 10:09:17',10,20,0,NULL,0),('tbwvu3zaaufau3ttjmabhhni',1,'2021-01-19 10:18:52','2021-01-19 10:38:52','2021-01-19 10:18:52',1,20,0,NULL,0),('vrxc00zd14impakznb5mjcsq',1,'2021-01-19 10:19:01','2021-01-19 10:39:01','2021-01-19 10:19:01',1,20,0,NULL,0);
/*!40000 ALTER TABLE `my_aspnet_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_sitemap`
--

DROP TABLE IF EXISTS `my_aspnet_sitemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_sitemap` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) DEFAULT NULL,
  `Description` varchar(512) DEFAULT NULL,
  `Url` varchar(512) DEFAULT NULL,
  `Roles` varchar(1000) DEFAULT NULL,
  `ParentId` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_sitemap`
--

LOCK TABLES `my_aspnet_sitemap` WRITE;
/*!40000 ALTER TABLE `my_aspnet_sitemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_aspnet_sitemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_users`
--

DROP TABLE IF EXISTS `my_aspnet_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `applicationId` int NOT NULL,
  `name` varchar(256) NOT NULL,
  `isAnonymous` tinyint(1) NOT NULL DEFAULT '1',
  `lastActivityDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_users`
--

LOCK TABLES `my_aspnet_users` WRITE;
/*!40000 ALTER TABLE `my_aspnet_users` DISABLE KEYS */;
INSERT INTO `my_aspnet_users` VALUES (1,1,'Admin',0,'2021-01-19 09:47:02'),(5,1,'cityadmin',0,'2021-01-12 12:56:35'),(6,1,'cdsp',0,'2021-01-14 10:36:36'),(7,1,'cpsi',0,'2021-01-14 10:40:35');
/*!40000 ALTER TABLE `my_aspnet_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_usersinroles`
--

DROP TABLE IF EXISTS `my_aspnet_usersinroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_aspnet_usersinroles` (
  `userId` int NOT NULL,
  `roleId` int NOT NULL,
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_usersinroles`
--

LOCK TABLES `my_aspnet_usersinroles` WRITE;
/*!40000 ALTER TABLE `my_aspnet_usersinroles` DISABLE KEYS */;
INSERT INTO `my_aspnet_usersinroles` VALUES (1,1),(5,4),(6,6),(7,7);
/*!40000 ALTER TABLE `my_aspnet_usersinroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pb_city_admin`
--

DROP TABLE IF EXISTS `pb_city_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pb_city_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `police_id` int DEFAULT NULL,
  `buckle_no` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `birth_date` varchar(50) DEFAULT NULL,
  `joining_date` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pb_city_admin`
--

LOCK TABLES `pb_city_admin` WRITE;
/*!40000 ALTER TABLE `pb_city_admin` DISABLE KEYS */;
INSERT INTO `pb_city_admin` VALUES (1,761,7776241,'Jaykant Shikhre','24/06/2009','21/12/2020','Maharashtra');
/*!40000 ALTER TABLE `pb_city_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pb_city_data`
--

DROP TABLE IF EXISTS `pb_city_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pb_city_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `application_Id` varchar(50) DEFAULT NULL,
  `full_name` varchar(200) DEFAULT NULL,
  `date_of_birth` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `cast` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phonenumber` int DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `show_data` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pb_city_data`
--

LOCK TABLES `pb_city_data` WRITE;
/*!40000 ALTER TABLE `pb_city_data` DISABLE KEYS */;
INSERT INTO `pb_city_data` VALUES (16,'A000001','Nilesh Sakpal','24/09/2013','Pune','M','Open','Maratha','a@a.com',9999,'City',1),(17,'A000004','Payal Deshmukh','&nbsp;','Pune','F','&nbsp;','&nbsp;','&nbsp;',9999,'City',1),(18,'A000010','Anjali Salvi','&nbsp;','Pune','F','&nbsp;','&nbsp;','&nbsp;',9999,'City',1);
/*!40000 ALTER TABLE `pb_city_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pb_city_dsp`
--

DROP TABLE IF EXISTS `pb_city_dsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pb_city_dsp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `police_id` int DEFAULT NULL,
  `buckle_no` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `birth_date` varchar(50) DEFAULT NULL,
  `joining_date` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pb_city_dsp`
--

LOCK TABLES `pb_city_dsp` WRITE;
/*!40000 ALTER TABLE `pb_city_dsp` DISABLE KEYS */;
INSERT INTO `pb_city_dsp` VALUES (2,766,7776243,'Daya','24/08/1988','30/07/2008','Pune Maharashtra');
/*!40000 ALTER TABLE `pb_city_dsp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pb_city_psi`
--

DROP TABLE IF EXISTS `pb_city_psi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pb_city_psi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `police_id` int DEFAULT NULL,
  `buckle_no` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `birth_date` varchar(50) DEFAULT NULL,
  `joining_date` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pb_city_psi`
--

LOCK TABLES `pb_city_psi` WRITE;
/*!40000 ALTER TABLE `pb_city_psi` DISABLE KEYS */;
INSERT INTO `pb_city_psi` VALUES (2,767,7776248,'Paresh','16/12/1982','18/07/2000','Pune Maharashtra');
/*!40000 ALTER TABLE `pb_city_psi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pb_gramin_admin`
--

DROP TABLE IF EXISTS `pb_gramin_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pb_gramin_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `police_id` int DEFAULT NULL,
  `buckle_no` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `birth_date` varchar(50) DEFAULT NULL,
  `joining_date` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pb_gramin_admin`
--

LOCK TABLES `pb_gramin_admin` WRITE;
/*!40000 ALTER TABLE `pb_gramin_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `pb_gramin_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pb_gramin_data`
--

DROP TABLE IF EXISTS `pb_gramin_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pb_gramin_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `application_Id` varchar(200) DEFAULT NULL,
  `full_name` varchar(200) DEFAULT NULL,
  `date_of_birth` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `cast` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phonenumber` int DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `show_data` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pb_gramin_data`
--

LOCK TABLES `pb_gramin_data` WRITE;
/*!40000 ALTER TABLE `pb_gramin_data` DISABLE KEYS */;
INSERT INTO `pb_gramin_data` VALUES (8,'A000002','Mahesh Raut','33/08/2010','Pune','M','OBC','Bhandari','m@m.com',9999,'Gramin',1),(9,'A000007','Prerna Shingh','&nbsp;','Pune','F','&nbsp;','&nbsp;','&nbsp;',9999,'Gramin',1);
/*!40000 ALTER TABLE `pb_gramin_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pb_gramin_dsp`
--

DROP TABLE IF EXISTS `pb_gramin_dsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pb_gramin_dsp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `police_id` int DEFAULT NULL,
  `buckle_no` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `birth_date` varchar(50) DEFAULT NULL,
  `joining_date` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pb_gramin_dsp`
--

LOCK TABLES `pb_gramin_dsp` WRITE;
/*!40000 ALTER TABLE `pb_gramin_dsp` DISABLE KEYS */;
/*!40000 ALTER TABLE `pb_gramin_dsp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pb_gramin_psi`
--

DROP TABLE IF EXISTS `pb_gramin_psi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pb_gramin_psi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `police_id` int DEFAULT NULL,
  `buckle_no` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `birth_date` varchar(50) DEFAULT NULL,
  `joining_date` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pb_gramin_psi`
--

LOCK TABLES `pb_gramin_psi` WRITE;
/*!40000 ALTER TABLE `pb_gramin_psi` DISABLE KEYS */;
/*!40000 ALTER TABLE `pb_gramin_psi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-19 10:59:19
