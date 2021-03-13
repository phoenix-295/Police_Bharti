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
INSERT INTO `my_aspnet_membership` VALUES (1,'nikhil295@gmail.com','','iSJfCYhYs0Xrayh2dXqXvHlk5Ul4/8Z/gUFy896OJVw=','L4N8uGKD9J0femSZsg88Eg==',1,'1','MV8CXWFPYRxlc8wrRveoa1iqty0smlCEhjsmC9wGJoo=',1,'2021-01-23 10:41:03','2021-01-23 10:41:03','2020-12-19 08:49:50','2020-12-19 08:49:50',0,'2020-12-19 08:49:50',1,'2020-12-19 10:15:08',0,'2020-12-19 08:49:50'),(5,'nikhil295@gmail.com','','9Q3QGKQAZq9U+OJu/t7QiIpq5WWJT9FWIWz1Dxe10Zs=','T/te0hddWKa4b1WNc+WsFQ==',1,'1','mhb+8Z87EIttpjDE5o7L3HsPcqXca3BtVXYFdJg/EfE=',1,'2021-01-20 12:10:41','2021-01-20 12:10:41','2021-01-10 09:48:55','2021-01-10 09:48:55',0,'2021-01-10 09:48:55',0,'2021-01-10 09:48:55',0,'2021-01-10 09:48:55'),(8,'nikhil295@gmail.com','','gQayERrrL2J4CuG5n9X/xc5Djpis0Tej+/PSLsh3uZU=','RlSmVvHxW5iCpKcemM+lsQ==',1,'1','4bpxkwlmoRwtz9Uyd/seHyd2fqNQ7oWyhCpWZrcdg9w=',1,'2021-01-19 11:23:35','2021-01-19 11:23:35','2021-01-19 11:23:35','2021-01-19 11:23:35',0,'2021-01-19 11:23:35',0,'2021-01-19 11:23:35',0,'2021-01-19 11:23:35'),(9,'nikhil295@gmail.com','','7q8jzCmAm0i02vAkLhc9JUfkffCQuZjkKpKeHGnrJi0=','rvMR658DH8bFXY30P/VnQg==',1,'1','Syazs2hXYNhte8pcvnl3f8gpQu9fP1fGO25jMTAfxfM=',1,'2021-01-19 11:25:12','2021-01-19 11:25:12','2021-01-19 11:25:12','2021-01-19 11:25:12',0,'2021-01-19 11:25:12',0,'2021-01-19 11:25:12',0,'2021-01-19 11:25:12');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_roles`
--

LOCK TABLES `my_aspnet_roles` WRITE;
/*!40000 ALTER TABLE `my_aspnet_roles` DISABLE KEYS */;
INSERT INTO `my_aspnet_roles` VALUES (1,1,'Admin'),(4,1,'CityAdmin'),(5,1,'GraminAdmin'),(11,1,'CWritten'),(12,1,'CMedical'),(13,1,'CPhysical');
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
INSERT INTO `my_aspnet_sessioncleanup` VALUES ('2021-03-13 10:56:26',10,1);
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
INSERT INTO `my_aspnet_sessions` VALUES ('50kj44zfa00rcj5vintwzha0',1,'2021-03-13 10:40:26','2021-03-13 11:00:37','2021-03-13 10:40:45',4,20,1,NULL,0),('52ctdq2zc3bvsqulq4hu3dmn',1,'2021-03-13 10:39:02','2021-03-13 10:59:52','2021-03-13 10:39:52',10,20,0,NULL,0),('stkxhusufyggxpsjm3rzrddc',1,'2021-03-13 10:56:28','2021-03-13 11:16:32','2021-03-13 10:56:28',1,20,0,NULL,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_users`
--

LOCK TABLES `my_aspnet_users` WRITE;
/*!40000 ALTER TABLE `my_aspnet_users` DISABLE KEYS */;
INSERT INTO `my_aspnet_users` VALUES (1,1,'Admin',0,'2021-01-23 10:41:03'),(5,1,'cityadmin',0,'2021-01-20 12:10:41'),(8,1,'cground',0,'2021-01-19 11:23:35'),(9,1,'cwritten',0,'2021-01-19 11:25:12');
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
INSERT INTO `my_aspnet_usersinroles` VALUES (1,1),(5,4),(8,13),(9,11);
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
  `application_Id` varchar(50) NOT NULL,
  `full_name` varchar(200) DEFAULT NULL,
  `date_of_birth` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `cast` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phonenumber` bigint DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `show_data` tinyint DEFAULT '0',
  `show_invite` tinyint DEFAULT '0',
  `physical_date` varchar(45) DEFAULT NULL,
  `physical_flag` tinyint DEFAULT '0',
  `written_date` varchar(45) DEFAULT NULL,
  `written_flag` tinyint DEFAULT '0',
  `medical_date` varchar(45) DEFAULT NULL,
  `medical_flag` tinyint DEFAULT '0',
  `height` int DEFAULT '0',
  `minchest` int DEFAULT '0',
  `maxchest` int DEFAULT '0',
  `weight` int DEFAULT '0',
  `p_flag` tinyint DEFAULT '0',
  `race1600` float DEFAULT '0',
  `r16m` int DEFAULT '0',
  `race800` float DEFAULT '0',
  `r8m` int DEFAULT '0',
  `race100` float DEFAULT '0',
  `r1m` int DEFAULT '0',
  `longjump` float DEFAULT '0',
  `ljm` int DEFAULT '0',
  `shotput` float DEFAULT '0',
  `spm` int DEFAULT '0',
  `pullups` int DEFAULT '0',
  `pum` int DEFAULT '0',
  `g_flag` tinyint DEFAULT '0',
  `ground_total` int DEFAULT '0',
  `cpg_submit` tinyint DEFAULT '0',
  `mweight` float DEFAULT '0',
  `rweight` tinyint DEFAULT '0',
  `eyetest` tinyint DEFAULT '0',
  `eartest` tinyint DEFAULT '0',
  `nosetest` tinyint DEFAULT '0',
  `phandi` tinyint DEFAULT '0',
  `knee` tinyint DEFAULT '0',
  `pchest` tinyint DEFAULT '0',
  `feet` tinyint DEFAULT '0',
  `vveins` tinyint DEFAULT '0',
  `flimbs` tinyint DEFAULT '0',
  `dteeth` tinyint DEFAULT '0',
  `stammering` tinyint DEFAULT '0',
  `hrigidus` tinyint DEFAULT '0',
  `skin` tinyint DEFAULT '0',
  `heartbeat` tinyint DEFAULT '0',
  `fingured` tinyint DEFAULT '0',
  `gendertest` tinyint DEFAULT '0',
  `anal` tinyint DEFAULT '0',
  `testicalg` tinyint DEFAULT '0',
  `hydrocele` tinyint DEFAULT '0',
  `sveins` tinyint DEFAULT '0',
  `pvtest` tinyint DEFAULT '0',
  `aids` tinyint DEFAULT '0',
  `piles` tinyint DEFAULT '0',
  `m_flag` tinyint DEFAULT '0',
  `m_comment` varchar(350) DEFAULT NULL,
  `mar_score` int DEFAULT '0',
  `eng_score` int DEFAULT '0',
  `reso_score` int DEFAULT '0',
  `gk_score` int DEFAULT '0',
  `histg_score` int DEFAULT '0',
  `w_flag` tinyint DEFAULT '0',
  PRIMARY KEY (`id`,`application_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pb_city_data`
--

LOCK TABLES `pb_city_data` WRITE;
/*!40000 ALTER TABLE `pb_city_data` DISABLE KEYS */;
INSERT INTO `pb_city_data` VALUES (100,'A000001','Nilesh Sakpal','24/09/2013','Pune','M','Open','Maratha','a@a.com',9999,'City',1,0,'14/01/2021',1,'22/01/2021',1,'23/01/2021',1,180,79,84,90,1,4.5,20,0,0,10.1,20,10,20,9,20,10,20,1,100,1,65,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,NULL,5,20,20,20,20,1),(101,'A000003','Ramesh lalit','24/09/2013','Pune','M','SC','Mahar','r12@gmail.com',9999,'City',1,0,'14/01/2021',1,'22/01/2021',1,'24/01/2021',1,70,80,81,90,0,4.5,20,0,0,10.1,20,10,20,9,20,10,20,1,100,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),(102,'A000004','Payal Deshmukh','24/09/2013','Pune','F','SC','Mang','p12@gmail.com',9999,'City',1,0,'14/01/2021',1,'22/01/2021',1,'22/01/2021',1,170,0,0,90,0,0,0,0,0,10.1,0,10,0,5,0,0,0,1,87,1,55,1,1,1,1,1,0,0,0,0,1,1,1,0,0,1,1,0,0,0,0,1,1,0,1,1,NULL,0,0,0,0,0,0),(103,'A000005','Saurabh Meheta','24/09/2013','Pune','M','SC','Mahar','s12@gmail.com',9999,'City',1,0,'14/01/2021',1,'22/01/2021',1,'22/01/2021',1,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),(104,'A000006','Rajesh Purohit','24/09/2013','Pune','M','SC','Chambhar','rp12@gmail.com',9999,'City',1,0,'14/01/2021',1,'22/01/2021',1,'22/01/2021',1,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0),(105,'A000008','Keshav Pandit','24/09/2013','Pune','M','ST','Koli','kp12@gmail.com',9999,'City',1,0,'14/01/2021',1,'22/01/2021',1,'22/01/2021',1,175,80,85,76,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0),(106,'A000009','Vijender Shingh','24/09/2013','Pune','M','ST','Pardhi','vs@gmail.com',9999,'City',1,0,'14/01/2021',1,'22/01/2021',1,'22/01/2021',1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0),(107,'A000010','Anjali Salvi','24/09/2014','Pune','F','ST','Koli','as123@gmail.com',9999,'City',1,0,'14/01/2021',1,'22/01/2021',1,'22/01/2021',1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0),(108,'A000011','Akash chakor','24/09/2015','Pune','M','Open','Maratha','ac96@gmail.com',9876545678,'City',1,0,'14/01/2021',1,'22/01/2021',1,'22/01/2021',1,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0),(109,'A000017','Aniket Tekwade','24/09/2021','Pune','M','OBC','Mali','at67@gmail.com',9050505050,'City',1,0,'14/01/2021',1,'22/01/2021',1,'22/01/2021',1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0),(110,'A000018','Swati Jadhav','24/09/2022','Pune','F','OBC','Kumbhar','sj@gmail.com',9040404040,'City',1,0,'14/01/2021',1,'23/01/2021',1,'22/01/2021',1,175,0,0,76,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0),(111,'A000019','Akshay Dhende','24/09/2023','Pune','M','OBC','Kumbhar','ad@gmail.com',9878987890,'City',1,0,'14/01/2021',1,'23/01/2021',1,'22/01/2021',1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0),(112,'A000023','Harsha fara','24/09/2027','Pune','F','VJNT','Dhangar','hf1@gmail.com',9087656789,'City',1,0,'14/01/2021',1,'23/01/2021',1,'23/01/2021',1,170,0,0,90,1,0,0,1,25,1,22,10,25,9,25,0,0,1,97,1,65,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,1,1,1,1,1,'dsdsd',0,0,0,0,0,0),(113,'A000024','Somnath Gaikwad','24/09/2028','Pune','M','VJNT','Dhangar','sg1@gmail.com',9087656789,'City',1,0,'07/01/2021',1,'23/01/2021',1,'23/01/2021',1,172,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,65,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,NULL,0,0,0,0,0,0),(114,'A000025','Ravi Avchar','24/09/2029','Pune','M','Open','Maratha','ra1@gmail.com',9087656789,'City',1,0,'07/01/2021',1,'23/01/2021',1,'23/01/2021',1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0),(115,'A000027','Baban Pandhare','24/09/2031','Pune','M','SC','Mahar','bp1@gmail.com',9087656789,'City',1,0,'07/01/2021',1,'23/01/2021',1,'23/01/2021',1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0),(116,'A000029','Nilam Sankpal','24/09/2033','Pune','F','ST','Koli','ns12@gmail.com',9087656789,'City',1,0,'07/01/2021',1,'23/01/2021',1,'23/01/2021',1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0);
/*!40000 ALTER TABLE `pb_city_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pb_city_event_plan`
--

DROP TABLE IF EXISTS `pb_city_event_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pb_city_event_plan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_name` varchar(45) DEFAULT NULL,
  `start_date` varchar(45) DEFAULT NULL,
  `end_date` varchar(45) DEFAULT NULL,
  `c_invited` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pb_city_event_plan`
--

LOCK TABLES `pb_city_event_plan` WRITE;
/*!40000 ALTER TABLE `pb_city_event_plan` DISABLE KEYS */;
INSERT INTO `pb_city_event_plan` VALUES (1,'physical','04/01/2021','14/01/2021',1),(2,'written','22/01/2021','24/01/2021',1),(3,'medical','22/01/2021','24/01/2021',1);
/*!40000 ALTER TABLE `pb_city_event_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pb_city_physical`
--

DROP TABLE IF EXISTS `pb_city_physical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pb_city_physical` (
  `id` int NOT NULL AUTO_INCREMENT,
  `police_id` int DEFAULT NULL,
  `buckle_no` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `birth_date` varchar(50) DEFAULT NULL,
  `joining_date` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pb_city_physical`
--

LOCK TABLES `pb_city_physical` WRITE;
/*!40000 ALTER TABLE `pb_city_physical` DISABLE KEYS */;
INSERT INTO `pb_city_physical` VALUES (3,761,7776248,'Daya','24/06/2009','20/01/2021','Pune Maharashtra');
/*!40000 ALTER TABLE `pb_city_physical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pb_city_written`
--

DROP TABLE IF EXISTS `pb_city_written`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pb_city_written` (
  `id` int NOT NULL AUTO_INCREMENT,
  `police_id` int DEFAULT NULL,
  `buckle_no` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `birth_date` varchar(50) DEFAULT NULL,
  `joining_date` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pb_city_written`
--

LOCK TABLES `pb_city_written` WRITE;
/*!40000 ALTER TABLE `pb_city_written` DISABLE KEYS */;
INSERT INTO `pb_city_written` VALUES (3,766,7776241,'Paresh','18/03/2021','21/01/2021','Pune Maharashtra');
/*!40000 ALTER TABLE `pb_city_written` ENABLE KEYS */;
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
  `phonenumber` bigint DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `show_data` tinyint DEFAULT '0',
  `show_invite` tinyint DEFAULT '0',
  `physical_date` varchar(45) DEFAULT NULL,
  `physical_flag` tinyint DEFAULT '0',
  `written_date` varchar(45) DEFAULT NULL,
  `written_flag` tinyint DEFAULT '0',
  `medical_date` varchar(45) DEFAULT NULL,
  `medical_flag` tinyint DEFAULT '0',
  `height` int DEFAULT '0',
  `minchest` int DEFAULT '0',
  `maxchest` int DEFAULT '0',
  `weight` int DEFAULT '0',
  `p_flag` tinyint DEFAULT '0',
  `race1600` float DEFAULT '0',
  `r16m` int DEFAULT '0',
  `race800` float DEFAULT '0',
  `r8m` int DEFAULT '0',
  `race100` float DEFAULT '0',
  `r1m` int DEFAULT '0',
  `longjump` float DEFAULT '0',
  `ljm` int DEFAULT '0',
  `shotput` float DEFAULT '0',
  `spm` int DEFAULT '0',
  `pullups` int DEFAULT '0',
  `pum` int DEFAULT '0',
  `g_flag` tinyint DEFAULT '0',
  `ground_total` int DEFAULT '0',
  `cpg_submit` tinyint DEFAULT '0',
  `mweight` float DEFAULT '0',
  `rweight` tinyint DEFAULT '0',
  `eyetest` tinyint DEFAULT '0',
  `eartest` tinyint DEFAULT '0',
  `nosetest` tinyint DEFAULT '0',
  `phandi` tinyint DEFAULT '0',
  `knee` tinyint DEFAULT '0',
  `pchest` tinyint DEFAULT '0',
  `feet` tinyint DEFAULT '0',
  `vveins` tinyint DEFAULT '0',
  `flimbs` tinyint DEFAULT '0',
  `dteeth` tinyint DEFAULT '0',
  `stammering` tinyint DEFAULT '0',
  `hrigidus` tinyint DEFAULT '0',
  `skin` tinyint DEFAULT '0',
  `heartbeat` tinyint DEFAULT '0',
  `fingured` tinyint DEFAULT '0',
  `gendertest` tinyint DEFAULT '0',
  `anal` tinyint DEFAULT '0',
  `testicalg` tinyint DEFAULT '0',
  `hydrocele` tinyint DEFAULT '0',
  `sveins` tinyint DEFAULT '0',
  `pvtest` tinyint DEFAULT '0',
  `aids` tinyint DEFAULT '0',
  `piles` tinyint DEFAULT '0',
  `m_flag` tinyint DEFAULT '0',
  `m_comment` varchar(350) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pb_gramin_data`
--

LOCK TABLES `pb_gramin_data` WRITE;
/*!40000 ALTER TABLE `pb_gramin_data` DISABLE KEYS */;
INSERT INTO `pb_gramin_data` VALUES (70,'A000002','Mahesh Raut','80/08/1999','Pune','M','OBC','Bhandari','m@m.com',9999,'Gramin',1,0,NULL,0,NULL,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),(71,'A000007','Prerna Shingh','24/09/2013','Pune','F','ST','Katkari','ps12@gmail.com',9999,'Gramin',1,0,NULL,0,NULL,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),(72,'A000012','Kishor Suryagandh','24/09/2016','Pune','M','Open','Bramhan','ks1@gmail.com',8798989809,'Gramin',1,0,NULL,0,NULL,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),(73,'A000013','Akshay Suryagandh','24/09/2017','Pune','M','Open','Muslim','as7@gmail.com',9090909098,'Gramin',1,0,NULL,0,NULL,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),(74,'A000014','Sudhakar Chakor','24/09/2018','Pune','M','Open','Muslim','sc5@gmail.com',8080808080,'Gramin',1,0,NULL,0,NULL,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),(75,'A000015','Nilam Sathe','24/09/2019','Pune','F','Open','Bramhan','ns99@gmail.com',7070707070,'Gramin',1,0,NULL,0,NULL,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),(76,'A000016','Ashwini Gawate','24/09/2020','Pune','F','OBC','Mali','ag234@gmail.com',6060606060,'Gramin',1,0,NULL,0,NULL,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),(77,'A000020','Vanita Machale','24/09/2024','Pune','F','VJNT','Dhangar','vm098@gmail.com',9087656789,'Gramin',1,0,NULL,0,NULL,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),(78,'A000021','Priyanka Gawali','24/09/2025','Pune','F','VJNT','Dhangar','pg12345@gmail.com',9087656789,'Gramin',1,0,NULL,0,NULL,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),(79,'A000022','Komal Kasabe','24/09/2026','Pune','F','VJNT','Dhangar','kk1@gmail.com',9087656789,'Gramin',1,0,NULL,0,NULL,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),(80,'A000026','Gunjan Shelar','24/09/2030','Pune','F','Open','Muslim','gs1@gmail.com',9087656789,'Gramin',1,0,NULL,0,NULL,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),(81,'A000028','Suman Dhorajkar','24/09/2032','Pune','F','SC','Mang','sd1@gmail.com',9087656789,'Gramin',1,0,NULL,0,NULL,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),(82,'A000030','Rushi Pawar','24/09/2034','Pune','M','ST','Pardhi','rp1@gmail.com',9087656789,'Gramin',1,0,NULL,0,NULL,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL);
/*!40000 ALTER TABLE `pb_gramin_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pb_gramin_event_plan`
--

DROP TABLE IF EXISTS `pb_gramin_event_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pb_gramin_event_plan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_name` varchar(45) DEFAULT NULL,
  `start_date` varchar(45) DEFAULT NULL,
  `end_date` varchar(45) DEFAULT NULL,
  `c_invited` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pb_gramin_event_plan`
--

LOCK TABLES `pb_gramin_event_plan` WRITE;
/*!40000 ALTER TABLE `pb_gramin_event_plan` DISABLE KEYS */;
INSERT INTO `pb_gramin_event_plan` VALUES (1,'physical','04/01/2021','14/01/2021',1),(2,'written','22/01/2021','24/01/2021',1),(3,'medical','22/01/2021','24/01/2021',1);
/*!40000 ALTER TABLE `pb_gramin_event_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pb_gramin_physical`
--

DROP TABLE IF EXISTS `pb_gramin_physical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pb_gramin_physical` (
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
-- Dumping data for table `pb_gramin_physical`
--

LOCK TABLES `pb_gramin_physical` WRITE;
/*!40000 ALTER TABLE `pb_gramin_physical` DISABLE KEYS */;
/*!40000 ALTER TABLE `pb_gramin_physical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pb_gramin_written`
--

DROP TABLE IF EXISTS `pb_gramin_written`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pb_gramin_written` (
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
-- Dumping data for table `pb_gramin_written`
--

LOCK TABLES `pb_gramin_written` WRITE;
/*!40000 ALTER TABLE `pb_gramin_written` DISABLE KEYS */;
/*!40000 ALTER TABLE `pb_gramin_written` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-13 11:22:34
