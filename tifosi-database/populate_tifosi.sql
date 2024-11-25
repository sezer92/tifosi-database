USE tifosi;

-- Peuplement de la table marque
INSERT INTO marque (id_marque, nom) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');

-- Peuplement de la table ingredient
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES
(1, 'Ail'),
(2, 'Ananas'),
(3, 'Artichaut'),
(4, 'Bacon'),
(5, 'Base Tomate'),
(6, 'Base Crème'),
(7, 'Champignon'),
(8, 'Chèvre'),
(9, 'Cresson'),
(10, 'Emmental'),
(11, 'Gorgonzola'),
(12, 'Jambon cuit'),
(13, 'Jambon fumé'),
(14, 'Oeuf'),
(15, 'Oignon'),
(16, 'Olive noire'),
(17, 'Olive verte'),
(18, 'Parmesan'),
(19, 'Piment'),
(20, 'Poivre'),
(21, 'Pomme de terre'),
(22, 'Raclette'),
(23, 'Salami'),
(24, 'Tomate cerise');

-- Peuplement de la table focaccia
INSERT INTO focaccia (id_focaccia, nom_focaccia, prix, ingredients, id_marque) VALUES
(1, 'Mozaccia', 9.80, 'Base tomate, Mozarella, cresson, jambon fumé, ail, artichaut, champignon, parmesan, poivre, olive noire', 1),
(2, 'Gorgonzollaccia', 10.80, 'Base tomate, Gorgonzola, cresson, ail, champignon, parmesan, poivre, olive noire', 1),
(3, 'Raclataccia', 8.90, 'Base tomate, raclette, cresson, ail, champignon, parmesan, poivre', 1),
(4, 'Emmentalaccia', 9.80, 'Base crème, Emmental, cresson, champignon, parmesan, poivre, oignon', 1),
(5, 'Tradizione', 8.90, 'Base tomate, Mozarella, cresson, jambon cuit, champignon, parmesan, poivre, olive noire, olive verte', 1),
(6, 'Hawaienne', 11.20, 'Base tomate, Mozarella, cresson, bacon, ananas, piment, parmesan, poivre, olive noire', 1),
(7, 'Américaine', 10.80, 'Base tomate, Mozarella, cresson, bacon, pomme de terre, parmesan, poivre, olive noire', 1),
(8, 'Paysanne', 12.80, 'Base crème, Chèvre, cresson, pomme de terre, jambon fumé, ail, artichaut, champignon, parmesan, poivre, olive noire, oeuf', 1);

-- Peuplement de la table boisson
INSERT INTO boisson (id_boisson, nom, volume_ml, prix, id_marque) VALUES
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
