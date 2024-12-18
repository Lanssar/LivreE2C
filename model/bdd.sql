/* connecter à mysql */
sudo mysql

/* quitter mysql */

exit

/* commande de base */

SHOW DATABASES; /* La liste de bdd sur les serveurs */
CREATE DATABASE livres_e2C; /* créee une bdd*/
Use livres_e2C /* Utiliser une bdd */

/* gestion de compte */
CREATE USER 'livres_e2C_admin'@'localhost' IDENTIFIED BY "Lanssar21";
GRANT ALL PRIVILEGES ON livres_e2C.* TO 'livres_e2C_admin'@'localhost';

/* se connecter à mysql avec un utilisateur spécifique */

mysql -h localhost -u livres_e2C_admin -p

/* Créer une table */

CREATE TABLE IF NOT EXISTS Users (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pseudo VARCHAR(50) NOT NULL UNIQUE,
    mot_de_passe VARCHAR(30),
    email VARCHAR(255) NOT NULL UNIQUE,
    nom VARCHAR(50) NOT NULL, 
    prenom VARCHAR(50) NOT NULL, 
    telephone CHAR(10),
    site VARCHAR(30) NOT NULL
)ENGINE=InnoDB;

/*Voir table et détal des tables*/
SHOW TABLES;
DESCRIBE Users;

/*Ajouter une colonne*/

ALTER USER Users
ADD password VARCHAR(30) NOT NULL;

/*ajouter des donn&es*/

INSERT INTO Users (prenom, nom, pseudo, mot_de_passe, email, telephone, site)
VALUES  ('Lanssar', 'Niangane', 'LNS21', 'Lanlan21', 'lanssar.niangane@outlook.fr', '0652362575', 'Roubaix');

INSERT INTO Users (prenom, nom, pseudo, mot_de_passe, email, telephone, site)
VALUES  ('Sophie', 'Carpentier', 'SC', 'lapnumcestcool', 'sc@e2c.fr', '0493783627', 'Lille'),
        ('Amando', 'Ruiz', 'AR', 'VivementlePHP', 'ar@e2c.fr', '0948376523', 'Roubaix'),    
        ('Adrien', 'Grandjean', 'Neuromancer', 'williamgibson', 'william@e2c.fr', '0493847360', 'Roubaix');




/* Lire toutes les données d'une table */

SELECT * FROM Users;
SELECT prenom, nom, email FROM Users;
SELECT prenom, nom, email FROM Users ORDER BY prenom ASC;
SELECT prenom, nom, email FROM Users ORDER BY email DESC;
SELECT pseudo, password FROM Users WHERE pseudo='Neuromancer'
SELECT pseudo, password FROM Users WHERE pseudo='Bisounours'

SELECT nom, prenom, pseudo FROM Users WHERE site Lille

/* Gestion des sites */

CREATE TABLE IF NOT EXISTS Sites(
    id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL
)ENGINE=InnoDB;

INSERT INTO Sites (name)
VALUES ('Lille'), ('Roubaix'), ('Armentières'), ('Saint Omer');

SELECT * FROM Sites;

/* premère relation */

ALTER TABLE Users
ADD site_id TINYINT UNSIGNED NOT NULL;

UPDATE Users SET site_id=1;
SELECT * FROM Users;

ALTER TABLE Users
ADD CONSTRAINT FOREIGN KEY fk_sites
    FOREIGN KEY (site_id)
    REFERENCES Sites(id);

Update Users SET site_id = 1 WHERE site="Lille";
Update Users SET site_id = 2 WHERE site="Roubaix";
Update Users SET site_id = 3 WHERE site="Armentières";
Update Users SET site_id = 4 WHERE site="Saint Omer";

Update Users SER site_id = 5;

ALTER TABLE Users
DROP site; 

/* jointure */

SELECT Users.pseudo, Users.email, Sites.name FROM Users INNER JOIN Sites ON Users.site_id = Sites.id;

/* Les livres */

CREATE TABLE IF NOT EXISTS Genres (
    id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Livres (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    auteur VARCHAR(255) NOT NULL DEFAULT "Inconnu",
    genre_id TINYINT UNSIGNED NOT NULL DEFAULT 1,
    synopsis TEXT,
    date_of_edition CHAR(4) NOT NULL DEFAULT '-NC-',
    pages SMALLINT,
    site_id TINYINT UNSIGNED NOT NULL,
    CONSTRAINT fk_genre
        FOREIGN KEY (genre_id)
        REFERENCES Genres(id),
    CONSTRAINT fk_sites_book
        FOREIGN KEY (site_id)
        REFERENCES Sites(id)
)ENGINE=InnoDB;