-- FEED par rapport aux connexions de l'utilisateur 

SELECT DISTINCT p.contenu, p.date_publication, p.nombre_like
FROM "PROJET BDR".utilisateur u
JOIN "PROJET BDR".connexion c ON u.id_utilisateur = c.id_utilisateur1
JOIN "PROJET BDR".publication p ON p.id_utilisateur = c.id_utilisateur2
WHERE c.type_connexion IN ('ami', 'suivi') 
  AND u.id_utilisateur = 1 
ORDER BY p.date_publication DESC;  
