-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: django_ur
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Áî¢ÂìÅË°®',7,'add_product'),(26,'Can change Áî¢ÂìÅË°®',7,'change_product'),(27,'Can delete Áî¢ÂìÅË°®',7,'delete_product'),(28,'Can view Áî¢ÂìÅË°®',7,'view_product'),(29,'Can add Ë®ÇÂñÆË°®',8,'add_customer_order'),(30,'Can change Ë®ÇÂñÆË°®',8,'change_customer_order'),(31,'Can delete Ë®ÇÂñÆË°®',8,'delete_customer_order'),(32,'Can view Ë®ÇÂñÆË°®',8,'view_customer_order'),(33,'Can add django job',9,'add_djangojob'),(34,'Can change django job',9,'change_djangojob'),(35,'Can delete django job',9,'delete_djangojob'),(36,'Can view django job',9,'view_djangojob'),(37,'Can add django job execution',10,'add_djangojobexecution'),(38,'Can change django job execution',10,'change_djangojobexecution'),(39,'Can delete django job execution',10,'delete_djangojobexecution'),(40,'Can view django job execution',10,'view_djangojobexecution');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$ui4PEYZy2TgLV1mlxbAr85$IlMaoRQkwGwiXyUiEPmGBf3nECsYUjc0PescIlLIW7I=','2021-10-02 17:57:06.419620',1,'Allen','','','notbook7787@gmail.com',1,1,'2021-09-28 10:35:54.877575');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customers` varchar(20) NOT NULL,
  `qty` int NOT NULL,
  `price` int NOT NULL,
  `shop_id` varchar(10) NOT NULL,
  `products_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Customer_Order_products_id_736feb4c_fk_Product_id` (`products_id`),
  CONSTRAINT `Customer_Order_products_id_736feb4c_fk_Product_id` FOREIGN KEY (`products_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_order`
--

LOCK TABLES `customer_order` WRITE;
/*!40000 ALTER TABLE `customer_order` DISABLE KEYS */;
INSERT INTO `customer_order` VALUES (81,'Judy',5,900,'ps',3),(83,'Allen',1,150,'um',1),(84,'Allen',3,150,'um',1);
/*!40000 ALTER TABLE `customer_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-09-28 10:37:30.782055','1','1',1,'[{\"added\": {}}]',7,1),(2,'2021-09-28 10:37:43.443102','2','2',1,'[{\"added\": {}}]',7,1),(3,'2021-09-28 10:38:13.750876','3','3',1,'[{\"added\": {}}]',7,1),(4,'2021-09-28 10:38:44.559958','4','4',1,'[{\"added\": {}}]',7,1),(5,'2021-09-28 10:38:56.205527','5','5',1,'[{\"added\": {}}]',7,1),(6,'2021-09-28 10:39:24.490736','6','6',1,'[{\"added\": {}}]',7,1),(7,'2021-09-28 10:39:36.113199','7','7',1,'[{\"added\": {}}]',7,1),(8,'2021-10-01 09:34:35.483196','1','1',2,'[{\"changed\": {\"fields\": [\"\\u5546\\u54c1\\u5eab\\u5b58\\u91cf\"]}}]',7,1),(9,'2021-10-01 09:56:19.061756','1','1',2,'[{\"changed\": {\"fields\": [\"\\u5546\\u54c1\\u5eab\\u5b58\\u91cf\"]}}]',7,1),(10,'2021-10-01 10:14:43.889737','1','1',2,'[{\"changed\": {\"fields\": [\"\\u5546\\u54c1\\u5eab\\u5b58\\u91cf\"]}}]',7,1),(11,'2021-10-01 10:31:40.213120','1','1',2,'[{\"changed\": {\"fields\": [\"\\u5546\\u54c1\\u5eab\\u5b58\\u91cf\"]}}]',7,1),(12,'2021-10-01 10:46:07.448181','1','1',2,'[{\"changed\": {\"fields\": [\"\\u5546\\u54c1\\u5eab\\u5b58\\u91cf\"]}}]',7,1),(13,'2021-10-02 17:57:21.384817','1','1',2,'[{\"changed\": {\"fields\": [\"\\u5546\\u54c1\\u5eab\\u5b58\\u91cf\"]}}]',7,1),(14,'2021-10-02 17:57:29.683470','2','2',2,'[{\"changed\": {\"fields\": [\"\\u5546\\u54c1\\u5eab\\u5b58\\u91cf\"]}}]',7,1),(15,'2021-10-02 17:57:37.455415','6','6',2,'[{\"changed\": {\"fields\": [\"\\u5546\\u54c1\\u5eab\\u5b58\\u91cf\"]}}]',7,1),(16,'2021-10-04 02:38:07.042649','test','test (next run at: Oct. 5, 2021, 12:30:00 a.m.)',3,'',9,1),(17,'2021-10-04 02:46:04.844724','test','test (next run at: Oct. 4, 2021, 2:46:16 a.m.)',3,'',9,1),(18,'2021-10-04 02:49:23.159551','test','test (next run at: Oct. 4, 2021, 2:49:36 a.m.)',3,'',9,1),(19,'2021-10-04 03:00:43.516263','test','test (next run at: Oct. 4, 2021, 2:54:02 a.m.)',3,'',9,1),(20,'2021-10-04 11:10:54.467984','test','test (next run at: Oct. 4, 2021, 11:09:38 a.m.)',3,'',9,1),(21,'2021-10-04 11:19:41.509155','test','test (next run at: Oct. 4, 2021, 11:20:25 a.m.)',3,'',9,1),(22,'2021-10-04 11:24:00.892100','test','test (next run at: Oct. 4, 2021, 11:24:51 a.m.)',3,'',9,1),(23,'2021-10-04 11:32:46.468375','create_csv','create_csv (next run at: Oct. 4, 2021, 11:32:57 a.m.)',3,'',9,1),(24,'2021-10-04 11:32:49.156336','create_csv_send_mail','create_csv_send_mail (next run at: Oct. 4, 2021, 11:32:53 a.m.)',3,'',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_apscheduler_djangojob`
--

DROP TABLE IF EXISTS `django_apscheduler_djangojob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_apscheduler_djangojob` (
  `id` varchar(255) NOT NULL,
  `next_run_time` datetime(6) DEFAULT NULL,
  `job_state` longblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_apscheduler_djangojob_next_run_time_2f022619` (`next_run_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_apscheduler_djangojob`
--

LOCK TABLES `django_apscheduler_djangojob` WRITE;
/*!40000 ALTER TABLE `django_apscheduler_djangojob` DISABLE KEYS */;
INSERT INTO `django_apscheduler_djangojob` VALUES ('create_csv_send_mail','2021-10-05 00:00:00.000000',_binary 'Äï¸\0\0\0\0\0\0}î(åversionîKåidîåcreate_csv_send_mailîåfuncîå$Salesdata.views:create_csv_send_mailîåtriggerîåapscheduler.triggers.cronîåCronTriggerîìî)Åî}î(hKåtimezoneîåpytzîå_pîìî(åAsia/TaipeiîM\ËqK\0åLMTîtîRîå\nstart_dateîNåend_dateîNåfieldsî]î(å apscheduler.triggers.cron.fieldsîå	BaseFieldîìî)Åî}î(ånameîåyearîå\nis_defaultîàåexpressionsî]îå%apscheduler.triggers.cron.expressionsîå\rAllExpressionîìî)Åî}îåstepîNsbaubhå\nMonthFieldîìî)Åî}î(håmonthîhàh ]îh$)Åî}îh\'NsbaubhåDayOfMonthFieldîìî)Åî}î(hådayîhàh ]îh$)Åî}îh\'Nsbaubhå	WeekFieldîìî)Åî}î(håweekîhàh ]îh$)Åî}îh\'NsbaubhåDayOfWeekFieldîìî)Åî}î(håday_of_weekîhàh ]îh$)Åî}îh\'Nsbaubh\Z)Åî}î(håhourîhâh ]îh\"åRangeExpressionîìî)Åî}î(h\'NåfirstîK\0ålastîK\0ubaubh\Z)Åî}î(håminuteîhàh ]îhM)Åî}î(h\'NhPK\0hQK\0ubaubh\Z)Åî}î(håsecondîhàh ]îhM)Åî}î(h\'NhPK\0hQK\0ubaubeåjitterîNubåexecutorîådefaultîåargsî)åkwargsî}îhhåmisfire_grace_timeîKåcoalesceîàå\rmax_instancesîKå\rnext_run_timeîådatetimeîådatetimeîìîC\n\Â\n\0\0\0\0\0\0îh(hMÄpK\0åCSTîtîRîÜîRîu.');
/*!40000 ALTER TABLE `django_apscheduler_djangojob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_apscheduler_djangojobexecution`
--

DROP TABLE IF EXISTS `django_apscheduler_djangojobexecution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_apscheduler_djangojobexecution` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  `run_time` datetime(6) NOT NULL,
  `duration` decimal(15,2) DEFAULT NULL,
  `finished` decimal(15,2) DEFAULT NULL,
  `exception` varchar(1000) DEFAULT NULL,
  `traceback` longtext,
  `job_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_apscheduler_djangojobexecution_run_time_16edd96b` (`run_time`),
  KEY `django_apscheduler_djangojobexecution_job_id_daf5090a_fk` (`job_id`),
  CONSTRAINT `django_apscheduler_djangojobexecution_job_id_daf5090a_fk` FOREIGN KEY (`job_id`) REFERENCES `django_apscheduler_djangojob` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_apscheduler_djangojobexecution`
--

LOCK TABLES `django_apscheduler_djangojobexecution` WRITE;
/*!40000 ALTER TABLE `django_apscheduler_djangojobexecution` DISABLE KEYS */;
INSERT INTO `django_apscheduler_djangojobexecution` VALUES (17,'Executed','2021-10-04 11:33:09.901365',0.03,1633318389.93,NULL,NULL,'create_csv_send_mail'),(18,'Executed','2021-10-04 11:40:20.128731',0.06,1633318820.19,NULL,NULL,'create_csv_send_mail'),(19,'Executed','2021-10-04 11:40:25.128731',0.05,1633318825.18,NULL,NULL,'create_csv_send_mail'),(20,'Executed','2021-10-04 11:40:30.128731',0.04,1633318830.17,NULL,NULL,'create_csv_send_mail'),(21,'Executed','2021-10-04 11:40:35.128731',0.04,1633318835.16,NULL,NULL,'create_csv_send_mail'),(22,'Executed','2021-10-04 11:40:40.128731',0.04,1633318840.17,NULL,NULL,'create_csv_send_mail'),(23,'Executed','2021-10-04 11:40:45.128731',0.04,1633318845.17,NULL,NULL,'create_csv_send_mail'),(24,'Executed','2021-10-04 11:40:50.128731',0.03,1633318850.16,NULL,NULL,'create_csv_send_mail'),(25,'Executed','2021-10-04 11:40:55.128731',0.03,1633318855.16,NULL,NULL,'create_csv_send_mail'),(26,'Executed','2021-10-04 11:41:00.128731',0.04,1633318860.17,NULL,NULL,'create_csv_send_mail'),(27,'Executed','2021-10-04 11:41:05.128731',0.06,1633318865.19,NULL,NULL,'create_csv_send_mail'),(28,'Executed','2021-10-04 11:41:10.128731',0.05,1633318870.18,NULL,NULL,'create_csv_send_mail'),(29,'Executed','2021-10-04 11:42:51.027942',0.06,1633318971.09,NULL,NULL,'create_csv_send_mail'),(30,'Executed','2021-10-04 11:42:56.027942',0.04,1633318976.07,NULL,NULL,'create_csv_send_mail'),(31,'Executed','2021-10-04 11:49:13.114106',0.04,1633319353.15,NULL,NULL,'create_csv_send_mail'),(32,'Executed','2021-10-04 11:49:18.114106',0.07,1633319358.18,NULL,NULL,'create_csv_send_mail'),(33,'Executed','2021-10-04 11:49:23.114106',0.03,1633319363.15,NULL,NULL,'create_csv_send_mail'),(34,'Executed','2021-10-04 11:49:28.114106',0.04,1633319368.15,NULL,NULL,'create_csv_send_mail'),(35,'Error!','2021-10-04 11:49:56.290935',0.04,1633319396.33,'values() takes no arguments (1 given)','  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"C:\\Users\\notbo\\Desktop\\UrMart Èù¢Ë©¶È°å\\Django-Ur\\Product_Ur\\Product_Ur\\Salesdata\\views.py\", line 34, in create_csv_send_mail\n    order_msg = Customer_Order.objects.values(\'shop_id\').aggregate(total_price=Sum(\'price\'),total_qty=Sum(\'qty\'),total_count=Count(\'shop_id\')).values(\'shop_id\')\n','create_csv_send_mail'),(36,'Executed','2021-10-04 11:50:30.048358',0.06,1633319430.10,NULL,NULL,'create_csv_send_mail'),(37,'Executed','2021-10-04 11:50:35.048358',0.05,1633319435.10,NULL,NULL,'create_csv_send_mail'),(38,'Error!','2021-10-04 11:51:31.456785',0.05,1633319491.50,'unhashable type: \'dict\'','  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"C:\\Users\\notbo\\Desktop\\UrMart Èù¢Ë©¶È°å\\Django-Ur\\Product_Ur\\Product_Ur\\Salesdata\\views.py\", line 37, in create_csv_send_mail\n    order_dict = {i for i in order_msg}\n  File \"C:\\Users\\notbo\\Desktop\\UrMart Èù¢Ë©¶È°å\\Django-Ur\\Product_Ur\\Product_Ur\\Salesdata\\views.py\", line 37, in <setcomp>\n    order_dict = {i for i in order_msg}\n','create_csv_send_mail'),(39,'Executed','2021-10-04 11:52:11.343912',0.05,1633319531.40,NULL,NULL,'create_csv_send_mail'),(40,'Executed','2021-10-04 11:52:16.343912',0.04,1633319536.39,NULL,NULL,'create_csv_send_mail'),(41,'Executed','2021-10-04 11:52:55.484563',0.05,1633319575.54,NULL,NULL,'create_csv_send_mail'),(42,'Executed','2021-10-04 11:53:00.484563',0.05,1633319580.54,NULL,NULL,'create_csv_send_mail'),(43,'Error!','2021-10-04 11:59:32.055048',0.04,1633319972.09,'[Errno 2] No such file or directory: \'../../data/test.csv\'','  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"C:\\Users\\notbo\\Desktop\\UrMart Èù¢Ë©¶È°å\\Django-Ur\\Product_Ur\\Product_Ur\\Salesdata\\views.py\", line 40, in create_csv_send_mail\n    with open(\'../../data/test.csv\',\'w+\',encoding=(\'utf-8\')) as f:\n','create_csv_send_mail'),(44,'Error!','2021-10-04 11:59:58.774501',0.04,1633319998.82,'[Errno 2] No such file or directory: \'../data/test.csv\'','  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"C:\\Users\\notbo\\Desktop\\UrMart Èù¢Ë©¶È°å\\Django-Ur\\Product_Ur\\Product_Ur\\Salesdata\\views.py\", line 40, in create_csv_send_mail\n    with open(\'../data/test.csv\',\'w+\',encoding=(\'utf-8\')) as f:\n','create_csv_send_mail'),(45,'Error!','2021-10-04 12:00:16.272146',0.09,1633320016.36,'[Errno 2] No such file or directory: \'data/test.csv\'','  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"C:\\Users\\notbo\\Desktop\\UrMart Èù¢Ë©¶È°å\\Django-Ur\\Product_Ur\\Product_Ur\\Salesdata\\views.py\", line 40, in create_csv_send_mail\n    with open(\'data/test.csv\',\'w+\',encoding=(\'utf-8\')) as f:\n','create_csv_send_mail'),(46,'Error!','2021-10-04 12:01:00.567369',0.07,1633320060.63,'[Errno 2] No such file or directory: \'data/test.csv\'','  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"C:\\Users\\notbo\\Desktop\\UrMart Èù¢Ë©¶È°å\\Django-Ur\\Product_Ur\\Product_Ur\\Salesdata\\views.py\", line 40, in create_csv_send_mail\n    with open(\'data/test.csv\',\'w+\',encoding=(\'utf-8\')) as f:\n','create_csv_send_mail'),(47,'Executed','2021-10-04 12:01:21.055169',0.03,1633320081.08,NULL,NULL,'create_csv_send_mail'),(48,'Executed','2021-10-04 12:01:26.055169',0.05,1633320086.10,NULL,NULL,'create_csv_send_mail'),(49,'Executed','2021-10-04 12:01:31.055169',0.05,1633320091.10,NULL,NULL,'create_csv_send_mail'),(50,'Executed','2021-10-04 12:01:36.055169',0.05,1633320096.11,NULL,NULL,'create_csv_send_mail'),(51,'Executed','2021-10-04 12:01:41.055169',0.04,1633320101.10,NULL,NULL,'create_csv_send_mail'),(52,'Executed','2021-10-04 12:01:46.055169',0.03,1633320106.08,NULL,NULL,'create_csv_send_mail'),(53,'Executed','2021-10-04 12:02:50.576004',0.04,1633320170.62,NULL,NULL,'create_csv_send_mail'),(54,'Executed','2021-10-04 12:03:09.975419',0.05,1633320190.02,NULL,NULL,'create_csv_send_mail'),(55,'Executed','2021-10-04 12:03:37.465170',0.04,1633320217.50,NULL,NULL,'create_csv_send_mail'),(56,'Executed','2021-10-04 12:03:42.465170',0.05,1633320222.52,NULL,NULL,'create_csv_send_mail'),(57,'Executed','2021-10-04 12:14:54.140839',0.08,1633320894.22,NULL,NULL,'create_csv_send_mail'),(58,'Executed','2021-10-04 12:14:59.140839',0.04,1633320899.18,NULL,NULL,'create_csv_send_mail'),(59,'Executed','2021-10-04 12:15:04.140839',0.04,1633320904.18,NULL,NULL,'create_csv_send_mail'),(60,'Executed','2021-10-04 12:15:09.140839',0.04,1633320909.18,NULL,NULL,'create_csv_send_mail'),(61,'Executed','2021-10-04 12:15:14.140839',0.03,1633320914.18,NULL,NULL,'create_csv_send_mail'),(62,'Executed','2021-10-04 12:16:01.601631',0.04,1633320961.64,NULL,NULL,'create_csv_send_mail'),(63,'Error!','2021-10-04 12:16:06.601631',0.05,1633320966.65,'[Errno 13] Permission denied: \'../../Sales_data/test.csv\'','  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"C:\\Users\\notbo\\Desktop\\UrMart Èù¢Ë©¶È°å\\Django-Ur\\Product_Ur\\Product_Ur\\Salesdata\\views.py\", line 40, in create_csv_send_mail\n    with open(\'../../Sales_data/test.csv\',\'w+\',encoding=(\'utf-8-sig\')) as f:\n','create_csv_send_mail'),(64,'Executed','2021-10-04 12:16:11.601631',0.07,1633320971.67,NULL,NULL,'create_csv_send_mail'),(65,'Executed','2021-10-04 12:16:44.202920',0.06,1633321004.27,NULL,NULL,'create_csv_send_mail'),(66,'Error!','2021-10-04 12:16:49.202920',0.05,1633321009.25,'[Errno 13] Permission denied: \'../../Sales_data/test.csv\'','  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"C:\\Users\\notbo\\Desktop\\UrMart Èù¢Ë©¶È°å\\Django-Ur\\Product_Ur\\Product_Ur\\Salesdata\\views.py\", line 40, in create_csv_send_mail\n    with open(\'../../Sales_data/test.csv\',\'w+\',newline=(\'\'),encoding=(\'utf-8-sig\')) as f:\n','create_csv_send_mail'),(67,'Executed','2021-10-04 12:19:42.896304',0.05,1633321182.95,NULL,NULL,'create_csv_send_mail'),(68,'Executed','2021-10-04 12:19:47.896304',0.05,1633321187.95,NULL,NULL,'create_csv_send_mail'),(69,'Error!','2021-10-04 12:19:52.896304',0.05,1633321192.94,'[Errno 13] Permission denied: \'../../Sales_data/test.csv\'','  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"C:\\Users\\notbo\\Desktop\\UrMart Èù¢Ë©¶È°å\\Django-Ur\\Product_Ur\\Product_Ur\\Salesdata\\views.py\", line 40, in create_csv_send_mail\n    with open(\'../../Sales_data/test.csv\',\'w+\',newline=(\'\'),encoding=(\'utf-8-sig\')) as f:\n','create_csv_send_mail'),(70,'Error!','2021-10-04 12:19:57.896304',0.04,1633321197.93,'[Errno 13] Permission denied: \'../../Sales_data/test.csv\'','  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"C:\\Users\\notbo\\Desktop\\UrMart Èù¢Ë©¶È°å\\Django-Ur\\Product_Ur\\Product_Ur\\Salesdata\\views.py\", line 40, in create_csv_send_mail\n    with open(\'../../Sales_data/test.csv\',\'w+\',newline=(\'\'),encoding=(\'utf-8-sig\')) as f:\n','create_csv_send_mail'),(71,'Error!','2021-10-04 12:20:02.896304',0.04,1633321202.94,'[Errno 13] Permission denied: \'../../Sales_data/test.csv\'','  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"C:\\Users\\notbo\\Desktop\\UrMart Èù¢Ë©¶È°å\\Django-Ur\\Product_Ur\\Product_Ur\\Salesdata\\views.py\", line 40, in create_csv_send_mail\n    with open(\'../../Sales_data/test.csv\',\'w+\',newline=(\'\'),encoding=(\'utf-8-sig\')) as f:\n','create_csv_send_mail'),(72,'Executed','2021-10-04 12:20:07.896304',0.03,1633321207.93,NULL,NULL,'create_csv_send_mail'),(73,'Executed','2021-10-04 12:20:12.896304',0.06,1633321212.95,NULL,NULL,'create_csv_send_mail'),(74,'Executed','2021-10-04 12:21:26.603507',0.04,1633321286.64,NULL,NULL,'create_csv_send_mail'),(75,'Executed','2021-10-04 12:21:31.603507',0.06,1633321291.66,NULL,NULL,'create_csv_send_mail'),(76,'Executed','2021-10-04 12:21:36.603507',0.06,1633321296.66,NULL,NULL,'create_csv_send_mail'),(77,'Error!','2021-10-04 12:21:41.603507',0.05,1633321301.65,'[Errno 13] Permission denied: \'../../Sales_data/test.csv\'','  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"C:\\Users\\notbo\\Desktop\\UrMart Èù¢Ë©¶È°å\\Django-Ur\\Product_Ur\\Product_Ur\\Salesdata\\views.py\", line 40, in create_csv_send_mail\n    with open(\'../../Sales_data/test.csv\',\'w+\',newline=(\'\'),encoding=(\'utf-8-sig\')) as f:\n','create_csv_send_mail'),(78,'Error!','2021-10-04 12:26:44.020037',0.05,1633321604.07,'name \'now\' is not defined','  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"C:\\Users\\notbo\\Desktop\\UrMart Èù¢Ë©¶È°å\\Django-Ur\\Product_Ur\\Product_Ur\\Salesdata\\views.py\", line 41, in create_csv_send_mail\n    with open(\'../../Sales_data/\' + datetime.strftime(now,\'%Y%m%d\'),\'w+\',newline=(\'\'),encoding=(\'utf-8-sig\')) as f:\n','create_csv_send_mail'),(79,'Executed','2021-10-04 12:27:24.441719',0.06,1633321644.50,NULL,NULL,'create_csv_send_mail'),(80,'Executed','2021-10-04 12:27:29.441719',0.05,1633321649.49,NULL,NULL,'create_csv_send_mail'),(81,'Executed','2021-10-04 12:29:21.702817',0.05,1633321761.75,NULL,NULL,'create_csv_send_mail'),(82,'Executed','2021-10-04 12:29:26.702817',0.04,1633321766.74,NULL,NULL,'create_csv_send_mail'),(83,'Executed','2021-10-04 12:30:09.279353',0.03,1633321809.31,NULL,NULL,'create_csv_send_mail'),(84,'Executed','2021-10-04 12:30:14.279353',0.04,1633321814.32,NULL,NULL,'create_csv_send_mail'),(85,'Executed','2021-10-04 12:30:19.279353',0.05,1633321819.33,NULL,NULL,'create_csv_send_mail'),(86,'Executed','2021-10-04 12:40:58.072860',0.05,1633322458.12,NULL,NULL,'create_csv_send_mail'),(87,'Executed','2021-10-04 12:41:03.072860',0.04,1633322463.11,NULL,NULL,'create_csv_send_mail'),(88,'Executed','2021-10-04 12:41:08.072860',0.05,1633322468.12,NULL,NULL,'create_csv_send_mail'),(89,'Executed','2021-10-04 12:41:13.072860',0.03,1633322473.11,NULL,NULL,'create_csv_send_mail'),(90,'Executed','2021-10-04 12:41:18.072860',0.03,1633322478.11,NULL,NULL,'create_csv_send_mail'),(91,'Executed','2021-10-04 12:41:23.072860',0.03,1633322483.11,NULL,NULL,'create_csv_send_mail'),(92,'Executed','2021-10-04 12:43:01.934548',0.05,1633322581.99,NULL,NULL,'create_csv_send_mail'),(93,'Executed','2021-10-04 12:43:06.934548',0.04,1633322586.98,NULL,NULL,'create_csv_send_mail'),(94,'Executed','2021-10-04 12:43:11.934548',0.06,1633322592.00,NULL,NULL,'create_csv_send_mail'),(95,'Executed','2021-10-04 12:43:16.934548',0.03,1633322596.97,NULL,NULL,'create_csv_send_mail'),(96,'Executed','2021-10-04 12:43:21.934548',0.03,1633322601.97,NULL,NULL,'create_csv_send_mail'),(97,'Executed','2021-10-04 12:43:26.934548',0.04,1633322606.98,NULL,NULL,'create_csv_send_mail'),(98,'Executed','2021-10-04 12:43:31.934548',0.04,1633322611.97,NULL,NULL,'create_csv_send_mail'),(99,'Executed','2021-10-04 12:43:36.934548',0.04,1633322616.97,NULL,NULL,'create_csv_send_mail'),(100,'Executed','2021-10-04 12:43:41.934548',0.04,1633322621.97,NULL,NULL,'create_csv_send_mail'),(101,'Executed','2021-10-04 12:43:46.934548',0.04,1633322626.97,NULL,NULL,'create_csv_send_mail'),(102,'Executed','2021-10-04 12:44:47.084008',0.09,1633322687.17,NULL,NULL,'create_csv_send_mail'),(103,'Executed','2021-10-04 12:44:52.084008',0.04,1633322692.12,NULL,NULL,'create_csv_send_mail'),(104,'Executed','2021-10-04 12:44:57.084008',0.04,1633322697.12,NULL,NULL,'create_csv_send_mail'),(105,'Executed','2021-10-04 12:45:02.084008',0.05,1633322702.13,NULL,NULL,'create_csv_send_mail'),(106,'Executed','2021-10-04 12:45:07.084008',0.03,1633322707.12,NULL,NULL,'create_csv_send_mail'),(107,'Executed','2021-10-04 12:45:12.084008',0.04,1633322712.13,NULL,NULL,'create_csv_send_mail'),(108,'Executed','2021-10-04 12:45:17.084008',0.04,1633322717.13,NULL,NULL,'create_csv_send_mail'),(109,'Executed','2021-10-04 12:45:22.084008',0.05,1633322722.13,NULL,NULL,'create_csv_send_mail'),(110,'Executed','2021-10-04 12:45:27.084008',0.03,1633322727.11,NULL,NULL,'create_csv_send_mail'),(111,'Executed','2021-10-04 12:45:32.084008',0.05,1633322732.13,NULL,NULL,'create_csv_send_mail'),(112,'Executed','2021-10-04 12:45:37.084008',0.05,1633322737.13,NULL,NULL,'create_csv_send_mail'),(113,'Executed','2021-10-04 12:45:42.084008',0.05,1633322742.14,NULL,NULL,'create_csv_send_mail'),(114,'Executed','2021-10-04 12:45:47.084008',0.04,1633322747.13,NULL,NULL,'create_csv_send_mail'),(115,'Executed','2021-10-04 12:45:52.084008',0.04,1633322752.13,NULL,NULL,'create_csv_send_mail'),(116,'Executed','2021-10-04 12:45:57.084008',0.04,1633322757.13,NULL,NULL,'create_csv_send_mail'),(117,'Executed','2021-10-04 12:46:02.084008',0.03,1633322762.12,NULL,NULL,'create_csv_send_mail'),(118,'Executed','2021-10-04 12:46:07.084008',0.04,1633322767.12,NULL,NULL,'create_csv_send_mail'),(119,'Executed','2021-10-04 12:46:12.084008',0.03,1633322772.11,NULL,NULL,'create_csv_send_mail'),(120,'Executed','2021-10-04 12:46:17.084008',0.07,1633322777.15,NULL,NULL,'create_csv_send_mail'),(121,'Executed','2021-10-04 12:46:22.084008',0.05,1633322782.14,NULL,NULL,'create_csv_send_mail'),(122,'Executed','2021-10-04 12:46:27.084008',0.05,1633322787.13,NULL,NULL,'create_csv_send_mail'),(123,'Executed','2021-10-04 12:46:32.084008',0.04,1633322792.13,NULL,NULL,'create_csv_send_mail'),(124,'Executed','2021-10-04 12:46:37.084008',0.05,1633322797.13,NULL,NULL,'create_csv_send_mail'),(125,'Executed','2021-10-04 12:46:42.084008',0.05,1633322802.13,NULL,NULL,'create_csv_send_mail'),(126,'Executed','2021-10-04 12:46:47.084008',0.06,1633322807.15,NULL,NULL,'create_csv_send_mail'),(127,'Executed','2021-10-04 12:46:52.084008',0.05,1633322812.14,NULL,NULL,'create_csv_send_mail'),(128,'Executed','2021-10-04 12:46:57.084008',0.06,1633322817.14,NULL,NULL,'create_csv_send_mail'),(129,'Executed','2021-10-04 12:47:02.084008',0.05,1633322822.13,NULL,NULL,'create_csv_send_mail'),(130,'Executed','2021-10-04 12:47:07.084008',0.02,1633322827.10,NULL,NULL,'create_csv_send_mail'),(131,'Executed','2021-10-04 12:47:12.084008',0.05,1633322832.14,NULL,NULL,'create_csv_send_mail'),(132,'Executed','2021-10-04 12:47:17.084008',0.04,1633322837.12,NULL,NULL,'create_csv_send_mail'),(133,'Executed','2021-10-04 12:47:22.084008',0.05,1633322842.13,NULL,NULL,'create_csv_send_mail'),(134,'Executed','2021-10-04 12:47:27.084008',0.03,1633322847.11,NULL,NULL,'create_csv_send_mail'),(135,'Executed','2021-10-04 12:47:32.084008',0.06,1633322852.14,NULL,NULL,'create_csv_send_mail'),(136,'Executed','2021-10-04 12:47:37.084008',0.03,1633322857.11,NULL,NULL,'create_csv_send_mail'),(137,'Executed','2021-10-04 12:47:42.084008',0.04,1633322862.12,NULL,NULL,'create_csv_send_mail'),(138,'Executed','2021-10-04 12:47:47.084008',0.06,1633322867.15,NULL,NULL,'create_csv_send_mail'),(139,'Executed','2021-10-04 12:47:52.084008',0.08,1633322872.16,NULL,NULL,'create_csv_send_mail'),(140,'Executed','2021-10-04 12:47:57.084008',0.06,1633322877.15,NULL,NULL,'create_csv_send_mail'),(141,'Executed','2021-10-04 12:48:02.084008',0.05,1633322882.13,NULL,NULL,'create_csv_send_mail'),(142,'Executed','2021-10-04 12:48:07.084008',0.04,1633322887.12,NULL,NULL,'create_csv_send_mail'),(143,'Executed','2021-10-04 12:48:12.084008',0.05,1633322892.13,NULL,NULL,'create_csv_send_mail'),(144,'Executed','2021-10-04 12:48:17.084008',0.04,1633322897.12,NULL,NULL,'create_csv_send_mail'),(145,'Executed','2021-10-04 12:48:22.084008',0.05,1633322902.13,NULL,NULL,'create_csv_send_mail'),(146,'Executed','2021-10-04 12:52:37.558651',0.06,1633323157.62,NULL,NULL,'create_csv_send_mail'),(147,'Executed','2021-10-04 12:52:53.341318',0.07,1633323173.42,NULL,NULL,'create_csv_send_mail'),(148,'Executed','2021-10-04 12:52:58.341318',0.04,1633323178.38,NULL,NULL,'create_csv_send_mail'),(149,'Executed','2021-10-04 12:53:03.341318',0.05,1633323183.40,NULL,NULL,'create_csv_send_mail'),(150,'Executed','2021-10-04 12:53:08.341318',0.07,1633323188.41,NULL,NULL,'create_csv_send_mail'),(151,'Executed','2021-10-04 12:53:13.341318',0.05,1633323193.39,NULL,NULL,'create_csv_send_mail'),(152,'Executed','2021-10-04 12:53:18.341318',0.05,1633323198.39,NULL,NULL,'create_csv_send_mail'),(153,'Error!','2021-10-04 12:55:23.831481',0.06,1633323323.89,'Cannot resolve keyword \'price * qty\' into field. Choices are: customers, id, price, products, products_id, qty, shop_id','  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"C:\\Users\\notbo\\Desktop\\UrMart Èù¢Ë©¶È°å\\Django-Ur\\Product_Ur\\Product_Ur\\Salesdata\\views.py\", line 32, in create_csv_send_mail\n    order_msg = Customer_Order.objects.values(\'shop_id\').annotate(total_price=Sum(\'price * qty\'),total_qty=Sum(\'qty\'),total_count=Count(\'shop_id\'))\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\query.py\", line 1091, in annotate\n    return self._annotate(args, kwargs, select=True)\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\query.py\", line 1130, in _annotate\n    clone.query.add_annotation(\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\sql\\query.py\", line 1039, in add_annotation\n    annotation = annotation.resolve_expression(self, allow_joins=True, reuse=None,\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\aggregates.py\", line 47, in resolve_expression\n    c = super().resolve_expression(query, allow_joins, reuse, summarize)\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\expressions.py\", line 678, in resolve_expression\n    c.source_expressions[pos] = arg.resolve_expression(query, allow_joins, reuse, summarize, for_save)\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\expressions.py\", line 578, in resolve_expression\n    return query.resolve_ref(self.name, allow_joins, reuse, summarize)\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\sql\\query.py\", line 1756, in resolve_ref\n    join_info = self.setup_joins(field_list, self.get_meta(), self.get_initial_alias(), can_reuse=reuse)\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\sql\\query.py\", line 1625, in setup_joins\n    path, final_field, targets, rest = self.names_to_path(\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\sql\\query.py\", line 1539, in names_to_path\n    raise FieldError(\"Cannot resolve keyword \'%s\' into field. \"\n','create_csv_send_mail'),(154,'Error!','2021-10-04 12:59:58.819258',0.05,1633323598.87,'Cannot resolve keyword \'price * total_qty\' into field. Choices are: customers, id, price, products, products_id, qty, shop_id','  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"C:\\Users\\notbo\\Desktop\\UrMart Èù¢Ë©¶È°å\\Django-Ur\\Product_Ur\\Product_Ur\\Salesdata\\views.py\", line 32, in create_csv_send_mail\n    order_msg = Customer_Order.objects.values(\'shop_id\').annotate(total_price=Sum(\'price * total_qty\'),total_qty=Sum(\'qty\'),total_count=Count(\'shop_id\'))\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\query.py\", line 1091, in annotate\n    return self._annotate(args, kwargs, select=True)\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\query.py\", line 1130, in _annotate\n    clone.query.add_annotation(\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\sql\\query.py\", line 1039, in add_annotation\n    annotation = annotation.resolve_expression(self, allow_joins=True, reuse=None,\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\aggregates.py\", line 47, in resolve_expression\n    c = super().resolve_expression(query, allow_joins, reuse, summarize)\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\expressions.py\", line 678, in resolve_expression\n    c.source_expressions[pos] = arg.resolve_expression(query, allow_joins, reuse, summarize, for_save)\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\expressions.py\", line 578, in resolve_expression\n    return query.resolve_ref(self.name, allow_joins, reuse, summarize)\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\sql\\query.py\", line 1756, in resolve_ref\n    join_info = self.setup_joins(field_list, self.get_meta(), self.get_initial_alias(), can_reuse=reuse)\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\sql\\query.py\", line 1625, in setup_joins\n    path, final_field, targets, rest = self.names_to_path(\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\sql\\query.py\", line 1539, in names_to_path\n    raise FieldError(\"Cannot resolve keyword \'%s\' into field. \"\n','create_csv_send_mail'),(155,'Executed','2021-10-04 13:06:58.250142',0.04,1633324018.29,NULL,NULL,'create_csv_send_mail'),(156,'Executed','2021-10-04 13:07:03.250142',0.06,1633324023.31,NULL,NULL,'create_csv_send_mail'),(157,'Executed','2021-10-04 13:07:08.250142',0.05,1633324028.30,NULL,NULL,'create_csv_send_mail'),(158,'Executed','2021-10-04 13:08:03.267961',0.05,1633324083.31,NULL,NULL,'create_csv_send_mail'),(159,'Executed','2021-10-04 13:08:08.267961',0.04,1633324088.31,NULL,NULL,'create_csv_send_mail'),(160,'Executed','2021-10-04 13:08:18.999220',0.06,1633324099.06,NULL,NULL,'create_csv_send_mail'),(161,'Executed','2021-10-04 13:08:23.999220',0.04,1633324104.04,NULL,NULL,'create_csv_send_mail'),(162,'Executed','2021-10-04 13:08:28.999220',0.03,1633324109.03,NULL,NULL,'create_csv_send_mail'),(163,'Executed','2021-10-04 13:08:33.999220',0.04,1633324114.03,NULL,NULL,'create_csv_send_mail'),(164,'Executed','2021-10-04 13:08:38.999220',0.02,1633324119.02,NULL,NULL,'create_csv_send_mail'),(165,'Executed','2021-10-04 13:08:43.999220',0.02,1633324124.02,NULL,NULL,'create_csv_send_mail'),(166,'Error!','2021-10-04 13:11:05.129492',0.03,1633324265.16,'QuerySet.annotate() received non-expression(s): price.','  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"C:\\Users\\notbo\\Desktop\\UrMart Èù¢Ë©¶È°å\\Django-Ur\\Product_Ur\\Product_Ur\\Salesdata\\views.py\", line 35, in create_csv_send_mail\n    order_msg = Customer_Order.objects.values(\'shop_id\').annotate(total_price=Sum(F(\'price\') * F(\'qty\')),total_qty=Sum(\'qty\'),total_count=Count(\'shop_id\'),single_price=(\'price\'))\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\query.py\", line 1091, in annotate\n    return self._annotate(args, kwargs, select=True)\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\query.py\", line 1101, in _annotate\n    self._validate_values_are_expressions(args + tuple(kwargs.values()), method_name=\'annotate\')\n  File \"C:\\Users\\notbo\\anaconda3\\envs\\Django-Ur\\lib\\site-packages\\django\\db\\models\\query.py\", line 1389, in _validate_values_are_expressions\n    raise TypeError(\n','create_csv_send_mail'),(167,'Executed','2021-10-04 13:11:56.965553',0.05,1633324317.02,NULL,NULL,'create_csv_send_mail'),(168,'Executed','2021-10-04 13:12:01.965553',0.03,1633324322.00,NULL,NULL,'create_csv_send_mail'),(169,'Executed','2021-10-04 13:12:06.965553',0.04,1633324327.01,NULL,NULL,'create_csv_send_mail'),(170,'Executed','2021-10-04 13:12:11.965553',0.04,1633324332.00,NULL,NULL,'create_csv_send_mail'),(171,'Executed','2021-10-04 13:12:16.965553',0.02,1633324336.98,NULL,NULL,'create_csv_send_mail'),(172,'Executed','2021-10-04 13:12:21.965553',0.03,1633324342.00,NULL,NULL,'create_csv_send_mail'),(173,'Executed','2021-10-04 13:14:23.825088',0.07,1633324463.90,NULL,NULL,'create_csv_send_mail'),(174,'Executed','2021-10-04 13:15:53.847887',0.05,1633324553.90,NULL,NULL,'create_csv_send_mail'),(175,'Executed','2021-10-04 13:15:58.847887',0.02,1633324558.87,NULL,NULL,'create_csv_send_mail'),(176,'Executed','2021-10-04 13:17:06.461435',0.06,1633324626.52,NULL,NULL,'create_csv_send_mail'),(177,'Executed','2021-10-04 13:17:11.461435',0.04,1633324631.50,NULL,NULL,'create_csv_send_mail'),(178,'Executed','2021-10-04 13:17:16.461435',0.03,1633324636.50,NULL,NULL,'create_csv_send_mail'),(179,'Executed','2021-10-04 13:17:21.461435',0.04,1633324641.50,NULL,NULL,'create_csv_send_mail'),(180,'Executed','2021-10-04 13:17:36.986880',0.06,1633324657.05,NULL,NULL,'create_csv_send_mail'),(181,'Executed','2021-10-04 13:17:41.986880',0.06,1633324662.05,NULL,NULL,'create_csv_send_mail'),(182,'Executed','2021-10-04 13:17:46.986880',0.04,1633324667.03,NULL,NULL,'create_csv_send_mail'),(183,'Executed','2021-10-04 13:27:03.470696',0.06,1633325223.53,NULL,NULL,'create_csv_send_mail'),(184,'Executed','2021-10-04 13:27:08.470696',0.04,1633325228.51,NULL,NULL,'create_csv_send_mail'),(185,'Executed','2021-10-04 13:27:13.470696',0.05,1633325233.52,NULL,NULL,'create_csv_send_mail'),(186,'Executed','2021-10-04 13:27:18.470696',0.05,1633325238.52,NULL,NULL,'create_csv_send_mail'),(187,'Executed','2021-10-04 13:27:23.470696',0.06,1633325243.53,NULL,NULL,'create_csv_send_mail');
/*!40000 ALTER TABLE `django_apscheduler_djangojobexecution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'django_apscheduler','djangojob'),(10,'django_apscheduler','djangojobexecution'),(8,'Order','customer_order'),(7,'Product','product'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'Product','0001_initial','2021-09-28 10:35:26.667532'),(2,'Order','0001_initial','2021-09-28 10:35:26.769533'),(3,'contenttypes','0001_initial','2021-09-28 10:35:26.832532'),(4,'auth','0001_initial','2021-09-28 10:35:27.424619'),(5,'admin','0001_initial','2021-09-28 10:35:27.583119'),(6,'admin','0002_logentry_remove_auto_add','2021-09-28 10:35:27.595123'),(7,'admin','0003_logentry_add_action_flag_choices','2021-09-28 10:35:27.603399'),(8,'contenttypes','0002_remove_content_type_name','2021-09-28 10:35:27.736176'),(9,'auth','0002_alter_permission_name_max_length','2021-09-28 10:35:27.811177'),(10,'auth','0003_alter_user_email_max_length','2021-09-28 10:35:27.891185'),(11,'auth','0004_alter_user_username_opts','2021-09-28 10:35:27.908185'),(12,'auth','0005_alter_user_last_login_null','2021-09-28 10:35:27.973175'),(13,'auth','0006_require_contenttypes_0002','2021-09-28 10:35:27.977175'),(14,'auth','0007_alter_validators_add_error_messages','2021-09-28 10:35:27.984174'),(15,'auth','0008_alter_user_username_max_length','2021-09-28 10:35:28.061178'),(16,'auth','0009_alter_user_last_name_max_length','2021-09-28 10:35:28.223178'),(17,'auth','0010_alter_group_name_max_length','2021-09-28 10:35:28.301175'),(18,'auth','0011_update_proxy_permissions','2021-09-28 10:35:28.315176'),(19,'auth','0012_alter_user_first_name_max_length','2021-09-28 10:35:28.399175'),(20,'sessions','0001_initial','2021-09-28 10:35:28.444176'),(21,'Product','0002_rename_stock_prc_product_stock_pcs','2021-10-01 08:46:31.383091'),(22,'Order','0002_alter_customer_order_shop_id','2021-10-01 09:21:53.358541'),(23,'Order','0003_alter_customer_order_products','2021-10-01 11:12:24.655880'),(24,'django_apscheduler','0001_initial','2021-10-04 01:37:46.956541'),(25,'django_apscheduler','0002_auto_20180412_0758','2021-10-04 01:37:47.031543'),(26,'django_apscheduler','0003_auto_20200716_1632','2021-10-04 01:37:47.065542'),(27,'django_apscheduler','0004_auto_20200717_1043','2021-10-04 01:37:47.343190'),(28,'django_apscheduler','0005_migrate_name_to_id','2021-10-04 01:37:47.359221'),(29,'django_apscheduler','0006_remove_djangojob_name','2021-10-04 01:37:47.407223'),(30,'django_apscheduler','0007_auto_20200717_1404','2021-10-04 01:37:47.466478'),(31,'django_apscheduler','0008_remove_djangojobexecution_started','2021-10-04 01:37:47.527898');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ckg57megzusg4fdx2y5fr12q3rdh9koh','.eJxVjDsOwjAQBe_iGlm7_mRtSnrOYPmzwgFkS3FSIe4OkVJA-2bmvUSI21rDNngJcxFngeL0u6WYH9x2UO6x3brMva3LnOSuyIMOee2Fn5fD_TuocdRvDaw46skXyq5EIgMGswECjU4hKe29MR6SS46JjdVoJ4tkFVhAh068P62VNZI:1mVATo:_mooC3tSFDFnimhu3LgDCattEj2r_6xtJhYJmacNvQM','2021-10-12 10:36:56.686294'),('gq0nu2u5ikigu8wsw2ym0bb9wfc7lgx6','.eJxVjDsOwjAQBe_iGlm7_mRtSnrOYPmzwgFkS3FSIe4OkVJA-2bmvUSI21rDNngJcxFngeL0u6WYH9x2UO6x3brMva3LnOSuyIMOee2Fn5fD_TuocdRvDaw46skXyq5EIgMGswECjU4hKe29MR6SS46JjdVoJ4tkFVhAh068P62VNZI:1mWjFy:O2P5dDt4Bi14fBnT2OPChIYlGxwLRTonRVG4M_ENIuU','2021-10-16 17:57:06.422658'),('lkzzqakj4e4j9l6e7h7j39b7cbnyg4wc','.eJxVjDsOwjAQBe_iGlm7_mRtSnrOYPmzwgFkS3FSIe4OkVJA-2bmvUSI21rDNngJcxFngeL0u6WYH9x2UO6x3brMva3LnOSuyIMOee2Fn5fD_TuocdRvDaw46skXyq5EIgMGswECjU4hKe29MR6SS46JjdVoJ4tkFVhAh068P62VNZI:1mWEKP:bi2Sj88DpySPM19eBvXyxDlS638aUjMbLupS_WmXYv0','2021-10-15 08:55:37.723215'),('tubd9ybtfm1pqk834mxsyxtpgg96u10u','.eJxVjDsOwjAQBe_iGlm7_mRtSnrOYPmzwgFkS3FSIe4OkVJA-2bmvUSI21rDNngJcxFngeL0u6WYH9x2UO6x3brMva3LnOSuyIMOee2Fn5fD_TuocdRvDaw46skXyq5EIgMGswECjU4hKe29MR6SS46JjdVoJ4tkFVhAh068P62VNZI:1mWKws:d8xaDOPt6YdcNxY4wgV8Env4moGd7e3GzGseIylRFRY','2021-10-15 15:59:46.015774');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `stock_pcs` int NOT NULL,
  `price` int NOT NULL,
  `shop_id` varchar(10) NOT NULL,
  `vip` tinyint(1) NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,2,150,'um',0,1),(2,10,110,'ms',0,2),(3,15,900,'ps',0,3),(4,2,1899,'ps',1,4),(5,8,35,'ms',0,5),(6,5,60,'um',0,6),(7,5,800,'ps',1,7);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-04 14:18:19
