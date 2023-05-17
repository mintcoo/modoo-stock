-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: k8e206.p.ssafy.io    Database: modoostock
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `asset`
--

DROP TABLE IF EXISTS `asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `asset_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_name_kor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_2p3j5bj0wsgiultvdp7oj2oqb` (`asset_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1781 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset`
--

LOCK TABLES `asset` WRITE;
/*!40000 ALTER TABLE `asset` DISABLE KEYS */;
INSERT INTO `asset` VALUES (1,'RARE','PROP','Backyard_Ball','공'),(2,'RARE','PROP','Backyard_Feeder','새 장'),(3,'RARE','PROP','Backyard_Flower_2','꽃'),(4,'RARE','PROP','Backyard_Flower_3','꽃'),(5,'RARE','FURNITURE','Backyard_garden','정원'),(6,'UNIQUE','FURNITURE','Bathroom_Bath','욕조'),(7,'RARE','FURNITURE','Bathroom_Crossbar','가로장'),(8,'RARE','PROP','Bathroom_Cup','컵'),(9,'RARE','PROP','Bathroom_Curtain','커튼'),(10,'RARE','PROP','Bathroom_Mirror','거울'),(11,'RARE','PROP','Bathroom_Picture','사진'),(12,'RARE','PROP','Bathroom_Picture_2','사진'),(13,'RARE','PROP','Bathroom_Rug','깔개'),(14,'RARE','PROP','Bathroom_Shampoo_2','샴푸'),(15,'EPIC','PROP','Bathroom_Shower','샤워기'),(16,'RARE','PROP','Bathroom_Soap','비누'),(17,'EPIC','FURNITURE','Bathroom_Tap','수도꼭지'),(18,'RARE','FURNITURE','Bathroom_Toilet','변기'),(19,'RARE','PROP','Bathroom_Toothbrush','칫솔'),(20,'RARE','PROP','Bathroom_Toothbrush_2','칫솔'),(21,'RARE','PROP','Bathroom_Towel','수건'),(22,'RARE','FURNITURE','Bathroom_Trashcan','쓰레기통'),(23,'EPIC','FURNITURE','Bathroom2_bath','욕조'),(24,'RARE','PROP','Bathroom2_Bottle','병'),(25,'RARE','PROP','Bathroom2_Bottle2','병'),(26,'RARE','PROP','Bathroom2_Bottle3','병'),(27,'RARE','PROP','Bathroom2_carpet','카펫'),(28,'RARE','PROP','Bathroom2_Cup','컵'),(29,'EPIC','PROP','Bathroom2_duck','오리'),(30,'RARE','PROP','Bathroom2_soap','비누'),(31,'RARE','PROP','Bathroom2_socket','콘센트'),(32,'RARE','PROP','Bathroom2_towel','수건'),(33,'EPIC','FURNITURE','Bathroom2_washbasin1','세면기'),(34,'EPIC','FURNITURE','Bedroom_2_Bedroom_Bed','침대'),(35,'RARE','PROP','Bedroom_2_Book','책'),(36,'EPIC','FURNITURE','Bedroom_2_Cabinet','수납장'),(37,'RARE','PROP','Bedroom_2_Cactus','선인장'),(38,'RARE','PROP','Bedroom_2_Cornice','커튼봉'),(39,'RARE','PROP','Bedroom_2_Cornice_2','커튼봉'),(40,'RARE','PROP','Bedroom_2_Curtain_1','커튼'),(41,'RARE','PROP','Bedroom_2_Curtain_2','커튼'),(42,'RARE','PROP','Bedroom_2_Curtain_3','커튼'),(43,'RARE','PROP','Bedroom_2_Flower','꽃'),(44,'RARE','PROP','Bedroom_2_Lamp','램프'),(45,'RARE','PROP','Bedroom_2_Mirror','거울'),(46,'RARE','FURNITURE','Bedroom_2_Ottoman','오토만'),(47,'RARE','PROP','Bedroom_2_Pearls','진주'),(48,'RARE','PROP','Bedroom_2_Perfume','향수'),(49,'RARE','PROP','Bedroom_2_Perfume_2','향수'),(50,'RARE','PROP','Bedroom_2_Pillows','베개'),(51,'RARE','PROP','Bedroom_2_Plant','식물'),(52,'EPIC','PROP','Bedroom_2_Table','테이블'),(53,'UNIQUE','FURNITURE','Bedroom_Basebed','침대'),(54,'RARE','FURNITURE','Bedroom_Blanket','담요'),(55,'RARE','PROP','Bedroom_Book','책'),(56,'RARE','PROP','Bedroom_Carpet','카펫'),(57,'RARE','PROP','Bedroom_Clock','시계'),(58,'RARE','PROP','Bedroom_Cornice','커튼봉'),(59,'RARE','PROP','Bedroom_Curtain','커튼'),(60,'RARE','PROP','Bedroom_Flower','꽃'),(61,'RARE','PROP','Bedroom_Glasses','안경'),(62,'RARE','PROP','Bedroom_Headphones','헤드폰'),(63,'RARE','PROP','Bedroom_Lamp','램프'),(64,'EPIC','FURNITURE','Bedroom_Mattress','메트리스'),(65,'RARE','PROP','Bedroom_Mobile','휴대폰'),(66,'EPIC','FURNITURE','Bedroom_Nightstand','침실탁자'),(67,'RARE','PROP','Bedroom_Picture_1','사진'),(68,'RARE','PROP','Bedroom_Picture_2','사진'),(69,'RARE','PROP','Bedroom_Picture_3','사진'),(70,'RARE','PROP','Bedroom3_Books5','책'),(71,'RARE','PROP','Bedroom3_Books9','책'),(72,'RARE','PROP','Bedroom3_boxes','상자'),(73,'RARE','PROP','Bedroom3_carpet','카펫'),(74,'EPIC','PROP','Bedroom3_chair','의자'),(75,'LEGENDARY','FURNITURE','Bedroom3_Construction','책상'),(76,'RARE','PROP','Bedroom3_Cornice','커튼봉'),(77,'RARE','PROP','Bedroom3_flower','꽃'),(78,'RARE','PROP','Bedroom3_lamp1','램프'),(79,'RARE','PROP','Bedroom3_lamp2','램프'),(80,'EPIC','FURNITURE','Bedroom3_mattress','메트리스'),(81,'RARE','PROP','Bedroom3_Pensils','연필'),(82,'RARE','PROP','Bedroom3_picture1','사진'),(83,'RARE','PROP','Bedroom3_picture2','사진'),(84,'RARE','PROP','Bedroom3_pillows','베개'),(85,'EPIC','FURNITURE','Bedroom3_shelf1','선반'),(86,'EPIC','FURNITURE','Bedroom3_shelf3','선반'),(87,'EPIC','FURNITURE','Childrens_Room_Bed','침대'),(88,'EPIC','FURNITURE','Childrens_Room_Bed_Base','침대 프레임'),(89,'RARE','FURNITURE','Childrens_Room_Blanket','담요'),(90,'RARE','PROP','Childrens_Room_Carpet','카펫'),(91,'EPIC','FURNITURE','Childrens_Room_Chair','의자'),(92,'RARE','PROP','Childrens_Room_Cornice','커튼봉'),(93,'RARE','PROP','Childrens_Room_Curtain','커튼'),(94,'RARE','PROP','Childrens_Room_Flower','꽃'),(95,'RARE','PROP','Childrens_Room_Horse','말장난감'),(96,'EPIC','FURNITURE','Childrens_Room_Mattress','메트리스'),(97,'RARE','PROP','Childrens_Room_Paper','종이'),(98,'RARE','PROP','Childrens_Room_Pensils','연필'),(99,'RARE','PROP','Childrens_Room_Pillow_1','베개'),(100,'RARE','FURNITURE','Childrens_Room_Shelf','선반'),(101,'EPIC','FURNITURE','Childrens_Room_Table','테이블'),(102,'EPIC','PROP','Childrens_Room_Teddy','테디베어'),(103,'RARE','PROP','Childroom2_backpack','가방'),(104,'UNIQUE','FURNITURE','Childroom2_bed_base','침대'),(105,'RARE','PROP','Childroom2_carpet','카펫'),(106,'RARE','FURNITURE','Childroom2_Chair','의자'),(107,'EPIC','PROP','Childroom2_Computer','컴퓨터'),(108,'RARE','FURNITURE','Childroom2_cupboard','찬장'),(109,'RARE','PROP','Childroom2_Picture1','사진'),(110,'RARE','PROP','Childroom2_Picture2','사진'),(111,'RARE','PROP','Childroom2_Picture3','사진'),(112,'RARE','PROP','Childroom2_Pillow_1','베개'),(113,'RARE','PROP','Childroom2_Pillow_2','베개'),(114,'EPIC','PROP','Childroom2_Pouf','쿠션'),(115,'RARE','PROP','Childroom2_skateboard','스케이트 보드'),(116,'EPIC','FURNITURE','Childroom2_Table','테이블'),(117,'RARE','PROP','Childroom2_tablelamp','램프'),(118,'RARE','PROP','Childroom2_toy','장난감'),(119,'EPIC','FURNITURE','Garage_Chair','의자'),(120,'RARE','PROP','Garage_Lamp','램프'),(121,'RARE','PROP','Garage_Lightening','번개 장식'),(122,'RARE','PROP','Garage_Poster','포스터'),(123,'EPIC','FURNITURE','Garage_Shelf','선반'),(124,'EPIC','PROP','Garage_Speaker','스피커'),(125,'RARE','PROP','Garage_Stickers','스티커'),(126,'RARE','FURNITURE','Garage_Switch','스위치'),(127,'EPIC','FURNITURE','Garage_Table','테이블'),(128,'RARE','FURNITURE','Garage_Trashcan','쓰레기통'),(129,'RARE','PROP','Garage_Wrench','렌치'),(130,'RARE','PROP','Gym_Ball','공'),(131,'RARE','FURNITURE','Gym_Barbell','바벨'),(132,'EPIC','PROP','Gym_Blinds','블라인드'),(133,'RARE','FURNITURE','Gym_Box','상자'),(134,'RARE','PROP','Gym_DumbellsDum1','덤벨'),(135,'RARE','PROP','Gym_DumDumbells','덤벨'),(136,'RARE','PROP','Gym_Mirror','거울'),(137,'EPIC','PROP','Gym_Peloton','실내 자전거'),(138,'RARE','PROP','Gym_Poster','포스터'),(139,'RARE','PROP','Gym_Rug','깔개'),(140,'EPIC','FURNITURE','Gym_Shelf','선반'),(141,'EPIC','PROP','Gym_Shelf_2','선반'),(142,'RARE','PROP','Gym_Shoes','신발'),(143,'EPIC','PROP','Gym_Speakers','스피커'),(144,'RARE','PROP','Gym_Stand','스탠드'),(145,'RARE','PROP','Gym_Towel','수건'),(146,'RARE','PROP','Gym_Weight','케틀 벨'),(147,'RARE','PROP','Kitchen_2_Boards','도마'),(148,'RARE','PROP','Kitchen_2_Bowl','그릇'),(149,'EPIC','FURNITURE','Kitchen_2_Cabinet','수납장'),(150,'EPIC','FURNITURE','Kitchen_2_Cabinet_2','수납장'),(151,'EPIC','FURNITURE','Kitchen_2_Cabinet_3','수납장'),(152,'UNIQUE','FURNITURE','Kitchen_2_Cabinet_4','수납장'),(153,'EPIC','FURNITURE','Kitchen_2_Cabinet_5','수납장'),(154,'RARE','PROP','Kitchen_2_Carpet','카펫'),(155,'EPIC','PROP','Kitchen_2_Chair_2','의자'),(156,'RARE','PROP','Kitchen_2_Clock','시계'),(157,'EPIC','PROP','Kitchen_2_CoffeeMachine','커피머신'),(158,'RARE','PROP','Kitchen_2_CraspediaFlower','꽃'),(159,'RARE','PROP','Kitchen_2_Cup','컵'),(160,'RARE','FURNITURE','Kitchen_2_Curtain','커튼'),(161,'EPIC','PROP','Kitchen_2_Cutlery','주방용 칼'),(162,'RARE','PROP','Kitchen_2_Glass','컵'),(163,'RARE','PROP','Kitchen_2_Jars','항아리'),(164,'RARE','PROP','Kitchen_2_Napkin','냅킨'),(165,'RARE','PROP','Kitchen_2_Pan','냄비'),(166,'RARE','PROP','Kitchen_2_Pictures','사진'),(167,'RARE','PROP','Kitchen_2_Plate','접시'),(168,'RARE','PROP','Kitchen_2_Plate_2','접시'),(169,'RARE','PROP','Kitchen_2_Shelfs','선반'),(170,'RARE','PROP','Kitchen_2_Sponge','스펀지'),(171,'UNIQUE','FURNITURE','Kitchen_2_Stove','난로'),(172,'RARE','PROP','Kitchen_2_Sunflowers','꽃'),(173,'EPIC','PROP','Kitchen_2_Table','테이블'),(174,'RARE','PROP','Kitchen_2_Tap','수도꼭지'),(175,'RARE','PROP','Kitchen_2_Vase','꽃병'),(176,'RARE','PROP','Kitchen_Bottle','병'),(177,'EPIC','FURNITURE','Kitchen_Cabinet2','수납장'),(178,'EPIC','FURNITURE','Kitchen_Cabinet3','수납장'),(179,'UNIQUE','FURNITURE','Kitchen_Cabinet4','수납장'),(180,'UNIQUE','FURNITURE','Kitchen_Cabinet7','수납장'),(181,'EPIC','PROP','Kitchen_Chair2','의자'),(182,'EPIC','PROP','Kitchen_Coffee_Pot','커피 포트'),(183,'EPIC','PROP','Kitchen_CoffeeMachine','커피머신'),(184,'RARE','PROP','Kitchen_Cup2','컵'),(185,'RARE','PROP','Kitchen_Dispenser','주방 세제'),(186,'RARE','PROP','Kitchen_Flower3','꽃'),(187,'RARE','PROP','Kitchen_Glass2','컵'),(188,'RARE','PROP','Kitchen_Hood','후드'),(189,'RARE','FURNITURE','Kitchen_Jar','항아리'),(190,'RARE','FURNITURE','Kitchen_Jar2','항아리'),(191,'RARE','FURNITURE','Kitchen_Jar3','항아리'),(192,'RARE','FURNITURE','Kitchen_Jar4','항아리'),(193,'EPIC','PROP','Kitchen_Microwave','전자레인지'),(194,'RARE','PROP','Kitchen_Napkin4','냅킨'),(195,'RARE','PROP','Kitchen_Plate2','접시'),(196,'EPIC','PROP','Kitchen_Rack','선반'),(197,'UNIQUE','PROP','Kitchen_Refrigerator','냉장고'),(198,'RARE','PROP','Kitchen_Saucepan','냄비'),(199,'RARE','PROP','Kitchen_Saucepan2','냄비'),(200,'RARE','PROP','Kitchen_Skillet','냄비'),(201,'RARE','PROP','Kitchen_Spoon3','숟가락'),(202,'EPIC','FURNITURE','Kitchen_Stove','난로'),(203,'EPIC','FURNITURE','Kitchen_Table','테이블'),(204,'RARE','PROP','Kitchen_Tap','수도꼭지'),(205,'RARE','PROP','Kitchen_Teapot','찻 주전자'),(206,'RARE','PROP','Kitchen_Towel','수건'),(207,'RARE','PROP','laundry_basket','바구니'),(208,'EPIC','PROP','Laundry_basket_with_towel_1','바구니'),(209,'RARE','PROP','Laundry_basket2','바구니'),(210,'RARE','PROP','laundry_basket3','바구니'),(211,'RARE','PROP','Laundry_Bottle_handle','병'),(212,'RARE','PROP','Laundry_Bottles','병'),(213,'RARE','PROP','Laundry_brush','솔'),(214,'RARE','PROP','Laundry_cleaning_broom','빗자루'),(215,'RARE','PROP','Laundry_clother2','옷'),(216,'RARE','PROP','Laundry_clothers','옷'),(217,'RARE','FURNITURE','Laundry_dryer','건조기'),(218,'EPIC','FURNITURE','Laundry_hanger','헹거'),(219,'EPIC','PROP','Laundry_ironing_installation','다리미'),(220,'RARE','PROP','Laundry_mop','대걸레'),(221,'EPIC','FURNITURE','Laundry_shelve_stand1','스탠드'),(222,'EPIC','PROP','Laundry_shelves','선반'),(224,'RARE','PROP','Laundry_towels1','수건'),(225,'RARE','PROP','Laundry_towels3','수건'),(226,'EPIC','PROP','Laundry_towels5','수건'),(227,'UNIQUE','FURNITURE','Laundry_washer','세탁기'),(228,'RARE','PROP','Laundry_washing_powders2','세탁 세제'),(229,'RARE','PROP','Living_Room_book9','책'),(230,'RARE','PROP','Living_Room_bowls1','그릇'),(231,'UNIQUE','FURNITURE','Living_Room_cabinet','수납장'),(232,'RARE','PROP','Living_Room_carpet','카펫'),(233,'RARE','PROP','Living_Room_cornice','커튼봉'),(234,'RARE','PROP','Living_Room_curtains','커튼'),(235,'EPIC','PROP','Living_Room_floortile','바닥타일'),(236,'RARE','PROP','Living_Room_flower1','꽃'),(237,'RARE','PROP','Living_Room_flower2','꽃'),(238,'RARE','PROP','Living_Room_flower3','꽃'),(239,'RARE','PROP','Living_Room_glasses','컵'),(240,'RARE','PROP','Living_Room_lamp2','램프'),(241,'RARE','PROP','Living_Room_ottoman','오토만'),(242,'RARE','PROP','Living_Room_photoframe','액자'),(243,'EPIC','PROP','Living_Room_picture','사진'),(244,'EPIC','PROP','Living_Room_pillows','베개'),(245,'EPIC','PROP','Living_Room_shelves','선반'),(246,'UNIQUE','PROP','Living_Room_sofa','소파'),(247,'RARE','PROP','Living_Room_switch','스위치'),(248,'RARE','PROP','Living_Room_table','테이블'),(249,'UNIQUE','PROP','Living_Room_TV','텔레비전'),(250,'RARE','PROP','Livingroom2_Ball','공'),(251,'RARE','PROP','Livingroom2_Book','책'),(252,'RARE','PROP','Livingroom2_Book_2','책'),(253,'RARE','PROP','Livingroom2_Book_3','책'),(254,'RARE','PROP','Livingroom2_Book_4','책'),(255,'RARE','PROP','Livingroom2_Bowl','강아지 밥그릇'),(256,'RARE','PROP','Livingroom2_Cornice','커튼봉'),(257,'RARE','PROP','Livingroom2_Cup','컵'),(258,'RARE','PROP','Livingroom2_Curtain','커튼'),(259,'RARE','PROP','Livingroom2_Curtain2','커튼'),(260,'RARE','PROP','Livingroom2_DogBed','강아지 쿠션'),(261,'RARE','PROP','Livingroom2_Flower','꽃'),(262,'RARE','PROP','Livingroom2_Glasses','컵'),(263,'RARE','PROP','Livingroom2_iPad','갤럭시 탭'),(264,'RARE','PROP','Livingroom2_Lamp','램프'),(265,'RARE','PROP','Livingroom2_Napkin','냅킨'),(266,'RARE','PROP','Livingroom2_Photoframe','액자'),(267,'RARE','PROP','Livingroom2_Picture','사진'),(268,'RARE','PROP','Livingroom2_Pillow','베개'),(269,'RARE','PROP','Livingroom2_Pillow_2','베개'),(270,'RARE','PROP','Livingroom2_Rug','깔개'),(271,'EPIC','FURNITURE','Livingroom2_Shelf','선반'),(272,'EPIC','FURNITURE','Livingroom2_Sofa','소파'),(273,'RARE','PROP','Livingroom2_Sunflower','꽃'),(274,'RARE','FURNITURE','Livingroom2_Table','테이블'),(275,'RARE','PROP','Livingroom2_Toy','장난감'),(276,'EPIC','FURNITURE','Livingroom2_TV','텔레비전'),(277,'RARE','PROP','Livingroom2_Vase','꽃병'),(278,'RARE','PROP','Livingroom2_Vase_2','꽃병'),(279,'RARE','PROP','Office_Books','책'),(280,'RARE','PROP','Office_Box','상자'),(281,'RARE','PROP','Office_Carpet','카펫'),(282,'EPIC','FURNITURE','Office_Chair','의자'),(283,'EPIC','FURNITURE','Office_Chair_2','의자'),(284,'RARE','PROP','Office_Cup','컵'),(285,'EPIC','PROP','Office_Cupboard','찬장'),(286,'RARE','PROP','Office_Flower','꽃'),(287,'RARE','PROP','Office_Flower_2','꽃'),(288,'RARE','PROP','Office_Lamp','램프'),(289,'RARE','PROP','Office_Pens','연필'),(290,'RARE','PROP','Office_Photoframe','액자'),(291,'RARE','PROP','Office_Photoframe_2','액자'),(292,'RARE','PROP','Office_Photoframe_3','액자'),(293,'RARE','PROP','Office_Photoframe_4','액자'),(294,'RARE','PROP','Office_Photoframe_5','액자'),(295,'RARE','PROP','Office_Picture','사진'),(296,'RARE','PROP','Office_Pillow_2','베개'),(297,'EPIC','PROP','Office_Shelfs','선반'),(298,'RARE','PROP','Office_Stickers','스티커'),(299,'RARE','PROP','Office2_Books1','책'),(300,'RARE','PROP','Office2_Books2','책'),(301,'RARE','PROP','Office2_Books3','책'),(302,'RARE','FURNITURE','Office2_box_1','상자'),(303,'RARE','FURNITURE','Office2_box_2','상자'),(304,'RARE','FURNITURE','Office2_box_3','상자'),(305,'RARE','FURNITURE','Office2_box_4','상자'),(306,'RARE','FURNITURE','Office2_box_5','상자'),(307,'RARE','FURNITURE','Office2_box_6','상자'),(308,'RARE','FURNITURE','Office2_box_7','상자'),(309,'RARE','PROP','Office2_carpet','카펫'),(310,'EPIC','FURNITURE','Office2_chair','의자'),(311,'RARE','PROP','Office2_clock_1','시계'),(312,'EPIC','PROP','Office2_decoration1','장식품'),(313,'RARE','PROP','Office2_decoration2','장식품'),(314,'RARE','PROP','Office2_Flower','꽃'),(315,'EPIC','PROP','Office2_Keyboard','키보드'),(316,'EPIC','PROP','Office2_little_table','테이블'),(317,'EPIC','PROP','Office2_monitor1','모니터'),(318,'RARE','PROP','Office2_Pens','연필'),(319,'RARE','PROP','Office2_Photoframe_2','액자'),(320,'RARE','PROP','Office2_Photoframe_3','액자'),(321,'RARE','PROP','Office2_Photoframe_4','액자'),(322,'RARE','PROP','Office2_Photoframe1','액자'),(323,'RARE','PROP','Office2_picture','사진'),(324,'UNIQUE','PROP','Office2_shelves','선반'),(325,'EPIC','FURNITURE','Office2_sofa','소파'),(326,'RARE','FURNITURE','Office2_stand','스탠드'),(327,'EPIC','FURNITURE','Office2_table','테이블'),(328,'EPIC','PROP','Office2_Vinyl_players','턴테이블'),(329,'RARE','PROP','Patio_Bush_1','정원 나무'),(330,'EPIC','FURNITURE','Patio_Chair','의자'),(331,'RARE','PROP','Patio_Cup','컵'),(332,'RARE','PROP','Patio_Flower1','꽃'),(333,'EPIC','PROP','Patio_Table','테이블'),(334,'EPIC','PROP','Patio_Tea_set','찻주전자 세트'),(335,'RARE','PROP','Patio_teapot','컵 받침'),(336,'EPIC','PROP','Patio_Tree','나무'),(337,'EPIC','PROP','Yogaroom_airconditioning','에어컨'),(338,'RARE','PROP','Yogaroom_Bottle1','병'),(339,'RARE','PROP','Yogaroom_Bottle2','병'),(340,'RARE','PROP','Yogaroom_Bottle3','병'),(341,'RARE','PROP','Yogaroom_flower1','꽃'),(342,'RARE','PROP','Yogaroom_flower2','꽃'),(343,'RARE','PROP','Yogaroom_flower3','꽃'),(344,'RARE','PROP','Yogaroom_flower4','꽃'),(345,'RARE','PROP','Yogaroom_pillow5','베개'),(346,'RARE','PROP','Yogaroom_rug1','깔개'),(347,'RARE','ROOM','Bedroom3_base','방'),(348,'RARE','ROOM','Bedroom_Base','방'),(349,'EPIC','ROOM','Childroom2_base','방'),(350,'EPIC','ROOM','Garage_Base','방'),(351,'EPIC','ROOM','Kitchen_2_Base','방'),(352,'EPIC','ROOM','Laundry_base','방'),(353,'EPIC','ROOM','Livingroom2_Base','방'),(354,'EPIC','ROOM','Office2_base','방'),(355,'EPIC','ROOM','Office_Base','방'),(356,'EPIC','ROOM','Yogaroom_base','방'),(357,'EPIC','FURNITURE','Backyard_Bench','벤치'),(358,'RARE','PROP','Backyard_Stones','돌들'),(359,'RARE','PROP','Backyard_Sunflowers','해바라기'),(360,'EPIC','FURNITURE','Garage_Car','차'),(361,'RARE','PROP','Garage_Windows','창문'),(362,'EPIC','FURNITURE','Patio_Gazeebo','데크'),(363,'RARE','PROP','Patio_Gnome','정원 요정'),(364,'RARE','PROP','Patio_Lamp','램프'),(365,'EPIC','FURNITURE','Playground_childrenscomplex','미끄럼틀'),(366,'EPIC','FURNITURE','Playground_childrenscomplex_base','놀이터'),(367,'RARE','PROP','Playground_chil_car1','장난감 자동차'),(368,'EPIC','FURNITURE','Playground_climbing','놀이터 등산'),(369,'RARE','PROP','Playground_Fence','울타리'),(370,'EPIC','FURNITURE','Playground_stairs','계단'),(371,'EPIC','FURNITURE','armchair_006','팔걸이 의자'),(372,'EPIC','FURNITURE','armchair_007','팔걸이 의자'),(373,'LEGENDARY','FURNITURE','bed_005','침대'),(374,'LEGENDARY','FURNITURE','bed_006','침대'),(375,'UNIQUE','FURNITURE','bed_015','침대'),(376,'LEGENDARY','FURNITURE','closet_010','옷장'),(377,'UNIQUE','FURNITURE','closet_016','옷장'),(378,'EPIC','FURNITURE','closet_018','옷장'),(379,'EPIC','FURNITURE','closet_023','옷장'),(380,'LEGENDARY','FURNITURE','clothes_037','옷'),(381,'UNIQUE','FURNITURE','coffee_table_006','테이블'),(382,'UNIQUE','FURNITURE','coffee_table_007','테이블'),(383,'EPIC','FURNITURE','coffee_table_009','테이블'),(384,'EPIC','FURNITURE','Curtains_013','커튼'),(385,'RARE','FURNITURE','electronics_006','프린터기'),(386,'EPIC','FURNITURE','electronics_011','노트북'),(387,'LEGENDARY','FURNITURE','entertainment_001','당구대'),(388,'LEGENDARY','FURNITURE','entertainment_004','게임기'),(389,'UNIQUE','FURNITURE','entertainment_010','자판기'),(390,'UNIQUE','FURNITURE','entertainment_011','영화의자'),(391,'RARE','FURNITURE','entertainment_012','팝콘'),(392,'EPIC','FURNITURE','entertainment_018','당구대 걸이'),(393,'UNIQUE','FURNITURE','entertainment_019','게임기'),(394,'EPIC','FURNITURE','entertainment_025','팝콘기계'),(395,'UNIQUE','FURNITURE','for_kids_002','미끄럼틀'),(396,'EPIC','FURNITURE','for_kids_003','공풀장'),(397,'LEGENDARY','FURNITURE','for_kids_004','놀이터'),(398,'EPIC','FURNITURE','kitchen_chair_018','의자'),(399,'EPIC','FURNITURE','kitchen_chair_023','의자'),(400,'UNIQUE','FURNITURE','kitchen_item_002','싱크대'),(401,'UNIQUE','FURNITURE','kitchen_item_003','수납장'),(402,'LEGENDARY','FURNITURE','kitchen_item_011','부엌 세트'),(403,'UNIQUE','FURNITURE','kitchen_item_014','오븐'),(404,'EPIC','FURNITURE','kitchen_item_029','전자레인지'),(405,'UNIQUE','FURNITURE','kitchen_item_030','가스레인지'),(406,'UNIQUE','FURNITURE','kitchen_item_033','냉장고'),(407,'EPIC','FURNITURE','kitchen_table_017','테이블'),(408,'UNIQUE','FURNITURE','musical_instrument_001','피아노'),(409,'EPIC','FURNITURE','musical_instrument_010','기타'),(410,'EPIC','FURNITURE','musical_instrument_016','스피커'),(411,'EPIC','FURNITURE','office_table_024','책상'),(412,'EPIC','FURNITURE','office_table_028','책상'),(413,'EPIC','FURNITURE','Partitions_009','파티션'),(414,'UNIQUE','FURNITURE','shelf_055','선반'),(415,'EPIC','PROP','shop_136','케이크'),(416,'UNIQUE','FURNITURE','sofa_001','소파'),(417,'UNIQUE','FURNITURE','sofa_003','소파'),(418,'UNIQUE','FURNITURE','sofa_017','소파'),(419,'EPIC','FURNITURE','Stairs_001','계단'),(420,'LEGENDARY','FURNITURE','tv_wall_005','TV'),(421,'EPIC','PROP','window_015','창문');
/*!40000 ALTER TABLE `asset` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-17  9:38:01
