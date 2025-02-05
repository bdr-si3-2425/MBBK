DO $$ 
DECLARE 
    action TEXT := 'ajouter';  -- Changer en 'mettre à jour' ou 'supprimer'
    v_id_utilisateur INTEGER := 3;
    v_id_groupe INTEGER := 2;
    v_role TEXT := 'moderateur';
BEGIN
    IF action = 'ajouter' THEN
        INSERT INTO "PROJET BDR".appartenance (id_utilisateur, id_groupe, role)
        VALUES (v_id_utilisateur, v_id_groupe, v_role)
        ON CONFLICT (id_utilisateur, id_groupe) 
        DO UPDATE SET role = EXCLUDED.role;
    
    ELSIF action = 'mettre à jour' THEN
        UPDATE "PROJET BDR".appartenance
        SET role = v_role
        WHERE id_utilisateur = v_id_utilisateur 
          AND id_groupe = v_id_groupe;
    
    ELSIF action = 'supprimer' THEN
        DELETE FROM "PROJET BDR".appartenance
        WHERE id_utilisateur = v_id_utilisateur 
          AND id_groupe = v_id_groupe;
    
    ELSE
        RAISE NOTICE 'Action inconnue';
    END IF;
END $$;
