-- Requête tout-en-un avec logique conditionnelle

DO $$ 
DECLARE 
    action TEXT := 'ajouter';  -- Changer en 'mettre à jour' ou 'supprimer'
    id_utilisateur INTEGER := 3;
    id_groupe INTEGER := 2;
    role TEXT := 'moderateur';
BEGIN
    IF action = 'ajouter' THEN
        INSERT INTO "PROJET BDR".appartenance (id_utilisateur, id_groupe, role)
        VALUES (id_utilisateur, id_groupe, role)
        ON CONFLICT (id_utilisateur, id_groupe) 
        DO UPDATE SET role = EXCLUDED.role;
    
    ELSIF action = 'mettre à jour' THEN
        UPDATE "PROJET BDR".appartenance
        SET role = role
        WHERE id_utilisateur = id_utilisateur AND id_groupe = id_groupe;
    
    ELSIF action = 'supprimer' THEN
        DELETE FROM "PROJET BDR".appartenance
        WHERE id_utilisateur = id_utilisateur AND id_groupe = id_groupe;
    
    ELSE
        RAISE NOTICE 'Action inconnue';
    END IF;
END $$;
