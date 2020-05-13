CREATE DATABASE  IF NOT EXISTS `foodtruck` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `foodtruck`;
-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: foodtruck
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `actualite`
--

DROP TABLE IF EXISTS `actualite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `actualite` (
  `id` int(11) NOT NULL,
  `date_de_creation` datetime DEFAULT NULL,
  `date_de_validite` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `imageurl` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `utilisateur_creation` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actualite`
--

LOCK TABLES `actualite` WRITE;
/*!40000 ALTER TABLE `actualite` DISABLE KEYS */;
INSERT INTO `actualite` VALUES (1,'2020-05-13 10:02:13','2020-05-13 10:02:13','Il va falloir faire très attention au données échangées','https://picsum.photos/id/123/200/300','Love PIZZA',1),(2,'2020-05-13 10:02:13','2020-05-13 10:02:13','Il va falloir faire très attention au données échangées','https://picsum.photos/id/123/200/300','Love PIZZA 2',1),(3,'2020-05-13 10:02:13','2020-05-13 10:02:13','Ratatouille maison ','https://cdn.pixabay.com/photo/2018/09/01/11/28/ratatouille-3646586_1280.jpg','Ratatouille',1);
/*!40000 ALTER TABLE `actualite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adresse_facturation`
--

DROP TABLE IF EXISTS `adresse_facturation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `adresse_facturation` (
  `id_adresse_facturation` int(11) NOT NULL AUTO_INCREMENT,
  `code_postal` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isenable` bit(1) DEFAULT NULL,
  `num_rue` int(11) DEFAULT NULL,
  `pays` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rue` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ville` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_adresse_facturation`),
  KEY `FKbtsbmk50p6gsmflv2ofyaat6q` (`id_utilisateur`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse_facturation`
--

LOCK TABLES `adresse_facturation` WRITE;
/*!40000 ALTER TABLE `adresse_facturation` DISABLE KEYS */;
INSERT INTO `adresse_facturation` VALUES (1,'78415',_binary '',8,'France','rue Edouard','Flins',1),(2,'91300',_binary '',7,'France','rue Jean Baptiste Charcot','Massy',2),(3,'59000',_binary '',56,'France','Place du marché','Lille',3),(4,'78410',_binary '',14,'France','Rue des Sources','Aubergenville',4),(5,'75009',_binary '',19,'France','Rue Rougemont','Paris',5);
/*!40000 ALTER TABLE `adresse_facturation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adresse_livraison`
--

DROP TABLE IF EXISTS `adresse_livraison`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `adresse_livraison` (
  `id_adresse_livraison` int(11) NOT NULL AUTO_INCREMENT,
  `code_postal` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isenable` bit(1) DEFAULT NULL,
  `num_rue` int(11) DEFAULT NULL,
  `pays` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rue` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ville` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_adresse_livraison`),
  KEY `FK3s0wh5u2hna1qdy1ch873pi1m` (`id_utilisateur`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse_livraison`
--

LOCK TABLES `adresse_livraison` WRITE;
/*!40000 ALTER TABLE `adresse_livraison` DISABLE KEYS */;
INSERT INTO `adresse_livraison` VALUES (1,'78415',_binary '',8,'France','rue Edouard','Flins',1),(2,'91300',_binary '',7,'France','rue Jean Baptiste Charcot','Massy',2),(3,'59000',_binary '',56,'France','Place du marché','Lille',3),(4,'78410',_binary '',14,'France','Rue des Sources','Aubergenville',4),(5,'75009',_binary '',19,'France','Rue Rougemont','Paris',5);
/*!40000 ALTER TABLE `adresse_livraison` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL AUTO_INCREMENT,
  `datecommande` date DEFAULT NULL,
  `num_facture` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prix_total` double NOT NULL,
  `id_adresse_facturation` int(11) DEFAULT NULL,
  `id_adresse_livraison` int(11) DEFAULT NULL,
  `id_statut_commande` int(11) DEFAULT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_commande`),
  KEY `FKro57bs1nq247dsgokni032hk5` (`id_adresse_facturation`),
  KEY `FKf8uk0bavotte9whfibeeb3cyb` (`id_adresse_livraison`),
  KEY `FKkpqd3364wehdo21iscgfhegjo` (`id_statut_commande`),
  KEY `FK9osurd1i193f9xuxvw9hyg0un` (`id_utilisateur`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
INSERT INTO `commande` VALUES (1,'2018-12-11','79KGR237',5,NULL,NULL,4,1),(2,'2018-12-09','05HBD986',27.5,NULL,NULL,4,2),(3,'2018-12-10','93DTB345',7,NULL,NULL,4,3);
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `commentaire` (
  `id_commentaire` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_commentaire` date DEFAULT NULL,
  `note` double NOT NULL,
  `id_ligne_commande` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_commentaire`),
  KEY `FK2qq5xtmyqf52frnfh4sqxcotc` (`id_ligne_commande`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentaire`
--

LOCK TABLES `commentaire` WRITE;
/*!40000 ALTER TABLE `commentaire` DISABLE KEYS */;
INSERT INTO `commentaire` VALUES (1,'Génial, je me suis régalé!','2018-12-11',5,2),(2,'Un peu trop salé mais belle réalisation!','2018-12-11',4,8),(3,'Proportion trop faible, j ai eu faim','2018-12-10',3,5),(4,'J adore','2018-12-10',5,9);
/*!40000 ALTER TABLE `commentaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `famille_repas`
--

DROP TABLE IF EXISTS `famille_repas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `famille_repas` (
  `id_famille_repas` int(11) NOT NULL AUTO_INCREMENT,
  `imageurl` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isenabled` bit(1) NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_famille_repas`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `famille_repas`
--

LOCK TABLES `famille_repas` WRITE;
/*!40000 ALTER TABLE `famille_repas` DISABLE KEYS */;
INSERT INTO `famille_repas` VALUES (1,'https://cdn.pixabay.com/photo/2017/08/03/21/48/drinks-2578446_960_720.jpg',_binary '','Boissons froides'),(2,'https://cdn.pixabay.com/photo/2016/02/19/10/59/espresso-1209522_960_720.jpg',_binary '','Boissons chaudes'),(3,'https://cdn.pixabay.com/photo/2016/03/27/21/59/bread-1284438_960_720.jpg',_binary '','Viennoiserie'),(4,'https://cdn.pixabay.com/photo/2020/03/22/16/18/bread-4957679_960_720.jpg',_binary '','Pain'),(5,'https://cdn.pixabay.com/photo/2017/10/14/21/23/kitchen-2851910_960_720.jpg',_binary '','Entrée'),(6,'https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032_960_720.jpg',_binary '','Plat principal'),(7,'https://cdn.pixabay.com/photo/2016/03/27/22/38/cake-1284548_960_720.jpg',_binary '','Dessert');
/*!40000 ALTER TABLE `famille_repas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `famille_repas_repas`
--

DROP TABLE IF EXISTS `famille_repas_repas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `famille_repas_repas` (
  `id_famille_repas` int(11) NOT NULL,
  `id_repas` int(11) NOT NULL,
  KEY `FKanmm230nbuvcxsnn4943o7vw0` (`id_repas`),
  KEY `FKrv7tuwgshnomppbqy33kj5gg4` (`id_famille_repas`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `famille_repas_repas`
--

LOCK TABLES `famille_repas_repas` WRITE;
/*!40000 ALTER TABLE `famille_repas_repas` DISABLE KEYS */;
INSERT INTO `famille_repas_repas` VALUES (1,1),(2,1),(3,1),(4,1),(1,2),(2,2),(4,2),(5,2),(6,2),(7,2),(1,3),(2,3),(3,3),(4,3),(7,3),(1,4),(2,4),(4,4),(5,4),(6,4),(7,4);
/*!40000 ALTER TABLE `famille_repas_repas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `genre` (
  `id_genre` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_genre`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Mme'),(2,'M.'),(3,'Mlle');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligne_commande`
--

DROP TABLE IF EXISTS `ligne_commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ligne_commande` (
  `id_ligne_commande` int(11) NOT NULL AUTO_INCREMENT,
  `prix_unitaire` double NOT NULL,
  `quantite` int(11) DEFAULT NULL,
  `repas_libelle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_commande` int(11) DEFAULT NULL,
  `id_produit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ligne_commande`),
  KEY `FKf3ttmql7i67fw0oyon0im086n` (`id_commande`),
  KEY `FKdm6vi9v9tfwh696qd8yqf8iqs` (`id_produit`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligne_commande`
--

LOCK TABLES `ligne_commande` WRITE;
/*!40000 ALTER TABLE `ligne_commande` DISABLE KEYS */;
INSERT INTO `ligne_commande` VALUES (1,4,2,NULL,1,1),(2,2,1,NULL,1,15),(3,5,1,NULL,1,13),(4,8,1,NULL,2,22),(5,15.5,1,NULL,2,27),(6,4,1,NULL,2,32),(7,1.5,3,NULL,3,6),(8,1,1,NULL,3,19),(9,2,2,NULL,3,17);
/*!40000 ALTER TABLE `ligne_commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8mb4_general_ci,
  `disponibilite` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isenable` bit(1) DEFAULT NULL,
  `libellecommercial` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `libelletechnique` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prix_unitaire` double NOT NULL,
  `stock_dispo` int(11) DEFAULT NULL,
  `id_famille_repas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_produit`),
  KEY `FKm0imuq65gw4lwgub0ebnb6kts` (`id_famille_repas`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` VALUES (1,' ','1,2,3,4,5,6,7','https://cdn.pixabay.com/photo/2018/06/09/17/55/jug-3464829_1280.jpg',_binary '','Eau plate 1/2l','Eau plate 1/2l',4,250,1),(2,' ','1,2,3,4,5,6,7','https://cdn.pixabay.com/photo/2016/11/19/11/34/bottle-1838772_1280.jpg',_binary '','Eau plate 1l','Eau plate 1l',2,300,1),(3,' ','1,2,3,4,5,6,7','https://cdn.pixabay.com/photo/2014/11/26/14/40/sparkling-water-546255_1280.jpg',_binary '','Eau gazeuse 1/2l','Eau gazeuse 1/2l',5,250,1),(4,' ','1,2,3,4,5,6,7','https://cdn.pixabay.com/photo/2017/11/03/14/32/beverages-2914497_1280.jpg',_binary '','Eau gazeuse 1l','Eau gazeuse 1l',2.5,300,1),(5,'ice tea frais ','1,2,3,4,5,6,7','https://cdn.pixabay.com/photo/2018/04/08/13/17/glass-3301200_1280.jpg',_binary '','Ice Tea Pêche 33cl','Ice Tea Pêche 33cl',1.5,150,1),(6,'coca cola fraiche','1,3,5,6,7','https://cdn.pixabay.com/photo/2014/09/26/19/51/coca-cola-462776_1280.jpg',_binary '','Coca Cola 33cl','Coca Cola 33cl',1.5,150,1),(7,'orangina fraiche ','1,3,5,6,7','https://www.new-york-canteen.com/wp-content/uploads/2018/04/orangina-0001-600x600.png',_binary '','Orangina 33cl','Orangina 33cl',1.5,150,1),(8,'pomme produites en france','1,3,5,6,7','https://media.houra.fr/ART-IMG-XL/49/07/3257981410749-4.jpg',_binary '','Jus de pomme Bio 25cl','Jus de pomme Bio 25cl',2,150,1),(9,'jus d orange pressé ','1,3,5,6,7','https://static.greenweez.com/images/products/19000/600/vitamont-pur-jus-d-oranges-bio-1l.jpg',_binary '','Jus d\"orange Bio 25cl','Jus d\"orange Bio 25cl',2,150,1),(10,'infusion','1,3,5,6,7','https://www.boutique-ethiquable.com/570/the-vert-gingembre-citron-vert-srilanka-equitable-bio.jpg',_binary '','thé vert citron','thé vert citron',3,150,2),(11,'infusion','1,3,5,6,7','https://ileauxepices.com/blog/wp-content/uploads/2013/05/th%C3%A9-noir.jpg',_binary '','thé noir','thé noir',3,200,2),(12,'chocolat noir','1,3,5,6,7','https://cdn.pixabay.com/photo/2016/11/29/13/54/breakfast-1870009_1280.jpg',_binary '','chocolat chaud','chocolat chaud',5,100,2),(13,'café brésilien','1,3,5,6,7','https://www.eismann.fr/content/images/thumbs/0002804_cafe-liegeois_550.jpeg',_binary '','café liegeois','café liegeois',5,100,2),(14,'Authentique croissant au beurre','1,3,5,6,7','https://2.bp.blogspot.com/-037HPlLqDN4/Uv9z1Y456XI/AAAAAAAADgY/cAjiCPtPAnk/s1600/IMG_8139.JPG',_binary '','Croissant au beurre','Croissant',1.5,100,3),(15,'Croissant au beurre recouvert de délicieuses amandes effilées bio','1,3,5,6,7','https://static.750g.com/images/622-auto/cbe1c1acc3af629895ae663b1a113c89/266942.jpg',_binary '','Croissant aux amandes','Croissant aux amandes',1.5,100,3),(16,'Pain au chocolat noir','1,3,5,6,7','https://www.recette360.com/wp-content/uploads/2019/04/Pain-au-chocolat-facile-au-thermomix.jpg',_binary '','Pain au chocolat','Pain au chocolat',1.5,100,3),(17,'Traditionnelle Torsade au raisin','1,3,5,6,7','https://lesucresale-doumsouhaib.com/wp-content/uploads/2013/09/pains-au-raisins-1.jpg',_binary '','Torsade au raisin','Torsade au raisin',1.5,70,3),(18,'farine de seigle','1,3,5,6,7','https://www.atelierdeschefs.com/media/recette-e14297-pain-complet.jpg',_binary '','pain complet','pain complet',1,500,4),(19,'farine de sarasin','1,3,5,6,7','https://img.over-blog-kiwi.com/0/97/14/52/20141106/ob_33b056_dsci0340.JPG',_binary '','pain multicéréales','pain multicéréales',1,500,4),(20,'farine blanche','1,3,5,6,7','https://www.pousstronic.fr/imgfr/news/pain-traditionnel.jpg',_binary '','pain traditionnel','pain tarditionnel',1,500,4),(21,'farine de mais','1,3,5,6,7','https://www.recette247.com/wp-content/uploads/2017/01/Pain-maison-sans-gluten-au-thermomix.jpg',_binary '','pain sans gluten','pain sans gluten',1,500,4),(22,'set de charcuteries et fromages','1,3,5,6,7','https://discoderyapp.s3.eu-west-1.amazonaws.com/product_image_widen_1024/5cc1fdb1b19ef086724045.jpg',_binary '','planche mixte','planche mixte',8,100,5),(23,'voir actualité','1,3,5,6,7','https://static.750g.com/images/622-auto/9a6afdcdb5977d89cdc741ae9d3a0388/soupe-de-potimarron.jpg',_binary '','soupe du jour','soupe du jour',6,100,5),(24,'salade et poulet pané','1,3,5,6,7','https://assets.afcdn.com/recipe/20190704/94709_w1024h768c1cx3000cy2000cxt0cyt0cxb6000cyb4000.jpg',_binary '','salade césar','salade césar',7,100,5),(25,'saumon frais tomate citron','1,3,5,6,7','https://www.atelierdeschefs.com/media/recette-e25457-carpaccio-de-saumon-aux-epices-allumettes-de-pain-de-campagne.jpg',_binary '','carpaccio saumon','carpaccio samon',8,100,5),(26,'Spécialité savoyarde composée de pommes de terre, lardons, reblochon et oignon, et accompagnée d’une bonne salade verte','1,3,5,6,7','https://assets.afcdn.com/recipe/20160401/38946_w1024h768c1cx2690cy1793.jpg',_binary '','Tartiflette','Tartiflette',12.5,70,6),(27,'Plat traditionnel de la cuisine française, le coq au vin est accompagné d’oignons, de carottes, d’un bouquet garni et de champignons','1,3,5,6,7','https://assets.afcdn.com/recipe/20130910/547_w1024h768c1cx1728cy2227.jpg',_binary '','Coq au vin','Coq au vin',15.5,70,6),(28,'Filet de porc dans sa sauce à la moutarde, accompagné de pomme de terre et haricots verts','1,3,5,6,7','https://www.ptitchef.com/imgupl/recipe/filet-de-porc-sauce-a-la-moutarde-et-a-l-estragon--lg-257066p415806.jpg',_binary '','Filet de porc à la moutarde','Filet de porc à la moutarde',15.5,70,6),(29,'tarte faite maison','1,3,5,6,7','https://assets.afcdn.com/recipe/20180503/79001_w1024h768c1cx2880cy1920.jpg',_binary '','tarte tatin','tarte tatin',4,500,7),(30,'mélange de chocolat noir et chocolat blanc','1,3,5,6,7','https://www.hervecuisine.com/wp-content/uploads/2013/02/recette-mousse-au-chocolat-1280x720.jpg',_binary '','mousse au chocolat','mousse au chocolat',4,500,7),(31,'fruits frais produits en France','1,3,5,6,7','https://img-4.linternaute.com/JLeoNfFH6Y457_JEGOPp59Mv0T4=/1240x/smart/1e662d67364c47cd817f649a353483a3/ccmcms-linternaute/10844429.jpg',_binary '','fruits de saison','fruits de saison',4,500,7),(32,'créme allégée en sucre','1,3,5,6,7','https://cdn.pixabay.com/photo/2018/06/22/14/44/creme-brulee-3490885_1280.jpg',_binary '','crème brûlée','crème brûlée',4,500,7);
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profil`
--

DROP TABLE IF EXISTS `profil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `profil` (
  `id_profil` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_profil`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profil`
--

LOCK TABLES `profil` WRITE;
/*!40000 ALTER TABLE `profil` DISABLE KEYS */;
INSERT INTO `profil` VALUES (1,'Admin'),(2,'Client'),(3,'Commercial');
/*!40000 ALTER TABLE `profil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profil_utilisateur`
--

DROP TABLE IF EXISTS `profil_utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `profil_utilisateur` (
  `id_profil` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  KEY `FKg9cf8n7h61unnlmnu8fsimnwt` (`id_utilisateur`),
  KEY `FKps19u4wg14v073fyvup0hj45a` (`id_profil`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profil_utilisateur`
--

LOCK TABLES `profil_utilisateur` WRITE;
/*!40000 ALTER TABLE `profil_utilisateur` DISABLE KEYS */;
INSERT INTO `profil_utilisateur` VALUES (1,1),(3,2),(2,3),(3,4),(1,5);
/*!40000 ALTER TABLE `profil_utilisateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repas`
--

DROP TABLE IF EXISTS `repas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `repas` (
  `id_repas` int(11) NOT NULL AUTO_INCREMENT,
  `heure_limite` time DEFAULT NULL,
  `imageurl` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isenabled` bit(1) NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_repas`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repas`
--

LOCK TABLES `repas` WRITE;
/*!40000 ALTER TABLE `repas` DISABLE KEYS */;
INSERT INTO `repas` VALUES (1,'10:30:00','https://cdn.pixabay.com/photo/2015/05/07/13/46/cappuccino-756490_960_720.jpg',_binary '','Petit déjeuner'),(2,'14:00:00','https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',_binary '','Déjeuner'),(3,'17:00:00','https://cdn.pixabay.com/photo/2014/08/26/12/49/the-cake-427920_960_720.jpg',_binary '','Goûter'),(4,'23:00:00','https://cdn.pixabay.com/photo/2018/04/13/17/14/vegetable-skewer-3317060_960_720.jpg',_binary '','Dîner');
/*!40000 ALTER TABLE `repas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `societe`
--

DROP TABLE IF EXISTS `societe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `societe` (
  `id_societe` int(11) NOT NULL AUTO_INCREMENT,
  `code_postal` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nom_societe` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `num_rue` int(11) DEFAULT NULL,
  `num_siren` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `num_siret` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pays` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rue` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ville` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_societe`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `societe`
--

LOCK TABLES `societe` WRITE;
/*!40000 ALTER TABLE `societe` DISABLE KEYS */;
INSERT INTO `societe` VALUES (1,'92150','CAPGEMINI',5,'479766842','47976684200286','France','rue Frederic Clavel','Suresnes');
/*!40000 ALTER TABLE `societe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statut_commande`
--

DROP TABLE IF EXISTS `statut_commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `statut_commande` (
  `id_statut_commande` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_statut_commande` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_statut_commande`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statut_commande`
--

LOCK TABLES `statut_commande` WRITE;
/*!40000 ALTER TABLE `statut_commande` DISABLE KEYS */;
INSERT INTO `statut_commande` VALUES (1,'En cours'),(2,'Commande soumise '),(3,'En cours de préparation'),(4,'Commande prête'),(5,'En cours de livraison'),(6,'Commande livrée'),(7,'Commande annulée');
/*!40000 ALTER TABLE `statut_commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `utilisateur` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `date_naissance` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isenable` bit(1) DEFAULT NULL,
  `login` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_genre` int(11) DEFAULT NULL,
  `id_societe` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_utilisateur`),
  KEY `FKqylh5sxh2orvhhspohngc90pg` (`id_genre`),
  KEY `FKkv940m48u3yrany9guptae09y` (`id_societe`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` VALUES (1,'1986-01-18','zribi-raouia@hotmail.fr',_binary '','RBenSalah','Ben Salah','$2y$10$PrJWY8LfA7DP7Upz/An0oO4GBSwyIuTtyIoq9Z70NJ88LJV.75nLK','Raouia',2,NULL),(2,'1985-11-25','sarahtavernel@yahoo.fr',_binary '','sarah','Tavernel','$2y$10$PrJWY8LfA7DP7Upz/An0oO4GBSwyIuTtyIoq9Z70NJ88LJV.75nLK','Sarah',2,NULL),(3,'1976-02-09','pierredupond@gmail.com',_binary '','PDupond','Dupond','$2y$10$PrJWY8LfA7DP7Upz/An0oO4GBSwyIuTtyIoq9Z70NJ88LJV.75nLK','Pierre',1,NULL),(4,'1950-12-17','fifibrindacier@yahoo.com',_binary '','FBrindacier','Brindacier','$2y$10$PrJWY8LfA7DP7Upz/An0oO4GBSwyIuTtyIoq9Z70NJ88LJV.75nLK','Fifi',3,NULL),(5,'1990-06-12','artie-chaud@gmail.com',_binary '','AChault','Chault','$2y$10$PrJWY8LfA7DP7Upz/An0oO4GBSwyIuTtyIoq9Z70NJ88LJV.75nLK','Artie',1,NULL);
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-13 10:03:30
