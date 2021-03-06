# TaskMe
*Yet another To-do list.*


- [TaskMe](#taskme)
  - [Intent](#intent)
  - [HowTo](#howto)
  - [Features](#features)
  - [Appendix](#appendix)
    - [VS Code Extensions](#vs-code-extensions)
    - [Tools](#tools)
    - [Sources](#sources)
  - [Todo](#todo)
      - [Setting up](#setting-up)
          - [Analyse the requirements](#analyse-the-requirements)
          - [Tailor the template](#tailor-the-template)
      - [Les différentes étapes du projet](#les-différentes-étapes-du-projet)
      - [Gestion des utilisateurs (bonus)](#gestion-des-utilisateurs-bonus)
    - [Bonus](#bonus)
## Intent

> This is my list. There are many others like it, but this one is mine. I must master it as I must master my life. Without me, my list is useless. Without my list, I am useless.

So yeah, my intent here is to create a To-do list app that haves an MVC architecture. Here it will be the PHP version, which will later be compared to the same project built with other tech solutions, as a personal benchmark.

## HowTo
 WIP
## Features
 WIP

Based on my MVC template [Yemaya](https://github.com/claudejdev/yemaya).

*<Frenglish>*

_Convention d'écriture_ :
- [Symfony](https://symfony.com/doc/current/contributing/code/standards.html), [Yoda style](https://cs.symfony.com/doc/rules/control_structure/yoda_style.html)
- Le nom des fichiers qui sont des classes prennent une majuscule à la première lettre


    Note : Les *Symfony Coding Standards* sont basés sur le [PSR-12](https://www.php-fig.org/psr/psr-12/). Le Yoda style force une erreur de syntaxe lorsque l'on utilise, à tort, l'opérateur d'assignation (=) à la place de l'opérateur de comparaison (==).
    Cf. [Yoda Conditions: To Yoda or Not to Yoda](https://knowthecode.io/yoda-conditions-yoda-not-yoda "Yoda Conditions: To Yoda or Not to Yoda by Tonya Mork")


_URL complète_
Cf. [Get the full URL in PHP](https://www.geeksforgeeks.org/get-the-full-url-in-php/ "Get the full URL in PHP - GeeksforGeeks")

permet de s'assurer que le chemin part toujours de la racine du site, même avec un niveau supplémentaire.
Défini dans index.php
Utilisé dans les views/common
    href="<?php echo URL; ?>
    src="<?php echo URL; ?>


_Alertes multiples_

<!-- l'alerte est affichée si elle n'est pas vide dans la variable de session -->

Défini dans template.php
Utilisé dans mainController.controller.php, par une fonction stockée dans toolbox.class.php

## Appendix
### VS Code Extensions
    Relevant-ish extensions added:
  - [php-cs-fixer, by Frank Terragna](https://marketplace.visualstudio.com/items?itemName=fterrag.vscode-php-cs-fixer)
  - [PHP Namespace Resolver, by Mehedi Hassan](https://marketplace.visualstudio.com/items?itemName=MehediDracula.php-namespace-resolver)
  - [PHP Extension Pack, by Felix Becker](https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-pack) (Includes [PHP Debug](https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-debug) & [PHP IntelliSense](https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-intellisense))
  - [PHP Phan (Analyzer), by tyson andre](https://marketplace.visualstudio.com/items?itemName=TysonAndre.php-phan)
  - [PHP Symbols, by lin yang](https://marketplace.visualstudio.com/items?itemName=linyang95.php-symbols)
  - [PHPStan, by swordev](https://marketplace.visualstudio.com/items?itemName=swordev.phpstan)
  - [PHP Snippets, by VSCSnippets](https://marketplace.visualstudio.com/items?itemName=vsc-snippets.vsc-php-snippets)
  - [PHP Intelephense, by Ben Mewburn](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client)

### Tools
- [Bootstrap](https://getbootstrap.com/)
- [GitKraken](https://www.gitkraken.com/)

### Sources
- *PHP – La suite*, Technobel / BStorm
- [L'architecture MVC | Ecole H2PROG](https://ecole.h2prog.com/courses/846335/lectures/15448687)
- [*PHP 7 avancé*, Eyrolles, 2016](https://www.eyrolles.com/Informatique/Livre/php-7-avance-9782212677201/)
- [PHP: Classes and Objects - Manual](https://www.php.net/manual/en/language.oop5.php/)
- Kudos to Quentin for his support!

## Todo

#### Setting up
- [x] Initialise the repo
- [x] Set up the readme, import the tasks to perform
###### Analyse the requirements
- [x] Which datas will I need to store in the DB
- [x] Which views will I need
###### Tailor the template
- [X] Create the views
- [ ] Else

#### Les différentes étapes du projet
- [x] Créer la base de données "todo" *->taskme*
- [x] Créer la table "liste" *-> tasks*
- [X] Créer les différents champs
- [X] Remplir avec quelques données
- [X] Afficher les tâches dans une page "A faire"
- [ ] Modifier la mise en forme, placez des checkbox
- [ ] Ajouter un bouton "Tâche(s) terminée(s)"
- [ ] Ajouter une page "Ajouter une tâche" qui affiche un formulaire pour récupérer la tâche
- [ ] Récupérer la tâche et vérifier qu'elle ne soit pas vide puis insérer-la en DB
- [ ] Modifier le statut en DB de certaines tâches
- [ ] Afficher les tâches terminées dans l'onglet "Tâches terminées"
- [ ] Au clic de tâches terminées, modifier le statut en DB
- [ ] Ajouter en DB les champs date pour la date de création, la date de début, la date de fin
- [ ] Remplir les champs en DB pour les différentes dates.
- [ ] Ajouter la date et l'heure lors de la création d'une tâche
- [ ] Créer une page "Démarrer une tâche" et récupérer les tâches qui ne sont pas finies dont la
date de début est null
- [ ] Modifier la mise en forme, placer des radio
- [ ] Ajouter un bouton "Démarrer"
- [ ] Au clic de "Démarrer", enregistrer la date et l'heure du jour en DB dans le champ date de
début.
- [ ] Ajouter une page "Tâches en cours" qui affiche toutes les tâches qui ne sont pas terminées et
dont le date de début n'est pas null.
- [ ] Ajouter une étiquette "En cours" pour les tâches en cours dans la page "A faire"
#### Gestion des utilisateurs (bonus)
- [ ] Créer un menu différent pour une personne non connectée.
- [ ] Ajouter une page "Connexion" avec un champ login
- [ ] Récupérer le login et :
o s'il existe et différent de null, l'enregistrer dans une variable de session,
o sinon afficher sous le formulaire que la personne doit se connecter pour accéder à
l'application
- [ ] Afficher le login dans la barre de menu et afficher le menu complet avec déconnexion
- [ ] Gérer la déconnexion :
o les variables de session sont vidées et la session est terminée
o l'utilisateur est invité à se reconnecter
- [ ] Créer une table "utilisateur"
- [ ] Créer les différents champs et ajouter des données en DB
- [ ] Récupérer le login et le mot de passe du formulaire et vérifier qu'ils correspondent en DB
- [ ] Si la personne s'est trompée, alors afficher un message d'erreur.

### Bonus
- [ ] Create a Task-Me logo
  