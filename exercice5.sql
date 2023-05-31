-------V. Exercice 5-------
/*1) Soit la base relationnelle de données LIVRAISON de schéma :
USINE (NumU, NomU, VilleU)
PRODUIT (NumP, NomP, Couleur, Poids)
FOURNISSEUR (NumF, NomF, Statut, VilleF)
LIVRAISON (NumP, NumU, NumF, Quantité)*/

--a) Ajouter un nouveau fournisseur avec les attributs de votre choix


INSERT INTO 
    fournisseur (nomFournisseur, statut, villeFournisseur) --On recupère dans la table les données qu'on veut ajouter
VALUES 
    ('Gueulerici', ' ', 'Corbeilles')--On ajoute à la main et dans l'ordre attention aux quotes



--b) Supprimer tous les produits de couleur noire et de numéros compris entre 100 et 1999

DELETE FROM 
    produit p --On recupere la table d'où on veut delete les produits
WHERE 
    (p.numProduit BETWEEN 100 AND 1999) AND (p.couleur = 'noire') --Condition WHERE pour signifier qu'on veut enlever les produits de couleur noire



--c) Changer la ville du fournisseur 3 par Mulhouse

UPDATE 
    fournisseur f--Update sert à modifier des lignes existantes (wahou)
SET 
    f.villeFournisseur = 'Mulhouse'--On utilise SET pour "setter" la ville à rajouter qu'on a aussi récuperer de la table fournisseur
WHERE 
    f.numFournisseur = '3';--On dit ici avec WHERE que c'est le fournisseur 3 qui déménage