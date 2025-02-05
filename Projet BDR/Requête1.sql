--Trouver les amis d’amis d’un utilisateur donné : 

    WITH amis_directs AS (
        SELECT id_utilisateur2 AS ami
        FROM "PROJET BDR".connexion
        WHERE id_utilisateur1 = 1
          AND EXISTS (
            SELECT 1 FROM "PROJET BDR".connexion c
            WHERE c.id_utilisateur1 = id_utilisateur2 AND c.id_utilisateur2 = id_utilisateur1
          ) -- Vérifie que la connexion est mutuelle
    ), 
    amis_d_amis AS (
        SELECT DISTINCT c2.id_utilisateur2 AS ami_potentiel
        FROM "PROJET BDR".connexion c2
        JOIN amis_directs a ON c2.id_utilisateur1 = a.ami
        WHERE EXISTS (
            SELECT 1 FROM "PROJET BDR".connexion c3
            WHERE c3.id_utilisateur1 = c2.id_utilisateur2 AND c3.id_utilisateur2 = c2.id_utilisateur1
        ) -- Vérifie que l'ami de l'ami est bien un ami mutuel
          AND c2.id_utilisateur2 != 1 -- Évite l'auto-suggestion
    ),
    SELECT DISTINCT u.id_utilisateur, u.pseudo
    FROM amis_d_amis
    JOIN "PROJET BDR".utilisateur u ON amis_d_amis.ami_potentiel = u.id_utilisateur
    WHERE NOT EXISTS (
        SELECT 1 FROM amis_directs a WHERE a.ami = u.id_utilisateur
    );
