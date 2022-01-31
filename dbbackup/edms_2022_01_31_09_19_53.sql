-- MariaDB dump 10.19  Distrib 10.6.5-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: edms
-- ------------------------------------------------------
-- Server version	10.6.5-MariaDB

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
-- Table structure for table `ootb_business_rule`
--

DROP TABLE IF EXISTS `ootb_business_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_business_rule` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_business_rule`
--

LOCK TABLES `ootb_business_rule` WRITE;
/*!40000 ALTER TABLE `ootb_business_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_business_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_choice_option`
--

DROP TABLE IF EXISTS `ootb_choice_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_choice_option` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  `module` varchar(32) DEFAULT NULL,
  `domain` varchar(32) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `actual_value` varchar(100) DEFAULT NULL,
  `choice_for_column` varchar(32) DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `belongs_to_table` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `module` (`module`),
  KEY `domain` (`domain`),
  KEY `choice_for_column` (`choice_for_column`),
  KEY `language` (`language`),
  KEY `belong_to` (`belongs_to_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_choice_option`
--

LOCK TABLES `ootb_choice_option` WRITE;
/*!40000 ALTER TABLE `ootb_choice_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_choice_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_config_item`
--

DROP TABLE IF EXISTS `ootb_config_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_config_item` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_config_item`
--

LOCK TABLES `ootb_config_item` WRITE;
/*!40000 ALTER TABLE `ootb_config_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_config_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_config_item_version`
--

DROP TABLE IF EXISTS `ootb_config_item_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_config_item_version` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_config_item_version`
--

LOCK TABLES `ootb_config_item_version` WRITE;
/*!40000 ALTER TABLE `ootb_config_item_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_config_item_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_domain`
--

DROP TABLE IF EXISTS `ootb_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_domain` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  `module_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_domain`
--

LOCK TABLES `ootb_domain` WRITE;
/*!40000 ALTER TABLE `ootb_domain` DISABLE KEYS */;
INSERT INTO `ootb_domain` VALUES ('abc961d47ae211ecbbbb0022485ac160','Universal');
/*!40000 ALTER TABLE `ootb_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_language`
--

DROP TABLE IF EXISTS `ootb_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_language` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  `language` varchar(100) DEFAULT NULL,
  `iso_code` varchar(10) DEFAULT NULL,
  `text_direction` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_language`
--

LOCK TABLES `ootb_language` WRITE;
/*!40000 ALTER TABLE `ootb_language` DISABLE KEYS */;
INSERT INTO `ootb_language` VALUES ('4d2b166d4c300c2b1e81b406a8525a33','English','en','left_to_right');
/*!40000 ALTER TABLE `ootb_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_module`
--

DROP TABLE IF EXISTS `ootb_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_module` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  `module_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_module`
--

LOCK TABLES `ootb_module` WRITE;
/*!40000 ALTER TABLE `ootb_module` DISABLE KEYS */;
INSERT INTO `ootb_module` VALUES ('a380652a787c11ec8e12f40f2413746d','Platform');
/*!40000 ALTER TABLE `ootb_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_mtom_acl_role`
--

DROP TABLE IF EXISTS `ootb_mtom_acl_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_mtom_acl_role` (
  `uuid` varchar(30) DEFAULT md5(uuid())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_mtom_acl_role`
--

LOCK TABLES `ootb_mtom_acl_role` WRITE;
/*!40000 ALTER TABLE `ootb_mtom_acl_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_mtom_acl_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_mtom_group_role`
--

DROP TABLE IF EXISTS `ootb_mtom_group_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_mtom_group_role` (
  `uuid` varchar(32) DEFAULT md5(uuid())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_mtom_group_role`
--

LOCK TABLES `ootb_mtom_group_role` WRITE;
/*!40000 ALTER TABLE `ootb_mtom_group_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_mtom_group_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_mtom_group_user`
--

DROP TABLE IF EXISTS `ootb_mtom_group_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_mtom_group_user` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_mtom_group_user`
--

LOCK TABLES `ootb_mtom_group_user` WRITE;
/*!40000 ALTER TABLE `ootb_mtom_group_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_mtom_group_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_mtom_user_role`
--

DROP TABLE IF EXISTS `ootb_mtom_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_mtom_user_role` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_mtom_user_role`
--

LOCK TABLES `ootb_mtom_user_role` WRITE;
/*!40000 ALTER TABLE `ootb_mtom_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_mtom_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_script`
--

DROP TABLE IF EXISTS `ootb_script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_script` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_script`
--

LOCK TABLES `ootb_script` WRITE;
/*!40000 ALTER TABLE `ootb_script` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_security_acl`
--

DROP TABLE IF EXISTS `ootb_security_acl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_security_acl` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_security_acl`
--

LOCK TABLES `ootb_security_acl` WRITE;
/*!40000 ALTER TABLE `ootb_security_acl` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_security_acl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_security_role`
--

DROP TABLE IF EXISTS `ootb_security_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_security_role` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_security_role`
--

LOCK TABLES `ootb_security_role` WRITE;
/*!40000 ALTER TABLE `ootb_security_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_security_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_security_role_contains_role`
--

DROP TABLE IF EXISTS `ootb_security_role_contains_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_security_role_contains_role` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_security_role_contains_role`
--

LOCK TABLES `ootb_security_role_contains_role` WRITE;
/*!40000 ALTER TABLE `ootb_security_role_contains_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_security_role_contains_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_system_column_wrapper`
--

DROP TABLE IF EXISTS `ootb_system_column_wrapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_system_column_wrapper` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  `belongs_to` varchar(32) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `wrapper_for` varchar(32) DEFAULT NULL,
  `module` varchar(32) DEFAULT NULL,
  `domain` varchar(32) DEFAULT NULL,
  `help_text` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL COMMENT 'set it if you want to click on the field and open a knowledge',
  `language` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `belong_to` (`belongs_to`),
  KEY `wrapper_for` (`wrapper_for`),
  KEY `module` (`module`),
  KEY `domain` (`domain`),
  KEY `language` (`language`),
  CONSTRAINT `ootb_system_column_wrapper_ibfk_3` FOREIGN KEY (`module`) REFERENCES `ootb_module` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_system_column_wrapper`
--

LOCK TABLES `ootb_system_column_wrapper` WRITE;
/*!40000 ALTER TABLE `ootb_system_column_wrapper` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_system_column_wrapper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_system_property`
--

DROP TABLE IF EXISTS `ootb_system_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_system_property` (
  `uuid` varchar(32) NOT NULL,
  `module` varchar(32) DEFAULT NULL,
  `property_name` varchar(255) DEFAULT NULL,
  `property_type` varchar(100) DEFAULT NULL,
  `property_value` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `module` (`module`),
  CONSTRAINT `ootb_system_property_ibfk_1` FOREIGN KEY (`module`) REFERENCES `ootb_module` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_system_property`
--

LOCK TABLES `ootb_system_property` WRITE;
/*!40000 ALTER TABLE `ootb_system_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_system_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_system_table`
--

DROP TABLE IF EXISTS `ootb_system_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_system_table` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  `module` varchar(32) DEFAULT NULL,
  `table_display_name` varchar(100) DEFAULT NULL,
  `table_actual_name` varchar(100) DEFAULT NULL,
  `inherited_from_table` varchar(100) DEFAULT NULL,
  `allow_to_inheriting` tinyint(1) DEFAULT 0,
  `free_table` tinyint(1) DEFAULT 0 COMMENT 'select this field to allow all users to be accessible (skip all ACL)',
  `public_table` tinyint(1) DEFAULT 0 COMMENT 'select this option to allow access access from this table (everyone)',
  `backend_table` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`uuid`),
  KEY `module` (`module`),
  KEY `inherited_from_table` (`inherited_from_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_system_table`
--

LOCK TABLES `ootb_system_table` WRITE;
/*!40000 ALTER TABLE `ootb_system_table` DISABLE KEYS */;
INSERT INTO `ootb_system_table` VALUES ('1226e2f0f2c6f44e6997276ccee2d44c',NULL,'Role Contains Role','ootb_security_role_contains_role',NULL,0,0,0,0),('29796aa9bbe2ca355a760a54782d0336',NULL,'System Table','ootb_system_table','',0,0,0,0),('2b1d66ba7f28a49b302821047e2ed234',NULL,'Table Column Type','ootb_system_table_column_type','',0,0,0,0),('2bf7b8717314f7fd8828d6ff745618f3',NULL,'System Property','ootb_system_property',NULL,0,0,0,0),('2c8ef65769ffa3fb3c202a9545907ea4',NULL,'Table Column','ootb_system_table_column','',0,0,0,0),('3bbf3687592ffcb912de75120db31a1f',NULL,'System Script','ootb_script',NULL,0,0,0,0),('42c1f9f055e5ab1da65ce09487a336dc',NULL,'Configuration Item Version','ootb_config_item_version','',0,0,0,0),('4bb330c68cf9c6ead79523b2d7077eed',NULL,'UI Form Layout','ootb_ui_form_layout',NULL,0,0,0,0),('618d4131f2132592fedde6a410a52f5a',NULL,'Language','ootb_language','',0,0,0,0),('6b9d900e1fd99dac497a1331fb9eadcc',NULL,'UI List of Columns','ootb_ui_list_columns',NULL,0,0,0,0),('6d50e676e24d5a4dfb07b4aed2293a52',NULL,'Access Control','ootb_security_acl',NULL,0,0,0,0),('6f4111da4d7a8389a69521c352aa3a3e',NULL,'User','ootb_user',NULL,0,0,0,0),('751bae589f1fd8ca01768cc4a5a914ae',NULL,'UI Workspace View','ootb_ui_view',NULL,0,0,0,0),('7c055578108bcd98f761728b4e5389f5',NULL,'Configuration Item','ootb_config_item','',0,0,0,0),('89aaef910b31c721f10140477430545a',NULL,'Domain','ootb_domain','',0,0,0,0),('a06cdc922aedf881b60fad9d254cff3a',NULL,'System Module','ootb_module','',0,0,0,0),('a24189291c881066b00678ab5cddaa0f',NULL,'User Preference','ootb_user_preference',NULL,0,0,0,0),('acae656fbe0fb06faf4cd07860ad5915',NULL,'Group has User','ootb_mtom_group_user',NULL,0,0,0,0),('ba9638da15f6790f7f6b77e3d36bb7a9',NULL,'User has Role','ootb_mtom_user_role',NULL,0,0,0,0),('ba9b0b3a724662163a083b6ca51e37d1',NULL,'Access Control has Role','ootb_mtom_acl_role',NULL,0,0,0,0),('cbac3265b1746b7d2a6740724e2af055',NULL,'Choice Option','ootb_choice_option','',0,0,0,0),('cc6e3f8a3b5a00b42df974f95089b593',NULL,'Table Column Wrapper','ootb_system_column_wrapper','',0,0,0,0),('dc04240089582608864d5c2d62332c7a',NULL,'Group has Role','ootb_mtom_group_role',NULL,0,0,0,0),('ebcc7d4dcb9eeed7185f01f0e879467a',NULL,'System Role','ootb_security_role',NULL,0,0,0,0),('f9eb16096d6515977e6718ccd4aed739',NULL,'Business Rule','ootb_business_rule','',0,0,0,0),('fecce3f7e19b775698aeb3b384f4ffc8',NULL,'Group','ootb_user_group',NULL,0,0,0,0);
/*!40000 ALTER TABLE `ootb_system_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_system_table_column`
--

DROP TABLE IF EXISTS `ootb_system_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_system_table_column` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  `module` varchar(32) DEFAULT NULL,
  `belongs_to` varchar(100) DEFAULT NULL,
  `column_type` varchar(32) DEFAULT NULL,
  `column_display_name` varchar(100) DEFAULT NULL COMMENT 'display name',
  `column_actual_name` varchar(100) DEFAULT NULL COMMENT 'actual name (backend)',
  `length_limit` int(11) DEFAULT NULL COMMENT 'max_length',
  `attributes` varchar(500) DEFAULT NULL COMMENT 'expected as json',
  `comment` varchar(500) DEFAULT NULL COMMENT 'comment',
  `active` tinyint(1) DEFAULT 1,
  `read_only` tinyint(1) DEFAULT 0,
  `mandatory` tinyint(1) DEFAULT 0,
  `represent_for_record` tinyint(1) DEFAULT 0,
  `reference_to` varchar(32) DEFAULT NULL COMMENT 'used for type = reference to a table',
  `system_column` tinyint(1) DEFAULT 0 COMMENT 'the column can''t deleted',
  `can_be_viewed` tinyint(1) DEFAULT NULL,
  `auto_column` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`uuid`),
  KEY `belong_to` (`belongs_to`),
  KEY `column_type` (`column_type`),
  KEY `reference_to` (`reference_to`),
  KEY `ootb_system_table_column_ootb_module_uuid_fk` (`module`),
  CONSTRAINT `ootb_system_table_column_ootb_module_uuid_fk` FOREIGN KEY (`module`) REFERENCES `ootb_module` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_system_table_column`
--

LOCK TABLES `ootb_system_table_column` WRITE;
/*!40000 ALTER TABLE `ootb_system_table_column` DISABLE KEYS */;
INSERT INTO `ootb_system_table_column` VALUES ('026155daaaab91d58ce151ce12a0f203',NULL,'ootb_choice_option','2486eda639ba00c07c7236b21e77e09b','Choice for Column','choice_for_column',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('03b429820370b1d698cdf478d6dcbd27',NULL,'ootb_ui_list_columns','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'List Column',1,0,0,0,NULL,NULL,NULL,0),('05b2cb83709ce686265232ec177ee784',NULL,'ootb_system_table_column_type','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'Column Type',1,0,0,0,NULL,NULL,NULL,0),('07064d9cea51061e24c60f0fecdd23a6',NULL,'ootb_choice_option','2486eda639ba00c07c7236b21e77e09b','Domain','domain',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('0aa37f9aa2c5a4ac3cfc4d600da81f02',NULL,'ootb_ui_form_layout','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'Form layout',1,0,0,0,NULL,NULL,NULL,0),('0bb515dbccdeca09b7f64d32bc5d2e1a',NULL,'ootb_user','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'User',1,0,0,0,NULL,NULL,NULL,0),('0dc026e48237fd5f2b98b5847e9aa546',NULL,'ootb_system_table','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'Table',1,0,0,0,NULL,NULL,NULL,0),('1302eefd5c01c1bb0e0b2685d6d91f26',NULL,'ootb_mtom_group_role','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'Group has role',1,0,0,0,NULL,NULL,NULL,0),('1789cbc7c95373a40735bcd24b62a277',NULL,'ootb_mtom_acl_role','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'ACL has Role',1,0,0,0,NULL,NULL,NULL,0),('281271cb81a996cba417da65e48d7e03',NULL,'ootb_system_column_wrapper','2486eda639ba00c07c7236b21e77e09b','Language','language',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('2f513d44930679dd485f1d5410e3b032',NULL,'ootb_ui_view','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'View',1,0,0,0,NULL,NULL,NULL,0),('30d6fbc6bf6755a94a5d5c5b05d0455d',NULL,'ootb_system_table_column','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'Column',1,0,0,0,NULL,NULL,NULL,0),('33206d97824ed45c1c8ff3ef801e6b92',NULL,'ootb_mtom_user_role','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'User has role',1,0,0,0,NULL,NULL,NULL,0),('39a065d0714de2b0f23ce3a14bbecbe8',NULL,'ootb_system_table_column','2486eda639ba00c07c7236b21e77e09b','Module','module',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('3d49da7b30e16bafc73ad50bcd37ee9c',NULL,'ootb_user_preference','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'User Preference',1,0,0,0,NULL,NULL,NULL,0),('4127c267d48ff55128a50be7242f6781',NULL,'ootb_mtom_group_user','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'Group has user',1,0,0,0,NULL,NULL,NULL,0),('48b8426964e3ca7b4e664f5cda857c07',NULL,'ootb_system_column_wrapper','3f31b27e16efbf0d422e94126fa0bcfd','Help Text','help_text',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('4acafb78e8c4b9afa38e7fe55f76fb2e',NULL,'ootb_choice_option','3f31b27e16efbf0d422e94126fa0bcfd','Actual Name','actual_name',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('4eaf0e910fb9574c6cdcdb6b121b802d',NULL,'ootb_system_table','2486eda639ba00c07c7236b21e77e09b','Module','module',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('5b69b0c8e062f07124df217a37149acc',NULL,'ootb_module','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'System Module',1,0,0,0,NULL,NULL,NULL,0),('61f387265daf9869012ba05e0217e4ab',NULL,'ootb_system_table_column','2486eda639ba00c07c7236b21e77e09b','Domain','domain',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('6973bbca368ae8414248c90586e7d132',NULL,'ootb_system_table','2486eda639ba00c07c7236b21e77e09b','Domain','domain',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('69861cfd9d5cc8ed6781692591180ce0',NULL,'ootb_domain','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'Domain',1,0,0,0,NULL,NULL,NULL,0),('6c1566f62034aa8c2a1a5582c8ae77f1',NULL,'ootb_choice_option','3f31b27e16efbf0d422e94126fa0bcfd','Display Name','display_name',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('6e9236cb5b4f67157449485bddfdf0c4',NULL,'ootb_system_table','3f31b27e16efbf0d422e94126fa0bcfd','Table Display Name','table_display_name',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('6f3ec435a23c4bed7d26902671b11d99',NULL,'ootb_choice_option','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'Choice Option',1,0,0,0,NULL,NULL,NULL,0),('753edcb8309d46e8445d8d7613526c1f',NULL,'ootb_system_table_column','0927058b216a02e12ec485b0d3091e32','Belongs to','belongs_to',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('78e04c6c11db78f7e14a26c695c16e50',NULL,'ootb_system_column_wrapper','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'Wrapper',1,0,0,0,NULL,NULL,NULL,0),('80ef3ee151fb53f264db35286ec815da',NULL,'ootb_system_table','3f31b27e16efbf0d422e94126fa0bcfd','Table Actual Name','table_actual_name',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('83f5e4cda7ba0299220880ad4ebb2480',NULL,'ootb_system_table_column','2486eda639ba00c07c7236b21e77e09b','Column Type','column_type',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('88bea698312cbae3b50353fb436ea647',NULL,'ootb_system_table_column','3f31b27e16efbf0d422e94126fa0bcfd','Column Display Name','column_display_name',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('8b159563c4a76f739fbd1b57a3f01270',NULL,'ootb_user_group','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'Group',1,0,0,0,NULL,NULL,NULL,0),('8cfbcd1d0b70d1ff3d5ecdf31aafa6d9',NULL,'ootb_system_column_wrapper','2486eda639ba00c07c7236b21e77e09b','Module','module',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('8db4dacd197cb25abe6e046573cbca3b',NULL,'ootb_config_item','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'Configuration Item',1,0,0,0,NULL,NULL,NULL,0),('9812df2cf2757c427a296c168869f220',NULL,'ootb_system_table_column_type','84cbc53855c398f8cd7324e03e9fa369','Attributes','attributes',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('9bfeb5278ca4316a6fb84eb281398e94',NULL,'ootb_system_table_column','3f31b27e16efbf0d422e94126fa0bcfd','Column Actual Name','column_actual_name',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('9f080b3bdde7290e0a091820f37bedd4',NULL,'ootb_system_table','0927058b216a02e12ec485b0d3091e32','Inherited From Table','inherited_from_table',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('9fa33ba0a88985f38f66040d09d618c2',NULL,'ootb_system_table','6de0e7cd5bd1d1f67982cec016e448f3','Allow to Inherited','allow_to_inheriting',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('a289c025bb7c796aa6cad1d5554ef2ae',NULL,'ootb_system_table_column_type','093f9f75162eef5e54ad0fb482709b23','Length','length',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('a2ded531eaee1bb9578eb019eea16bef',NULL,'ootb_security_role_contains_role','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'Role contains role',1,0,0,0,NULL,NULL,NULL,0),('a57cfeb795ced3acd5782f30457afcf5',NULL,'ootb_security_role','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'Role',1,0,0,0,NULL,NULL,NULL,0),('a74dd99ceec41e719eefa243c621b8e4',NULL,'ootb_system_column_wrapper','0927058b216a02e12ec485b0d3091e32','Belongs to','belongs_to',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('a8d8ce27ab65d65b139a16617ebf0f80',NULL,'ootb_system_table_column_type','3f31b27e16efbf0d422e94126fa0bcfd','Display Name','display_name',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('ad1b4bffec317d51bbd7c980bf9ca97d',NULL,'ootb_system_table_column','093f9f75162eef5e54ad0fb482709b23','Length Limit','length_limit',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('ae61370c78137bbeb0cc95cf3f5df1da',NULL,'ootb_system_column_wrapper','2486eda639ba00c07c7236b21e77e09b','Wrapper for','wrapper_for',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('b1652602ee6e84f1422013d845d98c19',NULL,'ootb_system_table','6de0e7cd5bd1d1f67982cec016e448f3','Free Table','free_table',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('b17e0a16e5af0ad282fd2f4b140fda79',NULL,'ootb_choice_option','2486eda639ba00c07c7236b21e77e09b','Module','module',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('b2c2a639e4db0a848864ce0f43182bd2',NULL,'ootb_system_table_column','84cbc53855c398f8cd7324e03e9fa369','Attributes','attributes',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('c3e2e749830ab2c9cf7bf0184affcf90',NULL,'ootb_system_table_column','3f31b27e16efbf0d422e94126fa0bcfd','Comment','comment',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('cb5efb3a4cad9db6654e457b62eb4b8c',NULL,'ootb_choice_option','0927058b216a02e12ec485b0d3091e32','Belongs to Table','belongs_to_table',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('d183c9b71df75cbde48e8507af63cdcb',NULL,'ootb_config_item_version','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'Configuration Item Version',1,0,0,0,NULL,NULL,NULL,0),('d208e1fbb11445b0e830a91858810a5d',NULL,'ootb_system_table_column','6de0e7cd5bd1d1f67982cec016e448f3','Active','active',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('d4c311031f1651222e9ad80aa5c32fef',NULL,'ootb_system_table_column','6de0e7cd5bd1d1f67982cec016e448f3','Read-Only','read_only',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('d60911f1a2ba5e2be5e88393a9e7b4c1',NULL,'ootb_system_table_column_type','9a809eb197abe78cbead146584662fd4','Derived From','derived_from',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('d7a887dfc7351174eeea774d7e018ef2',NULL,'ootb_script','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'System script',1,0,0,0,NULL,NULL,NULL,0),('da88bea1df28b756a3215722ae98859c',NULL,'Business Rule','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'Business Rule Definition',1,0,0,0,NULL,NULL,NULL,0),('dae19dfe94eab2355395455aa8790d09',NULL,'ootb_security_acl','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'Access Control',1,0,0,0,NULL,NULL,NULL,0),('db4e443e017dcb9dbcbc6024044fce7d',NULL,'ootb_system_table_column','6de0e7cd5bd1d1f67982cec016e448f3','Mandatory','mandatory',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('dc23ad44cbc80d1466b19c2c2aa432b6',NULL,'ootb_system_column_wrapper','2486eda639ba00c07c7236b21e77e09b','Domain','domain',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('e46301ecc16ad443da05791de177248f',NULL,'ootb_language','a7b5dc4c768cb2e7021c1af50c3c342a','UUID','uuid',NULL,NULL,'Language',1,0,0,0,NULL,NULL,NULL,0),('e95dedf0662da669308043eb8343a65a',NULL,'ootb_system_table_column','6de0e7cd5bd1d1f67982cec016e448f3','Represent for Record','represent_for_record',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('e98a9eb5e0e638400c06ee599885d489',NULL,'ootb_system_column_wrapper','c809ff75076bc9b4e20de5c1a55a8969','URL','url',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('e9b52a996bc896b478165d4fa52c7d21',NULL,'ootb_system_table_column_type','3f31b27e16efbf0d422e94126fa0bcfd','Name','name',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('ebe24f5637678e02cd29006955189143',NULL,'ootb_choice_option','2486eda639ba00c07c7236b21e77e09b','Language','language',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('ecf7e24cc2f33dc24af9b4cd64dfaa17',NULL,'ootb_system_column_wrapper','3f31b27e16efbf0d422e94126fa0bcfd','Display Value','display_name',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('ee40940849000f68e8d70160a56daf89',NULL,'ootb_system_table_column','2486eda639ba00c07c7236b21e77e09b','Reference to','reference_to',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('ef708cf1bb65ccddfd4d0c2f5aa011ed',NULL,'ootb_system_table','6de0e7cd5bd1d1f67982cec016e448f3','Public Table','public_table',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('f1313796a7708eb44aba3d79c2539024',NULL,'ootb_system_table_column','6de0e7cd5bd1d1f67982cec016e448f3','System Column','system_column',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('f586034c8e7520b59bd127f6805a5a06',NULL,'ootb_system_table_column_type','2486eda639ba00c07c7236b21e77e09b','Module','module',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),('f60a2a7d7b3302021b66b96f7ee9a97d',NULL,'ootb_system_table_column','6de0e7cd5bd1d1f67982cec016e448f3','Can be Viewed','can_be_viewed',NULL,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `ootb_system_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_system_table_column_type`
--

DROP TABLE IF EXISTS `ootb_system_table_column_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_system_table_column_type` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  `derived_from` varchar(100) DEFAULT NULL,
  `module` varchar(32) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `attributes` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `ootb_system_table_field_type_ootb_module__fk` (`module`),
  CONSTRAINT `ootb_system_table_field_type_ootb_module__fk` FOREIGN KEY (`module`) REFERENCES `ootb_module` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_system_table_column_type`
--

LOCK TABLES `ootb_system_table_column_type` WRITE;
/*!40000 ALTER TABLE `ootb_system_table_column_type` DISABLE KEYS */;
INSERT INTO `ootb_system_table_column_type` VALUES ('0927058b216a02e12ec485b0d3091e32','varchar','a380652a787c11ec8e12f40f2413746d','table','Table',NULL,NULL),('093f9f75162eef5e54ad0fb482709b23','int','a380652a787c11ec8e12f40f2413746d','int','Integer',NULL,NULL),('2486eda639ba00c07c7236b21e77e09b','uuid','a380652a787c11ec8e12f40f2413746d','reference','Reference',NULL,NULL),('3f31b27e16efbf0d422e94126fa0bcfd','varchar','a380652a787c11ec8e12f40f2413746d','string','String',NULL,NULL),('4174d9180fdc566f8ff9b4d57db52b3f','varchar','a380652a787c11ec8e12f40f2413746d','table_classname','Table Classname',NULL,NULL),('6de0e7cd5bd1d1f67982cec016e448f3','boolean','a380652a787c11ec8e12f40f2413746d','boolean','True or False',NULL,NULL),('78fc3deb0581aae75063124b953a36d9','date','a380652a787c11ec8e12f40f2413746d','date','Date',NULL,NULL),('7fbb7242a076c9a7c4091a0d561ef421','varchar','a380652a787c11ec8e12f40f2413746d','password','Password',NULL,NULL),('84cbc53855c398f8cd7324e03e9fa369','string','a380652a787c11ec8e12f40f2413746d','attributes','Attributes',NULL,NULL),('9a809eb197abe78cbead146584662fd4','varchar','a380652a787c11ec8e12f40f2413746d','dropdown_choice','Dropdown Choice',NULL,NULL),('a5636b9458be80264d8392c502b8327d','int','a380652a787c11ec8e12f40f2413746d','number_count','Number Count',NULL,NULL),('a7b5dc4c768cb2e7021c1af50c3c342a','uuid','a380652a787c11ec8e12f40f2413746d','uuid','UUID',NULL,NULL),('b2c3682cc3b7a6ef831fcc7d00772a5a','varchar','a380652a787c11ec8e12f40f2413746d','list_of_reference','List',NULL,NULL),('c809ff75076bc9b4e20de5c1a55a8969','string','a380652a787c11ec8e12f40f2413746d','url','URL',NULL,NULL),('cc0d3730a4b3325898cf8ac1f98fd1f0','datetime','a380652a787c11ec8e12f40f2413746d','date_time','DateTime',NULL,NULL),('f72ce624c541b17fbaeacf663ef8b562','float','a380652a787c11ec8e12f40f2413746d','float','Decimal',NULL,NULL);
/*!40000 ALTER TABLE `ootb_system_table_column_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_ui_form_layout`
--

DROP TABLE IF EXISTS `ootb_ui_form_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_ui_form_layout` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_ui_form_layout`
--

LOCK TABLES `ootb_ui_form_layout` WRITE;
/*!40000 ALTER TABLE `ootb_ui_form_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_ui_form_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_ui_list_columns`
--

DROP TABLE IF EXISTS `ootb_ui_list_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_ui_list_columns` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_ui_list_columns`
--

LOCK TABLES `ootb_ui_list_columns` WRITE;
/*!40000 ALTER TABLE `ootb_ui_list_columns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_ui_list_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_ui_view`
--

DROP TABLE IF EXISTS `ootb_ui_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_ui_view` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_ui_view`
--

LOCK TABLES `ootb_ui_view` WRITE;
/*!40000 ALTER TABLE `ootb_ui_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_ui_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_user`
--

DROP TABLE IF EXISTS `ootb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_user` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  `record_created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `record_last_updated_on` datetime NOT NULL DEFAULT current_timestamp(),
  `record_created_by` varchar(100) DEFAULT NULL,
  `record_last_updated_by` varchar(100) NOT NULL,
  `record_created_by_user` varchar(32) DEFAULT NULL,
  `record_last_updated_by_user` varchar(32) DEFAULT NULL,
  `domain` varchar(32) DEFAULT NULL,
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `record_created_by_user` (`record_created_by_user`),
  KEY `record_last_updated_by_user` (`record_last_updated_by_user`),
  KEY `domain` (`domain`),
  KEY `module` (`module`),
  CONSTRAINT `ootb_user_ibfk_4` FOREIGN KEY (`module`) REFERENCES `ootb_module` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_user`
--

LOCK TABLES `ootb_user` WRITE;
/*!40000 ALTER TABLE `ootb_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_user_group`
--

DROP TABLE IF EXISTS `ootb_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_user_group` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_user_group`
--

LOCK TABLES `ootb_user_group` WRITE;
/*!40000 ALTER TABLE `ootb_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_user_preference`
--

DROP TABLE IF EXISTS `ootb_user_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_user_preference` (
  `uuid` varchar(32) NOT NULL,
  `preference_name` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `for_user` varchar(32) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `for_user` (`for_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_user_preference`
--

LOCK TABLES `ootb_user_preference` WRITE;
/*!40000 ALTER TABLE `ootb_user_preference` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_user_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ootb_user_session`
--

DROP TABLE IF EXISTS `ootb_user_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ootb_user_session` (
  `uuid` varchar(32) NOT NULL DEFAULT md5(uuid()),
  `user` varchar(32) DEFAULT NULL,
  `session_id` varchar(32) DEFAULT NULL,
  `login_time` datetime DEFAULT current_timestamp(),
  `roles` varchar(4000) DEFAULT NULL,
  `groups` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `ootb_user_session_uuid_uindex` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ootb_user_session`
--

LOCK TABLES `ootb_user_session` WRITE;
/*!40000 ALTER TABLE `ootb_user_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `ootb_user_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-31  9:19:54
