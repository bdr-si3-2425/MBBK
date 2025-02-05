-- 3. Supprimer un utilisateur d’un groupe s'il n'a plus de rôle actif
DELETE FROM "PROJET BDR".appartenance
WHERE id_utilisateur = 1 AND id_groupe = 2; -- Remplace par les IDs correspondants
