-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: clearpeopledevdb.c4cttcwhvxkm.sa-east-1.rds.amazonaws.com    Database: clearpeopledev
-- ------------------------------------------------------
-- Server version	5.6.37-log

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
-- Current Database: `clearpeopledev`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `clearpeopledev` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `clearpeopledev`;

--
-- Table structure for table `account_type`
--

DROP TABLE IF EXISTS `account_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_type` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_type`
--

LOCK TABLES `account_type` WRITE;
/*!40000 ALTER TABLE `account_type` DISABLE KEYS */;
INSERT INTO `account_type` VALUES (0,'No Informado'),(1,'Cuenta Corriente'),(2,'Cuenta Vista'),(3,'Cuenta Ahorro'),(4,'Chequera Electrónica');
/*!40000 ALTER TABLE `account_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `address` varchar(255) DEFAULT NULL COMMENT 'Texto con la dirección',
  `country` varchar(20) DEFAULT NULL,
  `region` varchar(30) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL COMMENT 'calle',
  `number` varchar(10) DEFAULT NULL COMMENT 'numeración',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=696 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `afp`
--

DROP TABLE IF EXISTS `afp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `afp`
--

LOCK TABLES `afp` WRITE;
/*!40000 ALTER TABLE `afp` DISABLE KEYS */;
INSERT INTO `afp` VALUES (1,'CAPITAL'),(2,'CUPRUM'),(3,'FONASA'),(4,'HABITAT'),(5,'ING CAPITAL'),(6,'JUBILADA'),(7,'MODELO'),(8,'PLAN VITAL'),(9,'JUBILADO'),(10,'PROVIDA'),(11,'SURA'),(12,'NO INFORMADA');
/*!40000 ALTER TABLE `afp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES (1,'Banco de Chile'),(2,'Banco Estado de Chile'),(3,'Banco Internacional'),(4,'Scotiabank Chile'),(5,'Banco de Crédito e Inversiones (BCI)'),(6,'Corpbanca'),(7,'Banco Bice'),(8,'HSBC Bank'),(9,'Banco Santander'),(10,'Banco Itaú'),(11,'The Royal Bank of Scotland (Chile)'),(12,'Banco Security'),(13,'Banco Falabella'),(14,'Deutsche Bank (Chile)'),(15,'Banco Ripley'),(16,'Rabobank Chile'),(17,'Banco Consorcio'),(18,'Banco Penta'),(19,'Banco Paris'),(20,'BBVA – Banco Bilbao Vizcaya Argentaria'),(21,'No Informado');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `isapre`
--

DROP TABLE IF EXISTS `isapre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isapre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isapre`
--

LOCK TABLES `isapre` WRITE;
/*!40000 ALTER TABLE `isapre` DISABLE KEYS */;
INSERT INTO `isapre` VALUES (1,'BANMEDICA'),(2,'COLMENA'),(3,'CONSALUD'),(4,'CRUZ BLANCA'),(5,'CUPRUM'),(6,'FONASA'),(7,'MASVIDA'),(8,'NUEVA MASVIDA'),(9,'OPTIMA'),(10,'PRAIS'),(11,'VIDA TRES'),(12,'NO INFORMADA');
/*!40000 ALTER TABLE `isapre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadata`
--

DROP TABLE IF EXISTS `metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `attachment` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadata`
--

LOCK TABLES `metadata` WRITE;
/*!40000 ALTER TABLE `metadata` DISABLE KEYS */;
INSERT INTO `metadata` VALUES (11,'AlfredoLara GonzalezProfile.pdf','%PDF-1.4\n%����\n1 0 obj\n<<\n/Creator (Apache FOP Version 2.1)\n/Producer (Apache FOP Version 2.1)\n/CreationDate (D:20180702053924Z)\n>>\nendobj\n2 0 obj\n<<\n  /N 3\n  /Length 3 0 R\n  /Filter /FlateDecode\n>>\nstream\nx���wXS\�\�\�sN�`$!l{��@\0���٢�\0 $�@T���\�R)�X�Z�ԉ(�\�\�\rR�Z�\�\�\�D�����\�\�\�\�\�|�\����\����y\0��L�0V@(��#���q�\�\0�`�=\0nn�WXX0�+З\�ȕ;�ѫ�\0R��1{��O�\�l�\0(Lγx�\\���䜙/\�V\�\'\�LK\�P0�R�X~@9k(8u��?�̰��yBOΑr\�\�	y\n\��<)_Έ\"�\�<?_\�\�\�l�)\n\��F+\�s\�9�H\n��\�M����I\�\���\�\0�#�~�\�_��_ Q$\�\�\�.R\�$s�\�\�Ņ\�\�\�g�%f����\�,a6GT�LΟEQԖ!/�����\��\���B�\�ſ)Eog\�E�\�A��?l\�\�\0\0kJ^�-ؒ�\0\�\\�\�\�?l\�{\0P���\���\��&�d�\�\�\�\�\�\��\\EA\��t��\�{6�\�~/Ç�fJ��q�2��bFn6�\�g0�<\��8�\�a�O\��\"yD�|\��Ty�E<�D�%bD����0\�O��k���-\��\\�\�\�~����[��޷`|4Pܼ�љ��,\�\�w�\��\\A\�\�8vD$�+\�ͬ)�%@P4�	�0L\�\0����`� ,\\��@��2�\Z�R�\�\0ՠ4�f\�\n�Np�\��%p\�\0�����`�\�a!2D�4!}\��� 4򅂡(J�R!$��Ak�R���\�f\�[\�(t\Z�\0\rBw�!h�z#0	����)l�`/8����p�.�7Õp|\�O×\��~\nO!\0!\"t\�\0a\",���\"�H\n\"FV %HҀ�\"\�Hr\r�!\�[EE1PL�*\0�\�rP+P�Pը��T/\�\Zj5���&�u\�VhWt :��\�G�+\�M\�v�Y�\r����c\�0Θ\0L&��	�ӆ9�\�c��X�&\�\n\�\r\�r�l1�\n{{{;�}�#\��q8?\\<N�[������]ō\��*x�+>\�\�\�\����n�e�~��J0#�\"	\�ՄJB+\�,\�>\��H4$�É\�*b%��<q���D!Y�ؤ������t�t��L&��=\��d	y3��|����F��d��\�SZ�T�ԡtU\�2^\�D\�Ky��\�\n\�#ʗ�\'T�*�*l�\�\n�\Z��*�T�T������B\�M�T/��Q�S�/�G)�쥜�S��M\�R\�R�g�#4͌HK��Ҿ�\r\�&\�(j�բ\�\n\�jԎ�\�\�ݔHϤ�\�\�o\�ߩ\�{��\�7���_U���\��\�(\�hӸ��N��髙��U�S�J\�R+\\+_k�\�Y�	m���6W�D���]X\�R\'Bg�\�^�~�)]=]\�l\�*\�3�zt=O�t�\�z\'�\����s��\��O\�?a�1���JF/c\�@\� �@jPo0`0mhfe�ư\�����e�b�ݨ\�h\�X\�8\�x�q��]�	\�$\�d�I�\�kS3\�\�����cf\Zf�fK\�Z\�\�=\�s\�̯[`,X�,�X��i�5���`+\'+�\�.�Ak����Ⱥ���\��b\�1[�C6t�`�56�6\�l�m\�m�\��\�~�s�˴k��gO��g�ƾ\��WK�C�\��Y\�Y~�V\�\��|�\�l�\�ݳo;RC\�;�8~prv;�:�;;\'9\�:\�b\�Xa�M��.ho��.\�\\޺:�J\\��\�\�t\�p;\�66\�lN\�awCw�{��l.cn\�\�=se��G�F�<\�&\�Q/�t��^ϼ\�\�\�\�ޯٮ\�\�\�S>���O�π/\�7ʷ\�����_�_�ߤ���R�S耠���u��́��\�-�\�D\nZT�(\�2X\��\�\�r�\�|\��\�P\Z�-�A�YXN\��\����\��\�\"�P$.8�\�U�wdY\�(�(iTO�rtBts�\����Y�m\��\�KqZq���xl|t|S�\�B߅;�$8&\'\�\\d��`х\�Z�3OTN\�$IB\'\�$Hz\�	\�4p���k�\'�l\�N\�S�\'o;o�\�\�/珦��������nKO�H�H��Ղ\�\�\�u\�3B3�e|ʌ\�l\�I£\"�(Cԛ��U�5�m�]�-\�q\�ّ3)7\�B��r�$4�\�T�\�\\�N:�77�&\�M~t��\�QA�e\�\�\�\�%~K�^�Z\�]ڳ\�`\�\�eC˽�ׯ�V$�\�Yi��h\�\�*�U�WVg��a�ݚ�5/\�Ƭ\�.\�-ZU4�\�]K�R���\�z��uP6\�\�X��c	�\�b�]iE\��M\�M�����O�S6�9�\�ނ\�\"\�rs�\�\��\�\�Kʇ��l\�\�\�\�^��\�\�*fW\�\�$\�\�UWvUWm�z_�V}�ƻ��V�vc\�\�]�]Ww{\�n�ӭ+�{�G�\�v�}G�iC\�^\�޼�����f}\�ܤ\�T\��a�h�l\��\�f\�\�\�:\�Z\�i\�����W������\�Z\�Fo+=I=�6\�ۛ���ai�\�\�\�vj{I\�Q\�1ٙ\�)\�\�\Z<:\�hO�[w��6\�\�;fp�\�\���E\'>�\\rr\�T���ө��{{=s�7�w\�l\�\��\��Ν\��\�;y\������^d]\�\�t��߱��\�\��:.;_\�\�r�{p\�\���WO_�v\�z\��K7\�\��u����[�ۼ\�cw2\�<��ww�ު�\��%TT<\�y\��ŏm2\'\��!���G\�\�?�)���#E�ɏ+F�G�\�Ǝ���_y��\�\�\�\�\�\�?��\\�\��\�w�x�\�?;9�\\��ӯ�^h�\��r�˞��������_��\�|��-\�m߻�w�\��\�\�+?X|\�����\'\�O�\�\��\�\nendstream\nendobj\n3 0 obj\n2592\nendobj\n4 0 obj\n[/ICCBased 2 0 R]\nendobj\n5 0 obj\n<<\n  /Type /Metadata\n  /Subtype /XML\n  /Length 6 0 R\n>>\nstream\n<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\">\n<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n<rdf:Description xmlns:dc=\"http://purl.org/dc/elements/1.1/\" rdf:about=\"\">\n<dc:format>application/pdf</dc:format>\n<dc:language>x-unknown</dc:language>\n<dc:date>2018-07-02T05:39:24Z</dc:date>\n</rdf:Description>\n<rdf:Description xmlns:pdf=\"http://ns.adobe.com/pdf/1.3/\" rdf:about=\"\">\n<pdf:Producer>Apache FOP Version 2.1</pdf:Producer>\n<pdf:PDFVersion>1.4</pdf:PDFVersion>\n</rdf:Description>\n<rdf:Description xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" rdf:about=\"\">\n<xmp:CreatorTool>Apache FOP Version 2.1</xmp:CreatorTool>\n<xmp:MetadataDate>2018-07-02T05:39:24Z</xmp:MetadataDate>\n<xmp:CreateDate>2018-07-02T05:39:24Z</xmp:CreateDate>\n</rdf:Description>\n</rdf:RDF>\n</x:xmpmeta>\n<?xpacket end=\"r\"?>\n\n\nendstream\nendobj\n6 0 obj\n854\nendobj\n7 0 obj\n[8 0 R 9 0 R 10 0 R 11 0 R 12 0 R 12 0 R 12 0 R 12 0 R 12 0 R 12 0 R 12 0 R 13 0 R 14 0 R 15 0 R 16 0 R 17 0 R 18 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 20 0 R 21 0 R]\nendobj\n22 0 obj\n<< /Length 23 0 R /Filter /FlateDecode >>\nstream\nx�\�Y\�n\�6}߯\�T\��*�k�[�@�\Z�[�� i�R�5Т�_�����(z���q\�J\�r\�rF�z�N��\�\�ɍ���rz\�k\�)��KO{E/�_Ow?u��w\�\�?̝xx8M��4=�\�`:)�\�_�\0p=�\��3�{~\�>\���\�:\\����\�\�����\�	\�Mx\��g\\�\�g/�\�O�\�\�\�ݙk�v�\n\�\�؃\�(����$�`\�8\�fX>�\�kzy~�\��\��=и\�-�\�b9�5�\�\nY�&\�M:9�W�N:��qM\�=\�\�a\���sr��	��c4\�\�h\�#�\'�f�ua= �0e��zm��\����\"_|��s�1��\���U�\�Ϳ�ֽ�q͌S�q�_�20�N\r<B`^4%m�%�ǡ\���KQ�%��!*@[\�5��@��\� T�>A5\n�\�H��\�3�F�\�\�.�Y@\����}ƽ)�ٽp;^?\�\��*a]/%X]\�.�$\�\�\��8�~,�b\�&>\�WI ���\�\�QV���&�Zn M���\�\na4\�\�=�&S� �\�\�W\�k3����̖\�\�W\\�{�I��\��\�!��~I�g��� .\�W0]\�j[��\�Ƽ\�\�\�!K�H�\�?�5�l>7g�-Է\��i�\�C�/\"e@.\��]��%����*B\�&�\�\0V)�.Q� v�;\��Y)�4\���ȗT\0\�#\n�fڀ�^(\�kй&t�\�\�<V$��l<{�j�E6/�S\�։��f\��\�Ⱥs#��\�&vVW)\�Z\�Y80����a�\�\�3�\�3��e�i�[\r¡��m?�\�\r\�kx�I\�,J3���B+RoJ{��r]`b�\�\�S�Y�>�V�\�}\n�騈�M7\Z�u#rNR���\�@\�a�ݔ\n�Y�#� $zR�\�uQ\����~���9\�!�rK1ڑ��D(K֣�ID�\�.)\�^���t�D\�ɥ���\�msڄ�\r�\�\�\�\���R�\�\�\�\�{\�	; _�/�}3��f\�+i���ƛ���d\�J���\�L\��\�\�f6*ARJ�\�8�r�|��S^�gb����o3~m����\�\re]�kg�P]�v�\�\��S)�`�\�3\�\��DT�o\�tʹ\� �q\�\�֣�g$B�\�-�\�Zy�x���ذ{\�,�c\�\���͡H�j˪i迈\�b�\�g���q!�{/C\���\��\��\�\�\0�\�U\�Ԯ�\�-r�J*\���N\�h\�Y=�\�\"5��/�AZ�Ɲ�\�-��\�9ș5�\nM\�^>5��ݹ���L\"�\�{{��\"\�%\��\�\r~�\��zG��:J�c�\�͠�q34���u%6P%\�W�[s�6Q\Z��sU\��̴�v[�\��X\�h\�K�����g���\�\�\Z\',T����>^��\��A�2/xbR�\�TrJ\�\��3�\�Rg�+~i�\�ݹ����\r;�[\�\�XբoR\�H\�ʯ�7G\��\'j�\��jFR���A�\�m�jɁ�|0��\�!K\�R�JH��5\�\�\�ʚ��b<Z�^l\�X�\�ǖy��\�g�x\��\�<a���6\�\�,�\�24ֵ�\�\'\\.\�\�\��^\�K�%b�\�\Z,)�6\�s2J\�\rUI-�\�$Y8�\�\�*\�\�a\�ۥd�����n\�*�7�X�\�]K\�\�S\�׆y�.��~im=b4��i\� ��ʅ�zV͵(~�uf�q6\�j\�\��\�f�<Q\���\�d\�\�bIn�`z�\�\�wO��\�ϫ�M�)�)\�\�`�\�zG���}O�� �\nendstream\nendobj\n23 0 obj\n1610\nendobj\n24 0 obj\n<<\n  /Resources 25 0 R\n  /Type /Page\n  /MediaBox [0 0 612 792]\n  /CropBox [0 0 612 792]\n  /BleedBox [0 0 612 792]\n  /TrimBox [0 0 612 792]\n  /Parent 26 0 R\n  /StructParents 0\n  /Tabs /S\n  /Contents 22 0 R\n>>\nendobj\n27 0 obj\n[19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 28 0 R 29 0 R 30 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 20 0 R 21 0 R]\nendobj\n32 0 obj\n<< /Length 33 0 R /Filter /FlateDecode >>\nstream\nx�\�Yێ\�6}\�W���HI���\0I�\0-�@��b�b�O\�v���+ɤE_\�D�v�\�L\�ؖ\�\�!I\�׃\�T��.�\0ݯ__\�\�Х�x\�u\�:�\�\�ӏ\���Ӈ\��C�^^\�\�r8��n\�v\Z��\�E�VG�ҏ�\�Qk�c\\���9^M7\��\�\���*/t\�����\�\Z�\�{^\��_\�{�5^E\�xzN�LS\�\�}�\��B���\�\�Yv�Hzi[t�\�c�-5\�7\�Z���e=�\r�#�|�A\�\�\�\�\��|\r�\�9^^>vo?�o�뇋\�O?���?�\��e��p4\�7EzZ҅�\�>X\��\�\��\�\�\�\�F�8\�Lr��0~\�D6��ʉ\�E<u�u�\��ޏ>�9\�>�䛤W\�ؐ�\n�u�\�\Z\�D {অ�\�]ē�\�n5\�Y\�`�]�xF�=?�)8�-(\n�q\�|-�9���\�\Z�\�M5R^3\"2�K�<���\�\�Z��<Ey��Ռ�5c\�\�z5\'�;�F�z�Y�2�D#@�kʡs)�S��B�\�{����^)В\�\���&,43\�x�B\�V*yʨ5��1��\"�8t�\��M��d+\�N\�쀞�\�E\�YڻH�\�=�j��Ggr��\��+޿�,\�\����[UrCw������\\y������QU\�\Z��(���a$�\�Ié>�U\r\Z*2j��L��x4\�/��Ć҈\�\�6k\�u*O�Q\�`\�\�V�h�Wh\��X0\�k�~\�$w%3\r\�|t\�w\n�\�0\�$&n�q�a\�XН���[\�\�bM_:�t\rn\"Rh=�g/�q(�	\�\�\Z3�ީ\�쫇Ɨ�W�;u+�,�c}\���<\�E��\�ƾ~K���\�8�\�6b��\\\�$/��}0\�0g+ut)*~��ߋ��j]��K\�йM{\��\�q\��!W\�\�B�\�P�\�\�\�\�X����c�\�\�r�y��\��q֞Ub!\�5�y�%��\����6��gO91�y}\�\�\�gC�5hVhf���\�iaɝ�}bE\�	\�\�J��A\�:e#2M�T}��mʡ\�mH�VH�v\�z(��ߕ�EU��\��:��*\r�\�\�gUi\r=�Ukn\�\��s��NC\�ba#�\�I>Q<��:\�\\\��\r}�5��\�c4\�֭#s�9�å䒑ݓx���Zժa���v\�DR�*�a��a;\�\�ߣCC-vz;\�\�@\�8z�����V8�\�\�a���V\\�.�j\���\�m\��^fW#\�YI��\�P\"u\�����N��\�d�\�!\�h�|�\�N\��\�W\�PpL�E(�Pv?��\�#fQ+\��yo���7pf\�\��:���3\�@q\��jf�U���w�\��ц��\�4�M�;��\�?��T���}!,6E9���\ra\�x���\0?Df�\nendstream\nendobj\n33 0 obj\n1252\nendobj\n34 0 obj\n<<\n  /Resources 25 0 R\n  /Type /Page\n  /MediaBox [0 0 612 792]\n  /CropBox [0 0 612 792]\n  /BleedBox [0 0 612 792]\n  /TrimBox [0 0 612 792]\n  /Parent 26 0 R\n  /StructParents 1\n  /Tabs /S\n  /Contents 32 0 R\n>>\nendobj\n35 0 obj\n[31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 36 0 R 37 0 R 38 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 20 0 R 21 0 R]\nendobj\n40 0 obj\n<< /Length 41 0 R /Filter /FlateDecode >>\nstream\nx��Zێ\�6}\�W�����m`0@\�L�X����\�>��t\�Т�_I&%ʖk\�\�6�c\�yH�Ҽ�d\'ܿo�W?B�\�\�\�\�\�NY����R�)κ�\���C����a�\�ډ��\�t�O\�\�\�\�&M\'�{�5- \�y�?9�Gg)��Vn\�[�\�\�]��\�n���\�\�gr#��\�=s\�\��v\�\�g\��h��i\�g�<}\�^�?=���?\�\\Vy\\V%����\�\"�d\�^X֗��v���\�\�\�Ѓ�C�\�e��A,\�Y�\�\���[/c\���-oi��\\r*\�;\��!a\�O87\�vqW\�����/\�K�+�uf�\��7��^/0��J�p=.s,�>ۙC��u��\�w\�}|�q|]\�\'ؓ�!\� Z�xB)\�\Z�.[��\0>ws\�9�\r~��\�\�.�ac\�&�ݼ\ZG>J���r��\�;s�/\�5\�\�!\�\�ֳx�Ѧ\�b�ϛ\\⛺M\n(\ZR�\�\�\0�Ņ�����U2lPz�\�\��s��+�VW\�6(��\�\�$\�G៏E�W((mY�2+�\�h=�\�\�b\���\�bi�̛֌�\�\�LJs�H\"ό�>P.�:�S\�r+\�É\�&R�\�,\���k\�V\�]8�>\�i��\�\\K��D\�_!�.\�@$]�-.�%Zt\\�\�K\�\�\�3n9\�g\�1��׏D�\�}���u`J�|\'�B)0���\rE��\�<����F��\�\�}b\�p\�X<Z�\�ǩ}�qV\�\�,J�Y\�Nv\�ĈB\'S�H\�~�FOP�X<�\�\0rz��!E.��\" ^FO�B�{)h\���bC�r\�Z\�k/�\���e/TeCQFoVԌ�$�\�5aNɤ�!�=��+TZ=õ\�+@��\�9\�2frʤ\��jE�lO\�yb\��Z�����0�+\�O�\��UA\�b=�k\�v}��̅�>\�#�fE�Ŗ+W6E\Z�\�kXV?�p�Y\rw�N�D��j\�\�=\�>\�8��x}	pL�T\�V�\�P�;\�+[��N\�f勼¥ؠ�\�7+�����I](}\�/i]��K9B�,�\�{F$N)y\r�\�i\\\�D�e\�U�`C�D�����M(dV\���S��l5a��\�\�\"��\�L�����1$\��2\�\�)!\�{���\���U��l\�!��\�w�H\�@!�!/�\���7����\�|	=�\�s}��0&#\�]E\�\��1\�eH\�\�<A�k��\�?bI\�*]ϑw��̊z[\�\�*@}=�{&\rP�{MH�<A?�Z��\�;���P\��\n�\��KH��(\�\�\\\�e��\'lb\�^\�\�\'��{�W�w:��V�w��̬g+\��\�wal\�;шj	-ƪ�v\�6}G��e�\�\�\�\�\�nmI\r~̭��c�pi�&cw�,J8\�\�Uk\�\�3k\�J\'ZfY.[�b��N�O�Bu_�f��j\�3\�҆0t��ľ��\\\���}���_\�mN�!�&펔��bd\�]a\�\���*qC_�Ֆ\�\�!�\�LՕZ9L�+`ٹ~�\�&_.V��\�Ћ\�\�ۨ\'�+\��J\r��\n\�&,�tX\�V]���5�P�x4/\�J\���>�b80JU��\Z\�@\�{¦���\�R�����\�\�jc�6m9�#�!g��\�\�\Z�r\\\�o\��rhM v\"ρȬ�N�8\��o\�.��`uҵyo\�\�T��\�\��\�%�!���~|\��й\"\�\��\���\�\�\�\�Z�/t\�\�3ӆ\�be9\�\�0i#\�\�P%5�|�k֐���d\�]\'V{\��ATcR5\�&k\�١t�>��\�\'\�MG\�va�I$نUjǏ;k�i\�����\�U}Q\���8ݷ�O��2?w���$:\�\�X3�c�\��\����xzY�\�Jo�?\\ɏl\�&m�8#���q�\�\�lFOu\�g}(�wA\�\�B/����/i�M�^-\�*���@\�\�b:/@����#\�\nendstream\nendobj\n41 0 obj\n1759\nendobj\n42 0 obj\n<<\n  /Resources 25 0 R\n  /Type /Page\n  /MediaBox [0 0 612 792]\n  /CropBox [0 0 612 792]\n  /BleedBox [0 0 612 792]\n  /TrimBox [0 0 612 792]\n  /Parent 26 0 R\n  /StructParents 2\n  /Tabs /S\n  /Contents 40 0 R\n>>\nendobj\n43 0 obj\n[44 0 R 45 0 R 46 0 R 47 0 R 48 0 R 20 0 R 21 0 R]\nendobj\n49 0 obj\n<< /Length 50 0 R /Filter /FlateDecode >>\nstream\nx��T\�j\�0}�W�\�H�-�҇$\�ؠ����>\���2\n��ɍ�\�\�J�ʖ,K:G\�A�~n��\��^�\r�v�e\�����\�x��E��\�\Z	˥��ZT�(\�h%:پ��V\�b�d\�^>-\0��\0Yc\�\�5+t�X�\�N��bՊզ��Ա^�V��*h^(�&\�\�}�h6��O��de�K\�)���f�b��u^��ν\�\��\�6��2>�2fD,k���\��cS�Dw6��(\�I�\�	\��;���\�j\�i\�2\�e\�\�QcҾ[Gf�N\�\��C\�\n��IU\�t{\�\�\����s���Y\'�N�\�\�d>�b{�L\�\�ȟ�\�u^}�hL�3�,��O;�\�G\�G �\�YFN\�5\���|\�ٷ\�\�S�c\��� �\��\�\�R\��%��\�4$=\�\�\�-�ߟ_�}.w!�6\�Dɘ�������~�\nendstream\nendobj\n50 0 obj\n416\nendobj\n51 0 obj\n<<\n  /Resources 25 0 R\n  /Type /Page\n  /MediaBox [0 0 612 792]\n  /CropBox [0 0 612 792]\n  /BleedBox [0 0 612 792]\n  /TrimBox [0 0 612 792]\n  /Parent 26 0 R\n  /StructParents 3\n  /Tabs /S\n  /Contents 49 0 R\n>>\nendobj\n52 0 obj\n<< /URI (https://www.linkedin.com/in/alfredo-lara-gonzalez-197ba958)\n/S /URI >>\nendobj\n53 0 obj\n<< /Type /Annot\n/Subtype /Link\n/Rect [ 36.0 587.794 183.984 599.038 ]\n/C [ 0 0 0 ]\n/Border [ 0 0 0 ]\n/A 52 0 R\n/H /I\n/StructParent 5\n\n>>\nendobj\n54 0 obj\n[55 0 R 56 0 R 57 0 R 58 0 R 59 0 R 60 0 R 61 0 R]\nendobj\n62 0 obj\n<< /Length 63 0 R /Filter /FlateDecode >>\nstream\nx���[���\��W�s��x�\0�\0�.A���~�Ē�\�2b\�\�\�;l\�,\�\�+�\�wx�dU�\�T{>/v5��{�/W���\�}̮>\�?�\�?7h6�~\\^�e}��\�����f5�^-o^/�\�l\\�Y?�4n`�f�\�\�\��\�/�\��	\Z\��d>����|�\��б�>��\�o��\�\�\�}�\�\��ß����߿��\�?H\�\�f�\��\�*ݻ�S\�7�v�&wi\���u},\�s�\�\�ӠI\��ˌ\�П����\�3�[!�\�ϴ�/2\�a-�_d�\�ڞ��g�4���-&�\�\�j-\�^mx9�gN�yC�O�\��]��CK�sz\��ӷ����6\Z��a�\�G�����[M\��\�\�\Z\���������w?����_u�]G\�R�/~o֒7����R4��G�\�3]\�x��\�l�\�\�?��\�!Ҍ�-F\�\�c�\�n1�XHA�i\�ff͹j�%��\�jj�V[��`2T=R�Ze\�\�ם\�IXqD�q[N�}k�OQb�\�\���m*.�x떪f�upNˤ\���]mSs�n�&;M�A\�\�M��\� ����[|\�	����\�/�\�TDp�����j��r����Ԏ(H\�ZD�|qf�Q�y!\�\��nߨV�Oz�\n�H\0�xC�:\�\�\�%l�w�Y\�[�\�C>-�N	M\"��:Lm\�a0\�R���\�Z ˷\�f2>/L\�p\�-�\n�b=��\�\�\�s\\�\�k\r/[\nN�D�`��?\�4|Zb\�\�\�;G$\���Scp����I�Egq+ `\�QUQ�G�h\�4~�i��?�ݷ8RN[�A�G�~Y��<\")l\�\�b:\"~�Y�iP^���s�[q<�\�la3��3b��8OK\�`\�<�Ƽ�0��􌷤�-i\�XC#�(�\�\�M�i�����s\�8.��Usk���#Yh�.��y�f�X\\\"\�\�\\\�6��L�ˆt@Bٲ)HPD��+�y\��e�H�\']B�.-o<��n���G3F9~��Bz���Ia�PQ�Ƭu�\���\\/\�9��\�?$U,�y:~\�b�\�q�\�O7}�۽\��{\"\�:�\�b}\��刜\'\�p\�\�rw \"�9\0[S�2��b7�\�\'��RT\�g�Ah�e�F동�\�&\�<�h{J\�ĭ(\�HyV�\�bhS@.N�U�%i8\�wt-���1i\��\���9\�6���\�yOy#fwͼ6l�NNecU��ժрܽ�\n�\r�\��n\�}���C;/�� \��pD�Q%�Ոj���Q��V\�\�	�D\�Z6\�slQ)E\�Dd�\�\�1��+�\���q�AK@\�Ph;(��;K{\�q��VI~Вi\n\�4\�q�ov4\\O\�\�<\'\�\�\�Y�y\�(s�Yd�J\�͕p\�\�8����\�Z�\�\�\Z0����\�]��c]\�q�l�Ռ`�{��uB��ɀD!̣$q1s-��C\�(o�\�\�\�|c�Ӣ�H({\�^�B��\�\�\�\�9	..�\Zq�S��J	U���e�\�\�T�\���\�9V\�!;�9\�%W�K\�:�d��2�\� \�J��0R�6\�)x�(\�]V\Z\�	�|35\���G\�mK�9򜧨�\�\�\�\'��B+\�\�9\0�8��W��z|.\��De\�Zh�\\I>P\Zp\��\�ܕ\r\�\�\�N�����p�B�\�|\��-�\��2,�6&\r!\�S�\�vj�2]\�=��*�U8\�Ѩ�J+N��(\�RFu+���T0���g A�y>T�\�d7!{H$�\�ʄvñ\np\�\�XL�\�e��-4F��93\����Ч���*t���ϑ�\n\�e\n��$Ol|mxp�\�_�1\�**��)ͮ��\�\�*\�^���\�i#�7\�d{la�`��\�3#[����*;Uy�qБ���\0�f���ԀD�X\�{16{�\n��Z�\"\��`�\\�\�-\��\�If%�9h\�ko�q�\�\�\���\���,Q��\�b\�c��j�S\\-\�4\�\"�\�\�<�dg�b�\�p\�\�ۧ�����\\%�04R��\�I\�V�x�!j\�j\��w�9\�@m�\�8\�g��u1���-\���^Z\�]z�*=�y�\��Mx(9Uż\�\�Km6\�U\���$ r?�\'�o��9��}\�\�.2p\Z\'w��\��2�\�Ҟ�\�\�)T�dHL��=��9�K.�s[k��.Qa���\�-s���\Z\�}:\�\rp\�8~zƔ:߶��\�V�� \�\�\�*��r{�3��9�\�\�AKj���rTQN�{�~�ti\��\�|�Wm\�9���o\�*���BϞܫ\"�-�~�u2\�$\�O�<,F�J�\�\�\�(NsJ\�\�#�\�U����P\�N�zt]!3m�j\�q\"���=�+��\��zR�n��\�\n�#\�\�\r�,Q)�\Z��\�\�H\�x�\�	����t0�)\�\��v�\�\�q�6��f\'\�΁C\�)�\�N	�%\��D�`D\�3\"ryB�[\�.�P���T=�qU�Xo�\�M\�t\�}��^N\�+\�bu��:��#Z\'\�:\���\���]�ӥx:z\���k���0O[��\��*�\"��.\�y��n��{-�kl\r��ld3�\�m���n�Qd�+��\���OER\�Ż�R�jI\�q\�3��yp��:B\�\��}:�<R\��~��`�ڍw�7AN+\��EܡeɦmT/G�5���\�\��i�!\ny\�ۅ3\�7\�o4�����\�A�::׬\�mH\n�\n]\�v�jh�Lg\�\�o\�\��z*�e\�ҮO\�\�&�\�QD\�\n�\�Em\���^]t_\���o��Q(�3B0����\�+�b�Z\�I��9=�9�Q�Mn\�tێ��\�s=\�x@Z�P,*-�1�݊k�\�\�\�\0\�&vj\�rq�9�\��P�\\��8\�y��.\�E\�ɯ�.��vѢ�\�\�\Z\�w+_Ug��\r\�[f:\�4\��\�\�\�\�\�KYH�ş�\�?�oo\��\r�;���j�\�m\r\�^�+\'<쯙\�\�-�\��)\\~�\�_�_^˷W(�ٖm\�L����\�+\r����{<*4���ټ^�\']�A��^\�Y1ח\��\�G���_�~z��~c/�߇\��ᙽ|:h�~�/\�	φ\nendstream\nendobj\n63 0 obj\n2843\nendobj\n64 0 obj\n[\n53 0 R\n]\nendobj\n65 0 obj\n<<\n  /Resources 25 0 R\n  /Type /Page\n  /MediaBox [0 0 612 792]\n  /CropBox [0 0 612 792]\n  /BleedBox [0 0 612 792]\n  /TrimBox [0 0 612 792]\n  /Parent 26 0 R\n  /StructParents 4\n  /Tabs /S\n  /Annots 64 0 R\n  /Contents 62 0 R\n>>\nendobj\n66 0 obj\n<<\n  /Type /FontDescriptor\n  /FontName /EAAAAA+ArialUnicodeMS\n  /FontBBox [-1011 -329 2260 1078]\n  /Flags 33\n  /CapHeight 715\n  /Ascent 1078\n  /Descent -329\n  /ItalicAngle 0\n  /StemV 0\n  /MissingWidth 500\n  /FontFile2 67 0 R\n  /CIDSet 68 0 R\n>>\nendobj\n67 0 obj\n<<\n  /Length1 36660\n  /Length 69 0 R\n  /Filter /FlateDecode\n>>\nstream\nx���	xTE�8~N\�\�z߷t�n��@�@Y0J˖��	�!I\�B\�21,n�DGE�e0Jd\�Qds�]�q�QDgd�\���t~�nwB`�\�\�{�\�ߗ��nݪ��\�9u��\0���C�\�q\�9�>�ݫ\0\�\�\�-^�|l\�ʿF��̘W=\�s�X��3�g/�\�}\��\�\0�\��n����~\"\�/�\�Em�j��y�q��\�w���pɯ\�\�r\�\�ctvݴJ0>y=���\�ͩ\\2\�\�\�>��o�~hn圪y/��\�\�\���\�,lσ\03�\�\�ͯ���\�[+\�~9u�\�?�\0\�C�����xI�\�\�c5�D�\�4X؋\���^,��i�����J ������K\�S�\�~}���\�QVص��@Z\0׷o��\�pZa<Jg�+�#pw��-\0���n�\�t�	v\�\�6Q\�\r\�{\�\�8\�\�:����U��\�QWc��\�c,�\�-�\Z�\��\Z���\�\�l,\�\Z��5Q����:\�R�\�(շ\�N5����M�\"T/xKL�Fz\�\����8�=��\�\�\�`2[�\�s�\Z{~f�\�\\v-\��&ρ\0k�\�6p+�y��\�?�)\�\��t�\�:�\�\�\��C��\��$�\�~䴿\�\�\�]t\�!\n\�?H\�JXɷ�2���h{��}�kפ��\�qw�\�\�B�N�Fŭlo�16�\��,�E�wwLg`��\�\n�\�6�\�x\�X/�ҭt��a$w�.�@/�ש<�\��ut�#�>#m��t)��t>A��3\�0�BSa\�A\�v\�o��I��.A�{\�i��\�\�U�\�\�ҿ?\�\'p�c�9��l�\�Q\\Mؘ���<\��`���\��\�,x�\�;6�K\��\��w�<8\�x�8i.�\��wA�	\�\�\�RG\�ˡQ_\�7��(A+=�\'a&�o\�\�\�./�����CR�\�\\!�\�\�:r�\�|\�\�?\�0��o�\�\��,\�\�g\Z\�\�\�Qg5\�S�({�y�\"\�\�z�~\r7POۥ\���k\���\"UgNj�Q|\�K\�Y5\�gL��/�m�7e�\��R2|\r���������1O�~�^��py/<|��\�u垀gh6��K�-�\��\Z0��z��q\�h\�\���\���.\���p�%\�FЌ��\��4⫮#{\�e#;�\�	���\�1�+\��e�j{��{�^i���\�%�\�Ǡ��a,\�\�V:�\�!�B�t�t\���訃2�\�(\Z\�z\�M���Tr\��\�\\\\\"~ө\�L�U\�\�sAHm�\�~�I���B:�E��f�Z�\�5�Bz�(��\�HGqw5I\�6j9�f\�4��n%o�fX�D�;)�%��\Z\��\0���f\�e�\�p����%~\�\�\�]\�V��T�KH��Lz�/\��h�[\�\�/�(\�Gm�/\'�\�BjA��d�7\����\�[rA��\��j�\�z)h�����Wh\�\�w@L�\n\"D�|z���\�i^mk{r�vz��⹍�g\0A�ni�rf\� �ȿ!\�\�~�`=XA��\�\�?!��̔/Í�r\0��\�5\�\r\�\�*\��g	�e0T�P��\��~2�c�\�*\�\0\�\�����^g��~��y���$~A1����2쇱���\�Nl�\��\��JVB\��\�T*,�\�(ӈna�\�0�\�\�\�HVG�ge\��ޢY�X\\�\�ě�^��$\�L\�\�N����Z���t��]Fo���6\�\�Q��\�d\�\�j]m��\�$�0�\�ב~�����2N���\'L��n�x$I�5�j)7�\�[o�4a�������\�\��>\�|�\0w�\�\�\�K���H��Dn��\�\��@�������қDO�+�p��\��@�-�[��r�ˋ\�px{㳄\���$�\�>��\�u+\�K/�{+�\�:\�QD�*\�P\�o��\�$;�\�a)#��$N~��};\�\'���Oc{��hl\�rCO�c��L�\�8�\�j\Z\�M\�z��\��/\�����?\�Ю��2m3i\\�\�J\�\��/�>aq.&	1(��a]p�����8\�˒\�I�\�\�\�\�\�m��\�\�hQM�&A\�y4�$��Q\��z�9\�K~V\�\0v��dT<��&\�Q@}߅\n\��!��t���@o�ٯ\�\�ثJ.�lPaA~\���9��e�\�\�;�W\�̌\�\�#\�¡�Ԕ\�`R�\��z\�.�\�n�Z\�&�ASY\��7�[�Cˆ\�l	�\�2\"2,b���\�\�\�\�-\��#�Pn�\�>�Z-rV�F��ǔ=	т�-J\�\�U�i\�\��\�\�\�xt04�EJ����\�[2ǖ�#����\�\'R����e\�p���ӿ�\��Y�\�bC\�\�`�\�S&Rk�_\n�\n\�\�<��%�\�v\�\�K�a�N0s�\�5�\��\��\�a-\�~F��<�ҷ�O�Z2�;\��� �\�ߵ��=�	\�_ �}Vp	�>32|z-\�s����6�\�ph}h�\�2G.eu�G��Uٓ&\�\�\�\�*#�^\0O\ZMTb\�ż\'q\��g؈პd�YyN\�p�f�D7L�Lda���\�?imᖮ���u\�\\�\\�eh�\Z\"T\��l�\r�\'{����V;L��e��^y}Y��\nOO^3�%yԘITD��4�&$�=L?	҅�ׄ\�ӽ�;�Αa�\��O���\"��D�\�3\�в���\']��8�Z��Z�\r_��\��ڐ�]��)Բ��\��4,\�\�~}����:>s� Iv\'\�t^�j�N�\�\�P˪�3\�WyK��\�\�[F�&\�}��\�0�\�\�Sf\n�gV�a�Z��J\�-�Ј[C\�gI4$އ	\�zR\��\���/��S��_\�6n	d��\�\� VN\'\�\� Ӄ���\�B�ghKt�~��:\r\�\�\�aE�\n�D3�dʰ�\�q�S\�5�I\�	�=�\�-\�,{�={�O\�Qcˆ\�oaC\�.?\�����1�\�\�:\�\�\�8\Z5.2\�Wq.�\�8M�����T5Q_\���?x��#\"#��_?\"\Z�~\��\�\��US#!{d���F��7|JH��H\�6[F\�2�\�>����+(3\"TS��#\�`\�1�\���81ňى\�\�[o���2�(\n�F�\�J!\�b/3���PFS`�ή���\�8\�<(&	��>�v\\7Ĉ	^\�W�R\�$\�gCk�\�M˪_�\�\�C05��\�YD�)\�\�O<ēUO:�O����\��\�ܕ�\�;\"\�Pa��z]\�Noya<��� Ai\�\�2d�r�3f�\�*j�e\�\rNH@��GBoFZ\�Y-�в�ECvI6\�\�D��C\�oF^F!?�mo���r y�u\�+���\rC\�\�OIp�\�NGd\�)&O��a\��<��\��\��\�4|�c���\�\�;���\��)p1c\\��񝹱e+�7L\�\�i2K�yd���%�y	Y;�\�e*W�(-&\��-���^0�ud��\����e�`��y����(\�Y\�-�D�����n�~\"�<��!\0���\��\�y�,�nd�v��\�>J\�E�(-�� @w�-�<\�!J�Ό�I�k/2Fzѻ���\�M\�]��\�o_��\�9�~\0�\�x�?+�J}r�\0x����1�v�qҏ\�V�A�\0.\�(�\�����{e\r����VQ�~�*�n&��*\�\r�K0jRQB��A\��\�q�ٹǳ��\�v�\�tB���*~WX%�a����\����^°̲�ِ}�?���?�\���v¹\\&��\�\�Md@UA�lE��P5c\nh\�`\�d5���ff\�U�}�����\�&\�d5 �\�-|IZ-+nYVV��;��\r5\�f�U��$c�J�q5��G\�\�Q`W	dI�	�\�h9SEU��G\����`���0M�+ǔ��dgV��ʠ�L4�LC��\�\��/�bryy}y�?�2�\�\��\�\�s!��\�^4�\�Y�]4�<it\�\nI�gYW\�\�կg��[^Q��\����T{QQ�~ �Ê�\�\�P��0�`���Ȉ(*�\�>|�\���ܷ\�\�\�7YN\�ގ\�ǆ\�\�ݏ��}׍��\��\�	�BQ\�\�\�(�\\ӨIXŲ�H�&�>�1\��\�\��\�\�H7��;\�I\\�\�2X�\�\�,\�\�v\�fv�i�����\�����vSc���\�Ts��\�\�l\�i��l��4\���3EG\�E��\���ӻ�ڊ�!6\�B�G�����������\\��9lE0o��\�߷m[\�\�\�\�/\�o̟3}ù|\�cn�%\����\��s�VM�K�R�T\"\�F���uȪ\�gb4�\�H\�֨UP7L˳\�\r6\�I78�j��k�L�\�G��!����@/8Bc�\"G\�5���\��\�\����\Z��ٷ]�n\����#㩇\�ޑҷ�fƴ��\"����ѺWl�C\�@L��fF\rKd,���*���\�	I2�\�\�lB\�w��\�ެ\"�I�M.�\'\�S\�\�\'�X@��F�yг�*�YEf �0\\c��@-K�\�\�\�@@O.?l?S�\�r��3_T\�>C�)?#�\�P.�PQ^A\�N%\�\���\�@nN*�}\�FQ�ȹS��7Wߒ�L�o��W\�(�Yx\�\�gL{g�\�n�S-\�\��\�؃\�_�`\��\���\���\��\�\�Uv�TE\�\'#\��#\�\���礇a/\'�s��\�\�񴊬�D\�\���$�ĸ\��\�f����~\�\�\n|�\�@���I�6n�m6ٙc�\�B��D�H�%e$\�Lڟ$[�\�6!i�M�\Z��ub挽\�C:v�\�g\nſr		�������S820�\�؝�9�\\�69\�\�\�l\�NE��.��\�K�_~|\��iҾؐ\�\�\�\�\�G�oچD\�^��\�>�\���f����\�,\��`vtT��\�\�`\�e\�\Z\�\'wn�y�\�*�a�UV{\Z<g=��Z�m�\�\'g��pT9jܶ�{\��^\���.#\�IM�\��D<0��>\�p؁�Bg\��AxY\�	\�^\�\�\�IL}g붧\Z׵\�.�}�Ŏ\�\�Јa��\�\�_8�\��W_9.d\ri)�\�,C8jg\\\�D\�F�VbT�Y��\�Ż��뉎\\GX\�>7\� {G>�����ka\�B�\�\�裓z!?��\�%\�e\�m� \�2}eb\rF,0�ˌ�\�cFٯd*J�R�\�ls\0y~rq�\�\�\�S�}\�\�\\�1,10M��$\n�w%�^�q_VF\�/#�#��XwY[�Ǭ+�\"Z��w�ks���\�N�ȭ|H7\\\�\ZӼ�����\�׃ةOZ\r\�݅�r�\�\'T�\�~��Bg*�l��(?C�]�ę��\�\�`:a*\�u\�\�A�\�c\������?�/�.C\�\�TLA��T$�\�P)�\\�驷w�\�\�]�/7���\�M���o\��\�ޞ�÷\�j\�V7����v��\�c\���WCKz_�\��\���m7~�q3n�2;\�U\�\�l?-?M\�>EH�|c��UK\rc�Z�Ɗ���\�\�+�q\�\�9�/iS~JuJC\nOIa�LK���\�b\�h�|��KL\�R7�YH�\�\�6�`\��\�h\��2\�\�:�*\�\�¡\�ѵ���C	�\�]N9\nu�$X�.�C\�\�잛#��t�;�S\�\�\�w�i!?�[l\�شG𪿟Ŭ�{��X\�l\�5�\�_��a����\�7�������س��\�\�56��	��\rd�|C�胛�\�{��\�$j\�_\��\�\�\�\�\\v{\�\�n\�U7jq�QH�\�H�v�p�I\�촛m`\"\�c16���>j\0]\�7	mC\�T9g\�F,d2\rP<���qƅif11��\�::;0�\�E5cn/\���T�s\��\�\�~\��\�\r\�\�vS۳R�ݥ�EK\�.c\�IcyOJ,�\�9��k\�nf�Ij:��ٞ\�H3\�1���g\�\�f\�Ƭ�\�\�rfP\�`\���	fu�u\�	�׉0\�\�D�B<�L���YYYMZ_�h:�8$f�@T\"D*��\�\��{\�Ƴ\�\r\�c\��\�m/:�J�r�f#Wջ�M񌶛��$\r�!�LG��4v\'�B-3Y�\'\�S\�\�>fb� \�\�\�X�	-	�%�X\�\�R+�	\�*3\�ɚQ[��\�NII^BM�SPJO�\�x��\�W\�\�\�Xj�6r^�K8cZ�1Y�w�̄�H�7u��ݨ�}\�w��\�]\�V�\�v�6\�])Z�Q����\�IoZ�7\�\�o���:\�\�u��\�O����\�\�Z^.��\�&k߬&����a\�O��@]�Ҽ�\�\�q{F���I`w\'a�OI2\�\�q���?�\��\�;\�\�^�7�Z~\��\�\�o\�B�߿Ǟ\�|˭�fU��\��\�\�\�~F�G��\�ݼ`\�\�Y\�m��\�;�_\"\�߱y+\�~�yR?b	�����Zj2Kf�\�\�u\�\�\\�\�BhR,�Fͤ*\�~���\�\�+:\�Vd�����7�\�xyy[�0�\�I\��Ł\�\�s\�;�\�\'Z>\���x�͚}����f�d�q�\�iP�۰�mӘ�����)��\�X=\�jD\�ѧ��\�\�*�ج\��g�l�^n��	���1��u\�\�.�ͪ)\�Z�\�m6[\r�LfS�\�\�6\Z\r\�\�T�}�Q1mV7\�����X�k	\���W���ѕ\�b�\�Xf�1/1s\�7˷\�,��,��fd.��&�ӭ��(%/c\'�D�p��	��j\\\�eҌ~Ra5\�]F\�h�0\�hЌ\\Kf�\�fvI��xr.Z�H\�w1��|��l�-\�<�/υ�EEE��	��P)���u��ҜL�ʇ�\�\�hZq��\�΃\��\�V�pRJ\�\�w庼�\\��ll\�va��γ�8\���gn/R�H\�|\�V<��{CJ?\�z;{�\�\�/\�x�\\�\�\�i��	>x�D-S\�\��ף=r\n�X�ZM��,?\�\"c)23\�sKX��:�WN�!��(�lzS��LR�&\�H3�!�D�W�X\�@�J:\��*y+%\�Z��zR�\�h\�\�#>\�x��\�l-�j\�W����\�~��ly}��Y{�#W�l\�q�Y����~��W��:�PGO^����\�\�\�y�\�+̒=\�G�)�m\�\�+��\��6b5R:\�;$Û\�;d��IFfLNJfb���v=\�b�5��6�%�+�\�\�\�\�i��\�o\�4p�}4��\\ $o��~���Y�f\�\0\�}��\�j3:6G5�%�-�\"Os���\���3\�\�8�\�\�I�!\�FK4U�e)��N�\�C��H\Z)����X(�e��t\�A7,\�\�[\�q;\�5rz�m�ѵVً�U���]\������m\�\��?�|\�\����~{럱�\�k\��[~nݹO\�z㥷�z\��k俖�,g�>H�^0\0\�E�~C\��\\6�U\�<.\�k�ߎ\���{�\�\�Ǜ�\�\�d4Y�����\�\����RRS�S{�L\�޽�de\r\�\\bfVR6Oтi\�2M�}\�me�R{5�	\�\�\�\�\"\�ZCv}C*�]�\�ҙ��\�\�/\�o���>\��1��\'aS&%\�\�`ِƐ֭�7\�M\�2���ۚ}\"5����\�Ik�ZF�3\�\�[�����Y���e��k\�/g��(W�\��w\�\�\��?��+to\�Dz\�HNܻ+\�u\�\�Y�\�\�\r]�z�>�\���\�jE�C\�\�\�s��C�3v��<]\�MVr��I� �{=nE%�է�^�;\�n��ǍW9c\�ջ|�v\��ո�\�\��\��h\�H�C��sڞ�=z\�\�a3�pi\�\�\�\�6/�գs\�|\�aTv4}4��\�kn>����{Kb-c�e��|;u�\�\�W�O*�n\�u\�c�\�4�F\�\��\��J�L4F�\�\��S��\�?N�ϴ\�`\�VYY\�f\�)ɘt<��j�\�@�yU\'�uR\�IY\�D��u\�\�\�\�e��\�\�K\�He\�\��/��EXqJi\nc?$\�\�6\�I�\�>{\�fK\�\�p�@R�ʍ�n7m��\�\����\�\�A/b[Z�����dP\�k\�\�^d,�t��oq\�a=#&\�\�\�\\,Ox�.&\�\����\�\'�	r�\�>\�-\\�} \��\���\';��\'\�\���\�}\�>a\\:R\�y\�\�O>�X\�\�]�\�\��~�\�\��t����\�\�\�\�~\�\����Xм�\�\��\'��ͧ\�zQ\�\�|�I�̨GV8��\n�\����Q\�:�PE\".ك�G��u �Q��I\�/�FR��|���h�N\�v6˴`\�\� �\�\� ?�:\��!�n䮵$-[\'��D\�Z�\0�\�k̇bh\0\�ȿ3p�G\�+q�P�AsKR��$\�\���\�\�I�n��\�+GEXb\�9�NH7F7\"x\"7Dc/~\Z\�ۏk�\��\�\��\��\��\�O(����,|\�\�?�%�+�\�?�\�瞭�\�䛼{��c��}�0f\�G�5I\�\�p�\rop�\r�\�^>Z6���FF�ɳ	�ə��fG+��P,��樦�|J�g��\�\�uBq<\0��!dJ\�\�c�\�]\�\�\�$�<\�\n�hX\��Y\�5\�=8.�K\�غ�q)N��ful�| i\�f��C\�nh.k\n�\�i:��\�Dqo\�\�Z\�	O#fWԟ!\n\�e\�?~\\�ǂ\�X��=\0Q|,\�^p9�\�\�\�\�\��\�Җ>�}\��\��\�\�\�yq�9\�\� ?\�̥d4��Q�r(���(\�\�\�~;��\�ވk{m\�\�@\�[�Md��JM�\r\�\�\��Y&c%w&#\� \�O��\�\�`�3�\�LiJ\r�SSCK.Æ�\�п����G�KY5Yl�E�g�a���!ɝz\�\�${J�\r\�\�\��\�\�\��o�\�\��5�`��}��\�<^CJĘ�J*Ӹ�J&}��ٹ\�\�Yu4bA\" Re�3�5��\�8�Gc3߰\��\�zP\�쟜y��.\�*�r\�у\�\"Y�\�\�@\�~hp\�`\�|�ñ\�\��B�[ay\\b׺��k\�X\�E!0�i��{\�v\'\��\�\�r��ߗ�\�]Γt�\'*�s�\�\�8u\�B\�U?�@��\����\��\�#6\�;�\�O�\�6>x\�[x�\�\�\�G�l\n��>�*6-�Vlc�������\�Mj��橛��r����\�\��kt\��b\�\�NŮٵ�g��w�\�\�6zVr(�5�	=85f�m�m�-\�v\�J\�9�\�\�\�\�G\Z\��\��d��\�oG-�\�\�`�\�\�X\0C�\�_E\r.�p<!��\�A�����n¢4\�`\��ms��9����\�2Ҹ��\�=6�	�)\"�\�\n\�)���n@l�S)\�F�\�\�u�2��\"�\"\�M�\��ev/\�\�\�\�v\�\�^ݝkb��\\\�G�\�\�\�\�\�/\�0Ċ��,\�M�S�\�F�@A\�q\�#q\�\��!t	\\{}��V2��Ǖ\�ܺ�r\�\�\���f����\�\�~�\�?��Ww\�h\�\�����\�ö���//?�gamL�i]�&��hi��\��\�Gͼل��V:)}%I��Vc\Z\��f:\��;\�f�=\�A\�f\�\�L*Hbq��[4�\�\�l,����\Z%�l�eAe\�\�bxr<vM�\�\�\�Bb	�D�3_8�\�\�p�����\�#?\��\�\�?-\��upwp\�\�\��\�ca�\�^}�~㿫}88k��/z���F\�D�:E��G��r�lM�2w�L��\"rM\�\"\�Tt3\�o0\�v�32Z�\�6\�\�z�]�`n4D}\"\�\�Cx\rD{H�\�#�E\�B�H�:H\\C\�����s\�\�\�~\'\��N\�s��\�_;c߾���~\�vg۾[o��\�OX>�&�\�[�߇���M�\�l\'X�a+�](|*\�\�ɜ)v�6u\�QI>\�N�\�\�r9�>K�\�H��\�n�M��\\��\�Zc%V�:\r���drf\�6̰\���IKHAM \�SC�\�\Z\�ѓ]\�\n\'Af�HnX	�V�$5��ą���(����!\�H�	Ƕ�^wf\�\\\�\�\��`u�E fr�υ3V^Q��Z\�ʢ^�\�\�9�u\�7�\�n�Y��Ӻ��M\�r\�Z��\�\n		��\�\�#b�z*�\�l\�Y\��ml&\�{o\�7\�9 g�\�~�9��@\�\�\�ѽ\�\�}v?j�{��\�vU�ja-[)�\n�\�JZ܅\�\�s��8����8Єͦ����tT\�cJN��&&��d�\�t�*�UU����\�v\�\�X�M |�MB\�\�e\�\nlT��\�Q,V�T2YI�1,#Ƿ�U�C�0�I*s�8h�\�d�\rN�\�V��\�\�\�L��\rņ&C�\�\�AU\r������٨Z��\�%�pfu��>\�\�V\�HGn�	�\�\�\\]\r.\�\��qܞ\���\�bފ_}=I��\�\�7��i+\�V)6iw\�z��\��`.N&�\�_J�����\�\�{O���#��\�B(#\��\�Bs\0�=HxBPe<+#\�\"�\0��8ڃ\�\�\�9\�\�cN6�l��f\�Z\nj)�QkJKq����|\�\�\�f�ݐ\��\�4\\i\�d�\�x\����Q��jR��1-E�O\�\�|sw�\�&C\���os\�\�\�\��pf� ,����X\�n0\�YDp\'L*\"MK1J�04fd$���].�1\�I\�.3\�\�\�\'\�\�I�\�\�VN&!��n\�QN>��;�9�\�\�t�+$\��� �%�\�b_\�\��\�|\��\�U�w\�,�\�\�+�\'�[��\�A�[���ݽϿ\�a\�JKG���5�a\�m{,X7wZq�A)\�y[g5>����vx��d��\�\�T�\�\�c\0��	���tT= k f\r�\��ا�\r��&D��\�\�\�2\�b5�Pڣq�Xj \����D�\�\��B\�jp\�I��$ٕbm�\�J2s�dű4�\�]\�\'ŭZ���\'���/L\�\�\�\���\��ʛ��\���n}�볉�\��k��$<\0s8��\�Q\�O\�\���\0��1_�� D��تS�\�x\�\�|��p$�/\�W\�\�>G�#\���D�\�\�ج�,\�x\�\�\�\�\�\�喬L�1�\�G^\�\�Z������V(\�\�\�~�\�#\�\�%\�\�!%\�`U�L?p�\�ؙ\�?\�H���e\�Cw�\��4�ݷ\�\��6��\��7\�ھ?w�\��?|��\�?r{\ra�}{l�\�Y�	E\�P�g\�T�%\�\�\��j _\��\�9�\�Mޜ\�|~O�kE�\"]n��d\�\�\�\��ƕYܽK^��xD$�۠\�\�\�6/pn�^s�4�>\�#}UT\�#��F�\�yK�\�F&�\r<�%ur\�\�\�\��\�\�ŵS���\�R��ݳtZ���ib�a�\�1w�&\��\�\"�;�E�|\�%�L\����yZߩ�My�¹S%o�[%r\�@暁�B��N�k�\�\�\�w\�\�ӱ\�K�4i�l��{ټ[���~\��.��꾽5��\�y�\\�\��\�a\n�N\�\�\�3̘!�,�\�\�/�7�w�Y��Sa\�\�;�ke$8}~K�\r��t��96Gɦan1\�\�]�\�KB����\�\�*����^^q\�0���k�\�]\�TE=10)Ir\\\"A^\�\�}Rͣ�b?|�\�+U�C�!+\�߾z�#\�\�\�\�Z������\�\�u�>�׷_Zw�\\\�\���Ӳ�\�>�.Zp҅\�daK�c\Z�M�\�[哲d���c�*g\�\�\�d�g%�W���\�o�\�\�a���32�\�\�med��NS\�\na�ɑ���|\�\�yi{<�\�c�x�ͬ\�զ%Ͽ���9��7�k�\���\�����`A4\"пӱ\�!X5y�J|u[��\n��\�L\�\�!�\�\�- o�\�\r\�$\Z�\r�ƨG��29\�\��\�E\�\�\�ar��\�\�]\�G�Xf\��\�\��~߾U/T?{5����\�9\��,	�\�6�\�}��U�_\�&�:\�˰I��\�\�\�O\�ĸq:5I�@6WbT�cX����\�8D�#77;[_\�\�9�o\n{\��$}�\�3R��\��s\�q�L�c\�\�1;�\�J���l\\3��51��Ȓ��\�f�E�\�&n0��$+�UP�t+\n\Z��7IF�$\r23K`2��M�\�\�4S�L�R�L,�dr\�Ѫ*�0oK�2��H�VB����\Z��̞�r(\rȟ��/�\�QQ\�\�.���<� �\Z?1c@�G\�1�w�ľ�}�!6ƶ~�\'7J\'bq{\�z\�\�\������UX@D��\"�`?FPh�}�_\��^�\�\��\��b��b�9mgF�ٖW\�8��\�\����\Z�7J\�l\�\�Exʋ\r\�f\�N/g�7\�{\�˭\Z?\�Y\nr�7�g\��3G^Ʒ�\�R�&/\�\�:�\Z��g�5�!a-\�\�d�r�.\�BB;�\\n?sH\�1�eº��^�\�&\'+HAqO6n\�E\�\�E\�\�\�=q@^~G|�\�|w=�\�dE\rK\�sf\��]�t;>\�@~�\�?^����\0�\��\����۸�.\�\���Gn�}�\�\�\�L+\�>§��\��\�M�p$��m8\�[\�eC�Ӝ�\�t���bb�\\BB	CD�w�FW\r]\�9\�<\�,��o�w��tco[�\�j��\�\�\�*r]\�v)H6i3 W�X\��|#j$��\�P��\�.\�:\�^�Fl9�\�.�;����OlO����.vvy|ɮC;�\�\�\�\�q\�}\�p;��?9{:9�\�ƻ�\\3m\�Cn�_ls\�\Zc��op.��\0p�\'\�+b���]|6��\�J\�h�2\�\�2�F^\"��y�*4�6Ԑ��Vj�$I�\�Uc3\�D9��\�.��T\�Ty��\�8�\��\�\�\�*UQv\�\�尯\�/�_�HZ�j\�\�\��wN%��\�;�-\�\�\����)�r+\�!\�\�LAI�@�נHN�Z��U9\�\'s�X���\�|,���|+\�\�П\�&P���@l�ΐ�Se\�\�b\� ��Dݙa93i:\�ɳ\�wp^lm\�\ZK�2��,ڋX�<\��\�𾓱Cɭ*>k\�\�O\��3m#b�`{\�n\�\�\0�]�H\��\�eh5�4|e�\�Z�\�8\�\���Q~�K�M�͛�&�\��;˜\��T\�T�l�<U%�q�P��\n�u,\�u\�\�ų��:B|\"\�\�\�X\��\�+y<ގ?7��ĚQ�\�bk۾=���4\�;#�v\�\�\�k�`m\�=\Z{6V�\�?�s��۫\�^�\�]�\�г��f�\�/g\�$$TIe���\�\�\�̳qU-V�՝\�	U���qwYW�z�V+Q�-Oq�\�\�W���3n69?Y��jB�]\�&�ߩq��<|x7�;{\�\�A|/�\�?���\�;\'/������:ݾ\�\�h���p\�G���|�Z�-�T�VX��{\'���ͨ+g@\�$�L7+�\����0\�S��4\�p\�@_2�\�[~w \�NN;0�I\�W��\���ܷ��i\���3�\�l�Gs�@v\"p:@�	�̐\�\���K�� -3��P;oJ^йN�A Y�י���r�b:/��r\�gVʊ�\�\�L\�/Oė�\�\�\�q\�k�zD*\�˳t)�ձ\�L��\�&����%�nj���0����h�}�\��\��\�g}w\�]�\�\�u�/�vv���\�_k;��\�o�jݰ\�\�{nu�\�vb�\�Ʋ)�;��\'F{\�D\�4\"n%�[ln\�0s���	N\�\�#�g*�[T	�I`h�f\� e�y��\�\"}kr��p%�\�Nq\��ڝ��F�\�ٔ\�;�e\�\�=Kcc\�\�$�\�k��b%�\�RȲ\���X�7;��k�/=�G\n�ٗNvg�e\�u>	�\��B7\������\�\�\�֠dޒ�+��j\�XP\�\�\�Yғ�\�\�Ո/R\�����%)\�\�+�5�8k��d�����4������mt�\�>��B\�7r\�eIX\Z\�b�f�\�\���#�FU\�c񈴝�s\�@Z��P\�!q׍2I\�N5���ɚ�\�uG\�<w�u,�N\���B\�\�t\�Y{�Ӣ�\�{,[{���uʊ��X$&���>t�:DH|��\�\��u#��1L\\8�%�[J�\�ѱ�ftYX\�Ӕ�\�}�\���6��\�g���oT�\�PU}�����>q\�\��@Y\�\�\�\�^\��W\Zv\��>{\�\�衫+����\�sV���Y�\��7�|\\\��\�{\�:�	���Ocl\�%�MTd�2M&aǩ\�\n�\�\����F34��x���z⾏\�\�\�\�s\�\�./y\�L�$\�@;�\��t\�\�\�3���5\�\�5\��?\�/�S\rIyi5\�FG3\�:�j*\�臛4����F	��R�[\�&���\�E�uG\����q�Hi��S\�ɶk�esl\�\�\Z\�2�%:)�t}\�5u`�)-��\'�XF��+\�ڊt���{��\�\�q��\�|x��=�=��K�(���8�\�\�\0�]&_\�)w�\�\�c�.\�\�я�\�e5k2��(\�,\�jx�\�F�\� 8ʈ\�d2\"\�\�`r�4#7�6hn�A[ˑ�%KX�BJL#�\�Ǜ9\�M1�0��b4p	\�v5\�\�O6R�C��a3;\���%���	@`-k�4#���\����1՘o\�o<j�PD�~0r^-v�2;����ԚE\�+\�Y\�\�\�LTy�@\�#�!��r�\��]���\�7��%���wb󅈈J+\�i�G+\�\���\����\��d2o\�t\�9a�ǶC\�O\�<\�>@�m+;�uL\"��\'I\�\�Bjm!N^����<\Z�#y\�dj6�6�5Ilyy��/$�&��\�!��M��A�C&m2�\�&ͩ��\�gɰ4X�,\��y ��T�y�yn\�,~K����%m�Wj\�t^Ǻk�6��4�\0�Gnb\'o�;��v\�S�Gr8Eh��:$�����>ח�Ḝ�֯[�\�Kmo�h���-�WLm�Q}��؇8\�Ж߉=\�ͽ�[�\��J��W�My\�\�<�f���o^ܠ�\��~\�9t@�m��ur�-�6|\�Y�\�i�OlĿ�t����N��jS�W\r�&#w��\�\����3α��m\�q�\�ט\�\��\Z\r6��\"̲��#y\0�\0�/w��\�O�73�AXܠ\ZK���\�Ɲ:w�0�kk7SfGV\�Q8�A5A\'_V�\�Ko\�\�7\n~,�Йqf\��몴^�\�Kk$�;�/�\�B\r\�O۹\�ÑF$\����c�ܷ�kl&K[\Z�$8�\�5�\�\�~Z������awt\�Q/s\�1;�\"Ր�u�\�I\�WN\��,sn<&>�:a>mf��\�R3g\�GT\\e\\���dc��|[�\�l+�\��Ӟ�\�K�-U�\�\�ܳB|�P\����8:L����\� X��>q!{8�\�M���J��1\\�\"\��\�p\0��-��{)v#�y��c�\��(�z\�wb�c�\��U\�n\�\�Z|����W��;\�;,$$���\n�h\�\�\�\���#\�&6a3\��x�b��HlZd\��*[,x\�K(B*�텬0V�w\�~�\�KDc��	\�F��\��6�w�Z5�U\�@Y�\�et��\�\�hX*_%G-df\�-�(�&s���t&)l\�x�\�{��\�\�b��jmcR\����V�B�\�\�\�ʸ�K@P\r�MZT�5+&��G#�_��\�;�]ņza�r#�0��YX�\�6�\�\�\�/�=mא�\��&\�v��#q�\"xY�&�\r!Np!/�a�q	_+�\�\�\�;\�6G�s)-��\Zb�\�qS��C!&V\�KS��H\"\�Y\�;\�ȥ\"$q򜙄ݜi�;7\�ݢNO^����\�M�m��M��$\�-v��-������\�%\��en.�<*M\"-a	\�i\�$7�k\�p8	��ªY1i�%\�\�\�\�V!<gw\��g\�\�⏣0���>=LB��(?sD���������\�j���\��0�_\�⳯8�g�tJ\�֎����<�z\��:�\�\�\�\��\�\�;Ǝǖ\�rJ�\�\�\�c\�<�\�\'�ľB�\'sJ++�����\\�k|G\�H|��\�\�\�\�\'&��\0M^F�\��\��\�2��ޖK�K#=\�&N1�\�N\�iE�ny\�\�6[\�l�ަ�nEQ7)){\�ͪb�އ�\�U�;���\r\�j�S��__j\�_�\�\���s����/1�(kI\�+S�����\�S\�3LL�GB&�\��j\�@�\�ć(��\�kkd�\�u$v�+\�ɱq�����\�\�\��B\n�\n>\�ƒ\�\�$d��QH�RVGfp�g{�\�\0\�,\�K\\��U\�\�6�۸n�\�{���c��!�ċ\r�&\�en53��\�	Y�n�J�?uc<�\�σX\�\�f;�cF�~U�V\�\'q��\�\'��R\�>a\�\�\�t�ﱪ�{��K���A¦C�IqS\�8@layaoV�\�\��B�{zF^8\�Gp����i�f�L\��L\'\�{\�B\�\�\�\�\�97�@\�%jG&��g�\ZW\'�����U}��\�\�ѕw\�7\�\�9\�f�\���/.�\�\r\�\�\����\�\�wb\'\�\����}���?�#�o\�zS\�㏰\�\�~|\�-2\n�v\\�Z���{샶�c�\�v\��\�\�|=�i!^�Bڢ���d&2-ɟ\�����J��ϋd\�y:�j�=�pt�6�Q�)�\nVy�y�\�\�^�~����j�\�ꤊ�;\�P ݿĎ���\�do�K\Z+��zIɰ2su����\�+T;\�T{�=\�^l�`\�\�\�V\Z�aC�\�b#bA|\�\�\�?)\�\�||g_�X{\�+��P��͒�\�\�&\'`@\�h\�\�K�\�׷�)�\�\�ø%F��\����3UO�\� [׸o\�Uo��i���qۍ�\�\�\�돓\�Om[*\�6g\��;^	JW��;����~�\�N��t/�G\�Zy~`g��/�l>l�3l�6\�2�bV����D6��\�\�t\�R���\��b]\�\��%�lrz\�WW��T\�=\'�\��*\�\�\�\�p8��t�f��{��K\�D;\�\�P�\�Q�\��aꋴ�0�!\�\�\�\\�͌Z�y��u<���q�!ڛ/gY�e|\�s\�O\�v\�\�(� \����x��\�Z[!b:&wn\�\�Y>\����ɋL��\�\���𢹶vC\�\�W��\�޾\�\�\'X5`��d|Ͱ�s\�9�E�k\��^恤w����\�@`\�O�Z��\�~k^ը9K֯\n������$\�\0P���\��\�!\�V\�+%\�!��\��,�`�\\�oF\�\'�\r�ɫ]x��d\�e��m\�d����d3��K#�[�ߴB\"G��QG�-��\�\��$�wE��j\��bc5��h�?��\0Pg�6�ٌ\�ؘ�}�`\'ٿ\n@�ɘ���9}��tn�#~�Ѓ�%���Gnn<V�Ќ+.�\�ˊCp^V\�d��V������\�\�\�\�w9�]AjCl��\�U\�;v(��\�_����\�C\�7o^�<�O�}6BZ3�\�\�_���|\�s�����\�`\�\���݂f�@%�\�\�]�U}T=�rCߏ|\�\�ZI�-{ME$\�\�ß5�l�g\Zn0�7l5<j����#\r�27\Z�g�ŷ1�\���\�oc�\�.z��,FU%�->w��r*\�\�RߺT\�ϯ�?>̺����.��;rI\��#m\�\�\�Ya)�/\�*\�N\�\�\�\� ��\��\�:}u;\�\�\�m\��\Z=\�\�\�:��t��\'+�C����\"��-ab\Z�\��Ϟb�9\�\�g>\�x��r\�N\rq��\�\�H��i�\�\�i�k�6���@\�\\\�_,���v�t�m\�WfGD�\�7_�2K�e����j\��8\�\�ar\�C\�1\��\�\0y���+�͹�}�\��љ�\n\�o\�\�\�q1�\�\��c�^�U\�k_�dܕ\����\��x��L�[8y�\�M|\�rȠ\�[\�\\�o�_ɣ���h23)��[�\�N��)Q���a�+\�\r�(�\�\�1cѪ\�ʲ�\�x\r\�G�\�~\�0�{��\�\��N񃟧\�W\��:�u[�ӣm\��P\Z\�-�vڭ\�\�9]g��9\��$\�\��ƈ\�\�\��Ga�|]{�\�:��\��\Zi��4�R	����Q\na&]7H\0=\�\�\�z������\�\�\�:B�C\�5t?\�yZK�ʣ\�H�D�Mt\r\��}tL\���8��ã\�\�\�Ce\�J�C�^���E\��Ajgp\��`�w�)}Ni*\�\�N\��)�a�k<?��\�NmZ\�8���)m��M4�)�/ѿh/\�M�h���\0&��B�\�\�\�\�\�T� ]�c�2\�$I&�\�س�)\�	\�i?6�\�\�$�	���gy*��\�sH�7y�K�z�k\"��}�c\"�\�4�.�o�f���8�i\�{��,�z^\�\��\�yU/I\�kz�=/��L�\�y��\�3��i�<��>���ԑ�\�N\�H\�\�%�*a+y\r2���fH�\�\�T�ț�@�ț\�z�!��ȯ\�pZ\�\Z\�o���\�xMb,��\�ys�r�ț~\��v1��\�]�w�=z\�ݥ�G�c\�\��\�.\��m��\�u�\���.uҺ\�\��\'\��>z^ǡ\�f�K�\�.\�\��\�j�k\�\�P5=4�raehZݼ��k�k�2���/,\�\�ӯ_�\����\�躹u�Ϋ\n\r��?�n~\�\�ں�}CWΞ\�[,ͯZP5q\�t*�_[9{W�vA�2�p~\���9��g�\�f�\�~B\r5�\�jBs*���VQGյV\�\'�j熦U\�_XIי�\�\�.�^;M\�_\�WEh\�\�\�iuө\�qc��ͮ�qqhȢ\�\�\�C�����j���}�\�\��F�Q7wah\���鋦\��.\ZB\�犡U\�\�\Z��\0\r�]W5g��\�ޡ�UT\ZR�\�S�\�!zW�\�TR��ujU�J*�ϮZ\�;TZ9{v崪PI]\�Ш\�9\�\�ʹ\�\�\�\Z��j1�X�paՂ:j9��nN\�\�\�\�i�\�V\�\�\�@̇9P	�)7���`&̅�)�6\�u.L��|�η�\'�s����\��\�0jɊd�n���\�#\�V!�\�u0�RKQ��JC�	C�\']\�\�}]GS�ƅTo�^2T�<�\\��,j��\'!��`�M\��=.\�\�\�ZE\�\�:}����\�n��\�\�	�\�N�zs�1͢�:���(\rԢ�FYCy\�\�R�N\�[����.\�\�c�Vo5M/�\�τE:���譣�4���*�\�q:=\�8��VS�\��X��\�!Buk鹀�?��t�͂\�1������.}]ؓ\�\�J�/F1W/��o1tm�Nb�q��\�esaݏչ/��k��\�G�\0zS\������Z�~\�輨�\�G\�u*�V�\��b��/\Z]�\�]�4M\�A\r\�K5�\�\�\�w3�1��\��\���\�\�.\�yÂ�\�X:x\�b*\\4��1^L�\Z���\�\���A����q�\�1\��\��\�\�\�P\��k�~\�J��>\�\���\�GS�cJ�g�^w��\�y�t��@m\'\�\�s����O�>\':\�\�\��\�X^D\�t�\�x�.C\�3fi\n�gJ`;;A\�\��\�[\�\�1�J\�c\�y�΢\��\�\�]J=,\�X\�lq����$��\��9z�8Ԃg_��J³\�Eȣ*O}��ػ�\�\���\�@��?\�X\�\�\�\�ש\�Q]\�<�ט�\�V\�\�,ޓ�q43�\�\�M/\�-΁��\�N��\���5.�Ͽc\���8$st�;ZU&\����(N\�ٝ#\���\�mq\�MS;\�H������\�\\�\"qLM\�\�\Z��\�$\�D�y��*\�+ q�\�{\\6-\�\���&��ӿ�+/��w��\\�\�\���a�/X\�J\��ō��詞ʫt�ء\�z\�P�V&0$z[�\�ˆ��\�\���\�ױS��\��.\��?K\��\�\�4�\�:�^�^\��*��\�ig������g�\��:��/����%�ֆ�\�\���d�N���?_�LP���\���ωK�T��4J*�.�s\�=�yu�\�S���P�k���\����%�K�\�\��\�\��\Z0G �Yi/��!��{��\�h+6F\�i�\�O?���\�}�N˖{�\�ꖭ\\\�/�v[�<�\�\�T���Ns\�\�iv�f\����[1�n\�s%��r֪Y-��7fᬹ+\�\']{e���.�\�B�>��-%�\� J�A?߫ �|\0p���=\�\�`\�F�(�p��g\�iF-��j\���5�׼Q�i�ԯ\nӪ����>)��{\�\�@x)%�L�gJ��[a�V%�\�\�*̻���L��Z\�Rb`�{���\r)tM�kJYJlPz\�J���\n�~Բ��	+�\�\�\�\��*%E)P{XV�U	\�1\�\n�S�����Q�{xV�U�\�q��<_�\�{��\�\�#e��\�@�\�\�|��$����\�WH\r|{SB�\�]�E\�e�Uv*n\�e]we@q\�]�����Y�*6\�NמJ/%��Q�+\�4U�)�\0���=\�@\�N�\�1���5�M��_�\�ω\�/�)zC�U>�\�,�\��)V�\����\�\�\�\�_赾���\��bO�~�WzE�L�FW����b]\�u����\�\�\�5[i��g{#�\�Wh�2U�+���k叡���&#�������	�![�P>+�$�7X\�\�\�\���\�\��=r֡+]�>x��^�6\�.?(���)�\�QR\��\�u-\�UUgz?�7�	�$77o$!�\0�{�@4E\"\�4i��\Z���\�\�\�*% \�\n�\0BH�Qn\�A{c\�c)�]�]\�\�tjg�5\�\�\�jk\�|{\�\�kf5+\���\�g?����~�s_!9\��f�~+Q 5�G\�$��T\��/n#\�\�T%#r��Y��\�\�}.�2*�\�>�	Ǔ}NZ�j\��7Ӭ�?�\�#��\�\�ʽPX��$��V`-�I?B:uJ\�v<ip\�$�>��\n\��W+�\�z\�u�MSs ��\�e�\�\�.\�\�I\�L���r\�~yP����|L\�\�d?r��O\�g��#�	y��LM\�-N�aJ+YnA\�\�t�(��L\�-��s��\�y7�X\�<\nHR,�A\�$���\�$�\�\�$�\��G\�7\�\�z\���j���ņw�\�o\�&��&yCL�mvj\Z�\�\�\�ц!Wȕ�&��r%���u�Tk��\�;\��*sX\�!oD����ү\�9\�ȽA.G�YQP\���u��G�#��S\�K<)�xF��Wa)F@F\�Q����C\���\n��ܮkx\�`1�r�#Oʻ\�FH^gCFk�\\-�A~VX*��\�`�8�Z7�R\�SX��V�c�$�#|�J��Ƀ�B�F��v��\�A�\�$A\�*o��Þ�r��\�\�/[\���\��\�!�\�\�5�Zא\�\0��\�l���\\\"0o�\�\�Nn���\'�o.��0]�,Ԧ(�E�BUv��\n�\�\�X䘋�!�\�@��\�4O\�\�._V^\�y�aҨ��̓;uw-\�<Y@\���+\�e��+�d\0l\�Er1\�s��/`<�r.�O�\�\�S���L �\��\��\Z��3(�\"r�&31\�\�3g\�,S�	�صA|�=\�\�\�3�E2�dK�q�����zn�H�F�@\�>�\�I\�\�\� �2U|�}5\�\�d���\�\\�sY�\�B\�c\�\�Ǳ|��\0\n\�`��W�s�����6�\0�z�\��\�	\�T��?�\������D��$�w\�{\�\\\�z�.i��R�S$E�U|.���\'~E^�P4���\�R�Ȭ7�\�5�\�\�w\�m�\\��\�k�+\�\��o\�\��\"��t\�\r�*l=�Q�\�?j\�2\�\�p]Io�\�iF�5K��P�\��\�\'�շ\�\�u+?Gi8�xͭ�2zS<�k� \�v+U��@.�\�v?\�rT����Ґ�\�\'H*�\�d�,�xE���\�	NA�)�q�d�og�8\"�\�Ԅ8\�g�^\�\'� M@7\�2���)�\�aq�d��C�����ɚ)~Dv��\��8�+ e\"W�,a��!\�\n�	�Sb���j��\�>d\�<�\�$ H�8@�\0=����v�\��\�#\�\�\��L�@\�$A�\�\�N�\�I*ݜo\�@/p�\0	LyR\�\�zEО��d\�\�\�\�\�P\�\�d1\�qW\�\09#\�a�\�*A��T;\'\�\��}5\�\�cΌ3�ہ�;Pr\�\� �G�8hy���n\�#ԏ�	��\���\��@�g\�\�va^��.�F�^\�[Pj	���Ā7\�\�n2G\�F$YP�Fq�]�\�ay\�(�\0\�܊p��\����\�Z�[\�Y��U�\�jbey�Dl@�\r\�s,���$|k=�\�]1�œ\�>m�c.\�\�\�\�\��O\�>;7�\�w$�O�rF�X�0	�0\0�)\�\�$��k�f�mr?�H��z\�����w��.��6o\�\"k��^�60\"\�\�\�\"\�!�w�bo\"<�c�\�NԸ�w�~�P\��\�*\�\"/	�q��u�!\0[\�\n���P�\�ӏpPk\�m�g�y�U*\�`�v\�M����6�\r�hC�68�k0�5�\rkȀ�6�¯��k��5d\Z�kڏZ��d�\\����^t4!J\�\�2Kc.�����y\�\0��V/�g��e\�bp2��,V\Zc��q�A�A2&D�\�E\"rTI`\�E2��\��\�^N��\�����\�*�\�\�K\ZA���ru�\�\n�jc�\�\�\�E<\�=�\�\�\��\n|N��\���W\�s(\�)\��)ܒ���\���\�\�?\�UI\�uJvr�S\� \\�\�~`�Rģ�>��0�\�C_ױ���h�=��Z������\�q\��\������\�t�W.�\�_\����~��\�<KO�\�\�\�\�\�(\r\�\�3�S\�B�K�?\�x2��[��V�\�ά�\�a%��!\����p�ڧ���\�\�ՕO\�\�\\DN!\'9\r�ە�7`%����N�BAd�\���ㄲ\�v]q���ndMjca�\�F\�˜�\����\�ԗ\�\�#\\\�\�����d~h%�׊Y�W{Z�W{\�\�)Voge+��e\'`\�\�b�\�^���]T���\�\�9fTW�e5(�K\���A�\'ص\�$�P�Z{z��w��Y1\��jL���\Z�ee�U;U&\�\��Nnn�1R\�IIf\�(+#\�\0Φ�};!͌\���\�\�Y	�]\�:�a�\n\�+z\�Q����jzF����6F<<5A\�:ٹf��F\�n\�40@&����ih���?|�\��\�\�\'\�\�\�/ۿ\��r\�KA\�U�k?\�{N��-\�O\�p�J��\0pl�S77߰\�\�J�>!\\\�\�M�	vҫ\�\�$�-WE��\�\'\�l�f0�E\0�a�.>��C���X��?�,�9\Z��F\�B6_ks�m&���!\�|�<=\�GO�dװ%8��aK���X�]h��rV�>&t8a#�� \�a7v8`G\0:�N�s��/�\�@N\0��x�k\�ז6l\�\����,B���,Ȇ���l\�n��\���\�Np\"���A?�\�{�\��\�;vzޡ�\�\�\�qF\�9F�i?@S\�s�%�_6\�$x�\'kO���B��\�O�0��KC?���\��\�}�\�F��#\�8���\�a��tk!;Ͼ\���\�\�΁Մ;\��lR�y����K�BU�/��\"0�s\�\���*�vy�\���B�Y3�,��K�y�n!��\�e\"��.{\��T��\�Y�,kY��\�\�<Ϟ\�\�\�ؠ\���g]~\�\�٠����\�z�\0�@h\�\�6�O\�\n�-�`\�\�o&�@;�\�#�d+0\0p�\��U&\�z�\�\n���Zr�M|�YX�`�\�7����\rz�׻\�e\\\�&�(}\�\�%�(�\�}�\�\�h\�\�Q4bo��a{�4�D�\�O2\��i�\�\�tN\�m#\�\�\�6�\r��Qu��Q!�蛶?7��Nz��f�.�~�à+\�\�\�R5YC\���\Z��*O-3�휠��g\�\�\�vm��T_�,t	��Q����~���@�P��8UW���%vn\�]I(\����\�xC\�\r��=\�|��\�\�ۻ:\�65�\�\�\��x�u���/Q�	��-Xh�\�Ǝ=\�8�_\Z���<3�A?r�?\0�{�\�\�=\�fhOy%�@Ʋ���\�O����\�F\�+�\��æ�=�O�s7X]y\�\�]�O�k�}\�Α?�I�Ǥ��{� �#&���$;�Z`\��*=\��Q0�=\��a��\�Ď(\�E�G\�jӴry���\�<����d�p�\�\�`劆˳�5�\�ID\�\���ųu\�<;�g;3sMf���51\r�JĹ,\�|�㵛���D�ݡ�\�uc��\�\"\0\�\��(���\�h�3�R\���J\�\�I\�r<>�p��EVg\0N\�`EX\��Y���ӬHO�B�y�\����>P��[N\�f��\�����l&Y\�Y؝\�/I�\�\��\�(=O�I���\�\��2�=\���]V�_Ǘj�-\�o\�2x�\��`��Z�R�\�r\�\�\Z��\�u6�\�$\�\�T?0�\�`u�\���z�<`gL7�\�.�%N�l/D\�T!�ݨ���i\�Ei�]��v�\�U�2\�ĉ7\�4�\�ɜn�Qz/�8�\�N;M���\�)0�o\��6=�ow0�1۝R\�l�Ri�\�}\���\�[ܵ`�ݣW��\�Ju��\�\�%�C\�\�\"�+Mz�l�΍̫ґ%��\�H\����3{�\�֞1CgX��ȍ�n${��QJEj\�\Z7b.v#X<b��n$t#J�*\�$$��1fc4AZ�lH��8c|�?�߈w\�NI\�գ\�V�ݪ\�O�N�\�`8L\�p��a8FƁ��) Wԛ�Q\�.�\��\�(v�l�C~��ުh��NU�\�w���Y�S�q:�\�\��\��$Be�=�\�-�����ݒ����e\�|��:\�0&�x,\��	h:�O�xX7�\�NV l\������V���\ne�,�j��#\�njr#U�X��m��\��\�=�\�F�(h[��3�J�t�&�Δ�\Z{�q�n�3=��)\�8�\�`�M����ʍӯ\����?=\�x\r\Z\r��\���h�1�bUy\�\�D\�a\�ўx�#t\�\�띠ZU�ˡ溥�C�[J\�\�-���t\�6�M7�67��\�\�~�ak�0T\�V������}Y}����>\�U�\�*_\�<_\\��W�H���$��\�3\�H�cx����ܼ\�@�\�c�\�\��z�#�ч\�#�PO�G�\�\�fȚ��v�\�\"��_��$����\�26ͩЇp�xi\Z�+���\�V^h\��J�U��k�\'�\�\�\�\�\'�0I��\�?ҏ_H\re�\�t\�-+\�:�esM�7-99%59!1)9.~Z22\�`�B\Z�\n�P�)8<�JU�8�=���q@��z�ǜ�iNJV�\��wFJ�\�Li��F\�I\�\�H\�\\�\�h���\�H�\��\�\�\�<D\�\�F\��(V\�\�e�����6Gi��\�\�\�	��Hc{\�c-C�\�F\��H�\�͊B75Gۣ^��y�\�ZD<\�\�\��nljV%[��H��-\�H���\��\�]]*��\�_��s����J�\"�n�\�ih���0���\�-����p,\�!\'�~=\�u.�\��N+�r������y\�i�z\�\r[q�,4\ZƖ����\�J\�w\�uv `\ZF\�ru)�D]n�]n�<\�YP��\�;\�e1�\�4����\�q�ceҧ��\�ya�\�f�U\�\�xP6J].\�Ez�+v�\�\�/p�\�\�|�.\��\��L-F\�\�s��y�7\nƈ5c��\�i	\����Kd�:�/����eܾQ\�G��:9�\�\�,�x\�t\�\�U�9�r�yn�ӸB�Z$l}vy���MWG}v�ϼ(8.ԯw��(T�=h��T�~\�Kv\�9\0�\�gJ�\�ԩ\0Jbς\�Uk$�;�\���~��Z9Υ\�uͣ��E{\�1\�r;7_˳\�6\�cw\���\�^u?��[	$wT\�dnM� VSOT$3;��K\�q���y�\�a���\��\�\�*ͫȐ=\�o\�|ܯ\�\�L��Ag��\�l1\�\�\�1��\'qۧ�P)(2�+��{\�K�+�06`\�\r �\"Y~7\'-3\�EjX튘\��\�y,�����@͞��V\�s^\�Kk\��&�\�Z86�T�\�ɝ\�z���\\�(u�Ńt��L�u�(�+<\�O𡆻�����o�\�\�v\�W�#��(w\n\�\�%\��A�\"�EjA���\�\r�c4�B,_�1Q���+����T�T/0ab\�!��pư\�+��\��y�\�2�\�P8\�.����+�\�ri������\��\�u�X\�wxX�����\"E\�_R�����h-�/��Č�D\'\�]3�\�v{v�qQ\�j\�]Zh\���у�܊J!n�+�\rrA�46\��P�*����\�-�/��\�.�\��]4����\�4���צ��\�cW\�}62�\0��!��d�\�X�zCF~�P��\'�C�\�$R\�C�L�-%�Cd\�Q�R����H�ID���ZRS�ex�\�\rWg\�%G\�_P\�B�_��[f\nendstream\nendobj\n69 0 obj\n24029\nendobj\n68 0 obj\n<< /Length 70 0 R /Filter /FlateDecode >>\nstream\nx���������������� \0\"\0�\�	P\nendstream\nendobj\n70 0 obj\n30\nendobj\n71 0 obj\n<<\n  /Type /Font\n  /Subtype /Type0\n  /BaseFont /EAAAAA+ArialUnicodeMS\n  /Encoding /Identity-H\n  /ToUnicode 72 0 R\n  /DescendantFonts [73 0 R]\n>>\nendobj\n73 0 obj\n<< /Type /Font\n/BaseFont /EAAAAA+ArialUnicodeMS \n/CIDToGIDMap /Identity \n/Subtype /CIDFontType2\n/CIDSystemInfo << /Registry (Adobe) /Ordering (UCS) /Supplement 0 >>\n/FontDescriptor 66 0 R\n/DW 0\n/W [ 0 [1000 277 333 666 222 277 333 556 556 556 556 556 777 556 500 666 277 722 500 556 666 556 222 722 666 277 1015 833 500 556 500 833 500 277 277 556 222 556 556 277 610 556 556 722 556 666 500 277 556 556 556 556 722 500 556 333 556 556 333 610 277 666 666 666 500 777 277 722 722 777 556 556 722 556 943 666 556 ] ]\n>>\nendobj\n72 0 obj\n<< /Length 74 0 R /Filter /FlateDecode >>\nstream\nx�]�Ɏ�@�\�~�>N#\���F�\"G�|Ȣ8y\0�)���o\�Ƒ�\�姺��\n*;?�~1\��ylO���\�,\��6�b\Z9�\�\�:�vQ��\�K=\�\��t�.r9\�h<�\�mғ\�d?\�?\�e����ql䃉\�m��\�Q\�~8��_�\�\�\�\�6M\�\"\�b�tO��~�×z�Z_\�d)\��1���\�����;��>�qI[jh\�(שne���\�\���ڛ�\�\�ߢ�g�\nܚ��]Ϗ\�\�z퓲�\�s��*�|R��BRe�*P%�L�r�\n[�zA\�+J�\�dИ\r6\�\�b�P���|5�K��I\��,|Q,|U[�*\�-|Nmʧ~�(��惯\�(�9\�ʧ6壻�R��W\�3�|����S>�|�6��t�L\�\��虃�\�(�	���R>�\�\�f\�\�T�W�\��\�_P��\r��.y�<U{<s�0j�0�<�GCG��6���S\�a��V��\Z�Έ�%���\�|\��\�w�\�%(��\n�\�=�\�3\�4��1\�\0_A�\�H�\�\�\�:tG\����\�0޾�\�0 Nc\�vζ;��\��\�\�\�LKl[_� �<�\�\�>�XQ\nendstream\nendobj\n74 0 obj\n556\nendobj\n75 0 obj\n<<\n  /S /Document\n  /P 76 0 R\n  /K [77 0 R 78 0 R]\n>>\nendobj\n77 0 obj\n<<\n  /S /Part\n  /P 75 0 R\n  /K [79 0 R 80 0 R]\n>>\nendobj\n80 0 obj\n<<\n  /S /Sect\n  /P 77 0 R\n  /K [20 0 R]\n>>\nendobj\n20 0 obj\n<<\n  /S /P\n  /P 80 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 30\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 33\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 34\n>> <<\n  /Type /MCR\n  /Pg 51 0 R\n  /MCID 5\n>> 21 0 R]\n>>\nendobj\n21 0 obj\n<<\n  /S /Quote\n  /P 20 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 31\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 34\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 35\n>> <<\n  /Type /MCR\n  /Pg 51 0 R\n  /MCID 6\n>>]\n>>\nendobj\n79 0 obj\n<<\n  /S /Sect\n  /P 77 0 R\n  /K [8 0 R 9 0 R 10 0 R 81 0 R 11 0 R 12 0 R 82 0 R 13 0 R 83 0 R 84 0 R 85 0 R 86 0 R 87 0 R 88 0 R 89 0 R 90 0 R]\n>>\nendobj\n8 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 0\n>>]\n>>\nendobj\n9 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 1\n>>]\n>>\nendobj\n10 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 2\n>>]\n>>\nendobj\n81 0 obj\n<< /S /P /P 79 0 R >>\nendobj\n11 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 3\n>>]\n>>\nendobj\n12 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 4\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 5\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 6\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 7\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 8\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 9\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 10\n>>]\n>>\nendobj\n82 0 obj\n<< /S /P /P 79 0 R >>\nendobj\n13 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 11\n>>]\n>>\nendobj\n83 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [14 0 R 15 0 R 91 0 R]\n>>\nendobj\n14 0 obj\n<<\n  /S /P\n  /P 83 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 12\n>>]\n>>\nendobj\n15 0 obj\n<<\n  /S /P\n  /P 83 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 13\n>>]\n>>\nendobj\n91 0 obj\n<< /S /P /P 83 0 R >>\nendobj\n84 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [16 0 R 17 0 R 19 0 R]\n>>\nendobj\n16 0 obj\n<<\n  /S /P\n  /P 84 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 14\n>>]\n>>\nendobj\n17 0 obj\n<<\n  /S /P\n  /P 84 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 15\n>> 18 0 R]\n>>\nendobj\n18 0 obj\n<<\n  /S /Span\n  /P 17 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 16\n>>]\n>>\nendobj\n19 0 obj\n<<\n  /S /P\n  /P 84 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 17\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 18\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 19\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 20\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 21\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 22\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 23\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 24\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 25\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 26\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 27\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 28\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 29\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 0\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 1\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 2\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 3\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 4\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 5\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 6\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 7\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 8\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 9\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 10\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 11\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 12\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 13\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 14\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 15\n>>]\n>>\nendobj\n85 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [28 0 R 29 0 R 31 0 R]\n>>\nendobj\n28 0 obj\n<<\n  /S /P\n  /P 85 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 16\n>>]\n>>\nendobj\n29 0 obj\n<<\n  /S /P\n  /P 85 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 17\n>> 30 0 R]\n>>\nendobj\n30 0 obj\n<<\n  /S /Span\n  /P 29 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 18\n>>]\n>>\nendobj\n31 0 obj\n<<\n  /S /P\n  /P 85 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 19\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 20\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 21\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 22\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 23\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 24\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 25\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 26\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 27\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 28\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 29\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 30\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 31\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 32\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 0\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 1\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 2\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 3\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 4\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 5\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 6\n>>]\n>>\nendobj\n86 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [36 0 R 37 0 R 39 0 R]\n>>\nendobj\n36 0 obj\n<<\n  /S /P\n  /P 86 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 7\n>>]\n>>\nendobj\n37 0 obj\n<<\n  /S /P\n  /P 86 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 8\n>> 38 0 R]\n>>\nendobj\n38 0 obj\n<<\n  /S /Span\n  /P 37 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 9\n>>]\n>>\nendobj\n39 0 obj\n<<\n  /S /P\n  /P 86 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 10\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 11\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 12\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 13\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 14\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 15\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 16\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 17\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 18\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 19\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 20\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 21\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 22\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 23\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 24\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 25\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 26\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 27\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 28\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 29\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 30\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 31\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 32\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 33\n>>]\n>>\nendobj\n87 0 obj\n<< /S /P /P 79 0 R >>\nendobj\n88 0 obj\n<<\n  /S /Table\n  /P 79 0 R\n  /K [92 0 R]\n>>\nendobj\n92 0 obj\n<<\n  /S /TBody\n  /P 88 0 R\n  /K [93 0 R 94 0 R 95 0 R]\n>>\nendobj\n93 0 obj\n<<\n  /S /TR\n  /P 92 0 R\n  /K [96 0 R]\n>>\nendobj\n96 0 obj\n<<\n  /S /TD\n  /P 93 0 R\n  /K [44 0 R]\n>>\nendobj\n44 0 obj\n<<\n  /S /P\n  /P 96 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 51 0 R\n  /MCID 0\n>>]\n>>\nendobj\n94 0 obj\n<<\n  /S /TR\n  /P 92 0 R\n  /K [97 0 R]\n>>\nendobj\n97 0 obj\n<<\n  /S /TD\n  /P 94 0 R\n  /K [98 0 R]\n>>\nendobj\n98 0 obj\n<<\n  /S /P\n  /P 97 0 R\n  /K [45 0 R 46 0 R]\n>>\nendobj\n45 0 obj\n<<\n  /S /P\n  /P 98 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 51 0 R\n  /MCID 1\n>>]\n>>\nendobj\n46 0 obj\n<<\n  /S /P\n  /P 98 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 51 0 R\n  /MCID 2\n>>]\n>>\nendobj\n95 0 obj\n<<\n  /S /TR\n  /P 92 0 R\n  /K [99 0 R]\n>>\nendobj\n99 0 obj\n<<\n  /S /TD\n  /P 95 0 R\n  /K [100 0 R]\n>>\nendobj\n100 0 obj\n<<\n  /S /P\n  /P 99 0 R\n  /K [47 0 R 48 0 R]\n>>\nendobj\n47 0 obj\n<<\n  /S /P\n  /P 100 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 51 0 R\n  /MCID 3\n>>]\n>>\nendobj\n48 0 obj\n<<\n  /S /P\n  /P 100 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 51 0 R\n  /MCID 4\n>>]\n>>\nendobj\n89 0 obj\n<< /S /P /P 79 0 R >>\nendobj\n90 0 obj\n<< /S /P /P 79 0 R >>\nendobj\n78 0 obj\n<<\n  /S /Part\n  /P 75 0 R\n  /K [101 0 R 102 0 R]\n>>\nendobj\n102 0 obj\n<<\n  /S /Sect\n  /P 78 0 R\n  /K [60 0 R]\n>>\nendobj\n60 0 obj\n<<\n  /S /P\n  /P 102 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 65 0 R\n  /MCID 5\n>> 61 0 R]\n>>\nendobj\n61 0 obj\n<<\n  /S /Quote\n  /P 60 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 65 0 R\n  /MCID 6\n>>]\n>>\nendobj\n101 0 obj\n<<\n  /S /Sect\n  /P 78 0 R\n  /K [55 0 R 56 0 R 57 0 R 103 0 R 104 0 R 105 0 R]\n>>\nendobj\n55 0 obj\n<<\n  /S /P\n  /P 101 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 65 0 R\n  /MCID 0\n>>]\n>>\nendobj\n56 0 obj\n<<\n  /S /P\n  /P 101 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 65 0 R\n  /MCID 1\n>>]\n>>\nendobj\n57 0 obj\n<<\n  /S /P\n  /P 101 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 65 0 R\n  /MCID 2\n>>]\n>>\nendobj\n103 0 obj\n<< /S /P /P 101 0 R >>\nendobj\n104 0 obj\n<<\n  /S /P\n  /P 101 0 R\n  /K [58 0 R]\n>>\nendobj\n58 0 obj\n<<\n  /S /Figure\n  /P 104 0 R\n  /Alt ()\n  /K 3\n  /Pg 65 0 R\n>>\nendobj\n105 0 obj\n<<\n  /S /P\n  /P 101 0 R\n  /K [59 0 R]\n>>\nendobj\n59 0 obj\n<<\n  /S /Link\n  /P 105 0 R\n  /Alt ()\n  /K [<<\n  /Type /MCR\n  /Pg 65 0 R\n  /MCID 4\n>> <<\n  /Type /OBJR\n  /Pg 65 0 R\n  /Obj 53 0 R\n>>]\n>>\nendobj\n26 0 obj\n<< /Type /Pages\n/Count 5\n/Kids [24 0 R 34 0 R 42 0 R 51 0 R 65 0 R ] >>\nendobj\n106 0 obj\n<<\n  /Type /Catalog\n  /Pages 26 0 R\n  /Lang (x-unknown)\n  /MarkInfo << /Marked true >>\n  /StructTreeRoot 76 0 R\n  /Metadata 5 0 R\n  /PageLabels 107 0 R\n>>\nendobj\n25 0 obj\n<<\n  /Font << /F15 71 0 R >>\n  /ProcSet [/PDF /ImageB /ImageC /Text]\n  /ColorSpace << /DefaultRGB 4 0 R >>\n>>\nendobj\n76 0 obj\n<<\n  /Type /StructTreeRoot\n  /K [75 0 R]\n  /ParentTree << /Kids [108 0 R] >>\n>>\nendobj\n107 0 obj\n<< /Nums [0 << /S /D >>] >>\nendobj\n108 0 obj\n<< /Nums [0 7 0 R 1 27 0 R 2 35 0 R 3 43 0 R 4 54 0 R 5 59 0 R] /Limits [0 5] >>\nendobj\nxref\n0 109\n0000000000 65535 f \n0000000015 00000 n \n0000000139 00000 n \n0000002816 00000 n \n0000002836 00000 n \n0000002869 00000 n \n0000003812 00000 n \n0000003831 00000 n \n0000041204 00000 n \n0000041294 00000 n \n0000041384 00000 n \n0000041513 00000 n \n0000041604 00000 n \n0000041986 00000 n \n0000042148 00000 n \n0000042240 00000 n \n0000042440 00000 n \n0000042532 00000 n \n0000042631 00000 n \n0000042726 00000 n \n0000040591 00000 n \n0000040818 00000 n \n0000004070 00000 n \n0000005756 00000 n \n0000005777 00000 n \n0000049264 00000 n \n0000049004 00000 n \n0000006001 00000 n \n0000044082 00000 n \n0000044174 00000 n \n0000044273 00000 n \n0000044368 00000 n \n0000006264 00000 n \n0000007592 00000 n \n0000007613 00000 n \n0000007837 00000 n \n0000045383 00000 n \n0000045474 00000 n \n0000045572 00000 n \n0000045666 00000 n \n0000008107 00000 n \n0000009942 00000 n \n0000009963 00000 n \n0000010187 00000 n \n0000047033 00000 n \n0000047301 00000 n \n0000047392 00000 n \n0000047662 00000 n \n0000047754 00000 n \n0000010254 00000 n \n0000010746 00000 n \n0000010766 00000 n \n0000010990 00000 n \n0000011086 00000 n \n0000011239 00000 n \n0000048342 00000 n \n0000048434 00000 n \n0000048526 00000 n \n0000048716 00000 n \n0000048852 00000 n \n0000048050 00000 n \n0000048149 00000 n \n0000011306 00000 n \n0000014225 00000 n \n0000014246 00000 n \n0000014273 00000 n \n0000014514 00000 n \n0000014775 00000 n \n0000038923 00000 n \n0000038901 00000 n \n0000039029 00000 n \n0000039048 00000 n \n0000039744 00000 n \n0000039209 00000 n \n0000040376 00000 n \n0000040396 00000 n \n0000049390 00000 n \n0000040466 00000 n \n0000047922 00000 n \n0000041042 00000 n \n0000040532 00000 n \n0000041475 00000 n \n0000041948 00000 n \n0000042078 00000 n \n0000042370 00000 n \n0000044012 00000 n \n0000045313 00000 n \n0000046747 00000 n \n0000046785 00000 n \n0000047846 00000 n \n0000047884 00000 n \n0000042332 00000 n \n0000046845 00000 n \n0000046919 00000 n \n0000047124 00000 n \n0000047483 00000 n \n0000046976 00000 n \n0000047181 00000 n \n0000047238 00000 n \n0000047540 00000 n \n0000047598 00000 n \n0000048244 00000 n \n0000047990 00000 n \n0000048618 00000 n \n0000048658 00000 n \n0000048794 00000 n \n0000049092 00000 n \n0000049486 00000 n \n0000049531 00000 n \ntrailer\n<<\n  /Root 106 0 R\n  /Info 1 0 R\n  /ID [<339714BE9BC1314CA996D430E8F8C267> <339714BE9BC1314CA996D430E8F8C267>]\n  /Size 109\n>>\nstartxref\n49629\n%%EOF\n');
/*!40000 ALTER TABLE `metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_detail`
--

DROP TABLE IF EXISTS `payment_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank` varchar(50) DEFAULT NULL,
  `account_number` varchar(50) DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bank_id` (`bank_id`),
  KEY `fk_account_type_id` (`account_type_id`),
  CONSTRAINT `fk_account_type_id` FOREIGN KEY (`account_type_id`) REFERENCES `account_type` (`id`),
  CONSTRAINT `fk_bank_id` FOREIGN KEY (`bank_id`) REFERENCES `bank` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=655 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `fiscal_id` varchar(10) NOT NULL COMMENT 'Identificador de la persona e.j.: rut, pasaporte, etc.',
  `dv` char(1) DEFAULT NULL,
  `names` varchar(100) DEFAULT NULL,
  `first_lastname` varchar(50) DEFAULT NULL,
  `second_lastname` varchar(50) DEFAULT NULL,
  `birthday` varchar(10) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL COMMENT '''M'': male, ''F'': female',
  `marital_status` varchar(20) DEFAULT NULL COMMENT 'Estado Civil',
  `nationality` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `created` varchar(50) DEFAULT NULL,
  `updated` varchar(50) DEFAULT NULL,
  `afp_id` int(11) DEFAULT NULL,
  `isapre_id` int(11) DEFAULT NULL,
  `payment_detail_id` int(11) DEFAULT NULL,
  `emergency_data_id` int(11) DEFAULT NULL,
  `has_blacklist` int(1) DEFAULT NULL,
  `blacklist_motive` varchar(50) DEFAULT NULL,
  `isapre_percent` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`fiscal_id`),
  KEY `fk_person_address_idx` (`address_id`),
  KEY `fk_afp_id` (`afp_id`),
  KEY `fk_isapre_id` (`isapre_id`),
  KEY `fk_payment_detail_id` (`payment_detail_id`),
  KEY `fk_person_emergency_data_id` (`emergency_data_id`),
  CONSTRAINT `fk_afp_id` FOREIGN KEY (`afp_id`) REFERENCES `afp` (`id`),
  CONSTRAINT `fk_isapre_id` FOREIGN KEY (`isapre_id`) REFERENCES `isapre` (`id`),
  CONSTRAINT `fk_payment_detail_id` FOREIGN KEY (`payment_detail_id`) REFERENCES `payment_detail` (`id`),
  CONSTRAINT `fk_person_emergency_data_id` FOREIGN KEY (`emergency_data_id`) REFERENCES `person_emergency_data` (`id`),
  CONSTRAINT `person_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_comment`
--

DROP TABLE IF EXISTS `person_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_comment` (
  `fiscal_id` varchar(10) NOT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`fiscal_id`,`comment_id`),
  KEY `fk_person_has_comment_comment1_idx` (`comment_id`),
  KEY `fk_person_has_comment_person1_idx` (`fiscal_id`),
  CONSTRAINT `fk_person_has_comment_comment1` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_has_comment_person1` FOREIGN KEY (`fiscal_id`) REFERENCES `person` (`fiscal_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_comment`
--

LOCK TABLES `person_comment` WRITE;
/*!40000 ALTER TABLE `person_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_emergency_data`
--

DROP TABLE IF EXISTS `person_emergency_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_emergency_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=658 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_metadata`
--

DROP TABLE IF EXISTS `person_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_metadata` (
  `fiscal_id` varchar(10) NOT NULL,
  `metadata_id` int(11) NOT NULL,
  PRIMARY KEY (`fiscal_id`,`metadata_id`),
  KEY `fk_person_has_metadata_metadata1_idx` (`metadata_id`),
  KEY `fk_person_has_metadata_person1_idx` (`fiscal_id`),
  CONSTRAINT `fk_person_has_metadata_metadata1` FOREIGN KEY (`metadata_id`) REFERENCES `metadata` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_has_metadata_person1` FOREIGN KEY (`fiscal_id`) REFERENCES `person` (`fiscal_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_position`
--

DROP TABLE IF EXISTS `person_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_position` (
  `fiscal_id` varchar(10) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY (`fiscal_id`,`position_id`),
  KEY `fk_person_has_position_position1_idx` (`position_id`),
  KEY `fk_person_has_position_person1_idx` (`fiscal_id`),
  CONSTRAINT `fk_person_has_position_person1` FOREIGN KEY (`fiscal_id`) REFERENCES `person` (`fiscal_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_has_position_position1` FOREIGN KEY (`position_id`) REFERENCES `cleardigital`.`position` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `cleardigital`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cleardigital` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cleardigital`;

--
-- Table structure for table `academy_requirement`
--

DROP TABLE IF EXISTS `academy_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academy_requirement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specialty_name` varchar(255) DEFAULT NULL,
  `academy_requeriment_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_academy_requirement_academy_requeriment_type1_idx` (`academy_requeriment_type_id`),
  CONSTRAINT `fk_academy_requirement_academy_requeriment_type1` FOREIGN KEY (`academy_requeriment_type_id`) REFERENCES `academy_requirement_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `academy_requirement_type`
--

DROP TABLE IF EXISTS `academy_requirement_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academy_requirement_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academy_requirement_type`
--

LOCK TABLES `academy_requirement_type` WRITE;
/*!40000 ALTER TABLE `academy_requirement_type` DISABLE KEYS */;
INSERT INTO `academy_requirement_type` VALUES (1,'Básica Completa'),(2,'Media Completa'),(3,'Técnico medio/colegio técnico Completo'),(4,'Técnico profesional superior Completo'),(5,'Univesitaria Completa'),(6,'Postgrado Completo'),(7,'Magíster Completo'),(8,'Doctorado Completo'),(9,'Basica Incompleta'),(10,'Media Incompleta'),(11,'Técnico medio/colegio técnico Incompleto'),(12,'Técnico profesional superior Incompleto'),(13,'Universitaria Incompleta'),(14,'Postgrado Incompleto'),(15,'Magíster Incompleto'),(16,'Doctorado Incompleto');
/*!40000 ALTER TABLE `academy_requirement_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competition`
--

DROP TABLE IF EXISTS `competition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `references` varchar(255) DEFAULT NULL,
  `rent_expectations` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `experience_type_id` int(11) DEFAULT NULL,
  `experience_years` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_experience_customer1_idx` (`customer_id`),
  KEY `experience_type_id` (`experience_type_id`),
  CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`experience_type_id`) REFERENCES `experience_type` (`id`),
  CONSTRAINT `fk_experience_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `experience_type`
--

DROP TABLE IF EXISTS `experience_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experience_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience_type`
--

LOCK TABLES `experience_type` WRITE;
/*!40000 ALTER TABLE `experience_type` DISABLE KEYS */;
INSERT INTO `experience_type` VALUES (1,'Sin experiencia'),(2,'Igual que'),(3,'Mayor que'),(4,'Menor que');
/*!40000 ALTER TABLE `experience_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function`
--

DROP TABLE IF EXISTS `function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=353 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1),(1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hierarchical_level`
--

DROP TABLE IF EXISTS `hierarchical_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hierarchical_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `metadata`
--

DROP TABLE IF EXISTS `metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment` varchar(255) DEFAULT NULL,
  `metadata_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_metadata_metadata_type1_idx` (`metadata_type_id`),
  CONSTRAINT `fk_metadata_metadata_type1` FOREIGN KEY (`metadata_type_id`) REFERENCES `metadata_type` (`type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadata`
--

LOCK TABLES `metadata` WRITE;
/*!40000 ALTER TABLE `metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadata_type`
--

DROP TABLE IF EXISTS `metadata_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadata_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadata_type`
--

LOCK TABLES `metadata_type` WRITE;
/*!40000 ALTER TABLE `metadata_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `metadata_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizational_unit`
--

DROP TABLE IF EXISTS `organizational_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizational_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `organizational_unit_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`organizational_unit_type_id`),
  KEY `fk_organizational_unit_organizational_unit_type1_idx` (`organizational_unit_type_id`),
  CONSTRAINT `fk_organizational_unit_organizational_unit_type1` FOREIGN KEY (`organizational_unit_type_id`) REFERENCES `organizational_unit_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `organizational_unit_type`
--

DROP TABLE IF EXISTS `organizational_unit_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizational_unit_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizational_unit_type`
--

LOCK TABLES `organizational_unit_type` WRITE;
/*!40000 ALTER TABLE `organizational_unit_type` DISABLE KEYS */;
INSERT INTO `organizational_unit_type` VALUES (1,'Abastecimiento'),(2,'Administración'),(3,'Administración Pública'),(4,'Aduanas'),(5,'Agronomía'),(6,'Alimentos y Bebidas'),(7,'Ambiental'),(8,'Amparo'),(9,'Arquitectura'),(10,'Aseo'),(11,'Asistente y Secretaria'),(12,'Auditoría'),(13,'Automatización / Instrumentación'),(14,'Banca y Servicios Financieros'),(15,'Bursátil'),(16,'Cadena de Suministro'),(17,'Calidad'),(18,'Call Center'),(19,'Capacitación'),(20,'Category management'),(21,'Clinica'),(22,'Cobranza'),(23,'Comedores Industriales'),(24,'Comercial'),(25,'Comercio Exterior'),(26,'Compras'),(27,'Computación e Informática'),(28,'Comunicación / Medios'),(29,'Comunicación Audiovisual'),(30,'Comunicación Institucional'),(31,'Confección'),(32,'Construcción'),(33,'Contabilidad'),(34,'Contaduría'),(35,'Contraloría'),(36,'Control de Calidad'),(37,'Control de Gestión'),(38,'Corporativa'),(39,'Costura'),(40,'Crédito'),(41,'Cuentas clave'),(42,'Decoración'),(43,'Derecho'),(44,'Derecho Administrativo'),(45,'Derecho Aduanero'),(46,'Derecho Bancario y Bursátil'),(47,'Derecho Civil'),(48,'Derecho Constitucional'),(49,'Derecho Electoral'),(50,'Derecho Energético'),(51,'Derecho Familiar'),(52,'Derecho Financiero'),(53,'Derecho Internacional'),(54,'Derecho Laboral'),(55,'Derecho Mercantil'),(56,'Derecho Notarial'),(57,'Derecho Penal'),(58,'Derechos Humanos'),(59,'Desarrollo'),(60,'Desarrollo de Producto'),(61,'Despacho'),(62,'Dibujante'),(63,'Digitadores'),(64,'Dirección en servicios de salud'),(65,'Dirección General'),(66,'Diseño'),(67,'Diseño Audiovisual'),(68,'Diseño de Confecciones'),(69,'Diseño Industrial'),(70,'Distribución'),(71,'Docencia'),(72,'Economía'),(73,'Edición/Redacción'),(74,'Edificación'),(75,'Editorialismo médico'),(76,'Educación / Docencia'),(77,'Educación Física'),(78,'Educación médica'),(79,'Electricidad'),(80,'Electrónica'),(81,'Empaque'),(82,'Envasado'),(83,'Epidemiología'),(84,'Estética'),(85,'Estimulación temprana'),(86,'Estudio'),(87,'Facturación'),(88,'Finanzas'),(89,'Fiscal'),(90,'Fotografía'),(91,'Gastronomía'),(92,'Geotécnia'),(93,'Gerencia'),(94,'Gestión'),(95,'Hospitalaria'),(96,'Hoteles'),(97,'Idiomas'),(98,'Ilustración de Figurín'),(99,'Impuestos'),(100,'Industria'),(101,'Informática'),(102,'Informática – hardware'),(103,'Informática – internet'),(104,'Ingeniería'),(105,'Inteligencia de Negocios'),(106,'Internet'),(107,'Inversión Extranjera'),(108,'Inversiones'),(109,'Investigación'),(110,'Investigación clínica'),(111,'Investigación de mercados'),(112,'Laboratorio'),(113,'Leyes'),(114,'Litigio'),(115,'Logística'),(116,'Mantención'),(117,'Marketing / Mercadeo'),(118,'Mecánica'),(119,'Medicina y Salud'),(120,'Medio Ambiente'),(121,'Medios de nformación'),(122,'Mercadotecnia'),(123,'Negocios Internacionales'),(124,'Nóminas'),(125,'Operaciones'),(126,'Organización de eventos'),(127,'Orientación'),(128,'Otra Área'),(129,'Patronaje'),(130,'Periodismo'),(131,'Planificación y Desarrollo'),(132,'Post Venta'),(133,'Precios de transferencia'),(134,'Prevención de Riesgos'),(135,'Producción en bosque'),(136,'Producción y Manufactura'),(137,'Promociones'),(138,'Propiedad Industrial e Intelectual'),(139,'Propiedades'),(140,'Protección en bosque'),(141,'Proyectos'),(142,'Psicopedagógica'),(143,'Publicidad'),(144,'Química'),(145,'Química y Farmacia'),(146,'Recepción'),(147,'Reclutamiento y Selección'),(148,'Recursos Humanos'),(149,'Redes y Telecomunicaciones'),(150,'Relaciones Públicas'),(151,'Salud'),(152,'Salud Pública'),(153,'Secretaria Bilingue'),(154,'Seguridad e Higiene'),(155,'Seguros'),(156,'Servicio al Cliente'),(157,'Servicio Técnico'),(158,'Servicios'),(159,'Servicios de Seguridad'),(160,'Servicios Generales'),(161,'Servicios Sociales'),(162,'Silvicultura en bosque'),(163,'Sociedades Mercantiles'),(164,'Soporte Administrativo'),(165,'Suministros'),(166,'Tecnologías de Información'),(167,'Telecomunicaciones'),(168,'Teléfonos'),(169,'Telemarketing'),(170,'Todas las Areas'),(171,'Trade Marketing'),(172,'Tributarios'),(173,'Turismo y Hotelería'),(174,'Ventas'),(175,'Veterinaria');
/*!40000 ALTER TABLE `organizational_unit_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `leadership_name` varchar(50) DEFAULT NULL,
  `number_owned_people` int(11) DEFAULT NULL,
  `organizational_unit_id` int(11) DEFAULT NULL,
  `hierarchical_level_id` int(11) DEFAULT NULL,
  `academy_requirement_id` int(11) DEFAULT NULL,
  `similar` varchar(255) DEFAULT NULL,
  `rent_from` int(11) DEFAULT NULL,
  `rent_to` int(11) DEFAULT NULL,
  `average_rent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_position_organizational_unit1_idx` (`organizational_unit_id`),
  KEY `fk_position_hierarchical_level1_idx` (`hierarchical_level_id`),
  KEY `fk_position_academy_requirement1_idx` (`academy_requirement_id`),
  CONSTRAINT `fk_position_academy_requirement1` FOREIGN KEY (`academy_requirement_id`) REFERENCES `academy_requirement` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_position_hierarchical_level1` FOREIGN KEY (`hierarchical_level_id`) REFERENCES `hierarchical_level` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_position_organizational_unit1` FOREIGN KEY (`organizational_unit_id`) REFERENCES `organizational_unit` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `position_competition`
--

DROP TABLE IF EXISTS `position_competition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position_competition` (
  `position_id` int(11) NOT NULL,
  `competition_id` int(11) NOT NULL,
  PRIMARY KEY (`position_id`,`competition_id`),
  KEY `fk_position_has_competition_competition1_idx` (`competition_id`),
  KEY `fk_position_has_competition_position_idx` (`position_id`),
  CONSTRAINT `fk_position_has_competition_competition1` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_position_has_competition_position` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `position_experience`
--

DROP TABLE IF EXISTS `position_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position_experience` (
  `position_id` int(11) NOT NULL,
  `experience_id` int(11) NOT NULL,
  PRIMARY KEY (`position_id`,`experience_id`),
  KEY `fk_position_has_experience_experience1_idx` (`experience_id`),
  KEY `fk_position_has_experience_position1_idx` (`position_id`),
  CONSTRAINT `fk_position_has_experience_experience1` FOREIGN KEY (`experience_id`) REFERENCES `experience` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_position_has_experience_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `position_function`
--

DROP TABLE IF EXISTS `position_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position_function` (
  `position_id` int(11) NOT NULL,
  `function_id` int(11) NOT NULL,
  PRIMARY KEY (`position_id`,`function_id`),
  KEY `fk_position_has_function_function1_idx` (`function_id`),
  KEY `fk_position_has_function_position1_idx` (`position_id`),
  CONSTRAINT `fk_position_has_function_function1` FOREIGN KEY (`function_id`) REFERENCES `function` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_position_has_function_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `position_metadata`
--

DROP TABLE IF EXISTS `position_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position_metadata` (
  `position_id` int(11) NOT NULL,
  `metadata_id` int(11) NOT NULL,
  PRIMARY KEY (`position_id`,`metadata_id`),
  KEY `fk_position_has_metadata_metadata1_idx` (`metadata_id`),
  KEY `fk_position_has_metadata_position1_idx` (`position_id`),
  CONSTRAINT `fk_position_has_metadata_metadata1` FOREIGN KEY (`metadata_id`) REFERENCES `metadata` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_position_has_metadata_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_metadata`
--

LOCK TABLES `position_metadata` WRITE;
/*!40000 ALTER TABLE `position_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `position_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_target`
--

DROP TABLE IF EXISTS `position_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position_target` (
  `position_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  PRIMARY KEY (`position_id`,`target_id`),
  KEY `fk_position_has_target_target1_idx` (`target_id`),
  KEY `fk_position_has_target_position1_idx` (`position_id`),
  CONSTRAINT `fk_position_has_target_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_position_has_target_target1` FOREIGN KEY (`target_id`) REFERENCES `target` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `position_technical_requirement`
--

DROP TABLE IF EXISTS `position_technical_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position_technical_requirement` (
  `position_id` int(11) NOT NULL,
  `technical_requirement_id` int(11) NOT NULL,
  PRIMARY KEY (`position_id`,`technical_requirement_id`),
  KEY `fk_position_has_technical_requirement_technical_requirement_idx` (`technical_requirement_id`),
  KEY `fk_position_has_technical_requirement_position1_idx` (`position_id`),
  CONSTRAINT `fk_position_has_technical_requirement_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_position_has_technical_requirement_technical_requirement1` FOREIGN KEY (`technical_requirement_id`) REFERENCES `technical_requirement` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_USER'),(2,'ROLE_ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `similar`
--

DROP TABLE IF EXISTS `similar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `similar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `similar_position`
--

DROP TABLE IF EXISTS `similar_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `similar_position` (
  `similar_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY (`similar_id`,`position_id`),
  KEY `fk_similar_has_position_position1_idx` (`position_id`),
  KEY `fk_similar_has_position_similar1_idx` (`similar_id`),
  CONSTRAINT `fk_similar_has_position_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_similar_has_position_similar1` FOREIGN KEY (`similar_id`) REFERENCES `similar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `target`
--

DROP TABLE IF EXISTS `target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `target` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=353 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `technical_requirement`
--

DROP TABLE IF EXISTS `technical_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `technical_requirement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (6,1,'alfredo.larag@gmail.com','admin','admin','$2a$10$MOUbCOnv4NHS.9K5lO8Sv.LY1UOu1FhK/sDG8Y5pQhbtbGSXnhwLi');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (6,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-05 15:58:16
