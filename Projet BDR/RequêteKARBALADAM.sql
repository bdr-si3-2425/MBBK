--(S’il y a un problème : SET search_path TO "PROJET BDR";)

--Requête 1 permet d'avoir une notification s'il y a une nouvelle publication
--Le résultat est dans : résultatRequêteAdamPublication
CREATE OR REPLACE FUNCTION notifier_publication()
RETURNS TRIGGER AS $$
BEGIN
    RAISE NOTICE 'Nouvelle publication de l''utilisateur % : %', NEW.id_utilisateur, NEW.contenu;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_publication
AFTER INSERT ON "PROJET BDR".publication
FOR EACH ROW
EXECUTE FUNCTION notifier_publication();

--Requête 2 permet d'avoir une notification s'il y a une nouvelle interaction
--Le résultat est dans : résultatRequêteAdamPublication
CREATE OR REPLACE FUNCTION notifier_interaction()
RETURNS TRIGGER AS $$
BEGIN
    RAISE NOTICE 'Nouvelle interaction de l''utilisateur % sur la publication %', NEW.id_utilisateur, NEW.id_publication;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_interaction
AFTER INSERT ON "PROJET BDR".interaction
FOR EACH ROW
EXECUTE FUNCTION notifier_interaction();
