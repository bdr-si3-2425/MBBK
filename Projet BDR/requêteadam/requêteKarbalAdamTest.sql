--Voici des insert qui permet de tester si les trigger marche bien, il suffit de lire sur la console
-- Résultat attendue : NOTICE:  Nouvelle publication de l'utilisateur 1 : Ceci est un test de publication.
-- NOTICE:  Nouvelle interaction de l'utilisateur 2 sur la publication 4
-- Voir image dans le même dossier

INSERT INTO "PROJET BDR".publication (id_publication, contenu, date_publication, visibilite, nombre_like, id_utilisateur)
VALUES
    (27, 'Ceci est un test de publication.', '2023-04-10', 'public', 0, 1);
	
INSERT INTO "PROJET BDR".interaction (id_interaction, type_interaction, contenu_commentaire, date_interaction, id_utilisateur, id_publication)
VALUES
    (36, 'like', NULL, '2023-04-11', 2, 4);
