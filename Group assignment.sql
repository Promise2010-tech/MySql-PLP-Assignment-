-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstoregw
-- ------------------------------------------------------
-- Server version	8.4.4

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
-- Table structure for table `address_list`
--

DROP TABLE IF EXISTS `address_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_list` (
  `address_list_ID` int NOT NULL,
  `address_list` varchar(100) DEFAULT NULL,
  `customer_list_ID` int DEFAULT NULL,
  PRIMARY KEY (`address_list_ID`),
  KEY `customer_list_ID` (`customer_list_ID`),
  CONSTRAINT `address_list_ibfk_1` FOREIGN KEY (`customer_list_ID`) REFERENCES `customer_list` (`Customer_List_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `address_status_old_or_new`
--

DROP TABLE IF EXISTS `address_status_old_or_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_status_old_or_new` (
  `address_status_old_or_new_id` int NOT NULL,
  `address_status_old_or_new` varchar(100) DEFAULT NULL,
  `customer_address_ID` int DEFAULT NULL,
  PRIMARY KEY (`address_status_old_or_new_id`),
  KEY `customer_address_ID` (`customer_address_ID`),
  CONSTRAINT `address_status_old_or_new_ibfk_1` FOREIGN KEY (`customer_address_ID`) REFERENCES `customer_address` (`customer_address_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `author_list`
--

DROP TABLE IF EXISTS `author_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author_list` (
  `aouthor_listID` int NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`aouthor_listID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `bookID` int NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `book_author`
--

DROP TABLE IF EXISTS `book_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_author` (
  `book_authorID` int NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`book_authorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `book_language`
--

DROP TABLE IF EXISTS `book_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_language` (
  `book_languageID` int NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `bookID` int DEFAULT NULL,
  PRIMARY KEY (`book_languageID`),
  KEY `bookID` (`bookID`),
  CONSTRAINT `book_language_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `book` (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country_list`
--

DROP TABLE IF EXISTS `country_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_list` (
  `Country_list_ID` int NOT NULL,
  `Country_list` varchar(100) DEFAULT NULL,
  `address_list_ID` int DEFAULT NULL,
  PRIMARY KEY (`Country_list_ID`),
  KEY `address_list_ID` (`address_list_ID`),
  CONSTRAINT `country_list_ibfk_1` FOREIGN KEY (`address_list_ID`) REFERENCES `address_list` (`address_list_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_address`
--

DROP TABLE IF EXISTS `customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_address` (
  `customer_address_ID` int NOT NULL,
  `customer_address` varchar(100) DEFAULT NULL,
  `customer_list_ID` int DEFAULT NULL,
  PRIMARY KEY (`customer_address_ID`),
  KEY `customer_list_ID` (`customer_list_ID`),
  CONSTRAINT `customer_address_ibfk_1` FOREIGN KEY (`customer_list_ID`) REFERENCES `customer_list` (`Customer_List_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_list`
--

DROP TABLE IF EXISTS `customer_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_list` (
  `Customer_List_ID` int NOT NULL,
  `Customer_List` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Customer_List_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_orders` (
  `Customer_Orders_ID` int NOT NULL,
  `Customer_Orders` varchar(100) DEFAULT NULL,
  `customer_list_ID` int DEFAULT NULL,
  PRIMARY KEY (`Customer_Orders_ID`),
  KEY `customer_list_ID` (`customer_list_ID`),
  CONSTRAINT `customer_orders_ibfk_1` FOREIGN KEY (`customer_list_ID`) REFERENCES `customer_list` (`Customer_List_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_history`
--

DROP TABLE IF EXISTS `order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_history` (
  `order_history_id` int NOT NULL,
  `order_history` varchar(100) DEFAULT NULL,
  `customer_list_id` int DEFAULT NULL,
  PRIMARY KEY (`order_history_id`),
  KEY `customer_list_id` (`customer_list_id`),
  CONSTRAINT `order_history_ibfk_1` FOREIGN KEY (`customer_list_id`) REFERENCES `customer_list` (`Customer_List_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_line`
--

DROP TABLE IF EXISTS `order_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_line` (
  `order_line_ID` int NOT NULL,
  `order_line` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`order_line_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `order_status_id` int NOT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  `order_history_id` int DEFAULT NULL,
  PRIMARY KEY (`order_status_id`),
  KEY `order_history_id` (`order_history_id`),
  CONSTRAINT `order_status_ibfk_1` FOREIGN KEY (`order_history_id`) REFERENCES `order_history` (`order_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishers` (
  `Publishers_ID` int NOT NULL,
  `Publishers` varchar(100) DEFAULT NULL,
  `bookID` int DEFAULT NULL,
  `book_authorID` int DEFAULT NULL,
  PRIMARY KEY (`Publishers_ID`),
  KEY `bookID` (`bookID`),
  KEY `book_authorID` (`book_authorID`),
  CONSTRAINT `publishers_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `book` (`bookID`),
  CONSTRAINT `publishers_ibfk_2` FOREIGN KEY (`book_authorID`) REFERENCES `book_author` (`book_authorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shipping_methods`
--

DROP TABLE IF EXISTS `shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_methods` (
  `Shipping_Methods_ID` int NOT NULL,
  `Shipping_Methods` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Shipping_Methods_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-14 17:41:44
