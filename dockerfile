FROM mysql:8.0

# Répertoire pour les scripts SQL
RUN mkdir -p /docker-entrypoint-initdb.d

# Copier les scripts SQL dans le dossier d'initialisation de MySQL
COPY ./bdd-repo/sql/create_tables.sql /docker-entrypoint-initdb.d/01-create_tables.sql
COPY ./bdd-repo/sql/insert_test_data.sql /docker-entrypoint-initdb.d/02-insert_test_data.sql

# S'assurer que les scripts sont exécutables
RUN chmod +x /docker-entrypoint-initdb.d/*

# Variables d'environnement pour configurer la base de données
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=myshop
ENV MYSQL_USER=myshopuser
ENV MYSQL_PASSWORD=myshoppass