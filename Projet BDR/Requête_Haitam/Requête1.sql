-- 1. Lister les membres d’un groupe avec leurs rôles

SELECT u.pseudo AS nom_utilisateur, a.role, g.nom_groupe
FROM "PROJET BDR".appartenance a
JOIN "PROJET BDR".utilisateur u ON a.id_utilisateur = u.id_utilisateur
JOIN "PROJET BDR".groupe g ON a.id_groupe = g.id_groupe
WHERE g.id_groupe = 1;  -- Remplace 1 par l'ID du groupe voulu
