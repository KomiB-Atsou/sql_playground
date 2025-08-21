-- Création de la base si elle n'existe pas
CREATE DATABASE bd_playground;

\c bd_playground;

-- Table clients
CREATE TABLE clients (
    client_id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    ville VARCHAR(50),
    date_inscription DATE
);

-- Table commandes
CREATE TABLE commandes (
    commande_id SERIAL PRIMARY KEY,
    client_id INT REFERENCES clients(client_id),
    produit VARCHAR(100),
    quantite INT,
    prix_unitaire DECIMAL(10,2),
    date_commande DATE
);

-- Table produits
CREATE TABLE produits (
    produit_id SERIAL PRIMARY KEY,
    nom_produit VARCHAR(100),
    categorie VARCHAR(50),
    prix DECIMAL(10,2)
);

-- Données clients
INSERT INTO clients (nom, ville, date_inscription) VALUES
('Alice Dupont', 'Paris', '2022-01-15'),
('Bob Martin', 'Lyon', '2021-11-20'),
('Charlie Leroy', 'Marseille', '2023-03-10');

-- Données produits
INSERT INTO produits (nom_produit, categorie, prix) VALUES
('Laptop', 'Informatique', 1200.00),
('Clavier', 'Informatique', 45.50),
('Chaise', 'Mobilier', 85.00),
('Table', 'Mobilier', 150.00);

-- Données commandes
INSERT INTO commandes (client_id, produit, quantite, prix_unitaire, date_commande) VALUES
(1, 'Laptop', 1, 1200.00, '2023-04-01'),
(1, 'Clavier', 2, 45.50, '2023-04-02'),
(2, 'Chaise', 4, 85.00, '2023-05-12'),
(3, 'Table', 1, 150.00, '2023-06-20');
