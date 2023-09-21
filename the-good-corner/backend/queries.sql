-- Créer la DB

CREATE TABLE ad 
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
    category VARCHAR(100),
	title VARCHAR(100) NOT NULL,
	description TEXT,
	owner VARCHAR(100) NOT NULL,
	price INT,
    picture VARCHAR(100),
    location VARCHAR(100),
	createdAt DATE
);

-- Insérer 20 annonces

INSERT INTO ad (category, title, description, owner, price, picture, location, createdAt) VALUES
('Vêtement', 'Blouson', 'Un très beau blouson', 'robert@dupont.fr', 43, 'www.fakeurl.exemple', 'Paris', '2021-09-14'),
('Vêtement', 'Short', 'Un très beau blouson', 'regis@durand.fr', 200, 'www.fakeurl.exemple', 'Bordeaux', '2021-10-14'),
('Meubles', 'Table', 'Un très beau blouson', 'robert@dupont.fr', 10, 'www.fakeurl.exemple', 'Lyon', '2021-09-10'),
('Meubles', 'Chaises', 'Un très beau blouson', 'robert@dupont.fr', 54, 'www.fakeurl.exemple', 'Paris', '2021-04-14'),
('Vêtement', 'Chaussettes', 'Un très beau blouson', 'isabelle@jaures.fr', 43, 'www.fakeurl.exemple', 'Bordeaux', '2022-05-14'),
('Electronménager', 'Gazinière', 'Un très beau blouson', 'robert@dupont.fr', 101, 'www.fakeurl.exemple', 'Lyon', '2023-06-14'),
('Electronménager', 'Blouson', 'Un très beau blouson', 'robert@dupont.fr', 43, 'www.fakeurl.exemple', 'Paris', '2021-02-14'),
('Electronménager', 'Four', 'Un très beau blouson', 'regis@durand.fr', 220, 'www.fakeurl.exemple', 'Bordeaux', '2021-01-14'),
('Meubles', 'Table', 'Un très beau blouson', 'robert@dupont.fr', 10, 'www.fakeurl.exemple', 'Lyon', '2021-09-10'),
('Meubles', 'Chaises', 'Un très beau blouson', 'robert@dupont.fr', 540, 'www.fakeurl.exemple', 'Paris', '2018-04-14'),
('Electronménager', 'Chaussettes', 'Un très beau blouson', 'isabelle@jaures.fr', 43, 'www.fakeurl.exemple', 'Bordeaux', '2022-05-14'),
('Vêtement', 'Blouson', 'Un très beau blouson', 'robert@dupont.fr', 10, 'www.fakeurl.exemple', 'Lyon', '2015-06-14'),
('Electronménager', 'Blouson', 'Un très beau blouson', 'robert@dupont.fr', 435, 'www.fakeurl.exemple', 'Paris', '2021-09-14'),
('Vêtement', 'Short', 'Un très beau blouson', 'regis@durand.fr', 200, 'www.fakeurl.exemple', 'Bordeaux', '2021-05-14'),
('Meubles', 'Table', 'Un très beau blouson', 'robert@dupont.fr', 140, 'www.fakeurl.exemple', 'Lyon', '2021-09-01'),
('Meubles', 'Chaises', 'Un très beau blouson', 'robert@dupont.fr', 54, 'www.fakeurl.exemple', 'Paris', '2021-04-14'),
('Vêtement', 'Chaussettes', 'Un très beau blouson', 'isabelle@jaures.fr', 43, 'www.fakeurl.exemple', 'Bordeaux', '2022-05-14'),
('Electronménager', 'Blouson', 'Un très beau blouson', 'robert@dupont.fr', 101, 'www.fakeurl.exemple', 'Lyon', '2023-06-14'),
('Vêtement', 'Blouson', 'Un très beau blouson', 'robert@dupont.fr', 43, 'www.fakeurl.exemple', 'Paris', '2021-09-01'),
('Vêtement', 'Short', 'Un très beau blouson', 'regis@durand.fr', 200, 'www.fakeurl.exemple', 'Bordeaux', '2021-10-14'),
('Meubles', 'Table', 'Un très beau blouson', 'robert@dupont.fr', 10, 'www.fakeurl.exemple', 'Lyon', '2021-09-01')

-- Afficher toutes les annonces

SELECT category, title FROM ad;

-- Afficher toutes les annonces de Bordeaux

SELECT * FROM ad WHERE location = 'Bordeaux';

-- Supprimer les annonces avec un prix supérieur à 40€

DELETE FROM ad WHERE price > 40;

-- Mettre à jour les annonces du 1er Septembre avec un prix à 0€ (re-INSERT pour retrouver quelques annonces)
-- N'arrive pas à le faire fonctionner
UPDATE ad SET price = 0 WHERE createdAt = '%%%%-09-01';

-- Afficher la moyenne des prix des annonces de la ville de Paris

SELECT *, AVG(price) FROM ad WHERE location = 'Paris';

-- BONUS : Afficher la moyenne des prix des annonces par ville

SELECT location, AVG(price) FROM ad GROUP BY location;