-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: HMS
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apointdate` date DEFAULT NULL,
  `prescribe` varchar(100) DEFAULT NULL,
  `slot` varchar(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `symptoms` varchar(100) DEFAULT NULL,
  `appoint_slot_id` int DEFAULT NULL,
  `doctor_id` int DEFAULT NULL,
  `pid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1q6vn17rb53vfyr0m89srn03y` (`appoint_slot_id`),
  KEY `FKoeb98n82eph1dx43v3y2bcmsl` (`doctor_id`),
  KEY `FK1q74t7koee3rsq3r5636v6vwd` (`pid`),
  CONSTRAINT `FK1q6vn17rb53vfyr0m89srn03y` FOREIGN KEY (`appoint_slot_id`) REFERENCES `appslot` (`id`),
  CONSTRAINT `FK1q74t7koee3rsq3r5636v6vwd` FOREIGN KEY (`pid`) REFERENCES `patient` (`id`),
  CONSTRAINT `FKoeb98n82eph1dx43v3y2bcmsl` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (3,'2023-08-31',NULL,'11 AM',0,'Rash and itchiness',3,2,1),(5,'2023-08-31',NULL,'3 PM',0,'Loose motion',5,2,14),(6,'2023-09-02',NULL,'2 PM',0,'Cough and fever',6,4,14),(9,'2023-09-01',NULL,'3 PM',0,'High Blood Pressure',9,3,13),(10,'2023-08-31',NULL,'12 PM',0,'Headache',11,1,15),(11,'2023-08-31',NULL,'4 PM',0,'Headache',13,1,13),(12,'2023-08-29',NULL,'',0,'Headache',14,4,16),(13,'2023-08-29',NULL,'11 AM',0,'Cough and fever',16,4,17),(14,'2023-08-29',NULL,'12 PM',0,'Stomach ache',18,4,18),(15,'2023-08-29',NULL,'1 PM',0,'Rash and itchiness',19,4,19),(16,'2023-08-29',NULL,'2 PM',0,'Vomating',20,4,20),(17,'2023-08-29',NULL,'3 PM',0,'Cough and fever',21,4,21),(18,'2023-08-29',NULL,'4 PM',0,'Headache',22,4,23);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appslot`
--

DROP TABLE IF EXISTS `appslot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appslot` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_date` date DEFAULT NULL,
  `appslot` varchar(10) DEFAULT NULL,
  `doctor_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKi0m5xjf4v9qid370v3s8r1fbw` (`app_date`,`appslot`,`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appslot`
--

LOCK TABLES `appslot` WRITE;
/*!40000 ALTER TABLE `appslot` DISABLE KEYS */;
INSERT INTO `appslot` VALUES (14,'2023-08-29','',4),(19,'2023-08-29','1 PM',4),(16,'2023-08-29','11 AM',4),(18,'2023-08-29','12 PM',4),(20,'2023-08-29','2 PM',4),(21,'2023-08-29','3 PM',4),(22,'2023-08-29','4 PM',4),(1,'2023-08-31','',0),(8,'2023-08-31','',1),(4,'2023-08-31','',4),(3,'2023-08-31','11 AM',2),(11,'2023-08-31','12 PM',1),(5,'2023-08-31','3 PM',2),(13,'2023-08-31','4 PM',1),(7,'2023-09-01','',3),(9,'2023-09-01','3 PM',3),(6,'2023-09-02','2 PM',4),(2,'2023-09-03','',2);
/*!40000 ALTER TABLE `appslot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `education` varchar(30) DEFAULT NULL,
  `speciality` varchar(30) DEFAULT NULL,
  `s_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmf2ig1tgauo08ud0r3qej29wc` (`s_id`),
  CONSTRAINT `FKmf2ig1tgauo08ud0r3qej29wc` FOREIGN KEY (`s_id`) REFERENCES `staff` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'MD','Neurologist',1),(2,'MBBS','General Physician',2),(3,'MBBS MD ','Cardiologist',3),(4,'MBBS','General Physician',4);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(30) DEFAULT NULL,
  `doc_fees` double NOT NULL,
  `idate` date DEFAULT NULL,
  `lab_test_fees` double NOT NULL,
  `med_fees` double NOT NULL,
  `other_fees` double NOT NULL,
  `appoint_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK93w2cmkm8y4u53bpif0f8fa20` (`appoint_id`),
  CONSTRAINT `FK93w2cmkm8y4u53bpif0f8fa20` FOREIGN KEY (`appoint_id`) REFERENCES `appointment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `doc_id` int DEFAULT NULL,
  `pat_id` int DEFAULT NULL,
  `s_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3cs7dxhnine2f6x5ic4741s6e` (`email`),
  KEY `FK884x2d57bg024ud09xvex9a3q` (`doc_id`),
  KEY `FKg5inatfg4vyw3crsb9oc7wia6` (`pat_id`),
  KEY `FKigoe7hfau246r2tv1bhuvjord` (`s_id`),
  CONSTRAINT `FK884x2d57bg024ud09xvex9a3q` FOREIGN KEY (`doc_id`) REFERENCES `doctor` (`id`),
  CONSTRAINT `FKg5inatfg4vyw3crsb9oc7wia6` FOREIGN KEY (`pat_id`) REFERENCES `patient` (`id`),
  CONSTRAINT `FKigoe7hfau246r2tv1bhuvjord` FOREIGN KEY (`s_id`) REFERENCES `staff` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'adityawakle123@gmail.com','$2a$10$KzxUsbkXFaFu9clR734uZeahyH9s74hGRXHFDja.Kw1MH4xDJkGZ.','ROLE_PATIENT',NULL,1,NULL),(2,'admin123@gmail.com','$2a$10$m2R5An29LslBHCynXhiLtOfxYeKKimtmkgrTbCStTwMHtWnIjahj6','ROLE_ADMIN',NULL,NULL,NULL),(3,'ram3462@gmail.com','$2a$10$nIxiZmOiRm0zChrDTu6IU.Do3ftlbzEbyN2fMD0GgGm4cvO1R2RKW','ROLE_DOCTOR',1,NULL,1),(4,'shankar123@gmail.com','$2a$10$i0/rqJQ95840ztcbM25Z2uHVkKfOJ.5eEzQWEcwOa.jQdc78i7HeS','ROLE_DOCTOR',2,NULL,2),(5,'Adinath123@gmail.com','$2a$10$73DOolj7zOAwEzEMYnbH2euLUCj/Xyi94yJtzGNT9SZaCrvSiTx4G','ROLE_PATIENT',NULL,11,NULL),(6,'aniket123@gmail.com','$2a$10$LN/VaJGvciTRKBLYMvwtp.KG91CVkwXnrcekAa6866JEjY3zjZcw.','ROLE_PATIENT',NULL,12,NULL),(7,'devi123@gmail.com','$2a$10$LRYeIOqnyNA0q.OMNVZ6Ou34n74FK68/IAJsK1eyYnyGLrZ0VLwSK','ROLE_DOCTOR',3,NULL,3),(8,'aditi123@gmail.com','$2a$10$Un231bGSnazSdpv/gLbAnumTYQp6tCUafboOa0Lec5KT7VDz9h.a6','ROLE_DOCTOR',4,NULL,4),(9,'balaji123@gmail.com','$2a$10$X0Q9z45FoO.e8u0gaRdXm.MagAVbNRlSAaS7r9F3WPGyKb9vDGoea','ROLE_PATIENT',NULL,13,NULL),(10,'sita123@gmail.com','$2a$10$CWYARNMd9jl.xxr2cgZN7eyxhToKFj67qRmNNtVKUl3HUXfiIL8Wq','ROLE_PATIENT',NULL,14,NULL),(11,'priyanka123@gmail.com','$2a$10$m6K1vNHSqMXx5qfW6D296.Kod8KZMgST.at5ArWfeN.1CvDERdHs.','ROLE_PATIENT',NULL,15,NULL),(12,'abhi123@gmail.com','$2a$10$5izzfKEraDi3zP7Wfb69WuEqRB2CV2FfT0aOx.a9BuAh23SPA4FU2','ROLE_HELPER',NULL,NULL,5),(13,'shree123@gmail.com','$2a$10$IGECcTok9A02/aZgz4UjV.S.PEdizh1ZCVFNESjb72.J2sCB7MDjy','ROLE_HELPER',NULL,NULL,6),(14,'aarti123@gmail.com','$2a$10$3R8MKNNgHzdbRgJdp9vr6.Lq.Zoh3mOEX3Nb1akANQJ8tMb.pu/fm','ROLE_HELPER',NULL,NULL,7),(15,'reshma123@gmail.com','$2a$10$mXlPRdpiEOYwT.IDac.5wuuxtAHThRUxT5.AZyNWOL.tKZEvkxRJu','ROLE_PATIENT',NULL,16,NULL),(16,'prasad123@gmail.com','$2a$10$kFUGGjx1NAT7LDfD3VRb4u8O5YKHoGMPo7T5EhEA/1NmEk8yjg9X6','ROLE_PATIENT',NULL,17,NULL),(17,'priti123@gmail.com','$2a$10$WOPB4oVen.dsur84Ap77Ze0.KT/J0o0.0jgqwJGn/i9nim62K8P2C','ROLE_PATIENT',NULL,18,NULL),(18,'nisha123@gmail.com','$2a$10$55r2dhwnsien0APcCFdDkOw1SF9cW0CCYtO2ES4H5US.0SIcULZZ6','ROLE_PATIENT',NULL,19,NULL),(19,'chandu123@gmail.com','$2a$10$nHHowYGPdqd80FvIdRQF9e/wtUMM56X6zRC8qn7vvbKG/nO13Zw.2','ROLE_PATIENT',NULL,20,NULL),(20,'ahilya123@gmail.com','$2a$10$8GXQlOYaQK2nDL9aPQAz.evJqpsk0L0bTHmPGGm0DU3c1DeCZt15a','ROLE_PATIENT',NULL,21,NULL),(21,'yogesh123@gmail.com','$2a$10$/g8HPAYjSwjNxtcbF/i4KuumwfzPztHtnfhzAkLz1TdV9lHixK5hC','ROLE_PATIENT',NULL,22,NULL),(22,'aditya123@gmail.com','$2a$10$2k3bCVYH2DCz2d2.rKx/qurWBSOvAY3hkIqawkZqZQ5/05lkY27lS','ROLE_PATIENT',NULL,23,NULL);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Latur','1999-04-23','Male',NULL,'Aditya Annarao Wakle',8605690363),(11,'Delhi','1999-08-20',NULL,NULL,'Adinath Dev Shetty',9856231478),(12,'Nigdi','1999-07-20',NULL,NULL,'Fulzele Aniket Deepak',9845631214),(13,'Dharashiv','1985-02-15','Male',NULL,'Balaji Shyam Shankre',8956451227),(14,'Shivajinagar','1990-01-20','Female',NULL,'Sita Ram Daund',8652321452),(15,'Bengaluru','1999-05-20','Female',NULL,'Priyanka Ramrao Ghadge',8745325214),(16,'Latur','2014-06-20','Male',NULL,'Reshma Laxman Chaudhari',8605636987),(17,'Akurdi','1999-08-29','Male',NULL,'Prasad Vinay Shankre',9501234578),(18,'Hinjewadi  ','2023-08-29','Female',NULL,'Priti Shashank Jadhav',9501234578),(19,'Akurdi','2023-08-29','Female',NULL,'Nisha Dev Sangvi',8605636987),(20,'Swargate','2022-08-29','Male',NULL,'Chandu Pintu Thonge',8645123245),(21,'Swargate','2000-08-25','Female',NULL,'Ahilya Garuda Vharkate',8456123578),(22,'Didhgao','2000-01-21','Rather not say',NULL,'Yogesh Patil',8605636987),(23,'Latur','2000-08-29','Male',NULL,'Aditya Annarao Wakle',8605636987);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource` (
  `id` int NOT NULL AUTO_INCREMENT,
  `available_count` int NOT NULL,
  `resource` varchar(30) DEFAULT NULL,
  `total_count` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_65nq1p9kmcd8el4o2mciplg0h` (`resource`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (1,10,'Oxygen Masks',25),(2,15,'Ventilator',25),(3,10,'ICU Beds',25),(4,15,'General Ward Beds',25),(5,10,'Wheel Chairs',15),(6,8,'Stretchers',10);
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` bigint NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Swargate','1975-04-22','Male','images/Ram.jpg','Pagare Ram Raj',9501234578,'ROLE_DOCTOR'),(2,'Hinjewadi  ','1972-02-10','Male','images/shankar.jpg','Tidke Shankar Krishna',8925143565,'ROLE_DOCTOR'),(3,'Mumbai','1996-09-02','Female','images/Devi.jpg','Devi Ajay Dongre',8605636987,'ROLE_DOCTOR'),(4,'Hadapsar','1990-03-20','Female','images/Aditi.jpg','Aditi Sagar Rathi',8645123245,'ROLE_DOCTOR'),(5,'Hinjewadi  ','1995-12-26','Female','images/helpr2.png','Durga Dev Kanthe',8965412355,'ROLE_HELPER'),(6,'Akurdi','2000-08-25','Female','images/helpr1.png','Maya Mahesh Panchal',8956241555,'ROLE_HELPER'),(7,'Akurdi','1999-04-23','Female','images/helpr3.png','Aarti Maruti Chavan',8965412545,'ROLE_HELPER');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-29 23:09:28
