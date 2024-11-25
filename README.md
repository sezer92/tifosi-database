# Tifosi Database Project

Ce projet contient la base de données pour le restaurant **Tifosi**, un restaurant de Street-Food italien. Il inclut les scripts nécessaires pour créer, peupler, et sauvegarder la base de données.

## Contenu du repository

- `create_tifosi.sql` : Script pour créer la base de données et les tables (structure).
- `populate_tifosi.sql` : Script pour insérer les données de test.
- `backup_tifosi.sql` : Sauvegarde complète de la base de données peuplée.

## Instructions pour utiliser la base de données

### 1. Création de la base de données
Pour créer la base de données et les tables, exécutez le script suivant dans MySQL :
```bash
mysql -u <nom_utilisateur> -p < create_tifosi.sql >

Pour insérer les données de test dans les tables, exécutez le script suivant :



mysql -u <nom_utilisateur> -p < populate_tifosi.sql >


Utilisateur administrateur
Pour accéder à la base de données tifosi, l'utilisateur administrateur suivant est configuré :

Nom d'utilisateur :tifosi
Mot de passe : défini lors de la création de l'utilisateur dans le script create_tifosi.sql.
mdp : tifosi2024
