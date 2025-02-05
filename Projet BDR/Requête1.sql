--Trouver les amis d’amis d’un utilisateur donné : 

    SELECT DISTINCT u2.id_utilisateur, u2.pseudo
FROM "PROJET BDR".connexion c1
JOIN "PROJET BDR".connexion c2 
    ON c1.id_utilisateur2 = c2.id_utilisateur1
JOIN "PROJET BDR".utilisateur u2 
    ON c2.id_utilisateur2 = u2.id_utilisateur
WHERE c1.id_utilisateur1 = 1  
    AND c2.id_utilisateur2 != c1.id_utilisateur1
    AND NOT EXISTS (
        SELECT 1 FROM "PROJET BDR".connexion c3
        WHERE c3.id_utilisateur1 = 1 AND c3.id_utilisateur2 = c2.id_utilisateur2
    )
    AND EXISTS (
        SELECT 1 FROM "PROJET BDR".connexion c4
        WHERE c4.id_utilisateur1 = c1.id_utilisateur2 AND c4.id_utilisateur2 = c1.id_utilisateur1
    ) 
    AND EXISTS (
        SELECT 1 FROM "PROJET BDR".connexion c5
        WHERE c5.id_utilisateur1 = c2.id_utilisateur2 AND c5.id_utilisateur2 = c2.id_utilisateur1
    );

