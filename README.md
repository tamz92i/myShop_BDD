Collecte des informations sur l’espace de travail# MyShop - Gestion de Base de Données

## 📋 Vue d'ensemble

Ce dépôt contient les scripts SQL pour la base de données de l'application MyShop, une plateforme e-commerce. La base de données gère les utilisateurs, les produits, les commandes et leurs relations.

## 🗂️ Structure du projet

```
bdd-repo/
├── README.md
├── sql/
│   ├── create_tables.sql      # Script de création des tables
│   ├── insert_test_data.sql   # Données de test
│   └── migrations/
│       └── 001_initial_migration.sql   # Première migration
```

## 🛠️ Technologies utilisées

- PostgreSQL
- SQL

## 📦 Installation et configuration

1. Assurez-vous d'avoir PostgreSQL installé sur votre système
2. Créez une base de données pour le projet:

```bash
createdb myshop
```

3. Exécutez le script de création des tables:

```bash
psql -d myshop -f sql/create_tables.sql
```

4. (Optionnel) Insérez les données de test:

```bash
psql -d myshop -f sql/insert_test_data.sql
```

## 📊 Structure de la base de données

### Tables principales

#### 📌 utilisateurs
- `id` - Identifiant unique (clé primaire)
- `nom` - Nom de l'utilisateur
- `email` - Adresse email (unique)
- `mot_de_passe` - Mot de passe hashé
- `date_creation` - Date d'inscription

#### 📌 produits
- `id` - Identifiant unique (clé primaire)
- `nom` - Nom du produit
- `description` - Description détaillée
- `prix` - Prix unitaire
- `stock` - Quantité disponible
- `date_ajout` - Date d'ajout du produit

#### 📌 commandes
- `id` - Identifiant unique (clé primaire)
- `utilisateur_id` - Référence à l'utilisateur
- `date_commande` - Date de la commande
- `total` - Montant total de la commande

#### 📌 commande_produit
- `commande_id` - Référence à la commande
- `produit_id` - Référence au produit
- `quantite` - Nombre d'unités commandées

## 🔄 Migrations

Pour maintenir la base de données à jour, utilisez les scripts de migration dans l'ordre:

```bash
psql -d myshop -f sql/migrations/001_initial_migration.sql
# Futures migrations à exécuter dans l'ordre numérique
```

## ⚠️ Note importante

Attention: il existe des différences entre les structures définies dans create_tables.sql et 001_initial_migration.sql. Assurez-vous d'utiliser le script approprié selon vos besoins (création initiale ou migration).

## 🧪 Données de test

Le fichier insert_test_data.sql contient des données d'exemple pour tester rapidement l'application. Notez que les noms des tables dans ce script ne correspondent pas exactement à ceux définis dans les scripts de création - une mise à jour serait nécessaire avant utilisation.

## 📝 Contribution

1. Fork le projet
2. Créez votre branche (`git checkout -b feature/nouvelle-fonctionnalite`)
3. Committez vos changements (`git commit -m 'Ajout d'une nouvelle fonctionnalité'`)
4. Poussez vers la branche (`git push origin feature/nouvelle-fonctionnalite`)
5. Ouvrez une Pull Request
