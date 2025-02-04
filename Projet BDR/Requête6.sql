--Recommander des groupes basés sur l’activité d’un utilisateur (recommande le ou les groupes avec le plus d’interaction de la part de l’utilisateur sur les publications qui ont ce thème) Olivier :



SELECT DISTINCT g.nom_groupe
FROM "PROJET BDR".groupe g
JOIN (
    SELECT p.theme, COUNT(*) AS total_likes
    FROM "PROJET BDR".interaction i
    JOIN "PROJET BDR".publication p ON i.id_publication = p.id_publication
    WHERE i.type_interaction = 'like' AND i.id_utilisateur = 1
    GROUP BY p.theme
    ORDER BY total_likes DESC
) user_themes ON g.nom_groupe = user_themes.theme;
