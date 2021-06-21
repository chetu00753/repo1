-- MariaDB dump 10.19  Distrib 10.5.10-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: comride-dev.cwzzcqb2cmzz.ap-south-1.rds.amazonaws.com    Database: comride
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `address_proofs`
--

DROP TABLE IF EXISTS `address_proofs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_proofs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `driver_id` int NOT NULL,
  `documnet_type_id` int NOT NULL DEFAULT '6',
  `address_proof` varchar(255) NOT NULL,
  `status` int DEFAULT '1',
  `is_deleted` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `address_line_1` varchar(100) DEFAULT NULL,
  `address_line_2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  KEY `documnet_type_id` (`documnet_type_id`),
  KEY `status` (`status`),
  CONSTRAINT `address_proofs_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `address_proofs_ibfk_2` FOREIGN KEY (`documnet_type_id`) REFERENCES `document_types` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `address_proofs_ibfk_3` FOREIGN KEY (`status`) REFERENCES `document_statuses` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_proofs`
--

LOCK TABLES `address_proofs` WRITE;
/*!40000 ALTER TABLE `address_proofs` DISABLE KEYS */;
INSERT INTO `address_proofs` VALUES (1,1,6,'http://www.pic.com/dev/api/documents/9f44c5d2-e625-41d5-b30e-10b858803d11.png',2,1,'2021-05-24 05:54:16','2021-05-31 11:24:16',NULL,NULL,NULL,NULL,NULL),(2,3,6,'www.abc.com',1,1,'2021-05-28 09:55:19','2021-05-31 11:24:55',NULL,NULL,NULL,NULL,NULL),(3,3,6,'www.pic.com',2,1,'2021-05-28 09:55:30','2021-06-20 04:05:43',NULL,NULL,NULL,NULL,NULL),(4,3,6,'www.abc.com',1,1,'2021-05-28 09:55:32','2021-05-28 10:01:05',NULL,NULL,NULL,NULL,NULL),(5,5,6,'www.abc.com',1,0,'2021-05-31 11:17:41','2021-05-31 11:17:41',NULL,NULL,NULL,NULL,NULL),(6,8,6,'www.abc.com',1,0,'2021-06-12 11:14:56','2021-06-12 11:14:56',NULL,NULL,NULL,NULL,NULL),(7,8,6,'https://comride-dev.s3.ap-south-1.amazonaws.com/documents/e1d8539e-60ad-4adb-80c6-cedba5b533f5.jpg',1,0,'2021-06-18 05:30:32','2021-06-18 05:31:46','address_line_1','address_line_2','city','state',123444),(8,10,6,'https://uappwnaqp1.execute-api.ap-south-1.amazonaws.com/dev/api/driver/save-address-proof',2,0,'2021-06-21 11:31:01','2021-06-21 11:33:56',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `address_proofs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address_line_1` varchar(255) DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `place_id` varchar(255) DEFAULT NULL,
  `lat` double NOT NULL,
  `long` double NOT NULL,
  `is_deleted` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,20,NULL,'a','a','a','a','a','a','a',1,1,0,'2021-06-04 09:54:25','2021-06-04 09:54:25'),(2,20,'other','a','a','a','a','a','a','a',1,1,0,'2021-06-04 10:19:47','2021-06-04 10:19:47'),(3,20,'other','a','a','a','a','a','a','a',1,1,0,'2021-06-05 04:52:07','2021-06-05 04:52:07'),(4,20,'Home','a','a','a','a','a','a','a',1,1,0,'2021-06-05 04:52:21','2021-06-05 04:52:21'),(5,20,'other','a','a','a','a','a','a','a',1,1,0,'2021-06-05 04:52:53','2021-06-05 04:52:53'),(8,2,'Home','A. S. Rao Nagar','Secunderabad, Telangana, India','Telangana','','','India','ChIJ9Ui6l56byzsReWFdoD7jSVg',17.4784775,78.5506371,0,'2021-06-05 11:03:02','2021-06-05 11:03:02'),(9,2,'Work','Mysore','Karnataka, India','Karnataka','','','India','ChIJ-S5XHThwrzsRbTn4wOjsiSs',12.2958104,76.6393805,0,'2021-06-05 11:07:16','2021-06-05 11:07:16'),(10,2,'Other','HSR Layout Police Station','27th Main Road, 1st Sector, HSR Layout, Bengaluru, Karnataka, India','Karnataka','','560102','India','ChIJw_Ujl4EUrjsRXuGsfv_xkwI',12.9201516,77.65146340000001,0,'2021-06-05 11:08:25','2021-06-05 11:08:25'),(11,2,'Home','A. S. Rao Nagar','Secunderabad, Telangana, India','Telangana','','','India','ChIJ9Ui6l56byzsReWFdoD7jSVg',17.4784775,78.5506371,0,'2021-06-05 11:46:57','2021-06-05 11:46:57'),(12,20,'other','a','a','','a','a','a','a',1,2,0,'2021-06-05 12:20:24','2021-06-05 12:20:24');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_resource_types`
--

DROP TABLE IF EXISTS `admin_resource_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_resource_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `is_deleted` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_resource_types`
--

LOCK TABLES `admin_resource_types` WRITE;
/*!40000 ALTER TABLE `admin_resource_types` DISABLE KEYS */;
INSERT INTO `admin_resource_types` VALUES (1,'ProfilePic',0,'2021-05-24 05:32:01','2021-06-16 02:01:43'),(2,'Drivers',0,'2021-05-24 05:32:01','2021-06-16 02:02:08'),(3,'States',0,'2021-05-24 05:32:01','2021-06-16 02:03:37'),(4,'Districts',0,'2021-05-24 05:32:01','2021-06-16 02:04:58'),(5,'Auth',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(6,'Resource_Types',0,'2021-05-24 05:32:01','2021-06-12 06:54:11'),(7,'Permissions',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(8,'User_Types',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(9,'Ride_Types',0,'2021-05-27 14:21:43','2021-05-27 14:21:43'),(10,'Payment_Types',0,'2021-05-27 14:22:10','2021-05-27 14:22:10'),(11,'District_Pricing',0,'2021-05-27 14:22:40','2021-05-27 14:22:40'),(12,'Driving License',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(13,'Insurance',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(14,'States',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(15,'Districts',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(16,'Auth',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(17,'Resource_Types',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(18,'Permissions',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(19,'User_Types',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(20,'Users',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(21,'Drivers',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(22,'States',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(23,'Districts',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(24,'Auth',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(25,'Resource_Types',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(26,'Permissions',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(27,'User_Types',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(28,'Test',0,'2021-06-14 10:34:43','2021-06-14 10:34:52'),(29,'Test',0,'2021-06-14 10:35:41','2021-06-14 10:36:05'),(30,'Test1',0,'2021-06-16 01:58:01','2021-06-16 01:58:23');
/*!40000 ALTER TABLE `admin_resource_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `user_type_id` int NOT NULL,
  `district_id` int DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_deleted` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_type_id` (`user_type_id`),
  KEY `district_id` (`district_id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `admins_ibfk_2` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `admins_ibfk_3` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (2,'admin','admin','admin@admin.com','1234567890',1,2,1,'admin',0,'2021-05-24 05:32:31','2021-05-24 05:32:31');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_deleted` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banks`
--

LOCK TABLES `banks` WRITE;
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
INSERT INTO `banks` VALUES (1,'Bank of Baroda',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(2,'Bank of India',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(3,'Bank of Maharashtra',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(4,'Canara Bank',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(5,'Central Bank of India',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(6,'Indian Bank',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(7,'Indian Overseas Bank',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(8,'Punjab and Sind Bank',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(9,'Punjab National Bank',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(10,'State Bank of India',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(11,'UCO Bank',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(12,'Union Bank of India',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(13,'Bank of Baroda',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(14,'Bank of India',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(15,'Bank of Maharashtra',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(16,'Canara Bank',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(17,'Central Bank of India',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(18,'Indian Bank',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(19,'Indian Overseas Bank',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(20,'Punjab and Sind Bank',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(21,'Punjab National Bank',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(22,'State Bank of India',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(23,'UCO Bank',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(24,'Union Bank of India',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(25,'Bank of Baroda',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(26,'Bank of India',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(27,'Bank of Maharashtra',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(28,'Canara Bank',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(29,'Central Bank of India',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(30,'Indian Bank',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(31,'Indian Overseas Bank',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(32,'Punjab and Sind Bank',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(33,'Punjab National Bank',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(34,'State Bank of India',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(35,'UCO Bank',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(36,'Union Bank of India',0,'2021-05-27 14:32:22','2021-05-27 14:32:22');
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district_ride_type_pricings`
--

DROP TABLE IF EXISTS `district_ride_type_pricings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district_ride_type_pricings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ride_type_id` int NOT NULL,
  `district_id` int NOT NULL,
  `base_fare` double NOT NULL,
  `distance_fare` double NOT NULL,
  `advance_booking_fee` double NOT NULL,
  `access_fee` double NOT NULL,
  `cgst` double NOT NULL,
  `sgst` double NOT NULL,
  `base_distance` double NOT NULL,
  `is_deleted` tinyint DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ride_type_id` (`ride_type_id`),
  KEY `district_id` (`district_id`),
  CONSTRAINT `district_ride_type_pricings_ibfk_1` FOREIGN KEY (`ride_type_id`) REFERENCES `ride_types` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `district_ride_type_pricings_ibfk_2` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district_ride_type_pricings`
--

LOCK TABLES `district_ride_type_pricings` WRITE;
/*!40000 ALTER TABLE `district_ride_type_pricings` DISABLE KEYS */;
INSERT INTO `district_ride_type_pricings` VALUES (1,1,1,234,234,53,343,2,2,2,0,'2021-05-24 05:42:35','2021-06-01 04:48:38'),(2,2,1,234,234,53,343,2,2,2,0,'2021-05-24 05:42:35','2021-05-24 05:42:35'),(3,3,1,234,234,53,343,2,2,2,0,'2021-05-24 05:42:35','2021-05-24 05:42:35'),(4,4,1,234,234,53,343,2,2,2,0,'2021-05-24 05:42:35','2021-05-24 05:42:35'),(5,5,1,234,234,53,343,2,2,2,0,'2021-05-24 05:42:35','2021-05-24 05:42:35'),(6,1,1,4,1,1,1,1,1,1,0,'2021-05-24 05:42:35','2021-06-12 07:52:10'),(8,1,2,1,1,1,1,1,1,1,0,'2021-05-27 12:31:06','2021-06-12 07:53:49'),(9,2,2,1,1,1,1,1,1,1,0,'2021-05-28 03:45:19','2021-05-28 03:45:19'),(10,3,2,1,1,1,1,1,1,1,0,'2021-05-28 03:46:03','2021-05-28 03:46:03'),(11,4,2,1,1,1,1,1,1,1,0,'2021-05-28 03:47:47','2021-05-28 03:47:47'),(12,5,2,1,1,1,1,1,1,1,0,'2021-05-28 04:06:55','2021-05-28 04:06:55'),(15,6,2,1,1,1,1,1,1,1,0,'2021-06-01 04:47:28','2021-06-01 04:47:28');
/*!40000 ALTER TABLE `district_ride_type_pricings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `districts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `state_id` int NOT NULL,
  `is_deleted` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES (1,'Mysore',1,0,'2021-05-24 05:41:57','2021-06-14 14:27:15'),(2,'Banglore',1,0,'2021-05-24 05:41:57','2021-06-12 06:11:31'),(4,'Mangalore',1,0,'2021-06-14 06:31:39','2021-06-14 06:33:32'),(5,'test1',2,0,'2021-06-16 01:57:19','2021-06-16 01:57:41');
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_statuses`
--

DROP TABLE IF EXISTS `document_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL,
  `is_deleted` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_statuses`
--

LOCK TABLES `document_statuses` WRITE;
/*!40000 ALTER TABLE `document_statuses` DISABLE KEYS */;
INSERT INTO `document_statuses` VALUES (1,'processing',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(2,'accepted',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(3,'rejected',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(4,'processing',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(5,'accepted',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(6,'rejected',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(7,'processing',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(8,'accepted',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(9,'rejected',0,'2021-05-27 14:32:22','2021-05-27 14:32:22');
/*!40000 ALTER TABLE `document_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_types`
--

DROP TABLE IF EXISTS `document_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `is_deleted` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_types`
--

LOCK TABLES `document_types` WRITE;
/*!40000 ALTER TABLE `document_types` DISABLE KEYS */;
INSERT INTO `document_types` VALUES (1,'ProfilePic',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(2,'Driving Licence',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(3,'Insurance',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(4,'Vehicle_RC',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(5,'Vehicle_Pic',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(6,'AddressProof',0,'2021-05-24 05:32:01','2021-05-24 05:32:01');
/*!40000 ALTER TABLE `document_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_documents`
--

DROP TABLE IF EXISTS `driver_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver_documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `driver_id` int NOT NULL,
  `dl_id` int DEFAULT NULL,
  `insurance_id` int DEFAULT NULL,
  `address_proof_id` int DEFAULT NULL,
  `profile_pic_id` int DEFAULT NULL,
  `vehicle_pic_id` int DEFAULT NULL,
  `vehicle_rc_id` int DEFAULT NULL,
  `is_deleted` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  KEY `dl_id` (`dl_id`),
  KEY `insurance_id` (`insurance_id`),
  KEY `address_proof_id` (`address_proof_id`),
  KEY `profile_pic_id` (`profile_pic_id`),
  KEY `vehicle_pic_id` (`vehicle_pic_id`),
  KEY `vehicle_rc_id` (`vehicle_rc_id`),
  CONSTRAINT `driver_documents_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `driver_documents_ibfk_2` FOREIGN KEY (`dl_id`) REFERENCES `driving_licences` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `driver_documents_ibfk_3` FOREIGN KEY (`insurance_id`) REFERENCES `insurances` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `driver_documents_ibfk_4` FOREIGN KEY (`address_proof_id`) REFERENCES `address_proofs` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `driver_documents_ibfk_5` FOREIGN KEY (`profile_pic_id`) REFERENCES `profile_pics` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `driver_documents_ibfk_6` FOREIGN KEY (`vehicle_pic_id`) REFERENCES `vehicle_pics` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `driver_documents_ibfk_7` FOREIGN KEY (`vehicle_rc_id`) REFERENCES `vehicle_rcs` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_documents`
--

LOCK TABLES `driver_documents` WRITE;
/*!40000 ALTER TABLE `driver_documents` DISABLE KEYS */;
INSERT INTO `driver_documents` VALUES (1,1,1,1,1,1,1,1,0,'2021-05-24 05:51:11','2021-05-24 07:23:57'),(2,2,NULL,NULL,NULL,4,4,NULL,0,'2021-05-25 15:29:51','2021-06-17 07:16:04'),(3,3,9,7,3,2,2,5,0,'2021-05-25 15:38:16','2021-06-20 04:01:25'),(4,4,NULL,NULL,NULL,NULL,NULL,NULL,0,'2021-05-25 15:41:55','2021-05-25 15:41:55'),(5,5,NULL,NULL,NULL,NULL,NULL,NULL,0,'2021-05-25 15:41:58','2021-05-25 15:41:58'),(6,6,NULL,NULL,NULL,NULL,NULL,NULL,0,'2021-05-31 22:53:33','2021-05-31 22:53:33'),(7,7,NULL,NULL,NULL,NULL,NULL,NULL,0,'2021-06-06 22:59:33','2021-06-06 22:59:33'),(8,8,NULL,NULL,NULL,NULL,NULL,NULL,0,'2021-06-09 06:21:29','2021-06-09 06:21:29'),(9,9,NULL,NULL,NULL,NULL,NULL,NULL,0,'2021-06-21 11:24:11','2021-06-21 11:24:11'),(10,10,11,11,8,7,12,9,0,'2021-06-21 11:24:32','2021-06-21 11:35:30');
/*!40000 ALTER TABLE `driver_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_locations`
--

DROP TABLE IF EXISTS `driver_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver_locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `driver_id` int NOT NULL,
  `lat` double NOT NULL,
  `long` double NOT NULL,
  `socket_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_deleted` tinyint DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  CONSTRAINT `driver_locations_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_locations`
--

LOCK TABLES `driver_locations` WRITE;
/*!40000 ALTER TABLE `driver_locations` DISABLE KEYS */;
INSERT INTO `driver_locations` VALUES (1,1,11.11,10.1,'0',0,'2021-06-03 13:32:31','2021-06-03 13:32:31'),(2,1,11.11,10.1,'0',0,'2021-06-03 13:32:44','2021-06-03 13:32:44'),(3,1,11.11,10.1,'0',0,'2021-06-03 13:32:48','2021-06-03 13:32:48'),(4,1,11.11,10.1,'w4BA5k-g1VJW8vBqAAAD',0,'2021-06-03 13:35:35','2021-06-03 13:35:35'),(5,1,11.11,10.1,'w4BA5k-g1VJW8vBqAAAD',0,'2021-06-03 13:35:39','2021-06-03 13:35:39'),(6,1,11.11,10.1,'w4BA5k-g1VJW8vBqAAAD',0,'2021-06-03 13:35:43','2021-06-03 13:35:43'),(7,1,11.11,10.1,'mcK2zbAQJHDu_J3dAAAF',0,'2021-06-04 05:44:35','2021-06-04 05:44:35'),(8,1,11.11,10.1,'gViZHdP7wRGymq_3AAAH',0,'2021-06-04 05:44:59','2021-06-04 05:44:59'),(9,1,10.11,10.11,'N1obPeWko5daYPheAAAH',0,'2021-06-04 13:05:14','2021-06-04 13:05:14'),(10,1,10.11,10.11,'haqsUoaAgOxS2MVbAAAH',0,'2021-06-04 13:14:54','2021-06-04 13:14:54'),(11,1,10.11,10.11,'254YdT0l3c-EAdILAAAD',0,'2021-06-04 13:28:36','2021-06-04 13:28:36'),(12,1,10.11,10.11,'o7mSPJvswmFyDMgWAAAB',0,'2021-06-04 13:29:11','2021-06-04 13:29:11'),(13,1,10.11,10.11,'vW2xy2IUlztONdXvAAAB',0,'2021-06-04 13:30:49','2021-06-04 13:30:49'),(14,1,10.11,10.11,'Fqy_qpy5ljfrGSGCAAAD',0,'2021-06-04 13:34:52','2021-06-04 13:34:52'),(15,1,10.11,10.11,'-DZ0aVes4SkrELkrAAAD',0,'2021-06-04 13:37:19','2021-06-04 13:37:19'),(16,1,10.11,10.11,'D_mcQ1DUsp5PMo3qAAAF',0,'2021-06-04 14:22:08','2021-06-04 14:22:08'),(17,1,10.11,10.11,'2Dw2sMSKCJnU4P1CAAAD',0,'2021-06-05 09:27:57','2021-06-05 09:27:57'),(18,1,10.11,10.11,'0s0IB5FjLnuueXhuAAAB',0,'2021-06-05 09:35:26','2021-06-05 09:35:26'),(19,1,10.11,10.11,'AB9YUdG0bQP4HyxxAAAJ',0,'2021-06-05 09:40:39','2021-06-05 09:40:39'),(20,1,10.11,10.11,'mRoT0Ytnm5EfRStbAAAL',0,'2021-06-05 09:45:43','2021-06-05 09:45:43'),(21,1,10.11,10.11,'Mo0DMUVYjHadi6CkAAAd',0,'2021-06-05 09:51:10','2021-06-05 09:51:10'),(22,1,10.11,10.11,'XXysNhrXji37BBZVAAAB',0,'2021-06-05 11:42:31','2021-06-05 11:42:31'),(23,1,10.11,10.11,'XXysNhrXji37BBZVAAAB',0,'2021-06-05 11:43:25','2021-06-05 11:43:25'),(24,1,12.76,77.76,'RF3quMLPza1fVx6nAAAD',0,'2021-06-05 11:44:10','2021-06-05 11:44:10'),(25,1,12.76,77.76,'lwZQ1J73-ncmC8TmAAAB',0,'2021-06-05 14:46:17','2021-06-05 14:46:17'),(26,1,12.76,77.76,'WXSrUNX0Dl50cfUBAAAD',0,'2021-06-05 14:46:32','2021-06-05 14:46:32'),(27,1,12.76,77.76,'AdLnvR5wfLtCvESJAAAF',0,'2021-06-07 05:07:04','2021-06-07 05:07:04'),(28,1,12.76,77.76,'AdLnvR5wfLtCvESJAAAF',0,'2021-06-07 05:07:41','2021-06-07 05:07:41');
/*!40000 ALTER TABLE `driver_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_ratings`
--

DROP TABLE IF EXISTS `driver_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver_ratings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `driver_id` int NOT NULL,
  `user_id` int NOT NULL,
  `ride_id` varchar(255) NOT NULL,
  `rating` double NOT NULL,
  `review` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  KEY `user_id` (`user_id`),
  KEY `ride_id` (`ride_id`),
  CONSTRAINT `driver_ratings_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `driver_ratings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `driver_ratings_ibfk_3` FOREIGN KEY (`ride_id`) REFERENCES `rides` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_ratings`
--

LOCK TABLES `driver_ratings` WRITE;
/*!40000 ALTER TABLE `driver_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_referrals`
--

DROP TABLE IF EXISTS `driver_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver_referrals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `referred_by` int NOT NULL,
  `referred_to` int NOT NULL,
  `referral_code` varchar(255) NOT NULL,
  `is_deleted` tinyint DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_referrals`
--

LOCK TABLES `driver_referrals` WRITE;
/*!40000 ALTER TABLE `driver_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drivers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL DEFAULT '91',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `bank_id` int DEFAULT NULL,
  `account_holder_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `otp_verified` tinyint DEFAULT '0',
  `isProfileUpdated` tinyint DEFAULT '0',
  `ifsc_code` varchar(255) DEFAULT NULL,
  `vehical_no` varchar(255) DEFAULT NULL,
  `is_active` tinyint DEFAULT '0',
  `is_verified` tinyint DEFAULT '0',
  `referral_code` varchar(255) DEFAULT NULL,
  `referred_by` int DEFAULT NULL,
  `rating` double DEFAULT '0',
  `vehicle_model` varchar(255) DEFAULT NULL,
  `driver_status` enum('online','offline','inride') DEFAULT 'offline',
  `ride_type_id` int DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `long` double DEFAULT NULL,
  `is_deleted` int DEFAULT '0',
  `district_id` int DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bank_id` (`bank_id`),
  KEY `referred_by` (`referred_by`),
  KEY `ride_type_id` (`ride_type_id`),
  CONSTRAINT `drivers_ibfk_1` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `drivers_ibfk_2` FOREIGN KEY (`referred_by`) REFERENCES `driver_referrals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `drivers_ibfk_3` FOREIGN KEY (`ride_type_id`) REFERENCES `ride_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (1,'8904482997','91','Chetan','Kumar','chetan@firsdvstfflooewdrg.agency','2021-06-22 00:00:00',1,1,'U2FsdGVkX1+1gi4kcTO+F+pGcBOM11/dtZ3bqVKs5n4=','U2FsdGVkX19ioJergGrVKcue9YwYaw/WkWMvY6V3TTg=',1,1,'U2FsdGVkX1+xo9dYHbO27+zQVfz7T7jrggqzFh5/WWM=','1233123',1,0,'GsaUh0',NULL,0,'asdasdasd','offline',3,10.1,10.1,0,2,1,'2021-05-24 05:51:10','2021-06-21 13:18:34'),(2,'9000654329','+91','Sachin','Tendulkar','rahul@gmail.com','1991-09-08 00:00:00',1,NULL,NULL,NULL,1,1,NULL,NULL,0,1,'WIHw7J',NULL,0,NULL,'offline',NULL,NULL,NULL,0,3,2,'2021-05-25 15:29:51','2021-06-20 04:11:23'),(3,'2073130360','+01','Harsha','Motapothula','harsha.motapothula@gmail.com','2021-05-25 00:00:00',1,NULL,NULL,NULL,1,1,NULL,NULL,1,1,'pEyiqh',NULL,0,NULL,'offline',NULL,NULL,NULL,0,1,1,'2021-05-25 15:38:16','2021-06-20 04:01:25'),(4,'8008345799','+91',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,'bNH9Fk',NULL,0,NULL,'offline',NULL,NULL,NULL,0,NULL,NULL,'2021-05-25 15:41:55','2021-05-25 15:41:55'),(5,'8374248088','+91',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,'ZTzZ73',NULL,0,NULL,'offline',NULL,NULL,NULL,0,NULL,NULL,'2021-05-25 15:41:58','2021-05-25 15:41:58'),(6,'2546464943','+91',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,'VN1Lel',NULL,0,NULL,'offline',NULL,NULL,NULL,0,NULL,NULL,'2021-05-31 22:53:33','2021-05-31 22:53:40'),(7,'9494943722','+91','Harsha','Motapothula','whatthetesla@gmail.com','1988-06-22 00:00:00',1,NULL,NULL,NULL,1,1,NULL,NULL,0,0,'mFmC3G',NULL,0,NULL,'offline',NULL,NULL,NULL,0,NULL,NULL,'2021-06-06 22:59:33','2021-06-06 23:01:29'),(8,'9494943733','+91','Divya','sri','harsha.motapothla@gmail.com','2021-06-09 00:00:00',1,NULL,NULL,NULL,1,1,NULL,NULL,0,0,'AryKGM',NULL,0,NULL,'offline',NULL,NULL,NULL,0,NULL,NULL,'2021-06-09 06:21:29','2021-06-09 06:27:04'),(9,'7892327428','+91',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,'uiqwWm',NULL,0,NULL,'offline',NULL,NULL,NULL,0,NULL,NULL,'2021-06-21 11:24:11','2021-06-21 11:24:16'),(10,'7795770004','+91','modds','iiidds','mod@s.com','2021-06-08 00:00:00',1,6,'U2FsdGVkX1+JgvclwodS1KilW1k0kq/r1USGuLmvdzw=','U2FsdGVkX1+zeVXaEUXIyTyfDBRMulgETBTFaF+A4j8=',1,1,'U2FsdGVkX1+BlGULvW7T7HLLWSqCF8a0EZWNUv7bc1w=',NULL,1,1,'5yGvTj',NULL,0,NULL,'offline',NULL,NULL,NULL,0,NULL,NULL,'2021-06-21 11:24:32','2021-06-21 11:36:23');
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driving_licences`
--

DROP TABLE IF EXISTS `driving_licences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driving_licences` (
  `id` int NOT NULL AUTO_INCREMENT,
  `driver_id` int NOT NULL,
  `documnet_type_id` int NOT NULL DEFAULT '2',
  `driving_licence_front` varchar(255) NOT NULL,
  `driving_licence_back` varchar(255) NOT NULL,
  `dL_no` varchar(255) DEFAULT NULL,
  `dl_valid_till` datetime DEFAULT NULL,
  `status` int DEFAULT '1',
  `is_deleted` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  KEY `documnet_type_id` (`documnet_type_id`),
  KEY `status` (`status`),
  CONSTRAINT `driving_licences_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `driving_licences_ibfk_2` FOREIGN KEY (`documnet_type_id`) REFERENCES `document_types` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `driving_licences_ibfk_3` FOREIGN KEY (`status`) REFERENCES `document_statuses` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driving_licences`
--

LOCK TABLES `driving_licences` WRITE;
/*!40000 ALTER TABLE `driving_licences` DISABLE KEYS */;
INSERT INTO `driving_licences` VALUES (1,1,2,'df.df.df','eweee.df.we','1234',NULL,2,0,'2021-05-24 05:54:13','2021-05-29 09:37:04'),(2,3,2,'df.df.df','eweee',NULL,NULL,1,1,'2021-05-28 12:12:16','2021-05-31 10:57:43'),(8,4,2,'www.test.test','www.sdfh.sdf',NULL,NULL,1,0,'2021-05-31 10:53:24','2021-05-31 10:53:24'),(9,3,2,'https://comride-dev.s3.ap-south-1.amazonaws.com/documents/e1d8539e-60ad-4adb-80c6-cedba5b533f5.jpg','https://comride-dev.s3.ap-south-1.amazonaws.com/documents/e1d8539e-60ad-4adb-80c6-cedba5b533f5.jpg','Ab-h3-5672','2021-12-01 18:30:00',2,0,'2021-06-18 05:02:43','2021-06-20 04:01:20'),(10,2,2,'https://comride-dev.s3.ap-south-1.amazonaws.com/documents/e1d8539e-60ad-4adb-80c6-cedba5b533f5.jpg','https://comride-dev.s3.ap-south-1.amazonaws.com/documents/e1d8539e-60ad-4adb-80c6-cedba5b533f5.jpg','Ab-h3-5672','2021-12-03 00:00:00',1,0,'2021-06-18 05:04:01','2021-06-18 05:11:11'),(11,10,2,'https://comride-dev.s3.ap-south-1.amazonaws.com/documents/276566e8-1d2c-4d00-81a0-9b8898d24cac.png','https://comride-dev.s3.ap-south-1.amazonaws.com/documents/6236ded9-a486-46bf-a92d-7fca51541961.png','abc221903846123',NULL,2,0,'2021-06-21 11:27:50','2021-06-21 11:33:56');
/*!40000 ALTER TABLE `driving_licences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurances`
--

DROP TABLE IF EXISTS `insurances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurances` (
  `id` int NOT NULL AUTO_INCREMENT,
  `driver_id` int NOT NULL,
  `documnet_type_id` int NOT NULL DEFAULT '3',
  `insurance_pic` varchar(255) NOT NULL,
  `insurance_no` int DEFAULT NULL,
  `insurance_type` int DEFAULT NULL,
  `insurance_valid_till` datetime DEFAULT NULL,
  `status` int DEFAULT '1',
  `is_deleted` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  KEY `documnet_type_id` (`documnet_type_id`),
  KEY `status` (`status`),
  CONSTRAINT `insurances_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `insurances_ibfk_2` FOREIGN KEY (`documnet_type_id`) REFERENCES `document_types` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `insurances_ibfk_3` FOREIGN KEY (`status`) REFERENCES `document_statuses` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurances`
--

LOCK TABLES `insurances` WRITE;
/*!40000 ALTER TABLE `insurances` DISABLE KEYS */;
INSERT INTO `insurances` VALUES (1,1,3,'[\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\",\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\"]',NULL,NULL,NULL,2,1,'2021-05-24 05:54:33','2021-05-29 10:08:58'),(2,2,3,'[\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\",\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\"]',NULL,NULL,NULL,1,1,'2021-05-28 09:32:38','2021-05-31 11:41:55'),(7,3,3,'[\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/ce286f70-7c52-4241-9c53-8b5f7742d304.jpg\",\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/0235e86f-f33f-4130-bf8e-3481d9c98295.jpg\"]',124,213,NULL,2,0,'2021-05-31 11:34:54','2021-06-20 04:01:21'),(8,4,3,'[\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\",\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\"]',NULL,NULL,NULL,1,0,'2021-06-12 11:38:49','2021-06-12 11:38:49'),(9,5,3,'[\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\",\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\"]',NULL,NULL,NULL,1,0,'2021-06-15 03:41:19','2021-06-15 03:41:19'),(10,5,3,'[\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\",\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\"]',0,0,'2020-12-12 00:00:00',1,0,'2021-06-18 05:40:07','2021-06-18 05:41:00'),(11,10,3,'{\"vehicle_insurance\":[\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/1cc6916a-521c-405a-8ad1-56547bc8062f.png\"]}',NULL,NULL,NULL,2,0,'2021-06-21 11:30:42','2021-06-21 11:33:57');
/*!40000 ALTER TABLE `insurances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp_verify_drivers`
--

DROP TABLE IF EXISTS `otp_verify_drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otp_verify_drivers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `driver_id` int NOT NULL,
  `otp` int NOT NULL,
  `otp_token` varchar(255) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `is_used` tinyint DEFAULT '0',
  `is_deleted` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  CONSTRAINT `otp_verify_drivers_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp_verify_drivers`
--

LOCK TABLES `otp_verify_drivers` WRITE;
/*!40000 ALTER TABLE `otp_verify_drivers` DISABLE KEYS */;
INSERT INTO `otp_verify_drivers` VALUES (1,1,1111,'7cbc6308-609a-4c3f-946d-fa84f343e71f','2021-05-24 06:06:11',1,0,'2021-05-24 05:51:11','2021-05-24 05:52:33'),(2,2,1111,'e77dfa61-6de3-4b0a-81a7-a3642c2d6779','2021-05-25 15:44:52',0,0,'2021-05-25 15:29:52','2021-05-25 15:29:52'),(3,2,1111,'f8963a44-f9fc-4202-aa30-645b4b68c6c7','2021-05-25 15:45:55',0,0,'2021-05-25 15:30:55','2021-05-25 15:30:55'),(4,3,1111,'fa9690c6-ab4c-4087-9e16-e251776d197f','2021-05-25 15:53:16',0,0,'2021-05-25 15:38:16','2021-05-25 15:38:16'),(5,4,1111,'d68a0629-7147-4d29-baad-955d604aeec1','2021-05-25 15:56:55',0,0,'2021-05-25 15:41:56','2021-05-25 15:41:56'),(6,5,1111,'84f4cd0c-35f7-4b2b-8fe8-a6b4d13f3074','2021-05-25 15:56:58',0,0,'2021-05-25 15:41:58','2021-05-25 15:41:58'),(7,3,1111,'fc1c046e-6fff-4e2d-b330-45203f5f5c02','2021-05-26 00:55:31',1,0,'2021-05-26 00:40:31','2021-05-26 00:40:35'),(8,3,1111,'05ad0cb2-7662-4cd3-99c7-81c916eaf325','2021-05-26 00:57:30',1,0,'2021-05-26 00:42:30','2021-05-26 00:42:35'),(9,2,1111,'5aee6ca2-2d24-4fc3-98e6-d854d3cfb7a8','2021-05-26 03:23:46',1,0,'2021-05-26 03:08:46','2021-05-26 03:08:54'),(10,3,1111,'5485fa1a-baf6-42ec-ab26-156d8d16ed2e','2021-05-29 02:16:05',1,0,'2021-05-29 02:01:05','2021-05-29 02:01:10'),(11,6,1111,'1e787546-2932-487e-adb3-83ffde5bc75f','2021-05-31 23:08:33',1,0,'2021-05-31 22:53:33','2021-05-31 22:53:40'),(12,3,1111,'a842ebe3-8256-45b3-aefc-074378f2b80e','2021-06-02 04:41:29',1,0,'2021-06-02 04:26:29','2021-06-02 04:27:31'),(13,3,1111,'fe2143ba-9095-483f-9919-b6ccb5cb6f0c','2021-06-03 08:51:51',1,0,'2021-06-03 08:36:51','2021-06-03 08:36:55'),(14,1,1111,'67c39130-fa99-4322-b43e-6265bf571c57','2021-06-03 11:50:03',1,0,'2021-06-03 11:35:03','2021-06-03 11:35:27'),(15,1,1111,'28fb76e7-f3f4-4fbf-979a-c13cc0d32c98','2021-06-04 13:18:54',1,0,'2021-06-04 13:03:54','2021-06-04 13:04:12'),(16,1,1111,'be5dbd30-28b1-4f0a-9e95-3963317504c8','2021-06-05 09:37:42',1,0,'2021-06-05 09:22:42','2021-06-05 09:23:01'),(17,1,1111,'79343dd7-247a-4251-a241-90804ddc64a9','2021-06-05 15:13:13',1,0,'2021-06-05 14:58:13','2021-06-05 14:58:31'),(18,1,1111,'364114db-5580-477b-8ba4-095c6cd6a4f4','2021-06-05 15:24:09',0,0,'2021-06-05 15:09:09','2021-06-05 15:09:09'),(19,7,1111,'279a4db7-aff2-4721-9ba9-e6f57e83aa9e','2021-06-06 23:14:33',1,0,'2021-06-06 22:59:33','2021-06-06 22:59:38'),(20,1,1111,'ccd4e177-064e-4aff-ae56-f72ce8becf0e','2021-06-07 05:15:25',1,0,'2021-06-07 05:00:25','2021-06-07 05:00:53'),(21,8,1111,'d2c4fd4a-91a9-48d3-9cc2-9e436c178533','2021-06-09 06:36:29',1,0,'2021-06-09 06:21:29','2021-06-09 06:21:34'),(22,1,1111,'94869346-d30f-4d73-8172-71134b975e39','2021-06-12 10:07:39',1,0,'2021-06-12 09:52:39','2021-06-12 09:53:08'),(23,9,1111,'add99ef8-80a5-44b1-b1ff-37f9df50cdaf','2021-06-21 11:39:11',1,0,'2021-06-21 11:24:11','2021-06-21 11:24:17'),(24,10,1111,'a6246e90-b644-4a7a-9db3-b6c0773e57af','2021-06-21 11:39:32',1,0,'2021-06-21 11:24:32','2021-06-21 11:24:37'),(25,1,1111,'81f8501d-f370-4fb1-960d-59a308929766','2021-06-21 11:43:57',1,0,'2021-06-21 11:28:57','2021-06-21 11:32:26');
/*!40000 ALTER TABLE `otp_verify_drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp_verify_users`
--

DROP TABLE IF EXISTS `otp_verify_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otp_verify_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `otp` int NOT NULL,
  `otp_token` varchar(255) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `is_deleted` tinyint DEFAULT '0',
  `is_used` tinyint DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `otp_verify_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp_verify_users`
--

LOCK TABLES `otp_verify_users` WRITE;
/*!40000 ALTER TABLE `otp_verify_users` DISABLE KEYS */;
INSERT INTO `otp_verify_users` VALUES (1,1,1111,'20239630-76df-4544-8829-fafb42c3703a','2021-05-24 06:13:40',0,1,'2021-05-24 05:58:40','2021-05-24 05:59:19'),(2,2,1111,'25f758f8-9a5f-4687-9029-2315ecc69d1c','2021-05-24 06:24:08',0,1,'2021-05-24 06:09:08','2021-05-24 06:09:13'),(3,2,1111,'b812de56-0ea7-46de-9c2d-73b75970506f','2021-05-24 06:25:20',0,1,'2021-05-24 06:10:20','2021-05-24 06:10:25'),(4,2,1111,'3fd44e75-eb72-4435-be65-4a6833dba550','2021-05-24 07:11:23',0,1,'2021-05-24 06:56:23','2021-05-24 06:56:26'),(5,2,1111,'8cfec553-b10c-41a1-ae69-4dec43d004ce','2021-05-24 08:34:05',0,1,'2021-05-24 08:19:05','2021-05-24 08:19:11'),(6,2,1111,'e315d6aa-fc7a-4a21-9276-589afd7fbda7','2021-05-27 07:21:27',0,1,'2021-05-27 07:06:27','2021-05-27 07:06:35'),(7,3,1111,'386faa69-1564-4959-8009-c88869c10a78','2021-05-28 06:24:30',0,1,'2021-05-28 06:09:30','2021-05-28 06:09:45'),(8,3,1111,'99a3f12c-64db-4938-b66e-3a654dcc6f54','2021-05-28 06:25:10',0,1,'2021-05-28 06:10:10','2021-05-28 06:10:14'),(9,2,1111,'b16497df-666b-4e76-afc2-cf74a58e97af','2021-05-28 06:25:27',0,1,'2021-05-28 06:10:27','2021-05-28 06:10:31'),(10,4,1111,'d23af35e-f243-402a-9718-7451beff7bed','2021-06-01 12:27:07',0,0,'2021-06-01 12:12:07','2021-06-01 12:12:07'),(11,6,1111,'e9d0f276-7f0f-46cb-ae6a-bbcd46d0b26d','2021-06-01 12:38:49',0,0,'2021-06-01 12:23:49','2021-06-01 12:23:49'),(12,7,1111,'44194d78-baa3-4f3b-b45b-5293c6c181d3','2021-06-01 12:41:28',0,0,'2021-06-01 12:26:28','2021-06-01 12:26:28'),(13,8,1111,'b2f63c7e-f59c-490b-9bb9-a385b1fa127f','2021-06-01 12:46:35',0,0,'2021-06-01 12:31:35','2021-06-01 12:31:35'),(14,9,1111,'3a1bfefd-c604-47d6-a999-40d39ec45106','2021-06-01 12:48:28',0,0,'2021-06-01 12:33:28','2021-06-01 12:33:28'),(15,10,1111,'242f4d3b-1edb-42e4-95e7-8fa09c651f89','2021-06-01 12:49:20',0,0,'2021-06-01 12:34:20','2021-06-01 12:34:20'),(16,11,1111,'be30ea60-c38d-4234-bb7e-4acc3db0bf93','2021-06-01 12:51:03',0,0,'2021-06-01 12:36:03','2021-06-01 12:36:03'),(17,12,1111,'930cd91c-ebf2-4617-b793-b19e54770262','2021-06-01 12:51:55',0,0,'2021-06-01 12:36:55','2021-06-01 12:36:55'),(18,13,1111,'9cf8c561-023c-427b-aaf3-f1d1643f1297','2021-06-01 12:53:01',0,0,'2021-06-01 12:38:01','2021-06-01 12:38:01'),(19,14,1111,'aee734a8-6209-4bcd-b200-88369edfa418','2021-06-01 13:01:02',0,0,'2021-06-01 12:46:02','2021-06-01 12:46:02'),(20,15,1111,'50e66ae1-bcbc-413b-bf6e-03279c92e605','2021-06-01 13:02:17',0,0,'2021-06-01 12:47:17','2021-06-01 12:47:17'),(21,16,1111,'5f28ffe6-c96c-4281-8688-17a887b7b713','2021-06-01 13:03:35',0,0,'2021-06-01 12:48:35','2021-06-01 12:48:35'),(22,17,1111,'99caeb0f-bf79-46a0-b0d5-f148e20d5e9d','2021-06-01 13:08:23',0,0,'2021-06-01 12:53:23','2021-06-01 12:53:23'),(23,18,1111,'d9b5cb53-880a-4ef2-b7fb-debd0364f776','2021-06-01 13:53:12',0,1,'2021-06-01 13:38:12','2021-06-01 13:38:55'),(24,19,1111,'dfb3cf00-92d5-46d8-b361-70bddc31c49e','2021-06-02 07:13:51',0,0,'2021-06-02 06:58:51','2021-06-02 06:58:51'),(25,20,1111,'6342cc00-989e-4254-9033-f8bb812f4833','2021-06-02 07:36:50',0,0,'2021-06-02 07:21:50','2021-06-02 07:21:50'),(26,21,1111,'7603672c-b9f8-4862-8870-877fe3840ae9','2021-06-02 07:37:31',0,1,'2021-06-02 07:22:31','2021-06-02 07:22:56'),(27,21,1111,'d6a4485a-4676-4f7b-9462-6062a3dc8da9','2021-06-02 07:44:28',0,0,'2021-06-02 07:29:28','2021-06-02 07:29:28'),(28,1,1111,'5cfb4f72-d7e2-44cb-974a-cb83a0381799','2021-06-04 05:38:51',0,1,'2021-06-04 05:23:51','2021-06-04 05:24:06'),(29,18,1111,'7dc484d9-4b9a-4c11-9e8a-9b68884ff958','2021-06-04 05:46:14',0,1,'2021-06-04 05:31:14','2021-06-04 05:31:34'),(30,20,1111,'79b72124-94d9-421c-8ab5-a43ec28e10c3','2021-06-04 06:44:54',0,0,'2021-06-04 06:29:54','2021-06-04 06:29:54'),(31,20,1111,'503d28e6-2099-40df-b3eb-7892882e46b6','2021-06-04 08:52:29',0,1,'2021-06-04 08:37:29','2021-06-04 08:37:40'),(32,20,1111,'8e5b2444-d54a-415a-9765-f4f16d548ff9','2021-06-04 08:54:33',0,1,'2021-06-04 08:39:33','2021-06-04 08:39:45'),(33,20,1111,'7f7c3159-e645-482c-8b4e-52d0ea69a6a0','2021-06-04 09:07:15',0,1,'2021-06-04 08:52:15','2021-06-04 08:52:35'),(34,2,1111,'546123e3-dafc-4602-8594-0e6364f6c6a1','2021-06-04 14:42:21',0,1,'2021-06-04 14:27:21','2021-06-04 14:27:26'),(35,18,1111,'1776522e-5cb1-48cc-add9-89a644e5ae9a','2021-06-05 09:34:32',0,1,'2021-06-05 09:19:32','2021-06-05 09:19:47'),(36,20,1111,'278a5a35-4845-4e6c-b3de-bb5bb020d068','2021-06-05 09:39:07',0,1,'2021-06-05 09:24:07','2021-06-05 09:24:22'),(37,2,1111,'2200cb4d-90ac-44f0-a8f9-1ddc190d6a2a','2021-06-05 15:01:09',0,1,'2021-06-05 14:46:09','2021-06-05 14:46:14'),(38,20,1111,'f69eda5d-a744-4235-b679-dc297514d04b','2021-06-05 15:23:44',0,0,'2021-06-05 15:08:44','2021-06-05 15:08:44'),(39,1,1111,'5f91f45a-b094-4760-b1fb-4c489768d2c3','2021-06-05 16:07:59',0,1,'2021-06-05 15:52:59','2021-06-05 15:53:02'),(40,18,1111,'6ca24c35-6d97-46f6-affa-1f9104b04573','2021-06-07 05:16:55',0,1,'2021-06-07 05:01:55','2021-06-07 05:02:12'),(41,22,1111,'4514a8e8-83b1-4bb6-88bc-fd5689234735','2021-06-16 01:44:16',0,1,'2021-06-16 01:29:16','2021-06-16 01:29:20');
/*!40000 ALTER TABLE `otp_verify_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_types`
--

DROP TABLE IF EXISTS `payment_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_deleted` tinyint DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_types`
--

LOCK TABLES `payment_types` WRITE;
/*!40000 ALTER TABLE `payment_types` DISABLE KEYS */;
INSERT INTO `payment_types` VALUES (1,'Cash',0,'2021-05-27 08:24:35','2021-06-01 04:38:28'),(2,'net-banking',0,'2021-05-27 08:51:22','2021-05-27 08:51:22'),(3,'Debit-card',0,'2021-06-01 04:35:22','2021-06-14 13:05:07'),(4,'Cash',0,'2021-06-14 13:04:50','2021-06-14 13:04:50'),(5,'Test',0,'2021-06-14 13:05:21','2021-06-14 13:05:25');
/*!40000 ALTER TABLE `payment_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ride_id` varchar(255) NOT NULL,
  `payment_type` enum('online','cash') DEFAULT NULL,
  `total_fare` double NOT NULL,
  `payment_status` enum('pending','completed') DEFAULT NULL,
  `is_deleted` tinyint DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ride_id` (`ride_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`ride_id`) REFERENCES `rides` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_pics`
--

DROP TABLE IF EXISTS `profile_pics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_pics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `driver_id` int NOT NULL,
  `documnet_type_id` int NOT NULL DEFAULT '1',
  `profile_pic` varchar(255) NOT NULL,
  `status` int DEFAULT '1',
  `is_deleted` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  KEY `documnet_type_id` (`documnet_type_id`),
  KEY `status` (`status`),
  CONSTRAINT `profile_pics_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `profile_pics_ibfk_2` FOREIGN KEY (`documnet_type_id`) REFERENCES `document_types` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `profile_pics_ibfk_3` FOREIGN KEY (`status`) REFERENCES `document_statuses` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_pics`
--

LOCK TABLES `profile_pics` WRITE;
/*!40000 ALTER TABLE `profile_pics` DISABLE KEYS */;
INSERT INTO `profile_pics` VALUES (1,1,1,'https://comride-dev.s3.ap-south-1.amazonaws.com/documents/220ec23c-30d6-40a8-a713-6cb027a0eea9.jpg',2,0,'2021-05-24 05:54:07','2021-06-18 07:24:05'),(2,3,1,'https://comride-dev.s3.ap-south-1.amazonaws.com/documents/e1d8539e-60ad-4adb-80c6-cedba5b533f5.jpg',2,0,'2021-05-26 00:47:34','2021-06-20 04:01:22'),(4,2,1,'https://comride-dev.s3.ap-south-1.amazonaws.com/documents/e1d8539e-60ad-4adb-80c6-cedba5b533f5.jpg',2,0,'2021-05-29 11:00:49','2021-06-15 13:12:21'),(5,4,1,'www.re.er',1,0,'2021-05-31 11:48:55','2021-05-31 11:48:55'),(6,10,1,'https://uappwnaqp1.execute-api.ap-south-1.amazonaws.com/dev/api/driver/save-profile-pic',3,0,'2021-06-21 11:27:02','2021-06-21 11:34:55'),(7,10,1,'https://comride-api.firstfloor.link/api/driver/save-profile-pic',2,0,'2021-06-21 11:35:25','2021-06-21 11:35:30');
/*!40000 ALTER TABLE `profile_pics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ride_types`
--

DROP TABLE IF EXISTS `ride_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ride_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `passenger_count` int NOT NULL,
  `is_deleted` tinyint DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `icon_url` varchar(100) DEFAULT NULL,
  `isGroup` tinyint DEFAULT NULL,
  `count` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ride_types`
--

LOCK TABLES `ride_types` WRITE;
/*!40000 ALTER TABLE `ride_types` DISABLE KEYS */;
INSERT INTO `ride_types` VALUES (1,'Autos',3,0,'2021-05-24 05:42:30','2021-06-12 07:34:59','https://comride-dev.s3.ap-south-1.amazonaws.com/documents/f27994d8-3791-422a-a58c-12037e61e666.png',NULL,NULL),(2,'Bike',1,0,'2021-05-24 05:42:30','2021-05-24 05:42:30','https://comride-dev.s3.ap-south-1.amazonaws.com/documents/2c0afd2b-ef72-4fb6-9bd5-2642e49f6ae2.png',NULL,NULL),(3,'Cab-Sedan',4,0,'2021-05-24 05:42:30','2021-05-24 05:42:30','https://comride-dev.s3.ap-south-1.amazonaws.com/documents/a298fcfc-a16f-488c-9a55-5db05b294b5f.png',NULL,NULL),(4,'Share-A-Cab',4,0,'2021-05-24 05:42:30','2021-05-24 05:42:30','https://comride-dev.s3.ap-south-1.amazonaws.com/documents/0e898728-08d2-4a9f-ae2a-ae6e2b20ed3b.png',NULL,NULL),(5,'Hatchback',3,0,'2021-05-24 05:42:30','2021-05-24 05:42:30','https://comride-dev.s3.ap-south-1.amazonaws.com/documents/de0dc3a9-7919-4fed-aff4-9b120638dfa9.png',NULL,NULL),(6,'SUV',5,0,'2021-05-24 05:42:30','2021-05-24 05:42:30','https://comride-dev.s3.ap-south-1.amazonaws.com/documents/878ff6eb-0788-4fc0-b8f9-bbf08dfd4f9a.png',NULL,NULL);
/*!40000 ALTER TABLE `ride_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rides`
--

DROP TABLE IF EXISTS `rides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rides` (
  `id` varchar(255) NOT NULL,
  `driver_id` int NOT NULL,
  `user_id` int NOT NULL,
  `pickup_lat` double NOT NULL,
  `pickup_long` double NOT NULL,
  `drop_lat` double NOT NULL,
  `drop_long` double NOT NULL,
  `pickup_address` text NOT NULL,
  `drop_address` text NOT NULL,
  `driver_accepted_on` datetime NOT NULL,
  `otp` bigint NOT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `ride_start_time` datetime DEFAULT NULL,
  `ride_end_time` datetime DEFAULT NULL,
  `ride_fare` double DEFAULT NULL,
  `ride_status` enum('ongoing','completed','driver_cancelled','user_cancelled') DEFAULT 'ongoing',
  `is_deleted` tinyint DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `rides_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `rides_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rides`
--

LOCK TABLES `rides` WRITE;
/*!40000 ALTER TABLE `rides` DISABLE KEYS */;
/*!40000 ALTER TABLE `rides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_deleted` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Karnataka',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(2,'Bihar',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(3,'Gujrat',0,'2021-05-24 05:32:01','2021-06-13 07:56:37'),(4,'Rajasthan',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(5,'Karnataka',1,'2021-05-27 14:30:47','2021-06-12 10:20:44'),(6,'Bihar',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(7,'Gujrath',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(8,'Rajasthan',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(9,'Karnataka',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(10,'Bihar',1,'2021-05-27 14:32:22','2021-06-12 05:14:30'),(11,'Gujrath',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(12,'Rajasthan',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(13,'Maharashtra',0,'2021-06-12 05:05:22','2021-06-12 05:05:22'),(14,'JAMMU & K',0,'2021-06-13 03:41:57','2021-06-13 07:57:07'),(15,'Mihir',1,'2021-06-13 03:47:35','2021-06-13 03:47:40'),(16,'Test1',1,'2021-06-16 01:56:35','2021-06-16 01:56:59');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_permissions`
--

DROP TABLE IF EXISTS `user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_type_id` int NOT NULL,
  `resource_id` int DEFAULT '0',
  `read` tinyint DEFAULT '0',
  `write` tinyint DEFAULT '0',
  `district_restricted` tinyint DEFAULT '0',
  `state_restricted` tinyint DEFAULT '0',
  `is_deleted` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_type_id` (`user_type_id`),
  KEY `resource_id` (`resource_id`),
  CONSTRAINT `user_permissions_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `user_permissions_ibfk_2` FOREIGN KEY (`resource_id`) REFERENCES `admin_resource_types` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_permissions`
--

LOCK TABLES `user_permissions` WRITE;
/*!40000 ALTER TABLE `user_permissions` DISABLE KEYS */;
INSERT INTO `user_permissions` VALUES (1,1,1,1,1,0,0,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(2,1,2,1,1,0,0,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(3,1,3,1,1,0,0,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(4,1,4,1,1,0,0,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(5,1,5,1,1,0,0,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(6,1,6,1,1,0,0,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(7,1,7,1,1,0,0,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(8,1,8,1,1,0,0,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(9,1,9,1,1,0,0,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(10,1,10,1,1,0,0,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(11,1,11,1,1,0,0,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(12,2,1,1,1,0,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(13,2,2,1,1,0,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(14,2,3,1,1,0,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(15,2,4,1,1,0,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(16,2,5,1,1,0,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(17,2,6,1,1,0,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(18,2,7,1,1,0,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(19,1,8,0,0,0,1,0,'2021-05-27 14:32:22','2021-06-12 07:24:46'),(20,2,9,1,1,0,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(21,2,13,1,1,0,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(22,2,12,1,1,0,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(23,3,1,1,1,0,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(24,3,2,1,1,0,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(25,3,3,1,1,0,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(26,3,4,1,1,0,1,0,'2021-05-27 14:32:22','2021-06-12 07:27:41'),(27,3,5,1,1,0,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(28,3,6,1,1,0,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(29,3,7,1,1,0,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(30,3,8,1,1,0,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(31,3,13,1,1,1,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(32,3,12,1,1,1,1,0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(91,4,2,1,1,0,0,0,'2021-06-16 02:27:15','2021-06-16 02:27:15'),(92,4,3,1,1,0,0,0,'2021-06-16 02:56:42','2021-06-16 02:56:42');
/*!40000 ALTER TABLE `user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_referrals`
--

DROP TABLE IF EXISTS `user_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_referrals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `referred_by` int NOT NULL,
  `referred_to` int NOT NULL,
  `referral_code` varchar(255) NOT NULL,
  `is_deleted` tinyint DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_referrals`
--

LOCK TABLES `user_referrals` WRITE;
/*!40000 ALTER TABLE `user_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_deleted` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_types`
--

LOCK TABLES `user_types` WRITE;
/*!40000 ALTER TABLE `user_types` DISABLE KEYS */;
INSERT INTO `user_types` VALUES (1,'Admin',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(2,'State Admin',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(3,'District Admin',0,'2021-05-24 05:32:01','2021-05-24 05:32:01'),(4,'Admin',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(5,'State Admin',0,'2021-05-27 14:30:47','2021-05-27 14:30:47'),(6,'District Admin',1,'2021-05-27 14:30:47','2021-06-12 07:14:49'),(7,'Admin',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(8,'State Admin',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(9,'District Admin',0,'2021-05-27 14:32:22','2021-05-27 14:32:22'),(10,'su',0,'2021-06-12 07:07:55','2021-06-12 07:07:55'),(11,'test',1,'2021-06-14 10:54:29','2021-06-14 10:54:53'),(12,'Test1',1,'2021-06-16 02:01:06','2021-06-16 02:01:27');
/*!40000 ALTER TABLE `user_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `otp_verified` tinyint DEFAULT '0',
  `profile_pic` varchar(255) DEFAULT NULL,
  `isProfileUpdated` tinyint DEFAULT '0',
  `referral_code` varchar(255) DEFAULT NULL,
  `referred_by` int DEFAULT NULL,
  `is_deleted` int DEFAULT '0',
  `account_active` int DEFAULT '1',
  `country_code` varchar(255) NOT NULL,
  `district_id` int DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `referred_by` (`referred_by`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`referred_by`) REFERENCES `user_referrals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'8904482997','Chetan','Kumar','chetu00753@gmail.com','1997-10-25',1,1,'https://comride-dev.s3.ap-south-1.amazonaws.com/documents/33619443-2603-4621-bfb6-92670729e2fe.png',1,'cdPFlY',NULL,0,1,'91',NULL,NULL,'2021-05-24 05:58:40','2021-06-05 15:55:19'),(2,'7892327428','mohit','mittal','mohitgplay@gmail.com','2021-05-24',2,1,'https://comride-dev.s3.ap-south-1.amazonaws.com/documents/ddbc6b1d-edd1-4837-925f-b0a259d9bf02.jpg',1,'A4zjuI',NULL,0,1,'+91',NULL,NULL,'2021-05-24 06:09:08','2021-05-24 08:21:17'),(3,'7795770004',NULL,NULL,NULL,NULL,NULL,1,NULL,0,'MdNX4W',NULL,0,1,'+91',NULL,NULL,'2021-05-28 06:09:30','2021-05-28 06:09:45'),(4,'8585888585',NULL,NULL,NULL,NULL,NULL,0,NULL,0,'Ot9717',NULL,0,1,'91',NULL,NULL,'2021-06-01 12:09:55','2021-06-01 12:09:55'),(5,'8585887767',NULL,NULL,NULL,NULL,NULL,0,NULL,0,'HgTZho',NULL,0,1,'91',NULL,NULL,'2021-06-01 12:17:30','2021-06-01 12:17:30'),(6,'8585887769',NULL,NULL,NULL,NULL,NULL,0,NULL,0,'v3Hjoj',NULL,0,1,'91',NULL,NULL,'2021-06-01 12:23:49','2021-06-01 12:23:49'),(7,'9797979797',NULL,NULL,NULL,NULL,NULL,0,NULL,0,'ts09bi',NULL,0,1,'91',NULL,NULL,'2021-06-01 12:26:28','2021-06-01 12:26:28'),(8,'5454545454',NULL,NULL,NULL,NULL,NULL,0,NULL,0,'nM5kdX',NULL,0,1,'91',NULL,NULL,'2021-06-01 12:31:34','2021-06-01 12:31:34'),(9,'5454545455',NULL,NULL,NULL,NULL,NULL,0,NULL,0,'jUtEFc',NULL,0,1,'91',NULL,NULL,'2021-06-01 12:33:28','2021-06-01 12:33:28'),(10,'5454545456',NULL,NULL,NULL,NULL,NULL,0,NULL,0,'Q6JG39',NULL,0,1,'91',NULL,NULL,'2021-06-01 12:34:19','2021-06-01 12:34:19'),(11,'5454545457',NULL,NULL,NULL,NULL,NULL,0,NULL,0,'aMZl95',NULL,0,1,'91',NULL,NULL,'2021-06-01 12:36:03','2021-06-01 12:36:03'),(12,'5454545458',NULL,NULL,NULL,NULL,NULL,0,NULL,0,'IWMnOM',NULL,0,1,'91',NULL,NULL,'2021-06-01 12:36:54','2021-06-01 12:36:54'),(13,'5455545458',NULL,NULL,NULL,NULL,NULL,0,NULL,0,'LVz6Px',NULL,0,1,'91',NULL,NULL,'2021-06-01 12:38:01','2021-06-01 12:38:01'),(14,'5455545418',NULL,NULL,NULL,NULL,NULL,0,NULL,0,'CdXoGP',NULL,0,1,'91',NULL,NULL,'2021-06-01 12:46:02','2021-06-01 12:46:02'),(15,'5455245418',NULL,NULL,NULL,NULL,NULL,0,NULL,0,'SXRMMK',NULL,0,1,'91',NULL,NULL,'2021-06-01 12:47:17','2021-06-01 12:47:17'),(16,'5455245118',NULL,NULL,NULL,NULL,NULL,0,NULL,0,'IQDNTw',NULL,0,1,'91',NULL,NULL,'2021-06-01 12:48:34','2021-06-01 12:48:34'),(17,'5455245110',NULL,NULL,NULL,NULL,NULL,0,NULL,0,'lpignh',NULL,0,1,'91',NULL,NULL,'2021-06-01 12:53:23','2021-06-01 12:53:23'),(18,'8277543997',NULL,NULL,NULL,NULL,NULL,1,NULL,0,'y8M8fQ',NULL,0,1,'91',NULL,NULL,'2021-06-01 13:38:12','2021-06-01 13:38:55'),(19,'8277777777',NULL,NULL,NULL,NULL,NULL,0,NULL,0,'dWG3Qx',NULL,0,1,'91',NULL,NULL,'2021-06-02 06:58:51','2021-06-02 06:58:51'),(20,'8190148292',NULL,NULL,NULL,NULL,NULL,1,NULL,0,'CaR7iH',NULL,0,1,'91',1,1,'2021-06-02 07:21:50','2021-06-04 08:37:40'),(21,'9999999999',NULL,NULL,NULL,NULL,NULL,1,NULL,0,'0Hogmi',NULL,0,1,'91',NULL,NULL,'2021-06-02 07:22:31','2021-06-02 07:22:56'),(22,'2555887009','harsha','motapothula','harsha.motapothula@gmail.com','2021-06-15',1,1,'',1,'NrJ7CC',NULL,0,1,'+91',NULL,NULL,'2021-06-16 01:29:16','2021-06-16 01:29:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_pics`
--

DROP TABLE IF EXISTS `vehicle_pics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_pics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `driver_id` int NOT NULL,
  `documnet_type_id` int NOT NULL DEFAULT '5',
  `pic_url` varchar(255) NOT NULL,
  `status` int DEFAULT '1',
  `is_deleted` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  KEY `documnet_type_id` (`documnet_type_id`),
  KEY `status` (`status`),
  CONSTRAINT `vehicle_pics_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `vehicle_pics_ibfk_2` FOREIGN KEY (`documnet_type_id`) REFERENCES `document_types` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `vehicle_pics_ibfk_3` FOREIGN KEY (`status`) REFERENCES `document_statuses` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_pics`
--

LOCK TABLES `vehicle_pics` WRITE;
/*!40000 ALTER TABLE `vehicle_pics` DISABLE KEYS */;
INSERT INTO `vehicle_pics` VALUES (1,1,5,'[\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\",\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\"]',2,1,'2021-05-24 05:54:25','2021-05-31 10:45:48'),(2,3,5,'[\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/cf901bad-e155-4d84-8f38-02ce2c95a1bb.jpg\",\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/f44b4428-2593-47de-84e5-060bdb63487a.jpg\"]',2,0,'2021-05-26 00:41:43','2021-06-20 04:01:24'),(4,2,5,'[\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\",\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\"]',2,0,'2021-05-30 09:32:34','2021-06-17 07:16:04'),(5,4,5,'[\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\",\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\"]',1,0,'2021-05-31 09:12:43','2021-05-31 09:12:43'),(6,1,5,'[\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\",\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\"]',1,0,'2021-06-12 09:53:33','2021-06-12 09:53:33'),(7,1,5,'[\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\",\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\"]',1,0,'2021-06-12 09:55:33','2021-06-12 09:55:33'),(8,1,5,'[\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\",\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\"]',1,0,'2021-06-12 09:56:03','2021-06-15 03:35:55'),(9,8,5,'[\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\",\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\"]',1,0,'2021-06-12 10:06:56','2021-06-12 10:06:56'),(10,7,5,'[\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\",\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\"]',1,1,'2021-06-12 10:08:38','2021-06-12 10:31:26'),(11,7,5,'[\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\",\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/c28427a9-3ae0-48e0-8380-8507752ffe92.png\"]',1,0,'2021-06-15 03:38:10','2021-06-15 03:38:10'),(12,10,5,'{\"vehicle_pics\":[\"https://comride-dev.s3.ap-south-1.amazonaws.com/documents/9545531d-45c0-40d1-a1eb-296b85a046f6.png\"]}',2,0,'2021-06-21 11:32:49','2021-06-21 11:34:56');
/*!40000 ALTER TABLE `vehicle_pics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_rcs`
--

DROP TABLE IF EXISTS `vehicle_rcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_rcs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `driver_id` int NOT NULL,
  `rc_picture` varchar(255) NOT NULL,
  `documnet_type_id` int NOT NULL DEFAULT '4',
  `rc_no` varchar(255) DEFAULT NULL,
  `valid_till` datetime DEFAULT NULL,
  `status` int DEFAULT '1',
  `is_deleted` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `vehicle_model` varchar(100) DEFAULT NULL,
  `vehicle_number` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  KEY `documnet_type_id` (`documnet_type_id`),
  KEY `status` (`status`),
  CONSTRAINT `vehicle_rcs_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `vehicle_rcs_ibfk_2` FOREIGN KEY (`documnet_type_id`) REFERENCES `document_types` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `vehicle_rcs_ibfk_3` FOREIGN KEY (`status`) REFERENCES `document_statuses` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_rcs`
--

LOCK TABLES `vehicle_rcs` WRITE;
/*!40000 ALTER TABLE `vehicle_rcs` DISABLE KEYS */;
INSERT INTO `vehicle_rcs` VALUES (1,1,'www.sfd.sdf',4,NULL,NULL,2,1,'2021-05-24 05:54:29','2021-05-31 11:10:38',NULL,NULL),(2,2,'www.sfd.sdf',4,NULL,NULL,1,1,'2021-05-28 11:35:24','2021-05-28 11:46:28',NULL,NULL),(3,2,'www.abc.ok',4,NULL,NULL,1,1,'2021-05-28 11:36:31','2021-05-28 11:46:06',NULL,NULL),(4,2,'www.df.df',4,NULL,NULL,3,0,'2021-05-28 11:37:06','2021-06-17 07:16:31',NULL,NULL),(5,3,'www.abc.ok',4,NULL,NULL,2,0,'2021-05-31 11:05:03','2021-06-20 04:01:25',NULL,NULL),(6,1,'http://www.pic.com/dev/api/documents/9f44c5d2-e625-41d5-b30e-10b858803d11.png',4,NULL,NULL,1,0,'2021-06-12 10:58:36','2021-06-12 10:58:36',NULL,NULL),(7,3,'https://comride-dev.s3.ap-south-1.amazonaws.com/documents/e1d8539e-60ad-4adb-80c6-cedba5b533f5.jpg',4,'ASERFWQ234234','2021-06-11 00:00:00',1,0,'2021-06-18 05:16:40','2021-06-18 05:22:15','vehicle_model','vehicle_number'),(8,3,'https://comride-dev.s3.ap-south-1.amazonaws.com/documents/e1d8539e-60ad-4adb-80c6-cedba5b533f5.jpg',4,'ASERFWQ234234','2021-06-10 00:00:00',1,0,'2021-06-18 05:21:46','2021-06-18 05:21:46','vehicle_model','vehicle_number'),(9,10,'https://uappwnaqp1.execute-api.ap-south-1.amazonaws.com/dev/api/driver/save-registration-certificate',4,NULL,NULL,2,0,'2021-06-21 11:32:56','2021-06-21 11:34:57',NULL,NULL);
/*!40000 ALTER TABLE `vehicle_rcs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-21 20:09:37
