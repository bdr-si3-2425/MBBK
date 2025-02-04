--Vue des publications avec le nombre total de commentaires et de likes:
SET search_path TO "PROJET BDR";

CREATE OR REPLACE VIEW vue_publication_stat AS
SELECT p.id_publication, 
p.contenu, 
p.date_publication, 
u.pseudo AS auteur,
	
(SELECT COUNT(*) 
     	FROM "PROJET BDR".interaction i 
     	WHERE i.id_publication = p.id_publication AND i.type_interaction = 'like') AS nombre_likes,

    	(SELECT COUNT(*) 
     	FROM "PROJET BDR".interaction i 
     	WHERE i.id_publication = p.id_publication AND i.type_interaction = 'commentaire') AS nombre_commentaires

FROM "PROJET BDR".publication p
JOIN "PROJET BDR".utilisateur u ON p.id_utilisateur = u.id_utilisateur;

--Affichage de toutes les publications ordonné par le nombre de likes décroissant en utilisant cette Vue. 

SELECT * FROM vue_publication_stat ORDER BY nombre_likes DESC;
