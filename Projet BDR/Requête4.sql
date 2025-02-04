--Nombre d’interaction dans chaque groupe

SELECT g.nom_groupe, COUNT(p.id_destination) AS nombre_interactions
FROM "PROJET BDR".partage p
JOIN "PROJET BDR".groupe g ON g.id_groupe=p.id_destination
group by g.nom_groupe
ORDER BY nombre_interactions DESC;
