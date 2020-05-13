INSERT INTO actualite
(
	`id`,
	`date_de_creation`,
	`date_de_validite`,
	`description`,
	`imageurl`,
	`title`,
	`utilisateur_creation`
)
VALUES
(
	1,
	now(),
	now(),
	"Il va falloir faire très attention au données échangées",
	"https://picsum.photos/id/123/200/300",
	"Love PIZZA",
	1
);

INSERT INTO actualite
(
	`id`,
	`date_de_creation`,
	`date_de_validite`,
	`description`,
	`imageurl`,
	`title`,
	`utilisateur_creation`
)
VALUES
(
	2,
	now(),
	now(),
	"Il va falloir faire très attention au données échangées",
	"https://picsum.photos/id/123/200/300",
	"Love PIZZA 2",
	1
);

INSERT INTO actualite
(
	`id`,
	`date_de_creation`,
	`date_de_validite`,
	`description`,
	`imageurl`,
	`title`,
	`utilisateur_creation`
)
VALUES
(
	3,
	now(),
	now(),
	"Ratatouille maison ",
	"https://cdn.pixabay.com/photo/2018/09/01/11/28/ratatouille-3646586_1280.jpg",
	"Ratatouille",
	1
);

INSERT INTO profil (libelle)
 VALUES
    ('Admin'),
    ('Client'),
    ('Commercial'); 

INSERT INTO Genre (libelle)
 VALUES
    ('Mme'),
    ('M.'),
    ('Mlle'); 
    
INSERT INTO societe
(`code_postal`,`nom_societe`,`num_rue`,`num_siren`,`num_siret`,`pays`,`rue`,`ville`)
VALUES
("92150","CAPGEMINI","5","479766842","47976684200286", "France", "rue Frederic Clavel", "Suresnes");


INSERT INTO repas (libelle, heure_limite,isenabled, imageurl)
VALUES
	('Petit déjeuner','10:30:00',1,'https://cdn.pixabay.com/photo/2015/05/07/13/46/cappuccino-756490_960_720.jpg'),
	('Déjeuner','14:00:00',1, 'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg'),
    ('Goûter','17:00:00',1, 'https://cdn.pixabay.com/photo/2014/08/26/12/49/the-cake-427920_960_720.jpg'),
    ('Dîner','23:00:00',1, 'https://cdn.pixabay.com/photo/2018/04/13/17/14/vegetable-skewer-3317060_960_720.jpg');
    
    
INSERT INTO Famille_repas (libelle,isenabled, imageurl)
VALUES
	('Boissons froides',1, 'https://cdn.pixabay.com/photo/2017/08/03/21/48/drinks-2578446_960_720.jpg'),
    ('Boissons chaudes',1, 'https://cdn.pixabay.com/photo/2016/02/19/10/59/espresso-1209522_960_720.jpg'),
    ('Viennoiserie',1, 'https://cdn.pixabay.com/photo/2016/03/27/21/59/bread-1284438_960_720.jpg'),
    ('Pain',1, 'https://cdn.pixabay.com/photo/2020/03/22/16/18/bread-4957679_960_720.jpg'),
    ('Entrée',1, 'https://cdn.pixabay.com/photo/2017/10/14/21/23/kitchen-2851910_960_720.jpg'),
    ('Plat principal',1, 'https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032_960_720.jpg'),
    ('Dessert',1, 'https://cdn.pixabay.com/photo/2016/03/27/22/38/cake-1284548_960_720.jpg');
    
INSERT INTO famille_repas_repas (id_repas,id_famille_repas)
VALUES
	(1,1),
    (1,2),
    (1,3),
    (1,4),
    (2,1),
    (2,2),
    (2,4),
    (2,5),
    (2,6),
    (2,7),
    (3,1),
    (3,2),
    (3,3),
    (3,4),
    (3,7),
    (4,1),
    (4,2),
    (4,4),
    (4,5),
    (4,6),
    (4,7);
    

    INSERT INTO produit (disponibilite, image, isenable,libellecommercial,libelletechnique,description, stock_dispo, prix_unitaire,id_famille_repas)
VALUES 
	("1,2,3,4,5,6,7","https://cdn.pixabay.com/photo/2018/06/09/17/55/jug-3464829_1280.jpg",1,'Eau plate 1/2l','Eau plate 1/2l',' ',250,4,1),
	("1,2,3,4,5,6,7","https://cdn.pixabay.com/photo/2016/11/19/11/34/bottle-1838772_1280.jpg",1,'Eau plate 1l','Eau plate 1l',' ',300,2,1),
	("1,2,3,4,5,6,7","https://cdn.pixabay.com/photo/2014/11/26/14/40/sparkling-water-546255_1280.jpg",1,'Eau gazeuse 1/2l','Eau gazeuse 1/2l',' ',250,5,1),
	("1,2,3,4,5,6,7","https://cdn.pixabay.com/photo/2017/11/03/14/32/beverages-2914497_1280.jpg",1,'Eau gazeuse 1l','Eau gazeuse 1l',' ',300,2.5,1),
    ("1,2,3,4,5,6,7","https://cdn.pixabay.com/photo/2018/04/08/13/17/glass-3301200_1280.jpg",1,'Ice Tea Pêche 33cl','Ice Tea Pêche 33cl','ice tea frais ',150,1.5,1),
    ("1,3,5,6,7","https://cdn.pixabay.com/photo/2014/09/26/19/51/coca-cola-462776_1280.jpg",1,'Coca Cola 33cl','Coca Cola 33cl','coca cola fraiche', 150, 1.5,1),
    ("1,3,5,6,7","https://www.new-york-canteen.com/wp-content/uploads/2018/04/orangina-0001-600x600.png",1,'Orangina 33cl','Orangina 33cl','orangina fraiche ', 150, 1.5,1),
    ("1,3,5,6,7","https://media.houra.fr/ART-IMG-XL/49/07/3257981410749-4.jpg",1,'Jus de pomme Bio 25cl','Jus de pomme Bio 25cl', 'pomme produites en france', 150, 2,1),
    ("1,3,5,6,7","https://static.greenweez.com/images/products/19000/600/vitamont-pur-jus-d-oranges-bio-1l.jpg",1,'Jus d"orange Bio 25cl','Jus d"orange Bio 25cl','jus d orange pressé ', 150, 2,1),
    ("1,3,5,6,7","https://www.boutique-ethiquable.com/570/the-vert-gingembre-citron-vert-srilanka-equitable-bio.jpg",1,'thé vert citron','thé vert citron','infusion',150, 3,2),
	("1,3,5,6,7","https://ileauxepices.com/blog/wp-content/uploads/2013/05/th%C3%A9-noir.jpg",1,'thé noir','thé noir','infusion', 200, 3,2),
	("1,3,5,6,7","https://cdn.pixabay.com/photo/2016/11/29/13/54/breakfast-1870009_1280.jpg",1,'chocolat chaud','chocolat chaud','chocolat noir', 100, 5,2),
	("1,3,5,6,7","https://www.eismann.fr/content/images/thumbs/0002804_cafe-liegeois_550.jpeg",1,'café liegeois','café liegeois','café brésilien', 100, 5,2),
    ("1,3,5,6,7","https://2.bp.blogspot.com/-037HPlLqDN4/Uv9z1Y456XI/AAAAAAAADgY/cAjiCPtPAnk/s1600/IMG_8139.JPG",1,'Croissant au beurre','Croissant','Authentique croissant au beurre', 100, 1.5,3),
    ("1,3,5,6,7","https://static.750g.com/images/622-auto/cbe1c1acc3af629895ae663b1a113c89/266942.jpg",1,'Croissant aux amandes','Croissant aux amandes','Croissant au beurre recouvert de délicieuses amandes effilées bio', 100, 1.5,3),
    ("1,3,5,6,7","https://www.recette360.com/wp-content/uploads/2019/04/Pain-au-chocolat-facile-au-thermomix.jpg",1,'Pain au chocolat','Pain au chocolat','Pain au chocolat noir',100,1.5,3),
    ("1,3,5,6,7","https://lesucresale-doumsouhaib.com/wp-content/uploads/2013/09/pains-au-raisins-1.jpg",1,'Torsade au raisin','Torsade au raisin','Traditionnelle Torsade au raisin',70,1.5,3),
    ("1,3,5,6,7","https://www.atelierdeschefs.com/media/recette-e14297-pain-complet.jpg",1,'pain complet', 'pain complet', 'farine de seigle', 500, 1,4),
	("1,3,5,6,7","https://img.over-blog-kiwi.com/0/97/14/52/20141106/ob_33b056_dsci0340.JPG",1,'pain multicéréales', 'pain multicéréales', 'farine de sarasin', 500, 1,4),
	("1,3,5,6,7","https://www.pousstronic.fr/imgfr/news/pain-traditionnel.jpg",1,'pain traditionnel', 'pain tarditionnel', 'farine blanche', 500, 1,4),
	("1,3,5,6,7","https://www.recette247.com/wp-content/uploads/2017/01/Pain-maison-sans-gluten-au-thermomix.jpg",1,'pain sans gluten', 'pain sans gluten', 'farine de mais', 500, 1,4),	
    ("1,3,5,6,7","https://discoderyapp.s3.eu-west-1.amazonaws.com/product_image_widen_1024/5cc1fdb1b19ef086724045.jpg",1,'planche mixte', 'planche mixte', 'set de charcuteries et fromages', 100, 8,5),
	("1,3,5,6,7","https://static.750g.com/images/622-auto/9a6afdcdb5977d89cdc741ae9d3a0388/soupe-de-potimarron.jpg",1,'soupe du jour', 'soupe du jour', 'voir actualité', 100, 6,5),
	("1,3,5,6,7","https://assets.afcdn.com/recipe/20190704/94709_w1024h768c1cx3000cy2000cxt0cyt0cxb6000cyb4000.jpg",1,'salade césar', 'salade césar', 'salade et poulet pané',100, 7,5),
	("1,3,5,6,7","https://www.atelierdeschefs.com/media/recette-e25457-carpaccio-de-saumon-aux-epices-allumettes-de-pain-de-campagne.jpg",1,'carpaccio saumon', 'carpaccio samon', 'saumon frais tomate citron', 100, 8,5),
    ("1,3,5,6,7","https://assets.afcdn.com/recipe/20160401/38946_w1024h768c1cx2690cy1793.jpg",1,'Tartiflette','Tartiflette','Spécialité savoyarde composée de pommes de terre, lardons, reblochon et oignon, et accompagnée d’une bonne salade verte',70,12.5,6),
	("1,3,5,6,7","https://assets.afcdn.com/recipe/20130910/547_w1024h768c1cx1728cy2227.jpg",1,'Coq au vin','Coq au vin','Plat traditionnel de la cuisine française, le coq au vin est accompagné d’oignons, de carottes, d’un bouquet garni et de champignons',70,15.5,6),
	("1,3,5,6,7","https://www.ptitchef.com/imgupl/recipe/filet-de-porc-sauce-a-la-moutarde-et-a-l-estragon--lg-257066p415806.jpg",1,'Filet de porc à la moutarde','Filet de porc à la moutarde','Filet de porc dans sa sauce à la moutarde, accompagné de pomme de terre et haricots verts',70,15.5,6),
    ("1,3,5,6,7","https://assets.afcdn.com/recipe/20180503/79001_w1024h768c1cx2880cy1920.jpg",1,'tarte tatin', 'tarte tatin', 'tarte faite maison', 500, 4,7),
	("1,3,5,6,7","https://www.hervecuisine.com/wp-content/uploads/2013/02/recette-mousse-au-chocolat-1280x720.jpg",1,'mousse au chocolat', 'mousse au chocolat', 'mélange de chocolat noir et chocolat blanc', 500, 4,7),
	("1,3,5,6,7","https://img-4.linternaute.com/JLeoNfFH6Y457_JEGOPp59Mv0T4=/1240x/smart/1e662d67364c47cd817f649a353483a3/ccmcms-linternaute/10844429.jpg",1,'fruits de saison', 'fruits de saison', 'fruits frais produits en France', 500, 4,7),
	("1,3,5,6,7","https://cdn.pixabay.com/photo/2018/06/22/14/44/creme-brulee-3490885_1280.jpg",1,'crème brûlée', 'crème brûlée', 'créme allégée en sucre', 500, 4,7);
	
	    
INSERT INTO Commande (prix_total, datecommande, num_facture,id_utilisateur,id_statut_commande)
VALUES
    (5,'2018-12-11','79KGR237',1,4),
    (27.5,'2018-12-09','05HBD986',2,4),
    (7,'2018-12-10','93DTB345',3,4);
    
  
INSERT INTO ligne_commande (quantite,prix_unitaire,id_commande,id_produit)
VALUES
	(2,4,1,1),
    (1,2,1,15),
    (1,5,1,13),
    (1,8,2,22),
    (1,15.5,2,27),
    (1,4,2,32),
    (3,1.5,3,6),
    (1,1,3,19),
    (2,2,3,17);
    
INSERT INTO Commentaire (commentaire,note,date_commentaire,id_ligne_commande)
VALUES
	('Génial, je me suis régalé!',5,'2018-12-11',2),
    ('Un peu trop salé mais belle réalisation!',4,'2018-12-11',8),
    ('Proportion trop faible, j ai eu faim',3,'2018-12-10',5),
    ('J adore','5','2018-12-10',9);
    
INSERT INTO statut_commande (libelle_statut_commande)
VALUES
	('En cours'),
	('Commande soumise '),
	('En cours de préparation'),
	('Commande prête'),
    ('En cours de livraison'),
    ('Commande livrée'),
    ('Commande annulée');
    
INSERT INTO adresse_facturation (num_rue,rue,code_postal,ville,pays,id_utilisateur,isenable)
VALUES
	(8,'rue Edouard',78415,'Flins','France',1,1),
    (7,'rue Jean Baptiste Charcot',91300,'Massy','France',2,1),
    (56,'Place du marché',59000,'Lille','France',3,1),
    (14,'Rue des Sources',78410,'Aubergenville','France',4,1),
    (19,'Rue Rougemont',75009,'Paris','France',5,1);
    
    
INSERT INTO adresse_livraison (num_rue,rue,code_postal,ville,pays,id_utilisateur,isenable)
VALUES
	(8,'rue Edouard',78415,'Flins','France',1,1),
    (7,'rue Jean Baptiste Charcot',91300,'Massy','France',2,1),
    (56,'Place du marché',59000,'Lille','France',3,1),
    (14,'Rue des Sources',78410,'Aubergenville','France',4,1),
    (19,'Rue Rougemont',75009,'Paris','France',5,1);
    
    
INSERT INTO Utilisateur (password,nom, prenom, date_naissance,login,email,id_genre,isenable)
 VALUES
    ('$2y$10$PrJWY8LfA7DP7Upz/An0oO4GBSwyIuTtyIoq9Z70NJ88LJV.75nLK','Ben Salah', 'Raouia', '1986-01-18', 'RBenSalah', 'zribi-raouia@hotmail.fr',2,1),   
    ('$2y$10$PrJWY8LfA7DP7Upz/An0oO4GBSwyIuTtyIoq9Z70NJ88LJV.75nLK','Tavernel', 'Sarah', '1985-11-25', 'sarah','sarahtavernel@yahoo.fr',2,1),
    ('$2y$10$PrJWY8LfA7DP7Upz/An0oO4GBSwyIuTtyIoq9Z70NJ88LJV.75nLK','Dupond','Pierre','1976-02-09','PDupond','pierredupond@gmail.com',1,1),
    ('$2y$10$PrJWY8LfA7DP7Upz/An0oO4GBSwyIuTtyIoq9Z70NJ88LJV.75nLK','Brindacier','Fifi','1950-12-17','FBrindacier','fifibrindacier@yahoo.com',3,1),
    ('$2y$10$PrJWY8LfA7DP7Upz/An0oO4GBSwyIuTtyIoq9Z70NJ88LJV.75nLK','Chault','Artie','1990-06-12','AChault','artie-chaud@gmail.com',1,1);
    
INSERT INTO profil_utilisateur (id_profil,id_utilisateur)
 VALUES(1,1),
		(3,2),
		(2,3),
		(3,4),
		(1,5);    
    
    
    