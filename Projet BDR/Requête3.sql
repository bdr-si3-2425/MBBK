--Recommander des connexions à un utilisateur (Propose des gens qui ont les même interactions):

WITH interactions_communes AS (
    SELECT 
        i1.id_utilisateur AS utilisateur_cible,
        i2.id_utilisateur AS utilisateur_suggere,
        COUNT(*) AS nombre_interactions_communes
    FROM "PROJET BDR".interaction i1
    JOIN "PROJET BDR".interaction i2 
        ON i1.id_publication = i2.id_publication
        AND i1.id_utilisateur <> i2.id_utilisateur
    WHERE i1.id_utilisateur = 1  -- UTILISATEUR CIBLER
    GROUP BY i1.id_utilisateur, i2.id_utilisateur
)
SELECT 
    uc.pseudo AS pseudo_cible,  -- PSEUDO UTILISATEUR CIBLER
    u.id_utilisateur, 
    u.pseudo, 
    ic.nombre_interactions_communes
FROM interactions_communes ic
JOIN "PROJET BDR".utilisateur u ON ic.utilisateur_suggere = u.id_utilisateur
JOIN "PROJET BDR".utilisateur uc ON ic.utilisateur_cible = uc.id_utilisateur  -- Jointure pour obtenir le pseudo de l'utilisateur cible
LEFT JOIN "PROJET BDR".connexion c 
    ON ic.utilisateur_cible = c.id_utilisateur1 
    AND ic.utilisateur_suggere = c.id_utilisateur2
WHERE c.id_utilisateur1 IS NULL 
ORDER BY ic.nombre_interactions_communes DESC
LIMIT 5;
