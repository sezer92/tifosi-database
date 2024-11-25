
-- Création de la base de données Tifosi
CREATE DATABASE IF NOT EXISTS tifosi;
USE tifosi;

-- Table Marque
CREATE TABLE marque (
    id_marque INT AUTO_INCREMENT PRIMARY KEY,
    nom_marque VARCHAR(255) NOT NULL
);

-- Table Ingrédient
CREATE TABLE ingredient (
    id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
    nom_ingredient VARCHAR(255) NOT NULL
);

-- Table Boisson
CREATE TABLE boisson (
    id_boisson INT AUTO_INCREMENT PRIMARY KEY,
    nom_boisson VARCHAR(255) NOT NULL,
    volume_ml INT NOT NULL,
    prix DECIMAL(5, 2) NOT NULL,
    id_marque INT,
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
);

-- Table Focaccia
CREATE TABLE focaccia (
    id_focaccia INT AUTO_INCREMENT PRIMARY KEY,
    nom_focaccia VARCHAR(255) NOT NULL,
    prix DECIMAL(5, 2) NOT NULL,
    ingredients TEXT NOT NULL,
    id_marque INT,
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
);
