-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: notas
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.04.1

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
-- Table structure for table `cambios`
--

DROP TABLE IF EXISTS `cambios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cambios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cambios`
--

LOCK TABLES `cambios` WRITE;
/*!40000 ALTER TABLE `cambios` DISABLE KEYS */;
INSERT INTO `cambios` VALUES (1,1,1,'nombres y apellidos - ','2014-03-28 13:32:55','2014-03-28 13:32:55'),(2,1,1,'fecha de recepcion - fecha de documento - anio - autorizado - localidad - procedencia - tipo documento - ','2014-03-28 14:20:55','2014-03-28 14:20:55'),(3,1,1,'fecha de recepcion - fecha de documento - anio - autorizado - destinatario - localidad - tipo documento - ','2014-03-28 14:21:36','2014-03-28 14:21:36'),(4,1,1,'fecha de recepcion - fecha de documento - anio - asunto - autorizado - localidad - tipo documento - ','2014-03-28 14:25:52','2014-03-28 14:25:52'),(5,1,1,'fecha de recepcion - fecha de documento - anio - autorizado - localidad - nro salida - tipo documento - ','2014-03-28 14:32:53','2014-03-28 14:32:53'),(6,1,1,'fecha de recepcion - fecha de documento - anio - autorizado - destinatario - localidad - observacion - procedencia - tipo documento - ','2014-03-28 14:35:27','2014-03-28 14:35:27'),(7,1,1,'fecha de recepcion - fecha de documento - anio - autorizado - localidad - tipo documento - ','2014-03-28 14:35:55','2014-03-28 14:35:55'),(8,1,1,'fecha de recepcion - fecha de documento - anio - autorizado - localidad - tipo documento - ','2014-03-28 14:42:41','2014-03-28 14:42:41'),(9,1,1,'localidad - tipo documento - ','2014-03-28 14:43:03','2014-03-28 14:43:03'),(10,1,1,'autorizado - localidad - tipo documento - ','2014-03-28 14:43:19','2014-03-28 14:43:19'),(11,1,1,'localidad - tipo documento - ','2014-03-28 14:45:05','2014-03-28 14:45:05'),(12,1,1,'sigla - ','2014-03-28 14:45:47','2014-03-28 14:45:47'),(13,1,1,'motivo - nro documento - se encuenta en  - ','2014-03-28 16:53:36','2014-03-28 16:53:36'),(14,4,1,'observacion - ','2014-03-31 18:44:58','2014-03-31 18:44:58'),(15,10,2,'asunto - ','2014-04-03 13:57:13','2014-04-03 13:57:13');
/*!40000 ALTER TABLE `cambios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documento_anexos`
--

DROP TABLE IF EXISTS `documento_anexos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documento_anexos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `tipo_documento_id` int(11) DEFAULT NULL,
  `documento_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento_anexos`
--

LOCK TABLES `documento_anexos` WRITE;
/*!40000 ALTER TABLE `documento_anexos` DISABLE KEYS */;
INSERT INTO `documento_anexos` VALUES (1,'1',2014,NULL,1,2,'2014-03-31 12:03:16','2014-03-31 12:03:16'),(2,'123',123,NULL,1,9,'2014-04-01 14:37:34','2014-04-01 14:37:34'),(3,'123',123,NULL,1,9,'2014-04-01 14:39:17','2014-04-01 14:39:17'),(4,'123',123,NULL,1,18,'2014-04-01 14:55:06','2014-04-01 14:55:06'),(5,'123',123,NULL,1,18,'2014-04-01 14:55:06','2014-04-01 14:55:06'),(6,'66666',6666,NULL,1,18,'2014-04-01 14:55:16','2014-04-01 14:55:16');
/*!40000 ALTER TABLE `documento_anexos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos`
--

DROP TABLE IF EXISTS `documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nro_documento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nro_salida` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asunto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autorizado` tinyint(1) DEFAULT NULL,
  `observacion` text COLLATE utf8_unicode_ci,
  `sigla` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `fecha_recepcion` date DEFAULT NULL,
  `fecha_documento` date DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  `tipo_documento_id` int(11) DEFAULT NULL,
  `procedencia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombres_y_apellidos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `motivo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destinatario` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iniciado_por` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `se_encuentra_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localidad_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos`
--

LOCK TABLES `documentos` WRITE;
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
INSERT INTO `documentos` VALUES (1,'22','333','456654654654654654',1,'asdads','8',222,'2014-03-06','2014-03-12','2014-04-01',1,'fajbfdjdd<fbhdkfasdsad','qweqe asdasd','asdasda','holaasdsad','eqwewqewqe','asdasd',1,'2014-03-28 13:32:45','2014-04-01 12:35:28'),(2,'1','','asunto de prueba',1,'','4',2014,'2014-03-11','2014-03-19','2014-03-31',1,'depto licencias','asdasdas','','dasda','Gaston Diaz','',1,'2014-03-31 12:03:16','2014-03-31 17:08:06'),(3,'3','','asda',0,'','33',33,'2014-03-12','2014-03-17','2014-03-31',1,'asdasd','asdasd','','','asdas','',1,'2014-03-31 17:10:08','2014-03-31 17:39:46'),(4,'12','122','Primer Documento',1,'algo\r\nalgo2\r\nalgo3','AS',12,'2014-03-01','2014-03-04','2014-04-01',1,'Primer Lugar','Alguien','veremos','ALguien 2','Gaston Diaz','Tal Lugar',1,'2014-03-31 18:38:02','2014-04-01 12:38:22'),(5,'12','122','Primer Documento',1,'algo\r\nalgo2\r\nalgo3','AS',12,'2014-03-01','2014-03-04',NULL,1,'Primer Lugar','Alguien','veremos','ALguien 2','Gaston Diaz','Tal Lugar',1,'2014-04-01 13:31:31','2014-04-01 13:31:31'),(6,'12','122','Primer Documento',1,'algo\r\nalgo2\r\nalgo3','AS',12,'2014-03-01','2014-03-04',NULL,1,'Primer Lugar','Alguien','veremos','ALguien 2','Gaston Diaz','Tal Lugar',1,'2014-04-01 13:32:03','2014-04-01 13:32:03'),(7,'12','122','Primer Documento',1,'algo\r\nalgo2\r\nalgo3','AS',12,'2014-03-01','2014-03-04',NULL,1,'Primer Lugar','Alguien','veremos','ALguien 2','Gaston Diaz','Tal Lugar',1,'2014-04-01 13:32:45','2014-04-01 13:32:45'),(8,'12','122','Primer Documento',1,'algo\r\nalgo2\r\nalgo3','AS',12,'2014-03-01','2014-03-04',NULL,1,'Primer Lugar','Alguien','veremos','ALguien 2','Gaston Diaz','Tal Lugar',1,'2014-04-01 13:33:01','2014-04-01 13:33:01'),(9,'1','','asunto de prueba',1,'','4',2014,'2014-03-11','2014-03-19',NULL,1,'depto licencias','asdasdas','','dasda','Gaston Diaz','',1,'2014-04-01 14:08:14','2014-04-01 14:08:14'),(10,'ads','','sadsa ads das das sa das sa dsa as dsa sa das as d ad sa sa sad as sda das dsa das das dsa ds das as das das das dsa das dasd as dasd as',0,'','sadasd',0,'2014-04-09','2014-04-07',NULL,1,'asdas','asdasd','','','asdsad','',1,'2014-04-01 14:26:09','2014-04-03 13:57:13'),(11,'ads','','sadsa',0,'','sadasd',0,'2014-04-09','2014-04-07',NULL,1,'asdas','asdasd','','','asdsad','',1,'2014-04-01 14:26:51','2014-04-01 14:26:51'),(12,'ads','','sadsa',0,'','sadasd',0,'2014-04-09','2014-04-07',NULL,1,'asdas','asdasd','','','asdsad','',1,'2014-04-01 14:27:28','2014-04-01 14:27:28'),(13,'ads','','sadsa',0,'','sadasd',0,'2014-04-09','2014-04-07',NULL,1,'asdas','asdasd','','','asdsad','',1,'2014-04-01 14:49:21','2014-04-01 14:49:21'),(14,'ads','','sadsa',0,'','sadasd',0,'2014-04-09','2014-04-07',NULL,1,'asdas','asdasd','','','asdsad','',1,'2014-04-01 14:51:11','2014-04-01 14:51:11'),(15,'22','333','456654654654654654',1,'asdads','8',222,'2014-03-06','2014-03-12',NULL,1,'fajbfdjdd<fbhdkfasdsad','qweqe asdasd','asdasda','holaasdsad','eqwewqewqe','asdasd',1,'2014-04-01 14:53:52','2014-04-01 14:53:52'),(16,'22','333','456654654654654654',1,'asdads','8',222,'2014-03-06','2014-03-12',NULL,1,'fajbfdjdd<fbhdkfasdsad','qweqe asdasd','asdasda','holaasdsad','eqwewqewqe','asdasd',1,'2014-04-01 14:54:08','2014-04-01 14:54:08'),(17,'22','333','456654654654654654',1,'asdads','8',222,'2014-03-06','2014-03-12',NULL,1,'fajbfdjdd<fbhdkfasdsad','qweqe asdasd','asdasda','holaasdsad','eqwewqewqe','asdasd',1,'2014-04-01 14:54:44','2014-04-01 14:54:44'),(18,'1','','asunto de prueba',1,'','4',2014,'2014-03-11','2014-03-19',NULL,1,'depto licencias','asdasdas','','dasda','Gaston Diaz','',1,'2014-04-01 14:55:06','2014-04-01 14:55:06');
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidades`
--

DROP TABLE IF EXISTS `localidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidades`
--

LOCK TABLES `localidades` WRITE;
/*!40000 ALTER TABLE `localidades` DISABLE KEYS */;
INSERT INTO `localidades` VALUES (1,'Trelew',NULL,'2014-03-28 13:32:11','2014-03-28 13:32:11');
/*!40000 ALTER TABLE `localidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidads`
--

DROP TABLE IF EXISTS `localidads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localidads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidads`
--

LOCK TABLES `localidads` WRITE;
/*!40000 ALTER TABLE `localidads` DISABLE KEYS */;
/*!40000 ALTER TABLE `localidads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regiones`
--

DROP TABLE IF EXISTS `regiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regiones`
--

LOCK TABLES `regiones` WRITE;
/*!40000 ALTER TABLE `regiones` DISABLE KEYS */;
INSERT INTO `regiones` VALUES (1,'I','2014-04-03 13:17:46','2014-04-03 13:17:46'),(2,'II','2014-04-03 13:18:55','2014-04-03 13:18:55'),(3,'III','2014-04-03 13:19:03','2014-04-03 13:19:03');
/*!40000 ALTER TABLE `regiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `regulator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conduct` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_roles`
--

DROP TABLE IF EXISTS `role_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_roles`
--

LOCK TABLES `role_roles` WRITE;
/*!40000 ALTER TABLE `role_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','2014-03-28 13:31:02','2014-03-28 13:31:02'),(2,'subsecretaria','2014-04-03 12:58:06','2014-04-03 12:58:06');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120201182115'),('20120224180650'),('20120224181028'),('20120302182538'),('20120410182942'),('20140325140658'),('20140325141144'),('20140325143456'),('20140325143622'),('20140325144409'),('20140325144459'),('20140326113240'),('20140326113241'),('20140328120626'),('20140328132512');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_documentos`
--

DROP TABLE IF EXISTS `tipo_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_documentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documentos`
--

LOCK TABLES `tipo_documentos` WRITE;
/*!40000 ALTER TABLE `tipo_documentos` DISABLE KEYS */;
INSERT INTO `tipo_documentos` VALUES (1,'Nota S/N','2014-03-28 13:32:39','2014-03-28 13:32:39');
/*!40000 ALTER TABLE `tipo_documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1,1,'2014-03-28 13:31:26','2014-03-28 13:31:26'),(3,2,2,'2014-04-03 12:58:23','2014-04-03 12:58:23');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `nombres` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'pelly87@hotmail.com','$2a$10$NBwDwzwNprKLW5enIBdRqeRg5vLETsJ/X143KQbiWOc7KA7I8f5Ti',NULL,NULL,NULL,10,'2014-04-03 12:22:50','2014-04-01 12:38:04','127.0.0.1','172.16.24.78','2014-03-28 13:30:13','2014-04-03 12:22:50','Marcelo','Gonzalez'),(2,'prueba@gmail.com','$2a$10$CfkZW8wibcc1YMlNRSKAl.BIDwGiCC4TC0tnXqLmS/mFpCOIxXuXO',NULL,NULL,NULL,2,'2014-04-03 12:58:34','2014-04-03 12:23:58','127.0.0.1','127.0.0.1','2014-04-03 12:23:58','2014-04-03 12:58:34','Usuario','Prueba');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utils`
--

DROP TABLE IF EXISTS `utils`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utils` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utils`
--

LOCK TABLES `utils` WRITE;
/*!40000 ALTER TABLE `utils` DISABLE KEYS */;
/*!40000 ALTER TABLE `utils` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-03 12:22:29
