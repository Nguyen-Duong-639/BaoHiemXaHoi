-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: dbsqa
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hopdong`
--

DROP TABLE IF EXISTS `hopdong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hopdong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loaihopdong` int(11) NOT NULL DEFAULT '0',
  `khachhang` int(11) NOT NULL,
  `mahopdong` varchar(45) NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mahopdong_UNIQUE` (`mahopdong`),
  KEY `khachhang_idx` (`khachhang`),
  KEY `loaihopdong_idx` (`loaihopdong`),
  CONSTRAINT `khachhang` FOREIGN KEY (`khachhang`) REFERENCES `khachhang` (`id`),
  CONSTRAINT `loaihopdong` FOREIGN KEY (`loaihopdong`) REFERENCES `loaihopdong` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hopdong`
--

LOCK TABLES `hopdong` WRITE;
/*!40000 ALTER TABLE `hopdong` DISABLE KEYS */;
/*!40000 ALTER TABLE `hopdong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenkhachhang` varchar(50) NOT NULL DEFAULT 'Unknown',
  `cmnd` varchar(15) NOT NULL DEFAULT '000000000',
  `ngaysinh` varchar(20) NOT NULL DEFAULT '1/1/1970',
  `sodienthoai` varchar(20) NOT NULL,
  `gioitinh` int(11) NOT NULL DEFAULT '0',
  `diachi` varchar(50) NOT NULL DEFAULT 'Việt Nam',
  `tendangnhap` varchar(20) NOT NULL,
  `matkhau` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cmnd` (`cmnd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaidoituong`
--

DROP TABLE IF EXISTS `loaidoituong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `loaidoituong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tendoituong` varchar(20) NOT NULL DEFAULT 'Người đi làm',
  `chietkhau` float NOT NULL DEFAULT '0',
  `sotienbaohiem` int(11) NOT NULL DEFAULT '1500000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tendoituong` (`tendoituong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaidoituong`
--

LOCK TABLES `loaidoituong` WRITE;
/*!40000 ALTER TABLE `loaidoituong` DISABLE KEYS */;
/*!40000 ALTER TABLE `loaidoituong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaihopdong`
--

DROP TABLE IF EXISTS `loaihopdong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `loaihopdong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(20) NOT NULL DEFAULT 'Cá nhân',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaihopdong`
--

LOCK TABLES `loaihopdong` WRITE;
/*!40000 ALTER TABLE `loaihopdong` DISABLE KEYS */;
/*!40000 ALTER TABLE `loaihopdong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoibaohiem`
--

DROP TABLE IF EXISTS `nguoibaohiem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nguoibaohiem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hopdong` int(11) NOT NULL,
  `tennguoibaohiem` varchar(50) NOT NULL DEFAULT 'Unknown',
  `cmnd` varchar(15) NOT NULL DEFAULT '000000000',
  `ngaysinh` varchar(20) NOT NULL DEFAULT '1/1/1970',
  `sodienthoai` varchar(20) NOT NULL,
  `gioitinh` int(11) NOT NULL DEFAULT '0',
  `diachi` varchar(50) NOT NULL DEFAULT 'Việt Nam',
  `loaidoituong` int(11) NOT NULL DEFAULT '0',
  `thoigianbaohiem` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cmnd` (`cmnd`),
  KEY `hopdong_idx` (`hopdong`),
  KEY `loaidoituong_idx` (`loaidoituong`),
  CONSTRAINT `hopdong` FOREIGN KEY (`hopdong`) REFERENCES `hopdong` (`id`),
  CONSTRAINT `loaidoituong` FOREIGN KEY (`loaidoituong`) REFERENCES `loaidoituong` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoibaohiem`
--

LOCK TABLES `nguoibaohiem` WRITE;
/*!40000 ALTER TABLE `nguoibaohiem` DISABLE KEYS */;
/*!40000 ALTER TABLE `nguoibaohiem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-05 20:54:59
