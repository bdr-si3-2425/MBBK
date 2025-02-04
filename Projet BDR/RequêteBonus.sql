-- FEED par rapport aux connexions de l'utilisateur 

SELECT DISTINCT p.contenu, p.date_publication, p.nombre_like
FROM "PROJET BDR".utilisateur u
JOIN "PROJET BDR".connexion c ON u.id_utilisateur = c.id_utilisateur1
JOIN "PROJET BDR".publication p ON p.id_utilisateur = c.id_utilisateur2
WHERE c.type_connexion IN ('ami', 'suivi')  -- Facultatif, si vous voulez filtrer par type de connexion
  AND u.id_utilisateur = 1  -- Remplacez 1 par l'ID de l'utilisateur courant
ORDER BY p.date_publication DESC;  -- Trier par date pour obtenir les publications les plus récentes en premier
