
-- Peuplement de la table des Marques
INSERT INTO marque (nom, origine) VALUES
('San Pellegrino', 'Italie'),
('Coca-Cola', 'USA');

-- Peuplement de la table des Ingrédients
INSERT INTO ingredient (nom, categorie) VALUES
('Tomate', 'Légume'),
('Mozzarella', 'Fromage'),
('Basilic', 'Herbe');

-- Peuplement de la table des Focaccias
INSERT INTO focaccia (nom, prix, description, id_marque) VALUES
('Focaccia Classique', 5.50, 'Focaccia avec tomate, mozzarella et basilic', 1);

-- Peuplement de la table des Boissons
INSERT INTO boisson (nom, volume_ml, prix, id_marque) VALUES
('San Pellegrino Limonata', 330, 2.50, 1),
('Coca-Cola', 330, 2.00, 2);
