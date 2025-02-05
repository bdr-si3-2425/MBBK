-- 4. Afficher tous les groupes où un utilisateur est administrateur
SELECT g.nom_groupe
FROM "PROJET BDR".appartenance a
JOIN "PROJET BDR".groupe g ON a.id_groupe = g.id_groupe
WHERE a.id_utilisateur = 1 AND a.role = 'Admin'; -- Remplace 1 par l'ID de l'utilisateur
