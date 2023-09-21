-- Créer la DB 

CREATE TABLE ads 
(
	id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    category_id INTEGER,
	title VARCHAR(100) NOT NULL,
	description TEXT,
	owner VARCHAR(100) NOT NULL,
	price REEL,
    picture VARCHAR(100),
    location VARCHAR(100),
	createdAt DATE
);

-- Créer la table categories

CREATE TABLE categories
(
	id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name VARCHAR(100)
);

-- Insérer les catégories vêtement, voiture, autre

INSERT INTO categories (name) VALUES
('clothes'),
('cars'),
('others');

-- Lier la tables Ads et la table Categories

ALTER TABLE ads
ADD COLUMN category_id INTEGER, 
ADD CONSTRAINT FK_ads
FOREIGN KEY (category_id) REFERENCES categories(id);