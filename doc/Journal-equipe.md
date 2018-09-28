# Sprint 0.0 
- 06 Septembre 2018

* Mise en place des rôles:
    * Project Manager: Bertrand
    * Git Master: Julien
    * Lead Developper Front: Melissa
    * Lead Developper Back: Bertrand, Melissa, Julien

* Mise en place du Trello

* Mise en place du Repo sur Journey et Jellfedora (repo perso Julien)

* Mise en place du Cahier des Charges

* Confrontations des idées pour le visuel et les fonctionnalités du site


# Sprint 0.1
- 07 Septembre 2018

    * Validation du CDC

    * Création des wireframes

    * Création user stories 
    test


# Sprint 0.1 07 septembre 2018 

* Validation du CDC par Christophe.

* Validation du visuel.

* Création des wireframes.

* Création des user stories.

* Création du Minimum Viable Product 

* Réorganisation du trello

* Déterminer les sprints

* Installation nouveau serveur pour partage de BDD ( en cours )

# Sprint 0.2 08 septembre 2018

* Serveur gandi créé et nom de domaine attribué via NO IP

# Sprint 1.1 10 septembre 2018

* Mise en place de la BDD partagée + install wordpress custom 

* Configuration du wp-config pour travailler à 3 sur une même DB.
    => wp_SITE_URL et WP_HOME

* Configuration du projet (brunch-config, structure des dossiers, nettoyage des fichiers et dossiers inutiles, config de thème).

* Squelette HTML de la home qui permet d'avoir un début de layout général.
    => Version mobile ( Mobile First )

# Sprint 1.2 11 septembre 2018

* Réunion avec Lucie

* Refonte du cahier des charges

* Refonte du Trello


# Sprint 1.3 12 septembre 2018

* Création CPT tournoi 

* Taxonomie jeu et team

* Début création plugin contact form

* Découpage en template, affichage liste actualités, liste tournois, page tournoi page actualités => dynamique OK 

* Connection au site

* Début inscription
https://codex.wordpress.org/Function_Reference/wp_create_user

# Sprint 1.4 14 septembre 2018

* Réunion présentation de projet de la classe le matin.

* Problémes avec Mélissa tout l'aprés midi ( Elle quitte le projet )

* Refonte de tous les sprints

* Dans la soirée Julien met en place le systéme d'inscription

# Sprint 1.5 15 septembre 2018

* Envoie de messages du formulaire de contact

* Reception messages formulaire de contact

* Création d'équipe => Version trés simpliste => https://mosaika.fr/utiliser-wp_insert_post-pour-creer-du-contenu-dynamiquement-dans-wordpress/

* Enregistrement équipe en BDD => https://developer.wordpress.org/reference/functions/wp_insert_post/

* Archive de team

* Commencer a regarder les roles => https://codex.wordpress.org/fr:R%C3%B4les_et_Capacit%C3%A9s

* Ajout de conditions au formulaire d'inscription

* Site hebergé sur le serveur 

# Sprint 2.1 17 septembre 2018

* Page membre et archives membres et 404

* Création CPT membre 
 
* Création métabox équipe dans cpt membre

* Change de voie, nous avons décidés de partir sur un CPT de membre avec les droits minimaux, pour ne même pas avoir accés au back office, et SURTOUT pouvoir réliés entres eux les membres et les team.

* Création d'un rôle teamadmin qui peux editer ses propres posts à la soumission du formulaire.

# Sprint 2.2 18 septembre 2018

* L'admin team a maintenant sa propre page d'équipe 

* Beaucoup de recherches

* Début création formulaire edit sur front => Réussi car on ne peux pas changer le user_login ( restriction WP ) il faut donc lui changer ses méta informations

* Création d'un nouveau rôle à la création du compte

* Edition du nom OK sauf le userlogin 

# Sprint 2.3 19 septembre 2018

* Un membre peut maintenant éditer son nom sur la page éditer son profil
* Suppr de la condition est miniscule/caractéres spéciaux à l'inscription d'un membre
* Ajout/Correction de redirection
* Intégré un joli dégradé pour la background du body!
* Recherches énormes sans succés sur la création d'une méta donnée au submit du bouton d'inscription a un tournoi

# Sprint 2.4 jeudi 20 septembre 2018

* Présentation du projet le matin devant la classe
* Aprés midi passé sur diverses correction de bugs

# Sprint 2.5 et 2.6 vendredi 21 et samedi 22 septembre 2018

* Gros début d'intégration sur le site: menu, scroll back to top, scroll vers section suivante, logo, typo...


# Sprint 2.7 23 septembre 2018

* Intégration carousel en cours, intégration "nos services"
* Ajout d'une sécurité: ?author=1 dans la barre de recherche ne renvoie plus le nom de l'admin
* Formulaire de connexion refait avec la fonction wp_login_form, plus besoin de plugin pour la connexion
* Vérification quand on ajoute un membre à notre équipe que ce membre existe rééllement en BDD
* Création d'un template pour articles selon categories => probleme de link
* Création customizer basique  

# Sprint 3.1 24 septembre 2018

* Refait l'organisation du dernier sprint sur le Trello
* Mise en plugin edition de membre 
* Changement de nom de CPT Membre en même temps que le user
* Un utilisateur ne peux crééer qu'une team
* Ajout vérifications sur inscription a un tournoi => Team existante et créée par l'user ?
* Ajout des infos méta-box dans pages team ( chef et membres )
* Style page tournois
* Ajout infos dans la page de contact ( ville adresse telephone )
* Edition des infos grace au customizer
* Ajout de la modification de l'email par l'utilisateur avec vérification comme quoi elle n'est pas déjà prise
* Changement du user login en meme temps que le reste

# Sprint 3.2 25 septembre 2018

* Création CPT shop
* Metabox OK 
* Ajout a un tournoi ok => probléme c'était que je ciblait le post et non le cpt tournoi ...
* Début d'affichage d erreurs en JSON => probleme de récupe de la réponse, on l'a mais on sait pas comment la retourné.

# Sprint 3.3 26 septembre 2018

* Réponse Ajax sur formulaire create team ok => PHP envoie a l AJAX plutot que l'inverse 
* Ajout début de mini formulaire pour boutique => tout ok mais probleme de differenciation d'articles
* Fix bug update de l'user login

# Sprint 3.4 27 septembre 2018

* Fix customizer carousel 
* fix customizer post
* Un peu de style ( vite fait )
* Commencer et develloper un panier en JS => mauvais JS j'efface tout
* Fixer bug sur CPT membre qui s'updatais pas 
* Ajout de la connection automatique
* templates boutique