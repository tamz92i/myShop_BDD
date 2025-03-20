INSERT INTO produits (nom, prix, stock) VALUES
('Produit A', 19.99, 100),
('Produit B', 29.99, 50),
('Produit C', 39.99, 0),
('Produit D', 49.99, 25);

INSERT INTO utilisateurs (nom, email, mot_de_passe) VALUES
('utilisateur1', 'utilisateur1@example.com', 'password1'),
('utilisateur2', 'utilisateur2@example.com', 'password2'),
('utilisateur3', 'utilisateur3@example.com', 'password3');

-- Création des commandes
INSERT INTO commandes (utilisateur_id, total) VALUES
(1, 69.97),  -- utilisateur1, total des produits A et B
(1, 19.99),  -- utilisateur1, produit A
(2, 19.99),  -- utilisateur2, produit A
(3, 39.99);  -- utilisateur3, produit C

-- Liaison entre commandes et produits
INSERT INTO commande_produit (commande_id, produit_id, quantite) VALUES
(1, 1, 2),  -- commande 1: 2 produits A
(1, 2, 1),  -- commande 1: 1 produit B
(2, 1, 1),  -- commande 2: 1 produit A
(3, 1, 1),  -- commande 3: 1 produit A
(4, 3, 1);  -- commande 4: 1 produit C