-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: lodge
-- ------------------------------------------------------
-- Server version	8.0.28

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add actions',7,'add_actions'),(26,'Can change actions',7,'change_actions'),(27,'Can delete actions',7,'delete_actions'),(28,'Can view actions',7,'view_actions'),(29,'Can add roles',8,'add_roles'),(30,'Can change roles',8,'change_roles'),(31,'Can delete roles',8,'delete_roles'),(32,'Can view roles',8,'view_roles'),(33,'Can add users',9,'add_users'),(34,'Can change users',9,'change_users'),(35,'Can delete users',9,'delete_users'),(36,'Can view users',9,'view_users'),(37,'Can add customers',10,'add_customers'),(38,'Can change customers',10,'change_customers'),(39,'Can delete customers',10,'delete_customers'),(40,'Can view customers',10,'view_customers'),(41,'Can add room_type',11,'add_room_type'),(42,'Can change room_type',11,'change_room_type'),(43,'Can delete room_type',11,'delete_room_type'),(44,'Can view room_type',11,'view_room_type'),(45,'Can add rooms',12,'add_rooms'),(46,'Can change rooms',12,'change_rooms'),(47,'Can delete rooms',12,'delete_rooms'),(48,'Can view rooms',12,'view_rooms'),(49,'Can add bookings',13,'add_bookings'),(50,'Can change bookings',13,'change_bookings'),(51,'Can delete bookings',13,'delete_bookings'),(52,'Can view bookings',13,'view_bookings'),(53,'Can add booking_rooms',14,'add_booking_rooms'),(54,'Can change booking_rooms',14,'change_booking_rooms'),(55,'Can delete booking_rooms',14,'delete_booking_rooms'),(56,'Can view booking_rooms',14,'view_booking_rooms'),(57,'Can add checkin',15,'add_checkin'),(58,'Can change checkin',15,'change_checkin'),(59,'Can delete checkin',15,'delete_checkin'),(60,'Can view checkin',15,'view_checkin'),(61,'Can add checkout',16,'add_checkout'),(62,'Can change checkout',16,'change_checkout'),(63,'Can delete checkout',16,'delete_checkout'),(64,'Can view checkout',16,'view_checkout'),(65,'Can add discount_type',17,'add_discount_type'),(66,'Can change discount_type',17,'change_discount_type'),(67,'Can delete discount_type',17,'delete_discount_type'),(68,'Can view discount_type',17,'view_discount_type'),(69,'Can add seasonal_discounts',18,'add_seasonal_discounts'),(70,'Can change seasonal_discounts',18,'change_seasonal_discounts'),(71,'Can delete seasonal_discounts',18,'delete_seasonal_discounts'),(72,'Can view seasonal_discounts',18,'view_seasonal_discounts'),(73,'Can add bulk_discounts',19,'add_bulk_discounts'),(74,'Can change bulk_discounts',19,'change_bulk_discounts'),(75,'Can delete bulk_discounts',19,'delete_bulk_discounts'),(76,'Can view bulk_discounts',19,'view_bulk_discounts');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'Lodge','actions'),(14,'Lodge','booking_rooms'),(13,'Lodge','bookings'),(19,'Lodge','bulk_discounts'),(15,'Lodge','checkin'),(16,'Lodge','checkout'),(10,'Lodge','customers'),(17,'Lodge','discount_type'),(8,'Lodge','roles'),(11,'Lodge','room_type'),(12,'Lodge','rooms'),(18,'Lodge','seasonal_discounts'),(9,'Lodge','users'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-02-06 19:15:18.058009'),(2,'auth','0001_initial','2022-02-06 19:15:20.735193'),(3,'admin','0001_initial','2022-02-06 19:15:21.781363'),(4,'admin','0002_logentry_remove_auto_add','2022-02-06 19:15:21.854917'),(5,'admin','0003_logentry_add_action_flag_choices','2022-02-06 19:15:21.896842'),(6,'contenttypes','0002_remove_content_type_name','2022-02-06 19:15:22.501043'),(7,'auth','0002_alter_permission_name_max_length','2022-02-06 19:15:22.698298'),(8,'auth','0003_alter_user_email_max_length','2022-02-06 19:15:22.779956'),(9,'auth','0004_alter_user_username_opts','2022-02-06 19:15:22.816394'),(10,'auth','0005_alter_user_last_login_null','2022-02-06 19:15:22.994503'),(11,'auth','0006_require_contenttypes_0002','2022-02-06 19:15:23.006708'),(12,'auth','0007_alter_validators_add_error_messages','2022-02-06 19:15:23.026138'),(13,'auth','0008_alter_user_username_max_length','2022-02-06 19:15:23.240512'),(14,'auth','0009_alter_user_last_name_max_length','2022-02-06 19:15:23.473553'),(15,'auth','0010_alter_group_name_max_length','2022-02-06 19:15:23.553304'),(16,'auth','0011_update_proxy_permissions','2022-02-06 19:15:23.591230'),(17,'auth','0012_alter_user_first_name_max_length','2022-02-06 19:15:23.766467'),(18,'sessions','0001_initial','2022-02-06 19:15:24.175043');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('50huaswap4hhsx7vdtrnlk2vqvq0t03n','.eJyrVsrMS0ksSVWyUjIyMDLSNTDSNbRU0lHKLy1BEzYyU6oFACfuC-o:1nJMgI:vejF2u5-ZnfaRKDRiMGCxjGVvHYjkqSu7-u0b4AF4aM','2022-02-27 21:45:18.863422');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lodge_actions`
--

DROP TABLE IF EXISTS `lodge_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lodge_actions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `allowed_actions` varchar(240) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lodge_actions`
--

LOCK TABLES `lodge_actions` WRITE;
/*!40000 ALTER TABLE `lodge_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `lodge_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lodge_booking_rooms`
--

DROP TABLE IF EXISTS `lodge_booking_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lodge_booking_rooms` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `booking_id_id` bigint NOT NULL,
  `room_id_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Lodge_booking_rooms_booking_id_id_9285ecc7_fk_Lodge_bookings_id` (`booking_id_id`),
  CONSTRAINT `Lodge_booking_rooms_booking_id_id_9285ecc7_fk_Lodge_bookings_id` FOREIGN KEY (`booking_id_id`) REFERENCES `lodge_bookings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lodge_booking_rooms`
--

LOCK TABLES `lodge_booking_rooms` WRITE;
/*!40000 ALTER TABLE `lodge_booking_rooms` DISABLE KEYS */;
INSERT INTO `lodge_booking_rooms` VALUES (1,1,1),(2,2,2),(3,2,3),(4,3,4),(5,4,5),(6,4,6),(7,5,5),(8,7,4),(9,7,7);
/*!40000 ALTER TABLE `lodge_booking_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lodge_bookings`
--

DROP TABLE IF EXISTS `lodge_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lodge_bookings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_date` datetime(6) NOT NULL,
  `last_date` datetime(6) NOT NULL,
  `booked_date` datetime(6) NOT NULL,
  `cancellation_date` datetime(6) DEFAULT NULL,
  `customer_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lodge_bookings`
--

LOCK TABLES `lodge_bookings` WRITE;
/*!40000 ALTER TABLE `lodge_bookings` DISABLE KEYS */;
INSERT INTO `lodge_bookings` VALUES (1,'2022-02-01 00:00:00.000000','2022-02-11 00:00:00.000000','2022-02-06 00:00:00.000000',NULL,1),(2,'2022-02-05 00:00:00.000000','2022-02-11 00:00:00.000000','2022-02-06 00:00:00.000000',NULL,2),(3,'2022-02-02 00:00:00.000000','2022-02-11 00:00:00.000000','2022-02-06 00:00:00.000000',NULL,3),(4,'2022-02-10 00:00:00.000000','2022-02-15 00:00:00.000000','2022-02-06 00:00:00.000000',NULL,4),(5,'2022-02-05 00:00:00.000000','2022-02-08 00:00:00.000000','2022-02-06 00:00:00.000000',NULL,2),(7,'2022-02-19 00:00:00.000000','2022-02-26 00:00:00.000000','2022-02-13 00:00:00.000000',NULL,12);
/*!40000 ALTER TABLE `lodge_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lodge_bulk_discounts`
--

DROP TABLE IF EXISTS `lodge_bulk_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lodge_bulk_discounts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `min_rooms` int NOT NULL,
  `bulk_amount` decimal(6,2) NOT NULL,
  `type_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lodge_bulk_discounts`
--

LOCK TABLES `lodge_bulk_discounts` WRITE;
/*!40000 ALTER TABLE `lodge_bulk_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `lodge_bulk_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lodge_checkin`
--

DROP TABLE IF EXISTS `lodge_checkin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lodge_checkin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `checkin_date` datetime(6) NOT NULL,
  `booking_room_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lodge_checkin`
--

LOCK TABLES `lodge_checkin` WRITE;
/*!40000 ALTER TABLE `lodge_checkin` DISABLE KEYS */;
INSERT INTO `lodge_checkin` VALUES (29,'2022-02-08 00:00:00.000000',2),(50,'2022-02-10 00:00:00.000000',5);
/*!40000 ALTER TABLE `lodge_checkin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lodge_checkout`
--

DROP TABLE IF EXISTS `lodge_checkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lodge_checkout` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `checkout_date` datetime(6) NOT NULL,
  `booking_room_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lodge_checkout`
--

LOCK TABLES `lodge_checkout` WRITE;
/*!40000 ALTER TABLE `lodge_checkout` DISABLE KEYS */;
INSERT INTO `lodge_checkout` VALUES (3,'2022-02-10 00:00:00.000000',2);
/*!40000 ALTER TABLE `lodge_checkout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lodge_customers`
--

DROP TABLE IF EXISTS `lodge_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lodge_customers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(240) NOT NULL,
  `last_name` varchar(240) NOT NULL,
  `email` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lodge_customers`
--

LOCK TABLES `lodge_customers` WRITE;
/*!40000 ALTER TABLE `lodge_customers` DISABLE KEYS */;
INSERT INTO `lodge_customers` VALUES (1,'Eric','Cartman','eric@gmail.com'),(2,'Kyle','Broflovski','kyle@gmail.com'),(3,'Stan','Marsh','stan@gmail.com'),(4,'Kenny','McCormick','kenny@gmail.com'),(12,'Leopold ','Stotch','leopold.stotch@gmail.com');
/*!40000 ALTER TABLE `lodge_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lodge_discount_type`
--

DROP TABLE IF EXISTS `lodge_discount_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lodge_discount_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` varchar(240) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lodge_discount_type`
--

LOCK TABLES `lodge_discount_type` WRITE;
/*!40000 ALTER TABLE `lodge_discount_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `lodge_discount_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lodge_roles`
--

DROP TABLE IF EXISTS `lodge_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lodge_roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_type_desc` varchar(240) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lodge_roles`
--

LOCK TABLES `lodge_roles` WRITE;
/*!40000 ALTER TABLE `lodge_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `lodge_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lodge_roles_allowed_actions`
--

DROP TABLE IF EXISTS `lodge_roles_allowed_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lodge_roles_allowed_actions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `roles_id` bigint NOT NULL,
  `actions_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lodge_roles_allowed_actions`
--

LOCK TABLES `lodge_roles_allowed_actions` WRITE;
/*!40000 ALTER TABLE `lodge_roles_allowed_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `lodge_roles_allowed_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lodge_room_type`
--

DROP TABLE IF EXISTS `lodge_room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lodge_room_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_type_desc` varchar(240) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lodge_room_type`
--

LOCK TABLES `lodge_room_type` WRITE;
/*!40000 ALTER TABLE `lodge_room_type` DISABLE KEYS */;
INSERT INTO `lodge_room_type` VALUES (1,'Family'),(2,'Luxury Lodge'),(3,'Standard Double'),(4,'Family Room');
/*!40000 ALTER TABLE `lodge_room_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lodge_rooms`
--

DROP TABLE IF EXISTS `lodge_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lodge_rooms` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_number` int NOT NULL,
  `sleeps` int NOT NULL,
  `floor` int NOT NULL,
  `cot` int NOT NULL,
  `disabled_access` int NOT NULL,
  `room_price` decimal(6,2) NOT NULL,
  `room_type_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lodge_rooms`
--

LOCK TABLES `lodge_rooms` WRITE;
/*!40000 ALTER TABLE `lodge_rooms` DISABLE KEYS */;
INSERT INTO `lodge_rooms` VALUES (1,1,1,1,0,0,100.00,1),(2,2,1,1,0,0,100.00,1),(3,3,1,1,0,0,100.00,1),(4,4,6,1,0,0,500.00,2),(5,5,6,1,0,0,500.00,2),(6,6,6,1,0,0,500.00,2),(7,7,2,1,0,0,200.00,3),(8,8,2,1,0,0,200.00,3),(9,9,2,1,0,0,200.00,3),(10,10,2,1,0,0,200.00,3),(11,11,4,1,0,0,300.00,4),(12,12,4,1,0,0,300.00,4),(13,14,4,1,0,0,300.00,4);
/*!40000 ALTER TABLE `lodge_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lodge_seasonal_discounts`
--

DROP TABLE IF EXISTS `lodge_seasonal_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lodge_seasonal_discounts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `start_date` datetime(6) NOT NULL,
  `end_date` datetime(6) NOT NULL,
  `seasonal_amount` decimal(6,2) NOT NULL,
  `type_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lodge_seasonal_discounts`
--

LOCK TABLES `lodge_seasonal_discounts` WRITE;
/*!40000 ALTER TABLE `lodge_seasonal_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `lodge_seasonal_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lodge_users`
--

DROP TABLE IF EXISTS `lodge_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lodge_users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(240) NOT NULL,
  `username` varchar(240) NOT NULL,
  `password` varchar(240) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `role_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lodge_users`
--

LOCK TABLES `lodge_users` WRITE;
/*!40000 ALTER TABLE `lodge_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `lodge_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-18 21:40:30
