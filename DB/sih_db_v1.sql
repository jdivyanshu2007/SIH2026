/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.20-12.3.3-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sih_db
-- ------------------------------------------------------
-- Server version	12.3.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `food` (
  `rule_id` varchar(255) NOT NULL,
  `additives` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `calcium_mg` double DEFAULT NULL,
  `calories_kcal` double DEFAULT NULL,
  `carbohydratesg` double DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `cholesterol_mg` double DEFAULT NULL,
  `dietary_fiberg` double DEFAULT NULL,
  `expire_data` varchar(255) DEFAULT NULL,
  `ingredients` longtext DEFAULT NULL,
  `iron_mg` double DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `preservatives` varchar(255) DEFAULT NULL,
  `proteinsg` double DEFAULT NULL,
  `saturated_fatg` double DEFAULT NULL,
  `serving_sizeg` double DEFAULT NULL,
  `sodium_mg` double DEFAULT NULL,
  `sub_category` varchar(255) DEFAULT NULL,
  `sugarg` double DEFAULT NULL,
  `total_fatg` double DEFAULT NULL,
  `trans_fatg` double DEFAULT NULL,
  `vitamin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES
('BE1','Sucralose, Acesulfame K, Citric Acid, Sodium Citrate','Monster Energy',0,9,4.4,'Beverages',0,0,NULL,'Carbonated Water, Citric Acid, Taurine, Sodium Citrate, Flavourings, Panax Ginseng Root Extract, Sucralose, Acesulfame K, Caffeine, Sorbic Acid, Benzoic Acid, L-Carnitine L-Tartrate, Vitamins B3, B5, B6, B12, Sodium Chloride, D-Glucuronolactone, Guarana Seed Extract, Inositol',0,'Monster Ultra Zero Sugar','Sorbic Acid, Benzoic Acid',NULL,0,500,400,'Energy Drink',0,0,0,'B3, B5, B6, B12'),
('BE2','Sucralose, Citric Acid, Sodium Citrate','Monster Energy',0,167,42,'Beverages',0,0,'24','Carbonated Water, Sucrose, Glucose Syrup, Citric Acid, Sodium Citrate, Taurine, Panax Ginseng Extract, L-Carnitine, Caffeine, Sorbic Acid, Benzoic Acid, Sucralose, Vitamins B3, B6, B12, D-Glucuronolactone, Inositol, Guarana Extract',0,'Monster Energy Original Green','Sorbic Acid, Benzoic Acid',0,0,350,280,'Energy Drink',33,0,0,'B3, B6, B12'),
('BE3','Sucralose, Xanthan Gum, Sodium Alginate, INS/food additives from acidity regulators and stabilisers','Monster Energy',0,245,62,'Beverages',0,0,'24','Carbonated Water, Fruit Juices from Concentrate (15%) (Guava, Mango, White Grape, Apple, Pineapple, Apricot, Orange, Peach, Lemon, Passion Fruit), Sucrose, Glucose Syrup, Citric Acid, Taurine (0.4%), Potassium Citrate, Sodium Citrate, Flavourings, Potassium Sorbate, Sodium Benzoate, Caffeine (0.03%), Vitamins (B2, B3, B6, B12), Xanthan Gum, Sodium Alginate, Sucralose, L-Carnitine L-Tartrate (0.004%), Inositol (0.002%), Carotenes, Vegetable Oils, Modified Starch, Sodium Chloride, Maltodextrin',0,'Monster Juice Mango Loco','Potassium Sorbate, Sodium Benzoate',0,0,500,72,'Energy Drink',58,0,0,'Vitamin B2, Vitamin B3, Vitamin B6, Vitamin B12'),
('BE4','Erythritol, Sucralose, Acesulfame K, Citric Acid, Sodium Citrates, L-Carnitine L-Tartrate, Inositol','Monster Energy',0,14,7,'Beverages',0,0,'9','Carbonated Water, Citric Acid, Erythritol, Taurine (0.4%), Sodium Citrates, Flavourings, Panax Ginseng Root Extract (0.08%), Sorbic Acid, Benzoic Acid, Sucralose, Acesulfame K, Caffeine (0.03%), L-Carnitine L-Tartrate (0.015%), Vitamins B3, B5, B6, B12, Purple Sweet Potato Concentrate, Inositol',0,'Monster Energy Ultra Rosa','Sorbic Acid, Benzoic Acid',0,0,500,400,'Energy Drink',0,0,0,'Vitamin B3, Vitamin B5, Vitamin B6, Vitamin B12'),
('BE5','Sodium Citrate, Sucralose, Gum Arabic, Ester Gum, Red 40, Blue 1, Maltodextrin','Monster Energy',0,210,53,'Beverages',0,0,'24','Carbonated Water, Sugar, Glucose, Orange Juice Concentrate, Apple Juice Concentrate, Taurine, Citric Acid, Raspberry Juice Concentrate, Guava Puree, Cherry Juice Concentrate, Sodium Citrate, Potassium Sorbate, Caffeine, Maltodextrin, Sodium Benzoate, Natural Flavors, Niacinamide (Vitamin B3), Sucralose, Pineapple Juice Concentrate, Passionfruit Juice Concentrate, Gum Arabic, Red 40, Salt, Ester Gum, Inositol, L-Carnitine L-Tartrate, Pyridoxine Hydrochloride (Vitamin B6), Riboflavin (Vitamin B2), Blue 1, Cyanocobalamin (Vitamin B12)',0,'Monster Pacific Punch','Potassium Sorbate, Sodium Benzoate',0,0,500,80,'Energy Drink',51,0,0,'Vitamin B2, Vitamin B3, Vitamin B6, Vitamin B12'),
('BM1','INS 415, INS 412, INS 407, INS 452(i), INS 436, Added Flavour','Cavin\'s',196,223.4,31.4,'Beverages',26,0,'9','Standardized Milk (89%), Sugar, Stabilizers (INS 415, INS 412, INS 407), Sequestering Agent, Iodized Salt, Emulsifier (INS 436), Vitamin and Mineral Premix (Zinc, Vitamin A, Vitamin D), Added Flavour',0,'Cavin\'s Vanilla Milkshake','No added preservatives',6,5.4,200,160,'Milkshake',31,8.2,0.2,'Vitamin A, Vitamin D, Zinc'),
('BM2','INS 415, INS 412, INS 407, INS 451(i), Added Flavour','Cavin\'s',189.8,215,35.1,'Beverages',26,0,'9','Toned Milk (86%), Sugar, Cocoa Solids (1.4%), Stabilizers (INS 415, INS 412, INS 407), Sequestrant Agent (INS 451(i)), Iodized Salt, Mineral and Vitamin Premix (Zinc, Vitamin A, Vitamin D), Added Flavour (Nature Identical Flavouring Substances)',0,'Cavin\'s Chocolate Milkshake','No added preservatives',6,3.6,180,187.4,'Milkshake',33,5.6,0.1,'Vitamin A, Vitamin D, Zinc'),
('BM3','INS 965(ii), INS 340(ii), INS 340(iii), INS 452(i), INS 339(iii), INS 460(i), INS 466','Horlicks',540,171,17,'Beverages',5,3.5,'6','Milk, Water, Sweetener (INS 965(ii)), Edible Fiber, Cocoa Powder, Cereal Product, Vitamins & Minerals, Nature Identical Flavouring Substances, Acidity Regulators (INS 340(ii), INS 340(iii), INS 452(i), INS 339(iii)), Stabilizers (INS 460(i), INS 466), Edible Iodised Salt',0,'Horlicks Protein Milkshake','No artificial preservatives',20,2.4,240,150,'Milkshake',8,3.6,0.01,'Vitamin B1, B2, B3, B6, B9, B12, D2'),
('BM4','INS 460(i), INS 466, INS 471, INS 339(ii), Calcium Carbonate, Zinc Sulphate','Hershey\'s',0,170,29,'Beverages',0,0,'9','Water, Milk Solids (8%), Sugar, Cocoa Solids (0.75%), Emulsifiers (INS 460(i), INS 466, INS 471), Calcium Carbonate, Flavours (Nature Identical Flavouring Substances), Sequestrant (INS 339(ii)), Iodised Salt, Zinc Sulphate, Vitamin E (Acetate), Vitamin A (Acetate), Vitamin D2 (Ergocalciferol), Vitamin B1 (Thiamine Chloride Hydrochloride), Vitamin B2 (Riboflavin)',0,'Hershey\'s Chocolate Milkshake','No added preservatives',4.4,2,180,93,'Milkshake',29,4.1,0.1,'Vitamin A, Vitamin D2, Vitamin E, Vitamin B1, Vitamin B2'),
('BM5','INS 407, INS 110, INS 102, Added Flavours','Amul',280,209,26,'Beverages',24,0,'6','Standardized Milk, Milk Solids, Sugar, Almond Pieces (0.5%), Permitted Stabilizer (E407), Permitted Synthetic Food Colours (E110, E102), Added Flavours (Artificial Flavouring Substances - Badam, Kesar & Elaichi)',0,'Amul Badam Shakers','None listed',6,5.6,200,84,'Milkshake',26,9,0,'0.0'),
('BS1','INS 338, INS 150d, Caffeine, Natural Flavouring Substances','Coca-Cola',0,88,21.8,'Beverages',0,0,'3','Carbonated Water, Sugar, Acidity Regulator (INS 338), Caffeine (8.7 mg/100 g), Colour (INS 150d), Flavours (Natural Flavouring Substances)',0,'Coca-Cola Original Taste','None listed',0,0,200,17,'Soft Drink',21.2,0,0,'0.0'),
('BS2','INS 338, INS 331, INS 955, INS 950, INS 150d, Caffeine, Natural Cola-type Flavours','Coca-Cola',0,0,0,'Beverages',0,0,'4','Carbonated Water, Acidity Regulators (INS 338, INS 331), Sweeteners (INS 955, INS 950), Preservative (INS 211), Caffeine, Colour (INS 150d), Natural Cola-type Flavours',0,'Coca-Cola Zero Sugar','INS 211 (Sodium Benzoate)',0,0,200,15,'Soft Drink',0,0,0,'0.0'),
('BS3','INS 338, INS 331(iii), INS 951, INS 950, INS 150d','Coca-Cola',0,0,0,'Beverages',0,0,'6','Carbonated Water, Acidity Regulators (338, 331(iii)), Sweeteners (951, 950), Preservative (211), Caffeine (10 mg/100g), Colour (150d), Flavours (Natural Flavouring Substances)',0,'Diet Coke','INS 211',0,0,200,8.3,'Soft Drink',0,0,0,'0.0'),
('BS4','INS 338, INS 150d, Added Cola Flavouring Substances, Caffeine','Coca-Cola',0,84,21.2,'Beverages',0,0,'3','Carbonated Water, Sugar, Acidity Regulator (338), Caffeine, Permitted Natural Colour (150d), Added Flavours (Natural, Nature-Identical and Artificial Flavouring Substances - Cola Flavour)',0,'Thums Up','None listed',0,0,200,1.62,'Soft Drink',20.8,0,0,'0.0'),
('BS5','INS 330, INS 331(iii)','Coca-Cola',0,98,24.4,'Beverages',0,0,'3','Carbonated Water, Sugar, Acidity Regulators (330, 331(iii)), Preservative (211), Flavours (Natural Flavouring Substances)',0,'Sprite','INS 211',0,0,200,20.2,'Soft Drink',23.4,0,0,'0.0'),
('SB1','INS 500(ii), INS 503(ii), INS 322, Nature Identical Flavouring Substances','Cadbury Oreo',0,482,71.2,'Solid items',0,0,'6','Refined Wheat Flour, Sugar, Edible Vegetable Fat, Palmolein Oil, Cocoa Solids (3%), Invert Syrup, Leavening Agents (INS 500(ii), INS 503(ii)), Iodised Salt, Emulsifier (INS 322), Nature Identical Flavouring Substances',0,'Cadbury Oreo Original Chocolatey Sandwich Biscuits','None specifically listed',5.3,9.8,100,420,'Biscuits',36.5,19.7,0.1,'0.0'),
('SB2','INS 503(ii), INS 500(ii), INS 322(i), INS 471, INS 330, INS 334, INS 627, INS 631, INS 551, INS 223, INS 1450, INS 110','Britannia',0,485,71.3,'Solid items',0,0,'6','Refined Wheat Flour, Refined Palmolein & Palm Oil, Sugar, Dehydrated Potato Flakes (11.3%), Iodised Salt, Spices & Condiments, Raising Agents (INS 503(ii), INS 500(ii)), Liquid Glucose, Milk Solids, Invert Sugar Syrup, Rice Flour, Vital Gluten, Natural & Nature Identical Flavouring Substances, Emulsifiers (INS 322(i), INS 471), Maltodextrin, Dry Mango Powder, Acidity Regulators (INS 330, INS 334), Flavour Enhancers (INS 627, INS 631), Anticaking Agent (INS 551), Dough Conditioner (INS 223), Stabilizer (INS 1450), Colour (INS 110)',0,'Britannia 50-50 Potazos Masti Masala','None specifically listed',8,9,100,1188,'Biscuits',17.1,18.7,0,'0.0'),
('SB3','Not completely specified on the available product listing','Britannia',0,486,69.8,'Solid items',0,0,'6','Wheat Flour, Milk Ingredients, Vegetable Fat/Oil, Sugar, Cheese/Dairy Ingredients, Salt, Raising Agents, Emulsifiers, Flavouring Substances and permitted food additives',0,'Britannia 50-50 Cheeze Dipped Crunchy Layered Sandwich','Not specifically listed',7.9,12.9,100,445,' Biscuit',17.4,19.5,0,'0.0'),
('SB4','INS 500(ii), INS 503(ii), INS 450(i), INS 322(i), INS 471, INS 472e, Flavouring Substances','Britannia',0,506,68.2,'Solid items',4.2,0,'6','Refined Wheat Flour (Maida), Refined Palm Oil, Sugar, Spices (Cumin 2.4% and Ajwain), Raising Agents (INS 500(ii), INS 503(ii)), Invert Sugar Syrup, Butter (1.4%), Iodised Salt, Milk Solids, Emulsifier (INS 322(i)), Mono- and Diglycerides (INS 471), Emulsifier (INS 472e), Natural and Nature-Identical Flavouring Substances',0,'Britannia Good Day Crafted Butter Jeera Cookies','None specifically listed',6.4,11.5,100,592,'Biscuit',20.8,23.1,0,'0.0'),
('SB5','INS 503(ii), INS 500(ii), INS 322, INS 471, INS 472e, Flavouring Substances','Britannia',0,512,67,'Solid items',2.5,0,'6','Wheat Flour, Vegetable Fat (Palm), Sugar, Cashew Bits, Invert Sugar, Whole Milk Powder, Butter, Raising Agents (INS 503(ii), INS 500(ii)), Salt, Soya Lecithin (INS 322), Mono & Diglycerides of Fatty Acids (INS 471), Diacetyl Tartaric Acid Esters of Mono & Diglycerides (INS 472e), Butter, Milk, Nut & Vanilla Flavours',0,'Britannia Good Day Cashew Cookies','None specifically listed',7,11,100,0,'Biscuit',22,24,0,'0.0'),
('SC1','INS 442, INS 476, Added Flavours','Cadbury',0,70.1,8,'Solid items',2.7,0.4,'12','Sugar, Milk Solids (22-23%), Cocoa Butter, Cocoa Solids, Edible Vegetable Fat, Emulsifiers (INS 442, INS 476), Added Flavours (Natural, Nature Identical and Artificial - Ethyl Vanillin)',0,'Cadbury Dairy Milk Chocolate','None specifically listed',1,2.6,13.2,17,' Chocolate',7.5,3.8,0.01,'0.0'),
('SC2','INS 322, INS 476, Added Flavours','Amul',0,222.8,22.9,'Solid items',0,0,'12','Sugar, Cocoa Solids, Cocoa Butter, Permitted Emulsifiers (E322, E476), Added Flavours (Artificial Flavouring Substances - Cocoa and Vanilla)',0,'Amul Dark Chocolate','None specifically listed',2.4,8.2,40,0,' Chocolate',17.2,13.5,0,'0.0'),
('SC3','Not specified','Amul',0,0,0,'Solid items',0,0,'12','Milk Chocolate, Roasted Peanuts',0,'Amul Crunchy Peanut Milk Chocolate','None specifically identified',0,0,150,0,' Chocolate',0,0,0,'0.0'),
('SC4','INS 322, INS 476, Added Flavours','Amul',0,557,57.3,'Solid items',0,0,'12','Sugar, Cocoa Solids, Cocoa Butter, Permitted Emulsifiers (E322, E476), Added Flavours (Artificial Flavouring Substances - Cocoa and Vanilla)',0,'Amul Dark Chocolate 55%','None specifically listed',6,20.4,100,0,'Chocolate',43,33.7,0,'0.0'),
('SC5','INS 322, INS 476, Added Flavours','Amul',0,557,57.3,'Solid items',0,0,'12','Sugar, Cocoa Butter, Cocoa Solids, Permitted Emulsifiers (E322, E476), Added Flavours (Artificial Flavouring Substances - Cocoa and Vanilla)',0,'Amul India Twilight Tryst 55% Dark Chocolate','None specifically listed',6,20.4,100,0,' Chocolate',43,33.7,0,'0.0');
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `food_properties`
--

DROP TABLE IF EXISTS `food_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_properties` (
  `rule_id` int(11) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `calcium_mg` varchar(255) DEFAULT NULL,
  `calories_kcal` varchar(255) DEFAULT NULL,
  `carbohydrates_g` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `cholesterol_mg` varchar(255) DEFAULT NULL,
  `dietary_fiber_g` varchar(255) DEFAULT NULL,
  `ingredients` varchar(255) DEFAULT NULL,
  `iron_mg` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `proteins_g` varchar(255) DEFAULT NULL,
  `saturated_fat_g` varchar(255) DEFAULT NULL,
  `serving_size_g` varchar(255) DEFAULT NULL,
  `sodium_mg` varchar(255) DEFAULT NULL,
  `sub_category` varchar(255) DEFAULT NULL,
  `sugar_g` varchar(255) DEFAULT NULL,
  `total_fat_g` varchar(255) DEFAULT NULL,
  `trans_fat_g` varchar(255) DEFAULT NULL,
  `vitamin` varchar(255) DEFAULT NULL,
  `additives` varchar(255) DEFAULT NULL,
  `expire_data` varchar(255) DEFAULT NULL,
  `mfg_data` varchar(255) DEFAULT NULL,
  `preservatives` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_properties`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `food_properties` WRITE;
/*!40000 ALTER TABLE `food_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `food_properties` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-09-07 15:11:20
