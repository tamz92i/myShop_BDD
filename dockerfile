FROM postgres:14

# Variables d'environnement pour configurer la base de données
ENV POSTGRES_PASSWORD=myshoppass
ENV POSTGRES_USER=myshopuser
ENV POSTGRES_DB=myshop

# Copier les scripts SQL dans le dossier d'initialisation de PostgreSQL
COPY ./bdd-repo/sql/create_tables.sql /docker-entrypoint-initdb.d/01-create_tables.sql
COPY ./bdd-repo/sql/insert_test_data.sql /docker-entrypoint-initdb.d/02-insert_test_data.sql

# Note: PostgreSQL exécute automatiquement les scripts .sql dans docker-entrypoint-initdb.d
# Les permissions d'exécution ne sont nécessaires que pour les scripts shell