CREATE DATABASE  IF NOT EXISTS `admission` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `admission`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: admission
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `admn_user`
--

DROP TABLE IF EXISTS `admn_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admn_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `textPwd` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `group_id` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `pwd` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `userName` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `userDept` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mobileNo` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `newUserVStatus` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `newUserVCode` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `forgetPwdCode` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId_UNIQUE` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admn_user`
--

LOCK TABLES `admn_user` WRITE;
/*!40000 ALTER TABLE `admn_user` DISABLE KEYS */;
INSERT INTO `admn_user` VALUES (16,'rkd','123','Admin','123','rkd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `admn_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `textPwd` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `group_id` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `pwd` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `userName` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `userDept` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mobileNo` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `newUserVStatus` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `newUserVCode` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `forgetPwdCode` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId_UNIQUE` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (1,'sahastrajeet@gmail.com',NULL,'Participant','8444','SAHASTRAJEET HARDAHA ',NULL,'8839844191',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'pariveshkasturia@gmail.com',NULL,'Participant','123','Parivesh Kasturia',NULL,'9827667545',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'vinnyverma1970@gmail.com',NULL,'Participant','9679','Vinny Verma',NULL,'9826707210',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'rakasnitttrbpl@gmail.com',NULL,'Participant','3246','shobha lekhwani',NULL,'9827311930',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'0105it201002@oriental.ac.in',NULL,'Participant','5246','Abhimanyu Singh Yadav',NULL,'7470696554',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Kumar.sourav.Naraune@gmail.com',NULL,'Participant','2303','Kumar Sourav ',NULL,'9424476703',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'prakashnarayan007@gmail.com',NULL,'Participant','123','PRAKASH N HARDAHA',NULL,'9039296414',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'avinashhardaha@gmail.com',NULL,'Participant','5517','AVINASH KUMAR HARDAHA',NULL,'8982699045',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'jainaniket210@gmail.com',NULL,'Participant','4441','Aniket Jain',NULL,'6261827067',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'harsitkitchen@gmail.com',NULL,'Participant','7719','ISHAN',NULL,'9534084412',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'kogedeepak22a@gmail.com',NULL,'Participant','2185','Farzi',NULL,'6261788581',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'shobhalekhwani76685@gmail.com',NULL,'Participant','5841','Ramesh Lekhwani',NULL,'9827311930',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'yadav97anil@gmail.com',NULL,'Participant','8447','Anil Kumar Yadav',NULL,'7987521339',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'jabru1965@gmail.com',NULL,'Participant','8219','RKD',NULL,'9425163874',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'priyanshiwelcomes@gmail.com',NULL,'Participant','9704','Priyanshi Raghuwanshi',NULL,'8305564431',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'abhaydube122@gmail.com',NULL,'Participant','2675','abhaydube',NULL,'9893398425',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'ptldurgesh3@gmail.com',NULL,'Participant','4212','DURGESH KUMAR PATEL',NULL,'9926476862',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_app_master`
--

DROP TABLE IF EXISTS `candidate_app_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_app_master` (
  `id` int NOT NULL AUTO_INCREMENT,
  `appId` int DEFAULT NULL,
  `candidateId` varchar(80) DEFAULT NULL,
  `postCode` varchar(80) DEFAULT NULL,
  `payStatus` varchar(80) DEFAULT NULL,
  `payId` int DEFAULT NULL,
  `submitStatus` varchar(20) DEFAULT NULL,
  `submitDt` date DEFAULT NULL,
  `submitTime` varchar(50) DEFAULT NULL,
  `finalStatus` varchar(20) DEFAULT NULL,
  `profileId` int DEFAULT NULL,
  `title` varchar(6) DEFAULT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `mobileNo` varchar(20) DEFAULT NULL,
  `fatherHusbandName` varchar(45) DEFAULT NULL,
  `orgName` varchar(120) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `distt` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `orgPhone` varchar(20) DEFAULT NULL,
  `orgEmail` varchar(80) DEFAULT NULL,
  `orgWebsite` varchar(100) DEFAULT NULL,
  `physicallyChallenged` varchar(10) DEFAULT NULL,
  `aadhaarNo` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `localAddress` varchar(300) DEFAULT NULL,
  `permanentAddress` varchar(300) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `maritalStatus` varchar(10) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `updateBy` varchar(100) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` varchar(45) DEFAULT NULL,
  `alternativeEmail` varchar(80) DEFAULT NULL,
  `claimAgeRelax` varchar(10) DEFAULT NULL,
  `nationality` varchar(45) DEFAULT NULL,
  `religion` varchar(45) DEFAULT NULL,
  `ews` varchar(10) DEFAULT NULL,
  `exServiceman` varchar(10) DEFAULT NULL,
  `sportsman` varchar(10) DEFAULT NULL,
  `achievement` varchar(250) DEFAULT NULL,
  `presentPayLevel` varchar(45) DEFAULT NULL,
  `expectedPay` varchar(45) DEFAULT NULL,
  `consentRti` varchar(10) DEFAULT NULL,
  `nameReferee1` varchar(70) DEFAULT NULL,
  `addressReferee1` varchar(150) DEFAULT NULL,
  `nameReferee2` varchar(70) DEFAULT NULL,
  `addressReferee2` varchar(150) DEFAULT NULL,
  `criminalCase` varchar(10) DEFAULT NULL,
  `justifyPost` varchar(300) DEFAULT NULL,
  `challanNo` varchar(145) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_app` (`candidateId`,`postCode`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_app_master`
--

LOCK TABLES `candidate_app_master` WRITE;
/*!40000 ALTER TABLE `candidate_app_master` DISABLE KEYS */;
INSERT INTO `candidate_app_master` VALUES (1,1,'prakashnarayan007@gmail.com','TP-001','NA',0,'NA','2023-04-13','13-04-2023 10:00:06 AM','Yes',7,'Dr.','PRAKASH N HARDAHA','prakashnarayan007@gmail.com','9039296414','MOHAN LAL HARDAHA','','','','','','','','','No','','M','GENERAL','B-17, NITTTR CAMPUS,\r\nNEAR SHYMLA HILLS,\r\nSMART ROAD, NEAR POLYTECNIC SQUARE,\r\nBHOPAL-462002','C/O PADMA HARDAHA\r\nSHARDA COLONY\r\nDIST-MANDLA\r\nMP.\r\n481661','1975-08-15','Married','','prakashnarayan007@gmail.com','2023-03-15','15:02 PM','pnhardaha@nitttrbpl.ac.in','No','INDIAN','Hindu','No','No','No',NULL,'','','Yes','sf','666','g','sdf','Yes','','478-RecFormNT20232024-RecFormNT-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,'abhaydube122@gmail.com','TP-001','NA',0,'NA','1111-11-11','NA','No',16,'','abhaydube','abhaydube122@gmail.com','9893398425','','','','','','','','','','No','','M','General','','','1111-11-11','Married','','','1111-11-11','','',NULL,'','',NULL,NULL,NULL,'','11','25000','Yes','DR. RADHE SHYAM SHARMA','273, E-4 ARERA COLONY BHOPAL (MP)','SHRI SHIV RAJ','B-4, 74 BANGLOW, BHOPAL','No','OK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,'prakashnarayan007@gmail.com','TP-002','NA',0,'NA','1111-11-11','NA','No',7,'Dr.','PRAKASH N HARDAHA','prakashnarayan007@gmail.com','9039296414','MOHAN LAL HARDAHA','','','','','','','','','No','','M','GENERAL','B-17, NITTTR CAMPUS,\r\nNEAR SHYMLA HILLS,\r\nSMART ROAD, NEAR POLYTECNIC SQUARE,\r\nBHOPAL-462002','C/O PADMA HARDAHA\r\nSHARDA COLONY\r\nDIST-MANDLA\r\nMP.\r\n481661','1975-08-15','Married','','','1111-11-11','','pnhardaha@nitttrbpl.ac.in',NULL,'INDIAN','Hindu',NULL,NULL,NULL,NULL,'','','Yes','',NULL,'',NULL,'No','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,4,'ptldurgesh3@gmail.com','TP-001','NA',0,'NA','1111-11-11','NA','No',17,'','DURGESH KUMAR PATEL','ptldurgesh3@gmail.com','9926476862','','','','','','','','','','No','','M','General','','','1111-11-11','Married','','','1111-11-11','','',NULL,'','',NULL,NULL,NULL,NULL,'','','Yes','',NULL,'',NULL,'No','','11097-RecFormNT20232024-RecFormNT-4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `candidate_app_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_crime`
--

DROP TABLE IF EXISTS `candidate_crime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_crime` (
  `id` int NOT NULL AUTO_INCREMENT,
  `crimeId` int DEFAULT NULL,
  `appId` int DEFAULT NULL,
  `crimeNo` varchar(45) DEFAULT NULL,
  `sectionAct` varchar(150) DEFAULT NULL,
  `courtName` varchar(45) DEFAULT NULL,
  `crimeDt` date DEFAULT NULL,
  `remarkPunishment` varchar(500) DEFAULT NULL,
  `updateBy` varchar(70) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` varchar(45) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_crime`
--

LOCK TABLES `candidate_crime` WRITE;
/*!40000 ALTER TABLE `candidate_crime` DISABLE KEYS */;
INSERT INTO `candidate_crime` VALUES (1,1,1,'1234','sect12','high ','2023-03-02','test cont','prakashnarayan007@gmail.com','2023-03-22','15:47 PM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `candidate_crime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_enclosures`
--

DROP TABLE IF EXISTS `candidate_enclosures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_enclosures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enclosureId` int DEFAULT NULL,
  `appId` int DEFAULT NULL,
  `enclDetail` varchar(250) DEFAULT NULL,
  `updateBy` varchar(70) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` varchar(45) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_enclosures`
--

LOCK TABLES `candidate_enclosures` WRITE;
/*!40000 ALTER TABLE `candidate_enclosures` DISABLE KEYS */;
INSERT INTO `candidate_enclosures` VALUES (1,1,2,'HIGH SCHOOL MARKSHEET','abhaydube122@gmail.com','2023-03-15','15:16 PM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,1,'xxx','prakashnarayan007@gmail.com','2023-04-13','09:54 AM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `candidate_enclosures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_entrance`
--

DROP TABLE IF EXISTS `candidate_entrance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_entrance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `appId` int DEFAULT NULL,
  `examName` varchar(255) DEFAULT NULL,
  `yearOfPassing` varchar(45) DEFAULT NULL,
  `allIndiaRank` varchar(45) DEFAULT NULL,
  `totalMarks` varchar(45) DEFAULT NULL,
  `obtainedMarks` varchar(45) DEFAULT NULL,
  `percentile` varchar(45) DEFAULT NULL,
  `categoryRank` varchar(45) DEFAULT NULL,
  `percentage` varchar(45) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `board` varchar(255) DEFAULT NULL,
  `examDate` date DEFAULT NULL,
  `resultStatus` varchar(50) DEFAULT NULL,
  `updateBy` varchar(100) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `f1` varchar(45) DEFAULT NULL,
  `f2` varchar(45) DEFAULT NULL,
  `f3` varchar(45) DEFAULT NULL,
  `f4` varchar(45) DEFAULT NULL,
  `f5` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_entrance`
--

LOCK TABLES `candidate_entrance` WRITE;
/*!40000 ALTER TABLE `candidate_entrance` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_entrance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_exp`
--

DROP TABLE IF EXISTS `candidate_exp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_exp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `appId` int DEFAULT NULL,
  `employerName` varchar(150) DEFAULT NULL,
  `orgType` varchar(50) DEFAULT NULL,
  `orgWebsite` varchar(255) DEFAULT NULL,
  `orgMobile` varchar(15) DEFAULT NULL,
  `orgEmail` varchar(100) DEFAULT NULL,
  `fromDt` date DEFAULT NULL,
  `toDt` date DEFAULT NULL,
  `noOfYears` int DEFAULT NULL,
  `noOfMonths` int DEFAULT NULL,
  `noOfDays` int DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `payLevel` varchar(45) DEFAULT NULL,
  `jobType` varchar(45) DEFAULT NULL,
  `lastPay` varchar(45) DEFAULT NULL,
  `basicPay` decimal(10,2) DEFAULT NULL,
  `otherAllowance` decimal(10,2) DEFAULT NULL,
  `totalEmoluments` decimal(10,2) DEFAULT NULL,
  `natureWork` varchar(500) DEFAULT NULL,
  `responsibilities` text,
  `reasonLeave` varchar(500) DEFAULT NULL,
  `updateBy` varchar(70) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `f1` varchar(45) DEFAULT NULL,
  `f2` varchar(45) DEFAULT NULL,
  `f3` varchar(45) DEFAULT NULL,
  `f4` varchar(45) DEFAULT NULL,
  `f5` varchar(45) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_exp`
--

LOCK TABLES `candidate_exp` WRITE;
/*!40000 ALTER TABLE `candidate_exp` DISABLE KEYS */;
INSERT INTO `candidate_exp` VALUES (1,1,'Christian Eminent Academy',NULL,NULL,NULL,NULL,'2000-08-02','2001-08-01',NULL,NULL,NULL,'Programmer','3','Permanent','400',NULL,NULL,NULL,'programming and helping students for ',NULL,'to promote myself','prakashnarayan007@gmail.com','2023-03-15','15:11 PM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,'MP GOVERNMENT',NULL,NULL,NULL,NULL,'2012-03-01','2023-03-01',NULL,NULL,NULL,'PROGRAMMER','11','Permanent','21500',NULL,NULL,NULL,'PROGRAMMING',NULL,'UPGRADE SALARY','abhaydube122@gmail.com','2023-03-15','15:12 PM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,2,'MP GOVERNMENT',NULL,NULL,NULL,NULL,'2023-02-01','2023-03-01',NULL,NULL,NULL,'COMPUTER OPERATOR','10','Contract','10500',NULL,NULL,NULL,'DATA ENTRY',NULL,'CONTRACTUAL POST','abhaydube122@gmail.com','2023-03-15','15:13 PM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,1,'Pioneer Institute of Professional Studies Indore',NULL,NULL,NULL,NULL,'2005-03-07','2006-03-13',NULL,NULL,NULL,'Reader','5','Permanent','11200',NULL,NULL,NULL,'teaching work in the mca class',NULL,'to join mastke ltd','prakashnarayan007@gmail.com','2023-03-15','15:16 PM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `candidate_exp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_fee_detail`
--

DROP TABLE IF EXISTS `candidate_fee_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_fee_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feeType` varchar(45) DEFAULT NULL,
  `feeAmt` varchar(45) DEFAULT NULL,
  `postCode` varchar(45) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_fee_detail`
--

LOCK TABLES `candidate_fee_detail` WRITE;
/*!40000 ALTER TABLE `candidate_fee_detail` DISABLE KEYS */;
INSERT INTO `candidate_fee_detail` VALUES (1,'SC','0','TP-001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'ST','0','TP-001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'OBC','400','TP-001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'GENERAL','1000','TP-001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'EWS','1000','TP-001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'EX-SERVICEMAN','0','TP-001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'WOMEN','0','TP-001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'PWD','0','TP-001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'SC','0','TP-002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'ST','0','TP-002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'OBC','400','TP-002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'GENERAL','1000','TP-002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'EWS','1000','TP-002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'EX-SERVICEMAN','0','TP-002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'WOMEN','0','TP-002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'PWD','0','TP-002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'SC','0','TP-003',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'ST','0','TP-003',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'OBC','400','TP-003',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'GENERAL','1000','TP-003',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'EWS','1000','TP-003',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'EX-SERVICEMAN','0','TP-003',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'WOMEN','0','TP-003',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'PWD','0','TP-003',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'SC','0','TP-004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'ST','0','TP-004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'OBC','1000','TP-004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'GENERAL','1000','TP-004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'EWS','1000','TP-004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'EX-SERVICEMAN','0','TP-004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'WOMEN','0','TP-004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'PWD','0','TP-004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `candidate_fee_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_form_status`
--

DROP TABLE IF EXISTS `candidate_form_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_form_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `formStatusId` int DEFAULT NULL,
  `appId` int DEFAULT NULL,
  `formName` varchar(80) DEFAULT NULL,
  `formStatus` varchar(45) DEFAULT NULL,
  `updateBy` varchar(50) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` varchar(45) DEFAULT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_form_status`
--

LOCK TABLES `candidate_form_status` WRITE;
/*!40000 ALTER TABLE `candidate_form_status` DISABLE KEYS */;
INSERT INTO `candidate_form_status` VALUES (1,1,1,'Personal Info','Incomplete','prakashnarayan007@gmail.com','2023-03-15','15-03-2023 15:02:19 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,1,'Other Info','Complete','prakashnarayan007@gmail.com','2023-03-15','15:01 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,1,'Education Detail','Complete','Candidate','2023-04-13','10:00 AM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,4,1,'Experience Detail','Complete','Candidate','2023-04-13','10:00 AM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,5,1,'Crime Detail','Complete','Candidate','2023-04-13','10:00 AM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,6,1,'Payment Info','Complete','prakashnarayan007@gmail.com','2023-04-13','09:55 AM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,7,1,'Enclosures Detail','Complete','Candidate','2023-04-13','10:00 AM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,8,1,'Receipt Upload','Complete','prakashnarayan007@gmail.com','2023-03-15','15:01 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,9,1,'Photo Upload','Complete','prakashnarayan007@gmail.com','2023-03-15','15:01 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,10,1,'Sign Upload','Complete','prakashnarayan007@gmail.com','2023-03-15','15:01 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,11,2,'Personal Info','Incomplete','abhaydube122@gmail.com','2023-03-15','15:03 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,12,2,'Other Info','Complete','abhaydube122@gmail.com','2023-03-15','15:15 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,13,2,'Education Detail','Incomplete','abhaydube122@gmail.com','2023-03-15','15:03 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,14,2,'Experience Detail','Incomplete','abhaydube122@gmail.com','2023-03-15','15:03 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,15,2,'Crime Detail','Incomplete','abhaydube122@gmail.com','2023-03-15','15:03 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,16,2,'Payment Info','Incomplete','abhaydube122@gmail.com','2023-03-15','15:03 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,17,2,'Enclosures Detail','Incomplete','abhaydube122@gmail.com','2023-03-15','15:03 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,18,2,'Receipt Upload','Incomplete','abhaydube122@gmail.com','2023-03-15','15:03 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,19,2,'Photo Upload','Incomplete','abhaydube122@gmail.com','2023-03-15','15:03 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,20,2,'Sign Upload','Incomplete','abhaydube122@gmail.com','2023-03-15','15:03 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,21,3,'Personal Info','Incomplete','prakashnarayan007@gmail.com','2024-02-07','20:57 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,22,3,'Other Info','Incomplete','prakashnarayan007@gmail.com','2024-02-07','20:57 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,23,3,'Education Detail','Incomplete','prakashnarayan007@gmail.com','2024-02-07','20:57 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,24,3,'Experience Detail','Incomplete','prakashnarayan007@gmail.com','2024-02-07','20:57 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,25,3,'Crime Detail','Incomplete','prakashnarayan007@gmail.com','2024-02-07','20:57 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,26,3,'Payment Info','Incomplete','prakashnarayan007@gmail.com','2024-02-07','20:57 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,27,3,'Enclosures Detail','Incomplete','prakashnarayan007@gmail.com','2024-02-07','20:57 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,28,3,'Receipt Upload','Incomplete','prakashnarayan007@gmail.com','2024-02-07','20:57 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,29,3,'Photo Upload','Complete','prakashnarayan007@gmail.com','2024-02-07','20:57 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,30,3,'Sign Upload','Incomplete','prakashnarayan007@gmail.com','2024-02-07','20:57 PM','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,31,4,'Personal Info','Incomplete','ptldurgesh3@gmail.com','2024-04-16','15:07 pm','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,32,4,'Other Info','Incomplete','ptldurgesh3@gmail.com','2024-04-16','15:07 pm','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,33,4,'Education Detail','Incomplete','ptldurgesh3@gmail.com','2024-04-16','15:07 pm','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,34,4,'Experience Detail','Complete','Candidate','2024-04-16','15:08 pm','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,35,4,'Crime Detail','Incomplete','ptldurgesh3@gmail.com','2024-04-16','15:07 pm','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,36,4,'Payment Info','Incomplete','ptldurgesh3@gmail.com','2024-04-16','15:07 pm','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,37,4,'Enclosures Detail','Incomplete','ptldurgesh3@gmail.com','2024-04-16','15:07 pm','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,38,4,'Receipt Upload','Incomplete','ptldurgesh3@gmail.com','2024-04-16','15:07 pm','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,39,4,'Photo Upload','Incomplete','ptldurgesh3@gmail.com','2024-04-16','15:07 pm','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,40,4,'Sign Upload','Incomplete','ptldurgesh3@gmail.com','2024-04-16','15:07 pm','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `candidate_form_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_otp`
--

DROP TABLE IF EXISTS `candidate_otp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_otp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cndtId` varchar(45) DEFAULT NULL,
  `cndtName` varchar(45) DEFAULT NULL,
  `cndtMobileNo` varchar(45) DEFAULT NULL,
  `cndtOTP` varchar(45) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `otpReqId` int DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_otp`
--

LOCK TABLES `candidate_otp` WRITE;
/*!40000 ALTER TABLE `candidate_otp` DISABLE KEYS */;
INSERT INTO `candidate_otp` VALUES (16,'sahastrajeet@gmail.com','SAHASTRAJEET HARDAHA ','8839844191','1249','2023-01-15','15-01-2023 19:24:22','Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'pariveshkasturia@gmail.com','Parivesh Kasturia','9827667545','5491','2023-01-16','16-01-2023 11:38:24','Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'vinnyverma1970@gmail.com','Vinny Verma','9826707210','8729','2023-01-17','17-01-2023 12:00:10','Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'rakasnitttrbpl@gmail.com','shobha lekhwani','9827311930','9651','2023-01-17','17-01-2023 12:36:02','Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'0105it201002@oriental.ac.in','Abhimanyu Singh Yadav','7470696554','5882','2023-01-18','18-01-2023 12:42:33','Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'Kumar.sourav.Naraune@gmail.com','Kumar Sourav ','9424476703','1525','2023-01-19','19-01-2023 14:50:20','Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'prakashnarayan007@gmail.com','PRAKASH N HARDAHA','9039296414','2959','2023-01-20','20-01-2023 12:35:49','Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'avinashhardaha@gmail.com','AVINASH KUMAR HARDAHA','8982699045','7726','2023-01-20','20-01-2023 12:42:39','Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'jainaniket210@gmail.com','Aniket Jain','6261827067','6737','2023-01-23','23-01-2023 11:52:34','Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'harsitkitchen@gmail.com','ISHAN','9534084412','6659','2023-01-23','23-01-2023 12:00:26','Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'kogedeepak22a@gmail.com','Farzi','6261788581','3030','2023-01-23','23-01-2023 12:05:06','Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'shobhalekhwani76685@gmail.com','Ramesh Lekhwani','9827311930','6504','2023-01-24','24-01-2023 14:35:58','Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'yadav97anil@gmail.com','Anil Kumar Yadav','7987521339','4103','2023-01-25','25-01-2023 09:36:57','Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'jabru1965@gmail.com','RKD','9425163874','7239','2023-02-06','06-02-2023 11:38:25','Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'priyanshiwelcomes@gmail.com','Priyanshi Raghuwanshi','8305564431','7656','2023-02-08','08-02-2023 20:24:35','Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'abhaydube122@gmail.com','abhaydube','9893398425','2906','2023-03-15','15-03-2023 15:01:14','Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'ptldurgesh3@gmail.com','DURGESH KUMAR PATEL','9926476862','6805','2024-04-16','16-04-2024 15:05:49','Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `candidate_otp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_payment`
--

DROP TABLE IF EXISTS `candidate_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payId` int DEFAULT NULL,
  `appId` int DEFAULT NULL,
  `reqPayId` varchar(75) DEFAULT NULL,
  `feeCode` varchar(60) DEFAULT NULL,
  `usrEmail` varchar(75) DEFAULT NULL,
  `usrMobile` varchar(20) DEFAULT NULL,
  `usrName` varchar(100) DEFAULT NULL,
  `paySuccessURL` varchar(300) DEFAULT NULL,
  `payAmt` varchar(15) DEFAULT NULL,
  `gwSecrKey` varchar(200) DEFAULT NULL,
  `transId` varchar(75) DEFAULT NULL,
  `transDt` date DEFAULT NULL,
  `transAmt` varchar(15) DEFAULT NULL,
  `gwName` varchar(50) DEFAULT NULL,
  `payStatus` varchar(45) DEFAULT NULL,
  `updateByUsr` varchar(75) DEFAULT NULL,
  `updateDtUsr` date DEFAULT NULL,
  `updateTimeUsr` varchar(45) DEFAULT NULL,
  `updateByGw` varchar(45) DEFAULT NULL,
  `updateDtGw` date DEFAULT NULL,
  `updateTimeGw` varchar(45) DEFAULT NULL,
  `payMethod` varchar(45) DEFAULT NULL,
  `payDetail` varchar(500) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `uploadedVisible` varchar(10) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_payment`
--

LOCK TABLES `candidate_payment` WRITE;
/*!40000 ALTER TABLE `candidate_payment` DISABLE KEYS */;
INSERT INTO `candidate_payment` VALUES (1,0,1,'','','','','','','','','tret','2023-04-10','','','','prakashnarayan007@gmail.com','2023-04-13','09:55 AM','','1111-11-11','','NEFT','sfsdf','','Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,0,2,'','','','','','','','','','1111-11-11','','','','','1111-11-11','','','1111-11-11','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,0,3,'','','','','','','','','','1111-11-11','','','','','1111-11-11','','','1111-11-11','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,0,4,'','','','','','','','','','1111-11-11','','','','','1111-11-11','','','1111-11-11','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `candidate_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_profile`
--

DROP TABLE IF EXISTS `candidate_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(6) DEFAULT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `mobileNo` varchar(20) DEFAULT NULL,
  `fatherHusbandName` varchar(45) DEFAULT NULL,
  `motherName` varchar(100) DEFAULT NULL,
  `fatherMobile` varchar(15) DEFAULT NULL,
  `motherMobile` varchar(15) DEFAULT NULL,
  `fatherOccupation` varchar(100) DEFAULT NULL,
  `motherOccupation` varchar(100) DEFAULT NULL,
  `siblings` int DEFAULT NULL,
  `annualIncome` varchar(45) DEFAULT NULL,
  `orgName` varchar(120) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `distt` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `orgPhone` varchar(20) DEFAULT NULL,
  `orgEmail` varchar(80) DEFAULT NULL,
  `orgWebsite` varchar(100) DEFAULT NULL,
  `physicallyChallenged` varchar(10) DEFAULT NULL,
  `aadhaarNo` varchar(20) DEFAULT NULL,
  `apaarId` varchar(20) DEFAULT NULL,
  `panNo` varchar(10) DEFAULT NULL,
  `voterId` varchar(20) DEFAULT NULL,
  `passportNo` varchar(20) DEFAULT NULL,
  `drivingLicenseNo` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `bloodGroup` varchar(5) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `localAddress` varchar(300) DEFAULT NULL,
  `permanentAddress` varchar(300) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `maritalStatus` varchar(10) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `updateBy` varchar(100) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` varchar(45) DEFAULT NULL,
  `alternativeEmail` varchar(80) DEFAULT NULL,
  `nationality` varchar(45) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `f1` varchar(45) DEFAULT NULL,
  `f2` varchar(45) DEFAULT NULL,
  `f3` varchar(45) DEFAULT NULL,
  `f4` varchar(45) DEFAULT NULL,
  `f5` varchar(45) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_profile`
--

LOCK TABLES `candidate_profile` WRITE;
/*!40000 ALTER TABLE `candidate_profile` DISABLE KEYS */;
INSERT INTO `candidate_profile` VALUES (1,'Dr.','SAHASTRAJEET HARDAHA ','sahastrajeet@gmail.com','8839844191','PRAKASH NARAYAN HARDAHA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','No','',NULL,NULL,NULL,NULL,NULL,'M',NULL,'GENERAL','B-17 NITTTR CAMPUS SHYMLA HILLS BHOPAL','B-17 NITTTR CAMPUS SHYMLA HILLS BHOPAL','2005-07-13','Unmarried','','','2023-01-15','19:31 PM','seemaprakash007@gmail.com','INDIAN','Hindu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Dr.','Parivesh Kasturia','pariveshkasturia@gmail.com','9827667545','abc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','No','',NULL,NULL,NULL,NULL,NULL,'M',NULL,'GENERAL','C/o Prakash Narayan Hardaha\r\nNear Binjhiya Tiraha\r\nNear Neta Ji School,\r\nMain road\r\nJabalpur\r\nmp\r\nbhopal\r\nC/o Prakash Narayan Hardaha\r\nNear Binjhiya Tiraha\r\nNear Neta Ji School,\r\nMain road\r\nJabalpur\r\nmp\r\nbhopal\r\n','C/o Prakash Narayan Hardaha\r\nNear Binjhiya Tiraha\r\nNear Neta Ji School,\r\nMain road\r\nJabalpur\r\nmp\r\nbhopal\r\nC/o Prakash Narayan Hardaha\r\nNear Binjhiya Tiraha\r\nNear Neta Ji School,\r\nMain road\r\nJabalpur\r\nmp\r\nbhopal\r\n\r\n\r\n','2023-01-24','Married','','','2023-01-31','11:52 AM','jh@gmail.com','Indian','Hindu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Mr.','Virendra Verma','vinnyverma1970@gmail.com','9826707000','Virendra Verma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','No','',NULL,NULL,NULL,NULL,NULL,'M',NULL,'OBC','B-15, NITTTR campus\r\nShamla Hills,\r\nBhopal - 462002\r\nMadhya Pradesh','B-15, NITTTR campus\r\nShamla Hills,\r\nBhopal - 462002\r\nMadhya Pradesh','1970-10-12','Married','','','2023-02-03','13:12 PM','vinnyverma1970@gmail.com','Indian','Hindu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Mr.','RAMESH LEKHWANI','rakasnitttrbpl@gmail.com','9827311930','Sh. P Lekhwani',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','No','',NULL,NULL,NULL,NULL,NULL,'M',NULL,'GENERAL','D-16/3-4 Station Road, Bairagarh\r\nBhopal - 462002','D-16/3-4 Station Road, Bairagarh\r\nBhopal - 462002','1993-01-27','Married','','','2023-01-24','13:26 PM','shobhalekhwani76685@gmail.com','Indian','Hindu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Mr.','Abhimanyu Singh Yadav','0105it201002@oriental.ac.in','7470696554','Ajay Singh Yadav',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','No','',NULL,NULL,NULL,NULL,NULL,'M',NULL,'OBC','patel nagar 101 bhopal','kamla nagar 101 bhopal','2003-03-09','Unmarried','','','2023-01-23','11:58 AM','0105it201002@oriental.ac.in','INDIAN','Hindu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Mr.','Kumar Sourav ','Kumar.sourav.Naraune@gmail.com','9424476703','Shyamal naraune',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','No','',NULL,NULL,NULL,NULL,NULL,'M',NULL,'GENERAL','Anusuya Ashram B Deoghar Jharkhand ','C3 Venkatesh Nagar Trilanga Bhopal 462016','1991-09-13','Unmarried','','','2023-01-19','14:56 PM','kumarsouravnaraune@yahoo.in','Indian','Hindu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Dr.','PRAKASH N HARDAHA','prakashnarayan007@gmail.com','9039296414','MOHAN LAL HARDAHA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','No','',NULL,NULL,NULL,NULL,NULL,'M',NULL,'GENERAL','B-17, NITTTR CAMPUS,\r\nNEAR SHYMLA HILLS,\r\nSMART ROAD, NEAR POLYTECNIC SQUARE,\r\nBHOPAL-462002','C/O PADMA HARDAHA\r\nSHARDA COLONY\r\nDIST-MANDLA\r\nMP.\r\n481661','1975-08-15','Married','','','2023-03-15','15:02 PM','pnhardaha@nitttrbpl.ac.in','INDIAN','Hindu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Mr.','AVINASH KUMAR HARDAHA','avinashhardaha@gmail.com','8982699045','MOHAN LAL HARDAHA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','No','',NULL,NULL,NULL,NULL,NULL,'M',NULL,'GENERAL','306, H Block Datt Township\r\nTilhari, Jabalpur','306, H Block Datt Township\r\nTilhari, Jabalpur','1979-07-27','Married','','','2023-01-23','12:26 PM','avinashhardaha@gmail.com','INDIAN','Hindu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Mr.','Aniket Jain','jainaniket210@gmail.com','6261827067','Sanjay Jain',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','No','',NULL,NULL,NULL,NULL,NULL,'M',NULL,'GENERAL','123- B, xyz nagar , bpl\r\n','123- B, xyz nagar , bpl','1997-03-12','Married','','','2023-01-23','11:59 AM','0105it201017@gmail.com','India','Jain',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'','ISHAN','harsitkitchen@gmail.com','9534084412','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','No','',NULL,NULL,NULL,NULL,NULL,'M',NULL,'General','','','1111-11-11','Married','','Candidate','2023-01-23','12:01 PM','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Dr.','Farzi','kogedeepak22a@gmail.com','6261788581','Tapori',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','Yes','',NULL,NULL,NULL,NULL,NULL,'Other',NULL,'GENERAL','pareshan mohalla kangal bank badnam road','focatchand mohalla badnam road farzi state ','1924-02-29','Divorced','','','2023-01-23','13:25 PM','pappulal123@gmail.com','memodian','Muslim',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Dr.','RAMESH LEKHWANI','shobhalekhwani76685@gmail.com','9827311930','Sh. P Lekhwani',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','No','',NULL,NULL,NULL,NULL,NULL,'M',NULL,'GENERAL','B-16/3-4 station Road, Bairagarh Bhopal','B-16/3-4 station Road, Bairagarh Bhopal','2023-06-07','Married','','','2023-02-06','12:33 PM','rakasnitttrbpl@gmail.com','Indian','Hindu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Mr.','Anil Kumar Yadav','yadav97anil@gmail.com','7987521339','Chandra Prakash Yadav',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','No','',NULL,NULL,NULL,NULL,NULL,'M',NULL,'OBC','C- 4 NITTTR Campus Shamla Hills near gandhi bhawan Bhopal, M.P. 462002','b -9/12 Yadav Block Ravi Shankar Nagar Near habibjang Thana bhopal, M.P. - 462016','1997-10-10','Unmarried','','','2023-01-25','11:39 AM','','Indian','Hindu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'','RKD','jabru1965@gmail.com','9425163874','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','No','',NULL,NULL,NULL,NULL,NULL,'M',NULL,'General','','','1111-11-11','Married','','Candidate','2023-02-06','11:39 AM','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Ms.','Priyanshi Raghuwanshi','priyanshiwelcomes@gmail.com','8305564431','Mahadev Raghuwanshi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','No','',NULL,NULL,NULL,NULL,NULL,'F',NULL,'OBC','B-17 NITTTR Campus shyamla hills Bhopal 462002','Ward no.1 Raghuwanshi Mohalla Near Durga Mandir Bineka Mandla 481661 ','2000-09-26','Unmarried','','','2023-02-08','21:29 PM','prakashnarayan007@gmail.com','Indian','Hindu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'','abhaydube','abhaydube122@gmail.com','9893398425','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','No','',NULL,NULL,NULL,NULL,NULL,'M',NULL,'General','','','1111-11-11','Married','','Candidate','2023-03-15','15:02 PM','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'','DURGESH KUMAR PATEL','ptldurgesh3@gmail.com','9926476862','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','No','',NULL,NULL,NULL,NULL,NULL,'M',NULL,'General','','','1111-11-11','Married','','Candidate','2024-04-16','15:06 pm','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `candidate_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_quali`
--

DROP TABLE IF EXISTS `candidate_quali`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_quali` (
  `id` int NOT NULL AUTO_INCREMENT,
  `appId` int DEFAULT NULL,
  `degreeName` varchar(255) DEFAULT NULL,
  `instituteName` varchar(255) DEFAULT NULL,
  `boardUniversity` varchar(255) DEFAULT NULL,
  `yearOfPassing` year DEFAULT NULL,
  `fromDay` tinyint DEFAULT NULL,
  `fromMonth` tinyint DEFAULT NULL,
  `fromYear` year DEFAULT NULL,
  `toDay` tinyint DEFAULT NULL,
  `toMonth` tinyint DEFAULT NULL,
  `toYear` year DEFAULT NULL,
  `enrollmentNo` varchar(50) DEFAULT NULL,
  `obtainedMarks` decimal(6,2) DEFAULT NULL,
  `totalMarks` varchar(45) DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  `subjectBranch` varchar(100) DEFAULT NULL,
  `cgpa` decimal(4,2) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `division` varchar(50) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `instituteWebsite` varchar(255) DEFAULT NULL,
  `instituteEmail` varchar(100) DEFAULT NULL,
  `updateBy` varchar(100) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `f1` varchar(45) DEFAULT NULL,
  `f2` varchar(45) DEFAULT NULL,
  `f3` varchar(45) DEFAULT NULL,
  `f4` varchar(45) DEFAULT NULL,
  `f5` varchar(45) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_quali`
--

LOCK TABLES `candidate_quali` WRITE;
/*!40000 ALTER TABLE `candidate_quali` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_quali` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_training`
--

DROP TABLE IF EXISTS `candidate_training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_training` (
  `id` int NOT NULL AUTO_INCREMENT,
  `appId` int DEFAULT NULL,
  `courseName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fromDt` date DEFAULT NULL,
  `toDt` date DEFAULT NULL,
  `orgName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `orgMobile` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `orgEmail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `orgWebsite` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `skillLevel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `totalMarks` decimal(6,2) DEFAULT NULL,
  `obtainedMarks` decimal(6,2) DEFAULT NULL,
  `percentile` decimal(5,2) DEFAULT NULL,
  `resultStatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `updateBy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `f1` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f2` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f3` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f4` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f5` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vStatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vStamp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pStatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pStamp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_training`
--

LOCK TABLES `candidate_training` WRITE;
/*!40000 ALTER TABLE `candidate_training` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_training` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dd_answer`
--

DROP TABLE IF EXISTS `dd_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dd_answer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `value` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dd_answer`
--

LOCK TABLES `dd_answer` WRITE;
/*!40000 ALTER TABLE `dd_answer` DISABLE KEYS */;
INSERT INTO `dd_answer` VALUES (4,'Yes','Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'No','No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dd_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dd_category`
--

DROP TABLE IF EXISTS `dd_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dd_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `value` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dd_category`
--

LOCK TABLES `dd_category` WRITE;
/*!40000 ALTER TABLE `dd_category` DISABLE KEYS */;
INSERT INTO `dd_category` VALUES (1,'ST','ST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'SC','SC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'OBC','OBC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'GENERAL','GENERAL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dd_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dd_dept`
--

DROP TABLE IF EXISTS `dd_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dd_dept` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `value` varchar(130) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dd_dept`
--

LOCK TABLES `dd_dept` WRITE;
/*!40000 ALTER TABLE `dd_dept` DISABLE KEYS */;
INSERT INTO `dd_dept` VALUES (27,'DCDAE','Department of Curriculum Development and Assessment Education',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'DASE','Department of Applied Science Education',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'DCEEE','Department of Civil and Environmental Engineering Education',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'DCSEE','Department of Computer Science and Engineering Education',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'DEEE','Department of Electrical and Electronics Engineering Education',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'DMEE','Department of Mechanical Engineering Education',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'DMGE','Department of Management Education',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'DMRDE','Department of Media Research and Development Education',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'DER','Department of Media Research & Development Education ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'DTVE','Department of Technical and Vocational Education & Research',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'DERM','Department of Education Research & Management',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dd_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dd_exam_type`
--

DROP TABLE IF EXISTS `dd_exam_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dd_exam_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(70) DEFAULT NULL,
  `value` varchar(70) DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dd_exam_type`
--

LOCK TABLES `dd_exam_type` WRITE;
/*!40000 ALTER TABLE `dd_exam_type` DISABLE KEYS */;
INSERT INTO `dd_exam_type` VALUES (1,'Certificate','Certificate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Diploma','Diploma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Under Graduate','Under Graduate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Post Graduate','Post Graduate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Post Graduage Diploma','Post Graduage Diploma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'PhD','PhD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Other','Other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'10th','10th',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'12th','12th',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dd_exam_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dd_fee_code`
--

DROP TABLE IF EXISTS `dd_fee_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dd_fee_code` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `value` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dd_fee_code`
--

LOCK TABLES `dd_fee_code` WRITE;
/*!40000 ALTER TABLE `dd_fee_code` DISABLE KEYS */;
INSERT INTO `dd_fee_code` VALUES (1,'REC-FORMS-NT-2023-2024','REC-FORMS-NT-2023-2024',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dd_fee_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dd_form_name`
--

DROP TABLE IF EXISTS `dd_form_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dd_form_name` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(70) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `value` varchar(70) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `validate` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `seqNo` int DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dd_form_name`
--

LOCK TABLES `dd_form_name` WRITE;
/*!40000 ALTER TABLE `dd_form_name` DISABLE KEYS */;
INSERT INTO `dd_form_name` VALUES (5,'Personal Info','Personal Info','Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Other Info','Other Info','Yes',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Education Detail','Education Detail','Yes',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Experience Detail','Experience Detail','Yes',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Crime Detail','Crime Detail','Yes',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Payment Info','Payment Info','Yes',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Enclosures Detail','Enclosures Detail','Yes',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Receipt Upload','Receipt Upload','Yes',8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Photo Upload','Photo Upload','Yes',9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Sign Upload','Sign Upload','Yes',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Final Application','Final Application','No',11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dd_form_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dd_form_status`
--

DROP TABLE IF EXISTS `dd_form_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dd_form_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `value` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dd_form_status`
--

LOCK TABLES `dd_form_status` WRITE;
/*!40000 ALTER TABLE `dd_form_status` DISABLE KEYS */;
INSERT INTO `dd_form_status` VALUES (5,'Incomplete','Incomplete',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Complete','Complete',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Not Applicable','Not Applicable',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dd_form_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dd_gender`
--

DROP TABLE IF EXISTS `dd_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dd_gender` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `value` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dd_gender`
--

LOCK TABLES `dd_gender` WRITE;
/*!40000 ALTER TABLE `dd_gender` DISABLE KEYS */;
INSERT INTO `dd_gender` VALUES (1,'M','Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'F','Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Other','Other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dd_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dd_job_type`
--

DROP TABLE IF EXISTS `dd_job_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dd_job_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `value` varchar(45) DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dd_job_type`
--

LOCK TABLES `dd_job_type` WRITE;
/*!40000 ALTER TABLE `dd_job_type` DISABLE KEYS */;
INSERT INTO `dd_job_type` VALUES (1,'Permanent','Permanent',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Temporary','Temporary',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Contract','Contract',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dd_job_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dd_marital_status`
--

DROP TABLE IF EXISTS `dd_marital_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dd_marital_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `value` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dd_marital_status`
--

LOCK TABLES `dd_marital_status` WRITE;
/*!40000 ALTER TABLE `dd_marital_status` DISABLE KEYS */;
INSERT INTO `dd_marital_status` VALUES (1,'Married','Married',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Unmarried','Unmarried',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Divorced','Divorced',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dd_marital_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dd_nationality`
--

DROP TABLE IF EXISTS `dd_nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dd_nationality` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `value` varchar(45) DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dd_nationality`
--

LOCK TABLES `dd_nationality` WRITE;
/*!40000 ALTER TABLE `dd_nationality` DISABLE KEYS */;
/*!40000 ALTER TABLE `dd_nationality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dd_pay_method`
--

DROP TABLE IF EXISTS `dd_pay_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dd_pay_method` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `value` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dd_pay_method`
--

LOCK TABLES `dd_pay_method` WRITE;
/*!40000 ALTER TABLE `dd_pay_method` DISABLE KEYS */;
INSERT INTO `dd_pay_method` VALUES (1,'NEFT','NEFT'),(2,'UPI','UPI'),(3,'NET BANKING','NET BANKING'),(4,'','');
/*!40000 ALTER TABLE `dd_pay_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dd_pay_status`
--

DROP TABLE IF EXISTS `dd_pay_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dd_pay_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `value` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dd_pay_status`
--

LOCK TABLES `dd_pay_status` WRITE;
/*!40000 ALTER TABLE `dd_pay_status` DISABLE KEYS */;
INSERT INTO `dd_pay_status` VALUES (1,'Success','Success',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Failed','Failed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dd_pay_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dd_post_status`
--

DROP TABLE IF EXISTS `dd_post_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dd_post_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `value` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dd_post_status`
--

LOCK TABLES `dd_post_status` WRITE;
/*!40000 ALTER TABLE `dd_post_status` DISABLE KEYS */;
INSERT INTO `dd_post_status` VALUES (1,'Active','Active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Not Active','Not Active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dd_post_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dd_religion`
--

DROP TABLE IF EXISTS `dd_religion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dd_religion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `value` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dd_religion`
--

LOCK TABLES `dd_religion` WRITE;
/*!40000 ALTER TABLE `dd_religion` DISABLE KEYS */;
INSERT INTO `dd_religion` VALUES (1,'Hindu','Hindu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Muslim','Muslim',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Sikh','Sikh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Christian','Christian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Jain','Jain',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Buddhism','Buddhism',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Other','Other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dd_religion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dd_state`
--

DROP TABLE IF EXISTS `dd_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dd_state` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `value` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dd_state`
--

LOCK TABLES `dd_state` WRITE;
/*!40000 ALTER TABLE `dd_state` DISABLE KEYS */;
INSERT INTO `dd_state` VALUES (39,'MP','Madhya Pradesh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'UP','Uttar Pradesh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'MH','Maharashtra',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'GUJ','Gujrat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'UK','Uttarakhand',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'BR','Bihar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,'CG','Chattisgarh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'GA','Goa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'HR','Haryana',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'PY','Pondicherry',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'DL','Delhi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'TN','Taminl Nadu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'WB','West Bengal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'OR','Orissa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'NL','Nagaland',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'KL','Keral',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'MN','Manipur',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'JK','Jammu and Kashmir',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'HP','Himachal Pradesh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'KA','Karnataka',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,'AP','Andhra Pradesh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,'RJ','Rajsthan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,'AR','Arunachal Pradesh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,'AS','Assam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,'JH','Jharkhand',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,'ML','Meghalaya',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,'MZ','Mizoram',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,'PB','Punjab',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,'SK','Sikkim',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,'TR','Tripura',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,'AN','Andman & Nikobar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,'CH','Chandigarh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,'DH','Dadar & Nagar Haveli',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,'DD','Dadar & Diu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,'LD','Lakshyadeep',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,'TS','Telangana',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dd_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dd_title`
--

DROP TABLE IF EXISTS `dd_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dd_title` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `value` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dd_title`
--

LOCK TABLES `dd_title` WRITE;
/*!40000 ALTER TABLE `dd_title` DISABLE KEYS */;
INSERT INTO `dd_title` VALUES (7,'Mr.','Mr.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Mrs.','Mrs.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Ms.','Ms.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Dr.','Dr.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dd_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dd_user_group`
--

DROP TABLE IF EXISTS `dd_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dd_user_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `value` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dd_user_group`
--

LOCK TABLES `dd_user_group` WRITE;
/*!40000 ALTER TABLE `dd_user_group` DISABLE KEYS */;
INSERT INTO `dd_user_group` VALUES (1,'Candidate','Candidate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Office-Admin','Office-Admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dd_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_skills`
--

DROP TABLE IF EXISTS `employee_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_skills` (
  `employee_id` bigint NOT NULL,
  `skills` varchar(255) DEFAULT NULL,
  KEY `FKf1412wfxc2xjq9gbfm6v0op0` (`employee_id`),
  CONSTRAINT `FKf1412wfxc2xjq9gbfm6v0op0` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_skills`
--

LOCK TABLES `employee_skills` WRITE;
/*!40000 ALTER TABLE `employee_skills` DISABLE KEYS */;
INSERT INTO `employee_skills` VALUES (6,'Java'),(6,'Angular'),(6,'SQL'),(6,'AWS'),(7,'Databricks'),(7,'Azure'),(7,'SQL'),(7,'Python'),(8,'Angular'),(2,'SQL'),(2,'JavaScript'),(2,'Python'),(9,'SQL'),(9,'Python'),(9,'React'),(4,'SQL'),(3,'Angular'),(3,'JavaScript'),(3,'Spring Boot');
/*!40000 ALTER TABLE `employee_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `employment_type` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (2,_binary '','Indore',45,'HR','narcisa@example.com','Contract','Narcisa Doe','Female','2026-08-29','123456','6af23a3b-a6c1-46f2-90c6-2ed100bd1e68_pexels-speakmediauganda-35143638.jpg','8af1a554-b50a-4602-880c-a199522741fd_Stockholm-Resume-Template-Simple.pdf'),(3,_binary '','Bhopal',25,'IT','john@example.com','Part Time','John Doe','Male','2026-08-28','test123','608633ce-7545-493a-a465-77f29f95f1f8_sample-jpg-files-sample-6.jpg','df1e01ea-af1a-41b7-a87c-8e94c7dcc2d8_Stockholm-Resume-Template-Simple.pdf'),(4,_binary '','Bhopal',25,'IT','john@example.com','FULL_TIME','John Doe','Male','2026-08-28','test123','1d06d716-fd39-4acc-96dd-bb0cf33db3a4_sample-jpg-files-sample-6.jpg','f8a9add2-ccff-4703-877f-a67ad17eb13d_Stockholm-Resume-Template-Simple.pdf'),(6,_binary '','b17',47,'Operations','pnhardaha@gmail.com','Full Time','Prakash N Hardaha','Male','1956-08-15','123456','d3e1569a-2430-4a9b-91c7-96a602311f45_jpg-quality-10.jpg','c6f6ec1b-3c36-498c-b1a8-31133cb9b636_Stockholm-Resume-Template-Simple.pdf'),(7,_binary '','a7',31,'Marketing','sjaiswal@gmail.com','Full Time','Shubham Jaiswal','Male','2026-08-20','123456','bff4bf88-12bd-4ab7-ad0a-293e74cb350d_jpg-quality-10.jpg','929a2c86-57d8-43df-8c2c-df79eeab9455_Stockholm-Resume-Template-Simple.pdf'),(8,_binary '','Pakistan',45,'Sales','rtahir@gmail.com','Part Time','Rana Tahir','Male','2026-08-14','123456','2f7de879-f70d-40d2-a303-85d7a87ad7ed_jpg-quality-10.jpg','d8208a08-37b1-4654-b4fd-71e2c1609235_Stockholm-Resume-Template-Simple.pdf'),(9,_binary '','china',45,'Finance','nmichell@gmail.com','Full Time','Nguyens Michelle','Female','2026-08-14','123456','891d77c2-0c9e-487c-8c84-f8413fd50d4d_pexels-speakmediauganda-35143638.jpg','f6fb1875-5f0d-4e43-ae99-10ae6c41c055_Stockholm-Resume-Template-Simple.pdf');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_config`
--

DROP TABLE IF EXISTS `master_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `form_config` text,
  `ui_config` text,
  `pagelayout_config` text,
  `table_config` text,
  `remark` text,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_config`
--

LOCK TABLES `master_config` WRITE;
/*!40000 ALTER TABLE `master_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_detail`
--

DROP TABLE IF EXISTS `post_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `value` varchar(45) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `startDt` date DEFAULT NULL,
  `endDt` date DEFAULT NULL,
  `dept` varchar(45) DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDt` date DEFAULT NULL,
  `updateTime` time DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `vStatus` varchar(255) DEFAULT NULL,
  `vBy` varchar(255) DEFAULT NULL,
  `vStamp` varchar(255) DEFAULT NULL,
  `pStatus` varchar(255) DEFAULT NULL,
  `pBy` varchar(255) DEFAULT NULL,
  `pStamp` varchar(255) DEFAULT NULL,
  `f1` varchar(255) DEFAULT NULL,
  `f2` varchar(255) DEFAULT NULL,
  `f3` varchar(255) DEFAULT NULL,
  `f4` varchar(255) DEFAULT NULL,
  `f5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_detail`
--

LOCK TABLES `post_detail` WRITE;
/*!40000 ALTER TABLE `post_detail` DISABLE KEYS */;
INSERT INTO `post_detail` VALUES (3,'TP-001','Senior Clerk','CSE','Active','2023-12-21','2024-12-21','DCSE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'TP-002','Accountant','CSE','Active','2022-12-21','2024-12-21','DCSE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'TP-003','System Analyst','CSE','Active','2023-01-15','2023-02-25','DCSE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'TP-004','Programmer','CSE','Active','2023-01-15','2023-02-25','DCSE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `post_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,_binary '',NULL,'durgesh@example.com','Durgesh Kumar','$2a$10$MFTUSi2K725lOjyT5yKsaeOzaYsqx/uT.BNgmxW23/ftepJe18AYy',NULL,'durgesh'),(2,_binary '',NULL,'testuser@example.com','Test User','$2a$10$Z2peFdry/oDp7xWul9az6eHyqYwDQ7tO6yyLWoJrY7b/vWcWwRBAC',NULL,'testuser');
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

-- Dump completed on 2026-10-08  4:48:26
