-- Création de la base de données
CREATE DATABASE IF NOT EXISTS tifosi;
USE tifosi;

-- Création des tables de la base de données Tifosi

-- Table marque
CREATE TABLE IF NOT EXISTS marque (
  id_marque INT NOT NULL AUTO_INCREMENT,
  nom_marque VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_marque)
);

-- Table boisson
CREATE TABLE IF NOT EXISTS boisson (
  id_boisson INT NOT NULL AUTO_INCREMENT,
  nom_boisson VARCHAR(45) NOT NULL,
  volume_ml INT NOT NULL,
  prix DECIMAL(5,2) NOT NULL,
  id_marque INT NOT NULL,
  PRIMARY KEY (id_boisson),
  FOREIGN KEY (id_marque) REFERENCES marque (id_marque)
);

-- Table focaccia
CREATE TABLE IF NOT EXISTS focaccia (
  id_focaccia INT NOT NULL AUTO_INCREMENT,
  nom_focaccia VARCHAR(45) NOT NULL,
  prix_focaccia DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (id_focaccia)
);

-- Table ingredient
CREATE TABLE IF NOT EXISTS ingredient (
  id_ingredient INT NOT NULL AUTO_INCREMENT,
  nom_ingredient VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_ingredient)
);

-- Table focaccia_ingredient (relation many-to-many entre focaccia et ingredient)
CREATE TABLE IF NOT EXISTS focaccia_ingredient (
  id_focaccia INT NOT NULL,
  id_ingredient INT NOT NULL,
  PRIMARY KEY (id_focaccia, id_ingredient),
  FOREIGN KEY (id_focaccia) REFERENCES focaccia (id_focaccia),
  FOREIGN KEY (id_ingredient) REFERENCES ingredient (id_ingredient)
);

-- Table menu
CREATE TABLE IF NOT EXISTS menu (
  id_menu INT NOT NULL AUTO_INCREMENT,
  nom_menu VARCHAR(45) NOT NULL,
  prix_menu DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (id_menu)
);

-- Table menu_focaccia (relation many-to-many entre menu et focaccia)
CREATE TABLE IF NOT EXISTS menu_focaccia (
  id_menu INT NOT NULL,
  id_focaccia INT NOT NULL,
  PRIMARY KEY (id_menu, id_focaccia),
  FOREIGN KEY (id_menu) REFERENCES menu (id_menu),
  FOREIGN KEY (id_focaccia) REFERENCES focaccia (id_focaccia)
);

-- Table menu_boisson (relation many-to-many entre menu et boisson)
CREATE TABLE IF NOT EXISTS menu_boisson (
  id_menu INT NOT NULL,
  id_boisson INT NOT NULL,
  PRIMARY KEY (id_menu, id_boisson),
  FOREIGN KEY (id_menu) REFERENCES menu (id_menu),
  FOREIGN KEY (id_boisson) REFERENCES boisson (id_boisson)
);

-- Table client
CREATE TABLE IF NOT EXISTS client (
  id_client INT NOT NULL AUTO_INCREMENT,
  nom_client VARCHAR(45) NOT NULL,
  age INT NOT NULL,
  cp_client INT NOT NULL,
  PRIMARY KEY (id_client)
);

-- Table achete (relation many-to-many entre client et focaccia/menu)
CREATE TABLE IF NOT EXISTS achete (
  id_client INT NOT NULL,
  id_focaccia INT DEFAULT NULL,
  id_menu INT DEFAULT NULL,
  jour DATE NOT NULL,
  PRIMARY KEY (id_client, jour, id_focaccia, id_menu),
  FOREIGN KEY (id_client) REFERENCES client (id_client),
  FOREIGN KEY (id_focaccia) REFERENCES focaccia (id_focaccia),
  FOREIGN KEY (id_menu) REFERENCES menu (id_menu)
);
