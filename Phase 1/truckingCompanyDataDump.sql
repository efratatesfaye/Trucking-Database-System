-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: truckingcompany
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `idtable1_UNIQUE` (`customer_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'Bob Smith','bob.smith@example.com','515-555-2045','456 Oak Ave, Des Moines, IA'),(3,'Carla Gomez','carla.gomez@example.com','563-555-3344','789 Pine Rd, Davenport, IA'),(4,'David Lee','david.lee@example.com','641-555-5567','321 Maple Dr, Ames, IA'),(6,'Felix Turner','felix.turner@example.com','515-555-8899','12 Walnut St, Des Moines, IA'),(7,'Gina Patel','gina.patel@example.com','563-555-2233','98 Cedar Ave, Waterloo, IA'),(8,'Hector Ramirez','hector.ramirez@example.com','641-555-6677','45 Elm St, Ames, IA'),(9,'Ivy Chen','ivy.chen@example.com','712-555-4455','77 Spruce Rd, Sioux City, IA'),(10,'James O\'Connor','james.oconnor@example.com','319-555-7788','88 Willow Dr, Cedar Rapids, IA'),(11,'Karen Lopez','karen.lopez@example.com','515-555-1122','22 Aspen St, Des Moines, IA'),(12,'Liam Anderson','liam.anderson@example.com','563-555-3345','33 Poplar Ave, Waterloo, IA'),(13,'Maria Garcia','maria.garcia@example.com','641-555-5566','44 Chestnut Rd, Ames, IA'),(14,'Nathan Hall','nathan.hall@example.com','712-555-7789','55 Sycamore Ln, Sioux City, IA'),(15,'Olivia Martinez','olivia.martinez@example.com','319-555-9900','66 Redwood Dr, Cedar Rapids, IA'),(16,'Paul Young','paul.young@example.com','515-555-2234','77 Magnolia St, Des Moines, IA'),(17,'Quinn Baker','quinn.baker@example.com','563-555-4456','88 Dogwood Ave, Waterloo, IA'),(18,'Rachel Scott','rachel.scott@example.com','641-555-6678','99 Hickory Rd, Ames, IA'),(19,'Samuel King','samuel.king@example.com','712-555-8890','101 Alder Ln, Sioux City, IA'),(20,'Tina Evans','tina.evans@example.com','319-555-1123','202 Fir Dr, Cedar Rapids, IA'),(21,'Umar Khan','umar.khan@example.com','515-555-3346','303 Palm St, Des Moines, IA'),(22,'Victor White','victor.white@example.com','563-555-5567','404 Olive Ave, Waterloo, IA'),(23,'Wendy Clark','wendy.clark@example.com','641-555-7789','505 Juniper Rd, Ames, IA'),(24,'Xavier Moore','xavier.moore@example.com','712-555-9901','606 Maple Ln, Sioux City, IA'),(25,'Yara Thompson','yara.thompson@example.com','319-555-2235','707 Birch Dr, Cedar Rapids, IA'),(26,'Zane Foster','zane.foster@example.com','515-555-4457','808 Elm St, Des Moines, IA'),(27,'Abigail Ross','abigail.ross@example.com','563-555-6679','909 Cedar Ave, Waterloo, IA'),(28,'Brandon Hughes','brandon.hughes@example.com','641-555-8891','1010 Pine Rd, Ames, IA'),(29,'Chloe Ward','chloe.ward@example.com','712-555-1124','1111 Spruce Ln, Sioux City, IA'),(30,'Dylan Price','dylan.price@example.com','319-555-3347','1212 Willow Dr, Cedar Rapids, IA'),(31,'Ethan Bell','ethan.bell@example.com','515-555-5568','1313 Aspen St, Des Moines, IA'),(32,'Fiona Reed','fiona.reed@example.com','563-555-7780','1414 Poplar Ave, Waterloo, IA'),(33,'George Carter','george.carter@example.com','641-555-9902','1515 Chestnut Rd, Ames, IA'),(34,'Hannah Brooks','hannah.brooks@example.com','712-555-2236','1616 Sycamore Ln, Sioux City, IA'),(35,'Isaac Perry','isaac.perry@example.com','319-555-4458','1717 Redwood Dr, Cedar Rapids, IA'),(36,'Jasmine Flores','jasmine.flores@example.com','515-555-6670','1818 Magnolia St, Des Moines, IA'),(37,'Kyle Bennett','kyle.bennett@example.com','563-555-8892','1919 Dogwood Ave, Waterloo, IA'),(38,'Lily Sanders','lily.sanders@example.com','641-555-1125','2020 Hickory Rd, Ames, IA'),(39,'Matthew Rivera','matthew.rivera@example.com','712-555-3348','2121 Alder Ln, Sioux City, IA'),(40,'Nora Coleman','nora.coleman@example.com','319-555-5569','2222 Fir Dr, Cedar Rapids, IA'),(41,'Owen Murphy','owen.murphy@example.com','515-555-7781','2323 Palm St, Des Moines, IA'),(42,'Piper James','piper.james@example.com','563-555-9903','2424 Olive Ave, Waterloo, IA'),(43,'Quentin Stone','quentin.stone@example.com','641-555-2237','2525 Juniper Rd, Ames, IA'),(44,'Ruby Hayes','ruby.hayes@example.com','712-555-4459','2626 Maple Ln, Sioux City, IA'),(45,'Sean Foster','sean.foster@example.com','319-555-6671','2727 Birch Dr, Cedar Rapids, IA'),(46,'Tara Mitchell','tara.mitchell@example.com','515-555-8893','2828 Elm St, Des Moines, IA'),(47,'Uriel Chavez','uriel.chavez@example.com','563-555-1126','2929 Cedar Ave, Waterloo, IA'),(48,'Vanessa Ortiz','vanessa.ortiz@example.com','641-555-3349','3030 Pine Rd, Ames, IA'),(49,'William Harper','william.harper@example.com','712-555-5570','3131 Spruce Ln, Sioux City, IA'),(50,'Zoe Franklin','zoe.franklin@example.com','319-555-7782','3232 Willow Dr, Cedar Rapids, IA'),(51,'Efrata Tesfaye','efrata.tesfaye@example.com','555-9876','789 Pine Street, Cedar Falls, IA'),(105,'Ella Brown','ella.brown@example.com','712-555-7788','654 Birch Ln, Sioux City, IA');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `license_number` varchar(20) NOT NULL,
  `hire_date` date NOT NULL,
  PRIMARY KEY (`driver_id`),
  UNIQUE KEY `driver_id_UNIQUE` (`driver_id`),
  UNIQUE KEY `license_number_UNIQUE` (`license_number`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,'Frank','Miller','IA123456','2018-05-12'),(2,'Grace','Hernandez','IA234567','2020-07-01'),(3,'Henry','Nguyen','IA345678','2019-03-22'),(4,'Isabella','Davis','IA456789','2021-11-15'),(5,'Jack','Wilson','IA567890','2017-09-30'),(6,'Karen','Lopez','IA678901','2016-02-18'),(7,'Liam','Anderson','IA789012','2015-08-25'),(8,'Maria','Garcia','IA890123','2019-12-10'),(9,'Nathan','Hall','IA901234','2022-03-05'),(10,'Olivia','Martinez','IA012345','2020-06-14'),(11,'Paul','Young','IA112233','2018-07-19'),(12,'Quinn','Baker','IA223344','2017-11-02'),(13,'Rachel','Scott','IA334455','2016-09-09'),(14,'Samuel','King','IA445566','2019-01-23'),(15,'Tina','Evans','IA556677','2021-04-30'),(16,'Umar','Khan','IA667788','2015-05-17'),(17,'Victor','White','IA778899','2018-08-08'),(18,'Wendy','Clark','IA889900','2020-02-12'),(19,'Xavier','Moore','IA990011','2019-10-29'),(20,'Yara','Thompson','IA101112','2022-01-15');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `item_id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `quantity` int unsigned NOT NULL,
  `weight` decimal(10,2) unsigned NOT NULL,
  `hazmat_flag` tinyint NOT NULL,
  `value` decimal(12,2) NOT NULL,
  `shipment_id` int unsigned NOT NULL,
  PRIMARY KEY (`item_id`,`shipment_id`),
  UNIQUE KEY `item_id_UNIQUE` (`item_id`),
  UNIQUE KEY `shipment_id_UNIQUE` (`shipment_id`),
  KEY `fk_inventory_shipment1_idx` (`shipment_id`),
  CONSTRAINT `fk_inventory_shipment1` FOREIGN KEY (`shipment_id`) REFERENCES `shipment` (`shipment_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'Pallet of electronics',10,500.00,0,25000.00,20),(3,'Industrial chemicals',5,800.00,1,18000.00,2),(4,'Furniture sets',3,1200.00,0,15000.00,3),(5,'Medical supplies',20,400.00,0,22000.00,4),(6,'Construction materials',15,2000.00,0,30000.00,5),(7,'Paint cans',40,600.00,1,8000.00,6),(8,'Refrigerated food',25,700.00,0,10000.00,7),(9,'Office equipment',12,900.00,0,17000.00,8),(10,'Automotive parts',30,1500.00,0,28000.00,9),(11,'Laboratory glassware',18,350.00,0,9000.00,10),(12,'Compressed gas cylinders',6,450.00,1,16000.00,11),(13,'Books and printed materials',100,250.00,0,5000.00,12),(14,'Heavy machinery components',4,1800.00,0,32000.00,13),(15,'Pharmaceutical samples',10,300.00,1,14000.00,14),(16,'Wooden pallets',20,1200.00,0,6000.00,15),(17,'Cleaning agents',30,500.00,1,7000.00,16),(18,'Frozen seafood',22,800.00,0,11000.00,17),(19,'Computer monitors',16,950.00,0,19000.00,18);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance_record`
--

DROP TABLE IF EXISTS `maintenance_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance_record` (
  `record_id` int unsigned NOT NULL AUTO_INCREMENT,
  `service_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `truck_id` int unsigned NOT NULL,
  PRIMARY KEY (`record_id`,`truck_id`),
  UNIQUE KEY `record_id_UNIQUE` (`record_id`),
  UNIQUE KEY `truck_id_UNIQUE` (`truck_id`),
  KEY `fk_maintenance_records_truck1_idx` (`truck_id`),
  CONSTRAINT `fk_maintenance_records_truck1` FOREIGN KEY (`truck_id`) REFERENCES `truck` (`truck_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance_record`
--

LOCK TABLES `maintenance_record` WRITE;
/*!40000 ALTER TABLE `maintenance_record` DISABLE KEYS */;
INSERT INTO `maintenance_record` VALUES (1,'2024-12-01','Oil Change',150.00,1),(2,'2024-11-15','Brake Inspection',300.00,2),(3,'2024-10-20','Tire Replacement',800.00,3),(4,'2024-09-05','Engine Repair',2500.00,4),(5,'2024-08-12','Transmission Service',1800.00,5),(6,'2024-07-18','Oil Change',160.00,6),(7,'2024-06-22','Brake Inspection',320.00,7),(8,'2024-05-30','Tire Replacement',750.00,8),(9,'2024-04-14','Engine Repair',2700.00,9),(10,'2024-03-09','Transmission Service',1900.00,10),(11,'2023-12-19','Oil Change',140.00,11),(12,'2023-11-25','Brake Inspection',310.00,12),(13,'2023-10-11','Tire Replacement',820.00,13),(14,'2023-09-02','Engine Repair',2600.00,14),(15,'2023-08-16','Transmission Service',1750.00,15),(16,'2023-07-07','Oil Change',155.00,16),(17,'2023-06-21','Brake Inspection',295.00,17),(18,'2023-05-13','Tire Replacement',780.00,18),(19,'2023-04-04','Engine Repair',2400.00,19),(20,'2023-03-15','Transmission Service',1850.00,20);
/*!40000 ALTER TABLE `maintenance_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int unsigned NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `method` varchar(20) NOT NULL,
  `shipment_id` int unsigned NOT NULL,
  PRIMARY KEY (`payment_id`,`shipment_id`),
  UNIQUE KEY `payment_id_UNIQUE` (`payment_id`),
  UNIQUE KEY `shipment_id_UNIQUE` (`shipment_id`),
  KEY `fk_payment_shipment1_idx` (`shipment_id`),
  CONSTRAINT `fk_payment_shipment1` FOREIGN KEY (`shipment_id`) REFERENCES `shipment` (`shipment_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (2,300.00,'2025-01-10','cash',2),(3,1200.00,'2025-01-14','bank',3),(4,600.00,'2025-01-16','online',4),(5,800.00,'2025-01-19','card',5),(6,950.00,'2025-01-22','cash',6),(7,2200.00,'2025-01-25','bank',7),(8,1750.00,'2025-01-28','online',8),(9,2600.00,'2025-01-30','card',9),(10,400.00,'2025-02-02','cash',10),(11,1350.00,'2025-02-05','bank',11),(12,980.00,'2025-02-07','online',12),(13,3100.00,'2025-02-10','card',13),(14,2100.00,'2025-02-12','cash',14),(15,2500.00,'2025-02-15','bank',15),(16,1900.00,'2025-02-18','online',16),(17,1700.00,'2025-02-20','card',17),(18,1300.00,'2025-02-22','cash',18),(19,1100.00,'2025-02-25','bank',19),(20,2800.00,'2025-02-28','online',20);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `route_id` int unsigned NOT NULL AUTO_INCREMENT,
  `origin_city` varchar(100) NOT NULL,
  `destination_city` varchar(100) NOT NULL,
  `mileage` int NOT NULL,
  `estimated_hours` decimal(4,1) NOT NULL,
  PRIMARY KEY (`route_id`),
  UNIQUE KEY `route_id_UNIQUE` (`route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (1,'Cedar Falls','Chicago',300,6.0),(2,'Des Moines','Kansas City',200,4.0),(3,'Sioux City','Denver',600,12.0),(4,'Ames','Minneapolis',250,5.0),(5,'Davenport','St. Louis',280,6.0),(6,'Waterloo','Omaha',350,7.0),(7,'Cedar Rapids','Milwaukee',270,5.0),(8,'Iowa City','Detroit',500,10.0),(9,'Mason City','Indianapolis',450,9.0),(10,'Dubuque','Madison',180,4.0),(11,'Fort Dodge','St. Paul',320,6.0),(12,'Marshalltown','Chicago',310,6.0),(13,'Ottumwa','Memphis',520,11.0),(14,'Clinton','Milwaukee',260,5.0),(15,'Muscatine','St. Louis',300,6.0),(16,'Sioux Falls','Minneapolis',240,5.0),(17,'La Crosse','Des Moines',280,6.0),(18,'Peoria','Cedar Rapids',200,4.0),(19,'Rockford','Davenport',170,3.0),(20,'Springfield','Ames',350,7.0),(21,'Lincoln','Omaha',60,1.0),(22,'Omaha','Kansas City',190,4.0),(23,'Kansas City','Denver',600,12.0),(24,'Denver','Chicago',1000,20.0),(25,'Chicago','Detroit',280,6.0),(26,'Detroit','Cleveland',170,3.0),(27,'Cleveland','Pittsburgh',130,3.0),(28,'Pittsburgh','Philadelphia',300,6.0),(29,'Philadelphia','New York',95,2.0),(30,'New York','Boston',215,4.0),(31,'Boston','Albany',170,3.0),(32,'Albany','Buffalo',290,6.0),(33,'Buffalo','Toronto',100,2.0),(34,'Toronto','Ottawa',280,6.0),(35,'Ottawa','Montreal',200,4.0),(36,'Montreal','Quebec City',160,3.0),(37,'Quebec City','Halifax',650,12.0),(38,'Halifax','Boston',700,14.0),(39,'Boston','Washington DC',440,9.0),(40,'Washington DC','Atlanta',640,12.0);
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment`
--

DROP TABLE IF EXISTS `shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipment` (
  `shipment_id` int unsigned NOT NULL AUTO_INCREMENT,
  `origin` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `delivery_date` date NOT NULL,
  `status` varchar(45) NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `truck_id` int unsigned NOT NULL,
  `route_id` int unsigned NOT NULL,
  PRIMARY KEY (`shipment_id`,`customer_id`,`truck_id`,`route_id`),
  UNIQUE KEY `shipment_id_UNIQUE` (`shipment_id`),
  UNIQUE KEY `truck_id_UNIQUE` (`truck_id`),
  UNIQUE KEY `route_id_UNIQUE` (`route_id`),
  KEY `fk_shipment_customer1_idx` (`customer_id`),
  KEY `fk_shipment_truck1_idx` (`truck_id`),
  KEY `fk_shipment_route1_idx` (`route_id`),
  CONSTRAINT `fk_shipment_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_shipment_route1` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_shipment_truck1` FOREIGN KEY (`truck_id`) REFERENCES `truck` (`truck_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment`
--

LOCK TABLES `shipment` WRITE;
/*!40000 ALTER TABLE `shipment` DISABLE KEYS */;
INSERT INTO `shipment` VALUES (2,'Des Moines','Kansas City',800.00,'2025-01-12','in_transit',2,2,2),(3,'Sioux City','Denver',5000.00,'2025-01-15','delivered',3,3,3),(4,'Ames','Minneapolis',1500.00,'2025-01-18','cancelled',4,4,4),(5,'Davenport','St. Louis',2200.00,'2025-01-20','pending',105,5,5),(6,'Waterloo','Omaha',1800.00,'2025-01-22','in_transit',6,6,6),(7,'Cedar Rapids','Milwaukee',2000.00,'2025-01-25','delivered',7,7,7),(8,'Iowa City','Detroit',3500.00,'2025-01-28','pending',8,8,8),(9,'Mason City','Indianapolis',2700.00,'2025-01-30','in_transit',9,9,9),(10,'Dubuque','Madison',900.00,'2025-02-02','delivered',10,10,10),(11,'Fort Dodge','St. Paul',1600.00,'2025-02-05','pending',11,11,11),(12,'Marshalltown','Chicago',1400.00,'2025-02-07','in_transit',12,12,12),(13,'Ottumwa','Memphis',4200.00,'2025-02-10','delivered',13,13,13),(14,'Clinton','Milwaukee',2100.00,'2025-02-12','pending',14,14,14),(15,'Muscatine','St. Louis',2500.00,'2025-02-15','in_transit',15,15,15),(16,'Sioux Falls','Minneapolis',1900.00,'2025-02-18','delivered',16,16,16),(17,'La Crosse','Des Moines',1700.00,'2025-02-20','pending',17,17,17),(18,'Peoria','Cedar Rapids',1300.00,'2025-02-22','in_transit',18,18,18),(19,'Rockford','Davenport',1100.00,'2025-02-25','delivered',19,19,19),(20,'Springfield','Ames',2800.00,'2025-02-28','pending',20,20,20);
/*!40000 ALTER TABLE `shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `truck`
--

DROP TABLE IF EXISTS `truck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `truck` (
  `truck_id` int unsigned NOT NULL AUTO_INCREMENT,
  `license_plate` varchar(20) NOT NULL,
  `capacity` decimal(10,2) NOT NULL,
  `model` varchar(100) NOT NULL,
  `year` int unsigned NOT NULL,
  `driver_id` int unsigned NOT NULL,
  PRIMARY KEY (`truck_id`,`driver_id`),
  UNIQUE KEY `truck_id_UNIQUE` (`truck_id`),
  UNIQUE KEY `license_plate_UNIQUE` (`license_plate`),
  UNIQUE KEY `driver_id_UNIQUE` (`driver_id`),
  KEY `fk_truck_driver1_idx` (`driver_id`),
  CONSTRAINT `fk_truck_driver1` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `truck`
--

LOCK TABLES `truck` WRITE;
/*!40000 ALTER TABLE `truck` DISABLE KEYS */;
INSERT INTO `truck` VALUES (1,'ABC-1234',15000.00,'Freightliner',2018,1),(2,'XYZ-5678',20000.00,'Kenworth',2020,2),(3,'LMN-9012',18000.00,'Volvo',2019,3),(4,'JKL-3456',22000.00,'Peterbilt',2021,4),(5,'QRS-7890',16000.00,'Freightliner',2017,5),(6,'TUV-1111',19000.00,'Kenworth',2016,6),(7,'WXY-2222',21000.00,'Volvo',2015,7),(8,'ZAB-3333',17000.00,'Peterbilt',2019,8),(9,'CDE-4444',20000.00,'Freightliner',2020,9),(10,'FGH-5555',18000.00,'Kenworth',2018,10),(11,'IJK-6666',22000.00,'Volvo',2021,11),(12,'LMO-7777',16000.00,'Peterbilt',2017,12),(13,'NOP-8888',19000.00,'Freightliner',2016,13),(14,'QRT-9999',21000.00,'Kenworth',2015,14),(15,'STU-0001',17000.00,'Volvo',2019,15),(16,'VWX-0002',20000.00,'Peterbilt',2020,16),(17,'YZA-0003',18000.00,'Freightliner',2018,17),(18,'BCD-0004',22000.00,'Kenworth',2021,18),(19,'EFG-0005',16000.00,'Volvo',2017,19),(20,'HIJ-0006',19000.00,'Peterbilt',2016,20);
/*!40000 ALTER TABLE `truck` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-15 15:33:52
