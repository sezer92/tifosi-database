# Tifosi Database Project

Ce projet contient la base de données pour le restaurant **Tifosi**, un restaurant de Street-Food italien. Il inclut les scripts nécessaires pour créer, peupler, et sauvegarder la base de données.

## Contenu du repository

- `regenerated_create_tifosi.sql` : Script pour créer la base de données et les tables (structure).
- `regenerated_populate_tifosi.sql` : Script pour insérer les données de test.
- `backup_tifosi.sql` : Sauvegarde complète de la base de données peuplée.

## Instructions pour utiliser la base de données

### 1. Création de la base de données
Pour créer la base de données et les tables, exécutez le script suivant dans MySQL :
```bash
mysql -u <nom_utilisateur> -p < regenerated_create_tifosi.sql
