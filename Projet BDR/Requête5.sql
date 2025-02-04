SELECT g.nom_groupe, u.pseudo, u.id_utilisateur, COUNT(i.id_interaction) AS nombre_interactions
FROM "PROJET BDR".utilisateur u
JOIN "PROJET BDR".appartenance a ON a.id_utilisateur = u.id_utilisateur
JOIN "PROJET BDR".groupe g ON g.id_groupe = a.id_groupe
JOIN "PROJET BDR".interaction i ON i.id_utilisateur = u.id_utilisateur
WHERE g.id_groupe = 1  -- ID DU GROUPE VOULU
GROUP BY u.id_utilisateur, u.pseudo, g.nom_groupe
ORDER BY nombre_interactions DESC;
