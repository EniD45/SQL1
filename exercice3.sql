/*III. Exercice 3
1) Soit le schéma relationnel suivant :
ARTICLES (NOART, LIBELLE, STOCK, PRIXINVENT)
FOURNISSEURS (NOFOUR, NOMFOUR, ADRFOUR, VILLEFOUR)
ACHETER (NOFOUR#, NOART#, PRIXACHAT, DELAI)
Affichez les résultats suivants avec une solution SQL :



/*a) Numéros et libellés des articles dont le stock est inférieur à 10 ?*/

SELECT 
    a.noart , a.libelle_article 

FROM 
    articles a

WHERE 
    a.stock < 10 


/*b) Liste des articles dont le prix d'inventaire est compris entre 100 et 300 ?*/

SELECT 
    a.noart , a.libelle_article 

FROM 
    articles a

WHERE 
    a.prixinvent 

BETWEEN 100 AND 300

/*c) Liste des fournisseurs dont on ne connaît pas l'adresse ?*/

SELECT 
    f.nofour, f.nomfour, f.adrfour
FROM 
    fournisseurs f
WHERE 
    f.adrfour IS NULL
;


UPDATE 
    fournisseurs
SET 
    adrfour = NULL
WHERE 
    nomfour = "Stef"
;

/*d) Liste des fournisseurs dont le nom commence par "STE" ?*/

SELECT 
    f.nofour, f.nomfour

FROM 
    fournisseurs f

WHERE 
    f.nomfour LIKE 'STE%'
;

/*e) Noms et adresses des fournisseurs qui proposent des articles pour lesquels le délai 
d'approvisionnement est supérieur à 20 jours ?*/


SELECT 
    *

FROM 
    fournisseurs f
        
JOIN 
    acheter a ON f.nofour = a.nofour
        
WHERE 
    a.delai>20
;



/*f) Nombre d'articles référencés ?*/


SELECT 
    COUNT(*)  AS stock


FROM 
    articles a;



/*g) Valeur du stock ?*/

SELECT 
    SUM(a.prixinvent*a.stock)

FROM 
    articles a




/*h) Numéros et libellés des articles triés dans l'ordre décroissant des stocks ?*/

SELECT 
    a.noart, a.libelle_article, a.stock

FROM 
    articles a

ORDER BY  
    a.stock DESC


/*i) Liste pour chaque article (numéro et libellé) du prix d'achat maximum, minimum et moyen? */



  SELECT 
    a.noart, a.libelle_article, MAX(ac.prix_achat) AS prix_max, MIN(ac.prix_achat) AS prix_min, ROUND(AVG(ac.prix_achat), 2) AS prix_moyen
FROM 
    acheter ac
        
INNER JOIN 
    articles a ON ac.noart = a.noart
        
GROUP BY 
    a.noart, a.libelle_article;



/*j) Délai moyen pour chaque fournisseur proposant au moins 2 articles ?*/






------------------------------------------------------------------------