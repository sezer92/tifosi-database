USE tifosi;

-- Peuplement de la base de données Tifosi

-- Peuplement de la table marque
INSERT INTO marque (id_marque, nom_marque) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');

-- Peuplement de la table boisson
INSERT INTO boisson (id_boisson, nom_boisson, volume_ml, prix, id_marque) VALUES
(1, 'Coca-cola zéro', 330, 2.00, 1),
(2, 'Coca-cola original', 330, 2.00, 1),
(3, 'Fanta citron', 330, 2.00, 1),
(4, 'Fanta orange', 330, 2.00, 1),
(5, 'Capri-sun', 200, 1.50, 1),
(6, 'Pepsi', 330, 2.00, 4),
(7, 'Pepsi Max Zéro', 330, 2.00, 4),
(8, 'Lipton zéro citron', 330, 2.50, 4),
(9, 'Lipton Peach', 330, 2.50, 4),
(10, 'Monster energy ultra gold', 500, 2.50, 3),
(11, 'Monster energy ultra blue', 500, 2.50, 3),
(12, 'Eau de source', 500, 1.00, 2);

-- Peuplement de la table focaccia
INSERT INTO focaccia (id_focaccia, nom_focaccia, prix_focaccia) VALUES
(1, 'Mozaccia', 9.80),
(2, 'Gorgonzollaccia', 10.80),
(3, 'Raclataccia', 8.90),
(4, 'Emmentalaccia', 9.80),
(5, 'Tradizione', 8.90),
(6, 'Hawaienne', 11.20),
(7, 'Américaine', 10.80),
(8, 'Paysanne', 12.80);

-- Peuplement de la table ingredient
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES
(1, 'Ail'), (2, 'Ananas'), (3, 'Artichaut'), (4, 'Bacon'),
(5, 'Base Tomate'), (6, 'Base Crème'), (7, 'Champignon'),
(8, 'Chèvre'), (9, 'Cresson'), (10, 'Emmental'),
(11, 'Gorgonzola'), (12, 'Jambon cuit'), (13, 'Jambon fumé'),
(14, 'Oeuf'), (15, 'Oignon'), (16, 'Olive noire'),
(17, 'Olive verte'), (18, 'Parmesan'), (19, 'Piment'),
(20, 'Poivre'), (21, 'Pomme de terre'), (22, 'Raclette'),
(23, 'Salami'), (24, 'Tomate cerise');

-- Peuplement de la table focaccia_ingredient
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES
(1, 1), (1, 3), (1, 5), (1, 7), (1, 9), (1, 13), (1, 16), (1, 18), (1, 20),
(2, 1), (2, 3), (2, 5), (2, 7), (2, 9), (2, 11), (2, 18), (2, 20),
(3, 1), (3, 5), (3, 7), (3, 9), (3, 18), (3, 20), (3, 22),
(4, 5), (4, 7), (4, 10), (4, 15), (4, 18), (4, 20),
(5, 1), (5, 3), (5, 5), (5, 7), (5, 9), (5, 12), (5, 16), (5, 17), (5, 18), (5, 20),
(6, 1), (6, 3), (6, 5), (6, 4), (6, 18), (6, 19), (6, 20), (6, 16),
(7, 5), (7, 8), (7, 9), (7, 4), (7, 21), (7, 18), (7, 20),
(8, 6), (8, 3), (8, 5), (8, 8), (8, 21), (8, 13), (8, 1), (8, 7), (8, 18), (8, 20), (8, 14), (8, 16);


-- Peuplement de la table menu
INSERT INTO menu (id_menu, nom_menu, prix_menu) VALUES
(1, 'Menu Classique', 15.00),
(2, 'Menu Gourmet', 20.00);

-- Peuplement de la table menu_focaccia
INSERT INTO menu_focaccia (id_menu, id_focaccia) VALUES
(1, 1), (1, 3), (2, 2), (2, 4);

-- Peuplement de la table menu_boisson
INSERT INTO menu_boisson (id_menu, id_boisson) VALUES
(1, 1), (1, 6), (2, 7), (2, 10);

-- Peuplement de la table client
INSERT INTO client (id_client, nom_client, age, cp_client) VALUES
(1, 'Jean Dupont', 35, 75001),
(2, 'Marie Curie', 28, 69002);

-- Peuplement de la table achete
INSERT INTO achete (id_client, id_focaccia, id_menu, jour) VALUES
(1, 1, NULL, '2024-11-25'),
(1, NULL, 1, '2024-11-25'),
(2, 2, NULL, '2024-11-26'),
(2, NULL, 2, '2024-11-26');
