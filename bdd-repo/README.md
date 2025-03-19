# BDD Repo

Ce projet contient les scripts SQL nécessaires pour gérer la base de données d'une boutique en ligne. Il inclut des scripts pour créer les tables, effectuer des migrations et insérer des données de test.

## Structure du projet

- **sql/create_tables.sql** : Ce fichier contient les scripts SQL pour créer les tables nécessaires à la base de données, y compris les tables pour les produits, les utilisateurs et les commandes.

- **sql/migrations/001_initial_migration.sql** : Ce fichier contient le script de migration initial qui peut être utilisé avec un outil comme Sequelize ou Alembic pour gérer les versions de la base de données.

- **sql/insert_test_data.sql** : Ce fichier contient des scripts d'insertion de données de test pour initialiser la base de données avec des données fictives pour les produits, les utilisateurs et les commandes.

## Instructions d'utilisation

1. Exécutez le script `create_tables.sql` pour créer les tables nécessaires dans votre base de données.
2. Appliquez les migrations en utilisant le script `001_initial_migration.sql` si vous utilisez un outil de migration.
3. Utilisez le script `insert_test_data.sql` pour insérer des données de test dans les tables créées.

Ce projet vise à faciliter la gestion des données pour une boutique en ligne en fournissant une structure de base de données solide et des données de test.