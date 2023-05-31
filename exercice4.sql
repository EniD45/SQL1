--Exercice 4

--Donnez le résultat SQL des éléments suivants :

--a) Liste de tous les étudiants


SELECT 
    *

FROM 
    etudiant



--b) Liste de tous les étudiants, classée par ordre alphabétique inverse


 SELECT 
    e.nom, e.prenom
FROM 
    etudiant e
ORDER BY 
    e.nom DESC;


--c) Libellé et coefficient (exprimé en pourcentage) de chaque matière






--d) Nom et prénom de chaque étudiant


SELECT 
    e.nom, e.prenom
FROM 
    etudiant e;



--e) Nom et prénom des étudiants domiciliés à Lyon



SELECT 
    e.nom, e.prenom, e.ville
FROM 
    etudiant e
WHERE 
    e.ville = "lyon";



--f) Liste des notes supérieures ou égales à 10

SELECT 
    n.note
FROM 
    notation n
WHERE 
    n.note >= 10;




--g) Liste des épreuves dont la date se situe entre le 1er janvier et le 30 juin 2014






--h) Nom, prénom et ville des étudiants dont la ville contient la chaîne "ll" (LL)

SELECT 
    et.nom, et.prenom, et.ville


FROM 
    etudiant et
        
        
WHERE 
    et.ville LIKE '%ll%'




--i) Prénoms des étudiants de nom Dupont, Durand ou Martin


SELECT  
    et.prenom
FROM 
    etudiant et
WHERE 
    et.nom = 'Dupont' or et.nom = 'Durand' or et.nom = 'Martin'



--j) Somme des coefficients de toutes les matières

 SELECT 
    SUM(m.coef) as sommeCoef
FROM 
    matiere m



--k) Nombre total d'épreuves


  SELECT 
    SUM(e.numepreuve) as nombreEpreuves
FROM 
    epreuve e



--l) Nombre de notes indéterminées (NULL)






--m) Liste des épreuves (numéro, date et lieu) incluant le libellé de la matière


SELECT
	ep.numepreuve,
	ep.datepreuve,
	ep.lieu,
	m.libelle	
FROM 
    epreuve ep
INNER JOIN 
    matiere m 
ON  
    ep.numepreuve = m.codemat



--n) Liste des notes en précisant pour chacune le nom et le prénom de l'étudiant qui l'a obtenue

SELECT
	n.note,
	e.nom,
	e.prenom
FROM 

notation n

INNER JOIN 

etudiant e ON e.numetu = n.note





--o) Liste des notes en précisant pour chacune le nom et le prénom de l'étudiant qui l'a obtenue et le libellé de la matière concernée







--p) Nom et prénom des étudiants qui ont obtenu au moins une note égale à 20






--q) Moyennes des notes de chaque étudiant (indiquer le nom et le prénom)






--r) Moyennes des notes de chaque étudiant (indiquer le nom et le prénom), classées de la meilleure à la moins bonne







--s) Moyennes des notes pour les matières (indiquer le libellé) comportant plus d'une épreuve






--t) Moyennes des notes obtenues aux épreuves (indiquer le numéro d'épreuve) où moins de 6 étudiants ont été notés

