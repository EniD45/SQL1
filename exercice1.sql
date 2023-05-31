/*I. Exercice 1

1) Soit le schéma relationnel suivant :
REPRESENTATION (N°REPRESENTATION, TITRE_REPRESENTATION, LIEU) 
MUSICIEN (NOM, N°REPRESENTATION*) 
PROGRAMMER (DATE, N°REPRESENTATION*, TARIF)
Affichez les résultats suivants avec une solution SQL :*/

/*a) Donner la liste des titres des représentations*/

SELECT 
    r.titre_representation --on SELECT les titres des representations depuis la table representation

FROM 
    representation r --le petit "r" est un allias de "représentation" lorsqu'on l'utilise avec un point après on récupère les données de la table--


/*b) Donner la liste des titres des représentations ayant lieu à l'opéra Bastille*/

SELECT 
    r.titre_representation

FROM 
    representation r 

WHERE 
    r.lieu = "bastille"

/*c) Donner la liste des noms des musiciens et des titres des représentations auxquelles ils participent*/

SELECT 
    m.nom, r.titre_representation

FROM 
    representation r , musicien m

WHERE 
    m.representation_id = r.num_representation


/*d) Donner la liste des titres des représentations, les lieux et les tarifs pour la journée du 14/09/2014.*/

SELECT 
    r.titre_representation, p.tarif

FROM 
    representation r, programmer p

WHERE 
    r.num_representation = p.num_representation

AND 
    p.date = '2014-09-14' --Après un WHERE on ne pourra utiliser que des AND si on ajoute des conditions










-------------------------------------------------------------------








