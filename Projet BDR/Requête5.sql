--Utilisateurs influençant le plus les interactions dans un groupe :

SELECT g.nom_groupe, u.pseudo,u.id_utilisateur, COUNT(*) AS nombre_interactions
FROM "PROJET BDR".utilisateur u
JOIN "PROJET BDR".appartenance a on a.id_utilisateur=u.id_utilisateur and a.id_groupe=1
JOIN "PROJET BDR".groupe g on g.id_groupe=a.id_groupe
WHERE g.id_groupe = 1
GROUP BY u.id_utilisateur, u.pseudo,g.nom_groupe
ORDER BY nombre_interactions DESC;
