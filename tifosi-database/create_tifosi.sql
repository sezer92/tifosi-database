-- Création de la base de données
CREATE DATABASE IF NOT EXISTS tifosi;
USE tifosi;

-- Table marque
CREATE TABLE marque (
    id_marque INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL
);

-- Table ingredient
CREATE TABLE ingredient (
    id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
    nom_ingredient VARCHAR(50) NOT NULL
);

-- Table focaccia
CREATE TABLE focaccia (
    id_focaccia INT AUTO_INCREMENT PRIMARY KEY,
    nom_focaccia VARCHAR(50) NOT NULL,
    prix DECIMAL(5, 2) NOT NULL,
    ingredients TEXT NOT NULL,
    id_marque INT,
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
);

-- Table boisson
CREATE TABLE boisson (
    id_boisson INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    volume_ml INT NOT NULL,
    prix DECIMAL(5, 2) NOT NULL,
    id_marque INT,
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
);
