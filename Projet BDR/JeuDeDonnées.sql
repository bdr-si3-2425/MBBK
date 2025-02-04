--JEU DE DONNÉES


-- Remplissage de la table utilisateur
INSERT INTO "PROJET BDR".utilisateur (id_utilisateur, pseudo, email, date_inscription, description)
VALUES
    (1, 'JohnDoe', 'john.doe@example.com', '2023-01-01', 'Utilisateur passionné de technologie.'),
    (2, 'JaneSmith', 'jane.smith@example.com', '2023-02-15', 'Aime la photographie.'),
    (3, 'Alex99', 'alex99@example.com', '2023-03-10', 'Fan de jeux vidéo.'),
    (4, 'EmmaW', 'emma.w@example.com', '2023-04-10', 'Adepte du voyage.'),
    (5, 'MikeT', 'mike.t@example.com', '2023-05-15', 'Musicien amateur.'),
    (6, 'SarahG', 'sarah.g@example.com', '2023-06-20', 'Passionnée de lecture.'),
    (7, 'DavidK', 'david.k@example.com', '2023-07-05', 'Ingénieur en informatique.'),
    (8, 'LauraP', 'laura.p@example.com', '2023-08-12', 'Fan de sport et de fitness.'),
    (9, 'TomR', 'tom.r@example.com', '2023-09-01', 'Amateur de cinéma.'),
    (10, 'AliceB', 'alice.b@example.com', '2023-10-03', 'Développeuse full stack.'),
    (11, 'RyanS', 'ryan.s@example.com', '2023-11-11', 'Gourmand et passionné de cuisine.'),
    (12, 'SophiaL', 'sophia.l@example.com', '2023-12-20', 'Férue d’art et de peinture.'),
    (13, 'NathanM', 'nathan.m@example.com', '2024-01-05', 'Étudiant en informatique.'),
    (14, 'OliviaD', 'olivia.d@example.com', '2024-02-10', 'Cycliste et aventurière.'),
    (15, 'LucasF', 'lucas.f@example.com', '2024-03-15', 'Fan de jeux vidéo.'),
    (16, 'EllaC', 'ella.c@example.com', '2024-04-20', 'Aime la photographie.'),
    (17, 'JamesN', 'james.n@example.com', '2024-05-05', 'Développeur mobile.'),
    (18, 'LiamB', 'liam.b@example.com', '2024-06-10', 'Streamer gaming.'),
    (19, 'MiaV', 'mia.v@example.com', '2024-07-25', 'Danseuse et chorégraphe.'),
    (20, 'EthanW', 'ethan.w@example.com', '2024-08-30', 'Photographe professionnel.');

-- Remplissage de la table connexion
INSERT INTO "PROJET BDR".connexion (id_utilisateur1, id_utilisateur2, type_connexion)
VALUES
    (1, 2, 'ami'),
    (1, 3, 'suivi'),
    (2, 3, 'ami'),
    (1, 4, 'ami'),
    (4, 1, 'ami'),
    (1, 5, 'suivi'),
    (2, 6, 'suivi'),
    (2, 7, 'suivi'),
    (3, 8, 'ami'),
    (8, 3, 'ami'),
    (3, 9, 'suivi'),
    (4, 10, 'ami'),
    (10, 4, 'ami'),
    (4, 11, 'suivi'),
    (5, 12, 'suivi'),
    (6, 13, 'suivi'),
    (7, 14, 'suivi'),
    (8, 15, 'ami'),
    (15, 8, 'ami'),
    (9, 16, 'suivi'),
    (10, 17, 'suivi'),
    (11, 18, 'suivi'),
    (12, 19, 'suivi'),
    (13, 20, 'ami'),
    (20, 13, 'ami'),
    (14, 1, 'suivi'),
    (15, 2, 'suivi'),
    (16, 3, 'suivi');


-- Remplissage de la table publication
INSERT INTO "PROJET BDR".publication (id_publication, contenu, date_publication, visibilite, nombre_like, id_utilisateur,theme)
VALUES
    (1, 'Bonjour tout le monde !', '2023-01-15', 'public', 10, 1,NULL),
    (2, 'Voici une nouvelle photo de mon voyage.', '2023-02-20', 'amis', 25, 2,'Photographie'),
    (3, 'Quelqu’un a des recommandations de livres ?', '2023-03-05', 'public', 5, 3,'Lecture'),
(4, 'Quel beau coucher de soleil !', '2023-04-15', 'public', 12, 4,'Paysage'),
    (5, 'Nouvelle chanson en préparation.', '2023-05-20', 'amis', 7, 5,'Musique'),
    (6, 'Quel est votre livre préféré ?', '2023-06-25', 'public', 9, 6,'Lecture'),
    (7, 'Mon projet de développement avance bien.', '2023-07-10', 'public', 5, 7,NULL),
    (8, 'Entraînement intensif aujourd’hui !', '2023-08-18', 'amis', 14, 8,'Sport'),
    (9, 'Dernier film vu au cinéma : incroyable !', '2023-09-02', 'public', 6, 9,'Cinéma'),
    (10, 'Petit bug résolu, quel soulagement !', '2023-10-05', 'amis', 8, 10,NULL),
    (11, 'Recette du jour : tarte aux pommes.', '2023-11-12', 'public', 10, 11,'Nourriture'),
    (12, 'Nouvelle toile en cours de création.', '2023-12-22', 'amis', 4, 12,'Art'),
    (13, 'Quel est votre langage de programmation préféré ?', '2024-01-07', 'public', 11, 13,'Informatique'),
    (14, 'Belle balade à vélo ce matin !', '2024-02-12', 'public', 3, 14,'Sport'),
    (15, 'Top 5 de mes jeux vidéo préférés.', '2024-03-17', 'amis', 7, 15,'Jeux Vidéos'),
    (16, 'Nouveau shooting photo terminé !', '2024-04-22', 'public', 9, 16,'Photographie'),
    (17, 'Appli mobile en développement.', '2024-05-07', 'amis', 5, 17,NULL),
    (18, 'Live gaming ce soir sur Twitch.', '2024-06-12', 'public', 13, 18,NULL),
    (19, 'Répétition avant le spectacle !', '2024-07-27', 'public', 2, 19,NULL),
    (20, 'Expo photo en préparation.', '2024-08-31', 'amis', 6, 20,'Photographie');



-- Remplissage de la table interaction
INSERT INTO "PROJET BDR".interaction (id_interaction, type_interaction, contenu_commentaire, date_interaction, id_utilisateur, id_publication)
VALUES
    (1, 'like', NULL, '2023-01-16', 2, 1),
    (2, 'commentaire', 'Belle photo !', '2023-02-21', 1, 2),
    (3, 'like', NULL, '2023-03-06', 1, 3),
    (4, 'like', NULL, '2023-04-16', 5, 4),
    (5, 'commentaire', 'Superbe !', '2023-04-17', 6, 4),
    (6, 'like', NULL, '2023-05-21', 7, 5),
    (7, 'commentaire', 'J’ai hâte d’écouter ça !', '2023-05-22', 8, 5),
    (8, 'like', NULL, '2023-06-26', 9, 6),
    (9, 'commentaire', 'J’adore cet auteur !', '2023-06-27', 10, 6),
    (10, 'like', NULL, '2023-07-11', 11, 7),
    (11, 'commentaire', 'Bon courage pour ton projet.', '2023-07-12', 12, 7),
    (12, 'like', NULL, '2023-08-19', 13, 8),
    (13, 'commentaire', 'Bravo pour tes progrès !', '2023-08-20', 14, 8),
    (14, 'like', NULL, '2023-09-03', 15, 9),
    (15, 'commentaire', 'Ce film était génial !', '2023-09-04', 16, 9),
    (16, 'like', NULL, '2023-10-06', 17, 10),
    (17, 'commentaire', 'Je connais ce sentiment !', '2023-10-07', 18, 10),
    (18, 'like', NULL, '2023-11-13', 19, 11),
    (19, 'commentaire', 'Miam, je vais essayer.', '2023-11-14', 20, 11),
    (20, 'like', NULL, '2023-12-23', 1, 12),
    (21, 'like', NULL, '2023-02-21', 3, 2),
    (22, 'like', NULL, '2023-02-21', 4, 2),
    (23, 'like', NULL, '2023-02-21', 5, 2),
    (24, 'like', NULL, '2023-02-21', 6, 2),
    (25, 'like', NULL, '2023-02-21', 7, 2),
    (26, 'like', NULL, '2023-02-21', 8, 2),
    (27, 'like', NULL, '2023-02-21', 9, 2),
    (28, 'like', NULL, '2023-02-21', 10, 2),
    (29, 'like', NULL, '2023-02-21', 11, 2),
    (30, 'like', NULL, '2023-02-21', 12, 2),
    (31, 'like', NULL, '2023-02-21', 13, 2),
    (32, 'like', NULL, '2023-02-21', 14, 2),
    (33, 'like', NULL, '2023-02-21', 15, 2),
    (34, 'like', NULL, '2023-02-21', 16, 2),
    (40, 'like', NULL, '2023-03-06', 1, 16),
    (41, 'like', NULL, '2023-03-06', 2, 3),
    (42, 'like', NULL, '2023-03-06', 4, 3),
    (43, 'like', NULL, '2023-12-23', 1, 15),
    (44, 'like', NULL, '2023-12-23', 6, 15),
    (45, 'like', NULL, '2023-12-23', 6, 12),
    (46, 'like', NULL, '2023-12-23', 1, 10),  
    (47, 'like', NULL, '2023-12-23', 6, 10);



-- Remplissage de la table partage
INSERT INTO "PROJET BDR".partage (id_publication, id_utilisateur, id_destination)
VALUES
    (1, 6, 3),
    (2, 1, 3),
    (3, 3, 2),
    (2, 2, 1),  
    (5, 2, 2),  
    (2, 3, 5),  
    (5, 6, 3),
    (6, 7, 4),
    (7, 3, 3), 
    (1, 3, 2),
    (3, 1, 1),
    (4, 1, 3); 

-- Remplissage de la table groupe
INSERT INTO "PROJET BDR".groupe (id_groupe, nom_groupe, description, date_creation, type_groupe)
VALUES
    (1, 'Développeurs', 'Groupe pour les passionnés de programmation.', '2023-01-20', 'public'),
    (2, 'Photographie', 'Amateurs de photographie et de retouche photo.', '2023-02-01', 'privé'),
(3, 'Jeux vidéo', 'Discussions sur les jeux et l’esport.', '2023-06-20', 'public'),
 (4, 'Voyages', 'Partage d’expériences de voyages.', '2023-07-10', 'public'),
    (5, 'Lecture', 'Club de lecture pour échanger des recommandations.', '2023-08-05', 'privé');


-- Remplissage de la table appartenance
INSERT INTO "PROJET BDR".appartenance (id_utilisateur, id_groupe, role)
VALUES
    (1, 1, 'admin'),
    (2, 1, 'membre'),
    (2, 2, 'admin'),
    (3, 2, 'membre'),
    (3, 3, 'admin'),   
    (1, 3, 'membre'),
    (6, 3, 'membre'),  
    (7, 4, 'admin'),   
    (2, 4, 'membre'),  
    (8, 4, 'membre'),
    (9, 5, 'admin'),  
    (10, 5, 'membre'),
    (3, 5, 'membre'); 

UPDATE "PROJET BDR".publication p
SET nombre_like = (
    SELECT COUNT(*)
    FROM "PROJET BDR".interaction i
    WHERE i.type_interaction = 'like' AND i.id_publication = p.id_publication
);
