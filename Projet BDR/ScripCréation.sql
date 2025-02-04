CREATE TABLE IF NOT EXISTS "PROJET BDR".utilisateur
(
    id_utilisateur SERIAL NOT NULL,
    pseudo text NOT NULL,
    email text NOT NULL UNIQUE,
    date_inscription date,
    description text,
    PRIMARY KEY (id_utilisateur)
);

CREATE TABLE IF NOT EXISTS "PROJET BDR".connexion
(
    id_utilisateur1 integer NOT NULL,
    id_utilisateur2 integer NOT NULL,
    type_connexion text NOT NULL,
    PRIMARY KEY (id_utilisateur1, id_utilisateur2)
);

CREATE TABLE IF NOT EXISTS "PROJET BDR".interaction
(
    id_interaction SERIAL NOT NULL,
    type_interaction text NOT NULL,
    contenu_commentaire text,
    date_interaction date NOT NULL,
    id_utilisateur integer NOT NULL,
    id_publication integer NOT NULL,
    PRIMARY KEY (id_interaction)
);

CREATE TABLE IF NOT EXISTS "PROJET BDR".publication
(
    id_publication SERIAL NOT NULL,
    contenu text NOT NULL,
    date_publication date NOT NULL,
    visibilite text NOT NULL,
    nombre_like integer NOT NULL,
    id_utilisateur integer NOT NULL,
    theme text,
    PRIMARY KEY (id_publication)
);

CREATE TABLE IF NOT EXISTS "PROJET BDR".partage
(
    id_publication integer NOT NULL,
    id_utilisateur integer NOT NULL,
    id_destination integer NOT NULL,
    PRIMARY KEY (id_publication, id_utilisateur)
);

CREATE TABLE IF NOT EXISTS "PROJET BDR".groupe
(
    id_groupe SERIAL NOT NULL,
    nom_groupe text NOT NULL,
    description text NOT NULL,
    date_creation date NOT NULL,
    type_groupe text NOT NULL,
    PRIMARY KEY (id_groupe)
);

CREATE TABLE IF NOT EXISTS "PROJET BDR".appartenance
(
    id_utilisateur integer NOT NULL,
    id_groupe integer NOT NULL,
    role text NOT NULL,
    PRIMARY KEY (id_utilisateur, id_groupe)
);

ALTER TABLE IF EXISTS "PROJET BDR".connexion
    ADD CONSTRAINT id_utilisateur1 FOREIGN KEY (id_utilisateur1)
    REFERENCES "PROJET BDR".utilisateur (id_utilisateur) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS "PROJET BDR".connexion
    ADD CONSTRAINT id_utilisateur2 FOREIGN KEY (id_utilisateur2)
    REFERENCES "PROJET BDR".utilisateur (id_utilisateur) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS "PROJET BDR".interaction
    ADD CONSTRAINT id_utilisateur FOREIGN KEY (id_utilisateur)
    REFERENCES "PROJET BDR".utilisateur (id_utilisateur) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS "PROJET BDR".interaction
    ADD CONSTRAINT id_publication FOREIGN KEY (id_publication)
    REFERENCES "PROJET BDR".publication (id_publication) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS "PROJET BDR".publication
    ADD CONSTRAINT id_utilisateur FOREIGN KEY (id_utilisateur)
    REFERENCES "PROJET BDR".utilisateur (id_utilisateur) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS "PROJET BDR".partage
    ADD CONSTRAINT id_publication FOREIGN KEY (id_publication)
    REFERENCES "PROJET BDR".publication (id_publication) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS "PROJET BDR".partage
    ADD CONSTRAINT id_utilisateur FOREIGN KEY (id_utilisateur)
    REFERENCES "PROJET BDR".utilisateur (id_utilisateur) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS "PROJET BDR".appartenance
    ADD CONSTRAINT id_utilisateur FOREIGN KEY (id_utilisateur)
    REFERENCES "PROJET BDR".utilisateur (id_utilisateur) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;




ALTER TABLE IF EXISTS "PROJET BDR".appartenance
    ADD CONSTRAINT id_groupe FOREIGN KEY (id_groupe)
    REFERENCES "PROJET BDR".groupe (id_groupe) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE "PROJET BDR".connexion ADD CONSTRAINT check_no_self_connection CHECK (id_utilisateur1 !=id_utilisateur2);

ALTER TABLE "PROJET BDR".connexion 
ADD CONSTRAINT check_type_connexion 
CHECK (type_connexion IN('ami', 'suivi'));

ALTER TABLE "PROJET BDR".interaction
ADD COLUMN id_interaction_parent INTEGER NULL;
ALTER TABLE "PROJET BDR".interaction
ADD CONSTRAINT fk_interaction_parent
FOREIGN KEY (id_interaction_parent) REFERENCES "PROJET BDR".interaction(id_interaction);



END;
