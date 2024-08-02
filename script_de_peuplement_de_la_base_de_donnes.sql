
--
-- Déchargement des données de la table `client`
--

INSERT INTO client (nom_client, age, cp_client) VALUES
('Jean Dupont', 30, 75001),
('Marie Curie', 28, 75002),
('Alain Prost', 40, 75003);

-- --------------------------------------------------------

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');

-- --------------------------------------------------------

--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES
(1, 'Coca-cola zéro', 1),
(2, 'Coca-cola original', 1),
(3, 'Fanta citron', 1),
(4, 'Fanta orange', 1),
(5, 'Capri-sun', 1),
(6, 'Pepsi', 4),
(7, 'Pepsi Max Zéro', 4),
(8, 'Lipton zéro citron', 4),
(9, 'Lipton Peach', 4),
(10, 'Monster energy ultra gold', 3),
(11, 'Monster energy ultra blue', 3),
(12, 'Eau de source ', 2);

-- --------------------------------------------------------

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES
(1, 'Ail'),
(2, 'Ananas'),
(3, 'Artichaut'),
(4, 'Bacon'),
(5, 'Base Tomate'),
(6, 'Base crème'),
(7, 'Champignon'),
(8, 'Chevre'),
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
(24, 'Tomate cerise'),
(25, 'Mozarella');

-- --------------------------------------------------------

--
-- Déchargement des données de la table `focaccia`
--

INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES
(1, 'Mozaccia', 9.8),
(2, 'Gorgonzollaccia', 10.8),
(3, 'Raclaccia', 8.9),
(4, 'Emmentalaccia', 9.8),
(5, 'Tradizione', 8.9),
(6, 'Hawaienne', 11.2),
(7, 'Américaine', 10.8),
(8, 'Paysanne', 12.8);

-- --------------------------------------------------------

--
-- Déchargement des données de la table `menu`
--

INSERT INTO `menu` (nom_menu, prix_menu, id_focaccia) VALUES
('Menu Mozaccia', 10.50, 1),       
('Menu Gorgonzollaccia', 12.00, 2),
('Menu Raclaccia', 10.00, 3),    
('Menu Emmentalaccia', 10.50, 4),
('Menu Tradizione', 10.00, 5),   
('Menu Hawaienne', 12.50, 6),      
('Menu Américaine', 12.00, 7),     
('Menu Paysanne', 14.00, 8);

-- --------------------------------------------------------


--
-- Déchargement des données de la table `comprend`
--

-- Insérer les ingrédients pour Mozaccia (id_focaccia = 1)
INSERT INTO `comprend` (id_focaccia, id_ingredient) VALUES
(1, 5),  -- Base Tomate
(1, 9),  -- Cresson
(1, 13), -- Jambon fumé
(1, 1),  -- Ail
(1, 3),  -- Artichaut
(1, 7),  -- Champignon
(1, 18), -- Parmesan
(1, 20), -- Poivre
(1, 16), -- Olive noire
(1, 25); -- Mozarella

-- Insérer les ingrédients pour Gorgonzollaccia (id_focaccia = 2)
INSERT INTO `comprend` (id_focaccia, id_ingredient) VALUES
(2, 5),  -- Base Tomate
(2, 11), -- Gorgonzola
(2, 9),  -- Cresson
(2, 1),  -- Ail
(2, 7),  -- Champignon
(2, 18), -- Parmesan
(2, 20), -- Poivre
(2, 16); -- Olive noire

-- Insérer les ingrédients pour Raclaccia (id_focaccia = 3)
INSERT INTO `comprend` (id_focaccia, id_ingredient) VALUES
(3, 5),  -- Base Tomate
(3, 22), -- Raclette
(3, 9),  -- Cresson
(3, 1),  -- Ail
(3, 7),  -- Champignon
(3, 18), -- Parmesan
(3, 20); -- Poivre

-- Insérer les ingrédients pour Emmentalaccia (id_focaccia = 4)
INSERT INTO `comprend` (id_focaccia, id_ingredient) VALUES
(4, 6),  -- Base crème
(4, 10), -- Emmental
(4, 9),  -- Cresson
(4, 7),  -- Champignon
(4, 18), -- Parmesan
(4, 20); -- Poivre

-- Insérer les ingrédients pour Tradizione (id_focaccia = 5)
INSERT INTO `comprend` (id_focaccia, id_ingredient) VALUES
(5, 5),  -- Base Tomate
(5, 25), -- Mozarella
(5, 9),  -- Cresson
(5, 12), -- Jambon cuit
(5, 7),  -- Champignon
(5, 18), -- Parmesan
(5, 20), -- Poivre
(5, 16), -- Olive noire
(5, 17); -- Olive verte

-- Insérer les ingrédients pour Hawaienne (id_focaccia = 6)
INSERT INTO `comprend` (id_focaccia, id_ingredient) VALUES
(6, 5),  -- Base Tomate
(6, 25), -- Mozarella
(6, 9),  -- Cresson
(6, 4),  -- Bacon
(6, 2),  -- Ananas
(6, 19), -- Piment
(6, 18), -- Parmesan
(6, 20), -- Poivre
(6, 16); -- Olive noire

-- Insérer les ingrédients pour Américaine (id_focaccia = 7)
INSERT INTO `comprend` (id_focaccia, id_ingredient) VALUES
(7, 5),  -- Base Tomate
(7, 25), -- Mozarella
(7, 9),  -- Cresson
(7, 4),  -- Bacon
(7, 21), -- Pomme de terre
(7, 18), -- Parmesan
(7, 20), -- Poivre
(7, 16); -- Olive noire

-- Insérer les ingrédients pour Paysanne (id_focaccia = 8)
INSERT INTO `comprend` (id_focaccia, id_ingredient) VALUES
(8, 6),  -- Base crème
(8, 8),  -- Chevre
(8, 21), -- Pomme de terre
(8, 13), -- Jambon fumé
(8, 1),  -- Ail
(8, 3),  -- Artichaut
(8, 7),  -- Champignon
(8, 18), -- Parmesan
(8, 20), -- Poivre
(8, 16), -- Olive noire
(8, 14); -- Oeuf
-- --------------------------------------------------------

--
-- Déchargement des données de la table `contient`
--

INSERT INTO `contient` (id_menu, id_boisson) VALUES
(1, 1), -- Menu Mozaccia avec Coca-cola zéro
(2, 2), -- Menu Gorgonzollaccia avec Coca-cola original
(3, 3), -- Menu Raclaccia avec Fanta citron
(4, 4), -- Menu Emmentalaccia avec Fanta orange
(5, 5), -- Menu Tradizione avec Capri-sun
(6, 6), -- Menu Hawaienne avec Pepsi
(7, 7), -- Menu Américaine avec Pepsi Max Zéro
(8, 12); -- Menu Paysanne avec Eau de source

-- --------------------------------------------------------

--
-- Déchargement des données de la table `paye`
--
INSERT INTO `paye` (id_client, id_menu, jour) VALUES
(1, 3, '2024-08-01'),
(2, 5, '2024-08-02'),
(3, 7, '2024-08-03');

-- --------------------------------------------------------

--
-- Déchargement des données de la table `achete`
--
INSERT INTO `achete` (id_client, id_focaccia, jour) VALUES
(1, 4, '2024-08-01'),
(2, 8, '2024-08-02'),
(3, 1, '2024-08-03');


