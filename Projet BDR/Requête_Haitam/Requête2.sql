-- 2. Ajouter un utilisateur à un groupe (ou mettre à jour son rôle)

INSERT INTO "PROJET BDR".appartenance (id_utilisateur, id_groupe, role)
VALUES (1, 2, 'Admin')  -- Remplace 1 et 2 par les IDs appropriés
ON CONFLICT (id_utilisateur, id_groupe) 
DO UPDATE SET role = EXCLUDED.role;
