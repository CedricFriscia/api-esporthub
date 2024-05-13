# Introduction

ESH est une application mobile dédiée à centraliser l'univers de l'esport, offrant à sa communauté un point de rencontre unique.

L'API est conçue pour fluidifier et sécuriser la transmission des données entre votre base de données et votre interface utilisateur, tout en offrant une suite robuste de fonctionnalités pour optimiser et personnaliser vos interactions avec les données.

## Version

-   php : 8.1,
-   Laravel : 10.48.5,

## Contact Support

LOL

# Authentification

|  Identifiant  | Mot de passe |
| :-----------: | :----------: |
| esport@hub.fr |  esporthub   |

# Server EsportHub

-   Installer les dépendances : `composer install`
-   Creer une bdd avec MySQL **esporthub** avec un user **esporthub**,
-   Script pour créer les tables de la database `php artisan make migrate`
-   Script pour reset inserer des données tests dans la database `php artisan db:seed`
-   Script pour reset les tables de la database `php artisan db:wipe`
-   Lancer le serveur : `php artisan server` => <http://localhost:8000>

## Endpoints

### Page

-   GET `/page/:id` : renvoie les détails d’une page demandé.
-   GET `/pages` : renvoie les détails d'une page.
-   POST `/page` : créer une nouvelle page
-   PUT `/page/:id` : modifier un évent
-   DELETE `/page/:id` : supprimer un évent

    => EXEMPLE

```
  {
  "name": "Vitality",
  "header": "Compétition RLCS",
  "description": "Page officielle de la structure esport ...",
  "page_id": "1",
  }
```

### User

-   GET `/user/:mail` : renvoie les détails d’un user demandé.
-   GET `/users` : renvoie les détails des users.
-   POST `/user` créer un nouvel user
-   PUT `/user/:mail` : modifier un user
-   DELETE `/user/:mail` : supprimer un user

### Role

-   GET `/role` : renvoie les détails d’un role demandé.
-   GET `/roles` : renvoie les détails des roles.
-   POST `/role` créer un nouveau role
-   PUT `/role/:id` : modifier un role
-   DELETE `/role/:id` : supprimer un role

### Right

-   GET `/rights` : renvoie les détails des rights.
-   GET `/right/:id` : renvoie les détails d’un right demandé.
-   POST `/right` créer un nouvel right
-   PUT `/right/:id` : modifier un right
-   DELETE `/right/:id` : supprimer un right

### Article

-   GET `/articles` : renvoie les détails des articles.
-   GET `/article/:id` : renvoie les détails d’un article demandé.
-   POST `/article` créer un nouvel artile
-   PUT `/article/:id` : modifier un article
-   DELETE `/article/:id` : supprimer un article

### Link

-   GET `/link` : renvoie les détails d’un link demandé.
-   GET `/link/:id` : renvoie les détails d’un link demandé.
-   POST `/link` créer un nouveau link
-   PUT `/link/:id` : modifier un link
-   DELETE `/link/:id` : supprimer un link

### Link

-   GET `/link` : renvoie les détails d’un link demandé.
-   GET `/link/:id` : renvoie les détails d’un link demandé.
-   POST `/link` créer un nouveau link
-   PUT `/link/:id` : modifier un link
-   DELETE `/link/:id` : supprimer un link

## Formats de données

-   Requête : JSON, ...
-   Réponse : JSON
