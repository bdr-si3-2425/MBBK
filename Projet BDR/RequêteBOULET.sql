--Les tendances, affiche les publications avec le plus d’interaction dessus en prenant en compte les intéractions filles

WITH RECURSIVE recursive_interaction AS (
SELECT i.id_publication,i.id_interaction, i.id_interaction_parent, 1 as number_interaction
from "PROJET BDR".interaction i 
where i.id_interaction_parent is null

UNION ALL

SELECT i.id_publication,i.id_interaction, i.id_interaction_parent, ri.number_interaction
from "PROJET BDR".interaction i join recursive_interaction ri on i.id_interaction_parent = ri.id_interaction
)

SELECT p.id_publication, SUM(i.number_interaction) as nombre
FROM "PROJET BDR".publication p join recursive_interaction i on p.id_publication  = i.id_publication 
group by p.id_publication
order by nombre desc
