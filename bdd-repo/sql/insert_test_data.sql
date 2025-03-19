INSERT INTO products (name, price, stock) VALUES
('Produit A', 19.99, 100),
('Produit B', 29.99, 50),
('Produit C', 39.99, 0),
('Produit D', 49.99, 25);

INSERT INTO users (username, email, password) VALUES
('utilisateur1', 'utilisateur1@example.com', 'password1'),
('utilisateur2', 'utilisateur2@example.com', 'password2'),
('utilisateur3', 'utilisateur3@example.com', 'password3');

INSERT INTO orders (user_id, product_id, quantity, order_date) VALUES
(1, 1, 2, '2023-10-01'),
(1, 2, 1, '2023-10-02'),
(2, 1, 1, '2023-10-03'),
(3, 3, 1, '2023-10-04');