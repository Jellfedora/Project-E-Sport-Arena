# Sprint 0.0

* Mise en place du Trello et du sprint 0.0 et 0.1 
* Mise en place du Repo sur Journey 
* Mise en place d'un dossier de save stocké en dehors de la VM et push sur repo perso 
* Mise en place du Cahier des Charges 
* Lecture sur Github 
* Maj de mon user.name et user.email git grâce aux commandes:
    * git config --global user.email julienlecointe@live.fr
    * git config --global user.name "Julien"
    * Verifiable avec git config user.name et git config user.email
    * test

----------------------
# Sprint 0.1

* Prise en main de git + formation de Bertrand et Melissa dessus
* Ajout du wordpress custom
* Création de l'hébergement sur un serveur Gandi mais probléme mysql / Phpmyadmin

# Sprint 0.2

* Serveur gandi créé et nom de domaine attribué via NO IP

# Sprint 1.1

* Base de donnée tout client mise en place
* HTML section actualités et footer + début css

# Sprint 1.2

* Réunion avec Lucie

* Refonte du cahier des charges

* Refonte du Trello

# Sprint 1.3

* Mise en place de la connexion d'un utilisateur
* Intégration + début code pour l'inscription d'un utilisateur
* Prise de tête sur git (encore)

# Sprint 1.4 Vendredi 14 septembre

* Réorganisation du Trello et remaniement équipe
* Test de création d'un nouvel utilisateur via un plugin
* Save BDD
* * https://codex.wordpress.org/Function_Reference/username_exists
* * https://codex.wordpress.org/Function_Reference/wp_generate_password
* * https://codex.wordpress.org/Function_Reference/email_exists
* * https://codex.wordpress.org/Function_Reference/wp_create_user
* Ajout des redirections sur le plugin oarena-users

# Sprint 1.5 Samedi 15 septembre

* Plugin inscription utilisateur terminé mais encore à fignoler
* Installation de notre wordpress sur le serveur Gandhi!

# Sprint 1.7 Dimanche 16 septembre

* Découpage de la partie connexion / inscription du header
* Ajout de la page 404
* Header refait avec une navbar responsive

# Sprint 2.1 Lundi 17 septembre

* Ajout des templates tags: jeu, prix, date et places pour les tournois
* Grosse frayeur avec notre super admin qui a perdu ses droits suites à des tests, heureusement bdd sauvegardée!

# Sprint 2.2 nuit du lundi 17 au mardi 18 septembre

* Aprés discussion avec Christophe, je pars sur l'idée de remplacer les utilisateurs par des custom Post type, tout est ok sauf l'affichage d'un membre, essai avec single.php ; single-member ...etc Rien à faire
* Pti push et save de la BDD puis go dodo!
* 1h32: Enfin j'ai réussi à afficher la page d'un membre, aprés nettoyage des cookies, restart du plugin enfin cela fonctionne correctement!