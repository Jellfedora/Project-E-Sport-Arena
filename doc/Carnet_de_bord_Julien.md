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

* Aprés discussion avec Christophe, nous partons sur l'idée de remplacer les utilisateurs par des custom Post type, tout est ok sauf l'affichage d'un membre, essai avec single.php ; single-member ...etc Rien à faire
* Pti push et save de la BDD puis go dodo!
* 1h32: Enfin j'ai réussi à afficher la page d'un membre, aprés nettoyage des cookies, restart du plugin enfin cela fonctionne correctement!

# Sprint 2.2 mardi 18 septembre

* Ajout de la metaboxe Equipe aux membres
* Page pour gérer son équipe créé, affiche les informations de l'équipe seulement pour les admins Teams et n'affiche que leur team à eux.
* Page manage-team dynamisée avec l'ajout de metaboxe pour le chef d'équipe et les 5 membres
* Ajout au plugin oarena-create-team de update-team.php qui sera chargé de changer les membres au submit dun formulaire ->  update_post_meta (iddupost, 'member1', 'nomdunouveaumembre');
* Nettoyage des utilisateurs

# Sprint 2.3 mercredi 19 septembre 2018

* Un membre peut maintenant éditer son nom sur la page éditer son profil
* Suppr de la condition est miniscule/caractéres spéciaux à l'inscription d'un membre
* Ajout/Correction de redirection
* Intégré un joli dégradé pour la background du body!
* Diverses corrections/améliorations de code

# Sprint 2.4 jeudi 20 septembre 2018

* Présentation du projet le matin devant la classe
* Aprés midi passé sur diverses correction de bugs

# Sprint 2.5 et 2.6 vendredi 21 et samedi 22 septembre 2018

* Gros début d'intégration sur le site: menu, scroll back to top, scroll vers section suivante, logo, typo...

# Sprint 2.7 dimanche 23 septembre 2018

* Intégration carousel en cours, intégration "nos services"
* Ajout d'une sécurité: ?author=1 dans la barre de recherche ne renvoie plus le nom de l'admin
* Formulaire de connexion refait avec la fonction wp_login_form, plus besoin de plugin pour la connexion
* Vérification quand on ajoute un membre à notre équipe que ce membre existe rééllement en BDD

# Sprint 3.1 lundi 24 septembre 2018

* Mise à jour du trello pour le sprint 3
* Mise en plugin de l'édition de membre (avant dans le template test) + update membre ( = post title) en meme temps que l'update du nom de l'user.
* Maintenant membre = user
* Ajout de la modification de l'email par l'utilisateur avec vérification comme quoi elle n'est pas déjà prise
* Ajout metaboxes pour ajouter information facturation du membre via la page profil de chaque membres
* Ajout de l'update du user_login si modifier via profil

# Sprint 3.3 mercredi 25 septembre 2018

* Bug à l'update du user login réglé, le membre associé au user n'était pas update en meme temps
* Mise en place de la boutique (templates, cpt etc...)
* Ajout de la connexion automatique une fois enregistré