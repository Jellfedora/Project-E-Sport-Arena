# Sprint 0.0

++++ 06 septembre 2018 ++++

    * Création environnement de travail ( Trello, Toggl, Google Drive, gitHUB, Discord, canal de discussion sur Slack).

    * Rédaction du cahier des charges.

    * Détermination des rôles : Git Master : Julien
                                Project Manager : Bertrand
                                Leader Front End : Mélissa
                                Lead Develloper Back : Mélissa, Julien, Bertrand

    * Visite de différents sites pour de l'inspiration.

    * Mise en place du trello ( organisation ).


# Sprint 0.1 

++++ 07 septembre 2018 ++++

    * Détermination du style du site ( https://esportsquare.net/ ).

    * Validation du cahier des charges. ( Christophe ).

    * Création des user stories  ( Julien et Bertrand ).

    * Création Organisation du MVP ( Minimum Viable Project ) => On détermine que les minimums sont : Home, Boutique, Tournois, Actualité, Equipe.
                                                    => Systéme de login
                                                    => Actualités
                                                    => Créer un tournoi
                                                    => S'inscrire dans une équipe
                                                    => Inscrire une équipe dans un tournoi
                                                    => Boutique 

    * Création des wireframes  ( Mélissa ).

    * On a tenté de faire une BDD commune, nous avons donc créer un nouveau server sur gandi ( www.gandhi.net ) sur lequel nous avons installé Apache2, MySQL, phpMyAdmin et PHP7.
     Nous avons recontré beaucoup de probléme pour partager la BDD, nous repoussons donc à demain ce partage.  

# Sprint 1.1 

++++ 10 septembre 2018 ++++

    * Mise en place de la BDD partagée

    * Mise en place des 3 WordPress custom avec BDD commune

    * Création arborescence et configuration du projet

    * Squelette HTML + Mise en place display de base ( index.html )
        => Travail à 3 sur un Visual Studio grâce à l'extension Live Share

# Sprint 1.2

++++ 11 septembre 2018 ++++

   * Réunion le matin avec Lucie, nous avons déjà résolus pas mal de problémes ( voir au dessus ) mais il nous manquait de la rigueur sur le CDC
                                                           => Refonte entiére du CDC et du Trello

   * Grâce à cela nous gagnons beaucoup en visibilité sur notre projet

# Sprint 1.3

++++ 12 septembre 2018 ++++

    * Création du theme setup 

    * Découpage tout en template ( home / listes / actualité / tournoi )

    * Dynamisme minimal de toutes les pages

# Sprint 1.4

++++ 13 septembre 2018 ++++

* Durant la réunion du matin, de gros problémes avec Mélissa qui quittera le projet

* Réunion le matin avec la promo, je fais la présentation du projet, apparement nous ne sommes pas trop mal

* On réorganise le trello, d'un projet pour 4 personnes nous ne sommes plus que 2 actuellement. Les nuits vont être courtes. On est même encore plus motivés face
  à tout ce travail.

* Le soir je ne suis pas disponible mais Julien réussi à mettre en place l'inscription.

# Sprint 1.5

++++ 14 septembre 2018 ++++

* Aprés la réunion du matin, Julien repart sur ses conditions du formulaire et quand à moi je fixe 2 3 petits bugs.

* Aprés une petite recherche de doc, je décide de faire un CPT team et non une taxonomie comme on avait envisagé au début

* Je créé donc un nouveau cpt, et me lance dans la gestion du formulaire, ma premiere question a été "comment vais-je autorisé un utilisateur a creer du contenu ? " 

* Avec un formulaire que je vais intercepter et je découvre la fonction wp_insert_post => https://developer.wordpress.org/reference/functions/wp_insert_post/

* Je fais de même avec le formulaire de contact sauf que je limite l'édition des messages dans le cpt

* Je fix la page d'archives tournois, créé la liste team ect 

* Je fais quelques recherches sur les roles mais je dois partir

# Sprint 2.1

++++ 17 septembre 2018 ++++

* Création du rôle AdminTeam à la création d'une team => https://codex.wordpress.org/fr:R%C3%B4les_et_Capacit%C3%A9s
    A la soumission du form je change son rôle et créé un CPT et je fais un wp_update_user avec comme argument le rôle créer dans roles.php

* Changement de cap => CPT membres

* On a perdu du temps à cause de changement de rôle de l'admin.

* J'ai perdu énormément de temps sur le plugin oCreateTeam, à cause d'une non  activation ....  

# Sprint 2.2

++++ 18 septembre 2018 ++++

* Création d'un nouveau rôle à la création du compte qui ne donne pas accés au back office

* Début de mise en place du formulaire d'édition => probléme rencontré sur l'update en BDD

* Création d'un formulaire poru changer son nom en passant par le front et non le back office 
    Enormément de recherches => de temps ( 4/5h ) pour essayer de changer le user_login ...
    Chose possible avant mais plus maintenant WordPress l'ayant supprimé.
    Probléme résolu en changeant user_nicename / nickname / display_name 

# Sprint 2.3

++++ 19 septembre 2018 ++++

* Beaucoup de problémes pour gérer l'ajout de métabox via le front office. => recherches toute la journée ...
 post sur slack overflow.


# Sprint 2.3

++++ 20 septembre 2018 ++++

* Création d'une condition si la team existe déjà au moment de la création . Beaucoup de temps perdu mais au final je trouve la solution.


# Sprint 2.4


++++ 21 septembre 2018 ++++

* J'arrive enfin a verifier si la team exite déjà, j'avais la réponse depuis le début mais il fallait juste que je déplace le foreach ...
* Essaie d'ajout d'ajax pour générer les erreurs sur les forms => echecs => pas loin voir christophe
* Création page catégories => pas réussi pas loin voir christophe
==> Journée perdue 

# Sprint 2.5

++++ 23 septembre 2018 ++++

* Test de tri par catégorie
* Début du customizer

# Sprint 3.1

++++ 24 septembre 2018 ++++

* Mise a jour du Trello, derniere semaine de projet, pour le moment tout se passe plutot bien.
* Modifications sur création de team, maintenant un utilisateur ne peux créer qu'une seule équipe ce qui facilitera l'ajour aux tournois.
* Enfin arrivé a rentrer dans ma condition pour vérifier si une team a été créée par l'user lors de l'inscription a un tournoi
* Un peu de style sur la page tournois
* Un peu de style sur page team + afficahge des métabox chief et members
* Mise en place d'infos dans la page de contact modifiables grace au customizer 

# Sprint 3.2

++++ 25 septembre 2018 ++++

* Création CPT boutique
* Création des métabox prix et dispo 
* Tentative pour le json, on récupere bien le form on a la réponse en json mais on ne sait pas quoi en faire ... 
* Ajout d'une team au tournoi OK 

# Sprint 3.2

++++ 26 septembre 2018 ++++

* Aujourd'hui je décide de ne pas me pencher sur le json et de faire autre chose, d'un coup une illumination, plutot que de recevoir du json en php 
je vais plutot recevoir du json en JS => j'envoie un tableau d erreur JSON et selon la response il va rentrer dans telle ou telle condition.
* Création du début de la boutique en Javascript => j'arrive a ajouter / supprimr les articles du panier mais pas a differencier les articles au moment du click sur ajouter

# Sprint 3.3

++++ 27 septembre 2018 +++

* Un peu de style => animations sur les boutons
* fix le changement d'images carrousel et nombre de posts affichés via le customizer
* Début devellopement panier en JS j'y passe la journée => le soir christophe me dit que je part dans la mauvaise direction ( code JS mal écrit).


# Sprint 3.4

++++ 28 septembre 2018 +++

* Je recommence la boutique en JS et part de cet exemple => https://codepen.io/justinklemm/pen/zAdoJ 
* Tout marche plutot pas mal et je comprend bien le code, j'ai eu des soucis avec le panier qui s'affichait selon le nombre d'articles mais j'ai fixer
le bug en changeant le panier de place dans la boucle et en gardant les data
* JS quazi OK maanque juste un probleme sur le NaN
* Fix selon role admin les messages, bouton ajouter team a tournoi, et ajouter au panier selon roles 
* fix bug create team avec description vide
* fix tard dans la nuit le bug du total du panier, il suffisait de mettre 0 en dur ... 
* Style page d'inscription

# Sprint 3.5

++++ 29 septembre 2018 +++

* Création du la custom box Places dispos
* Décrémentation des places dispos a l'inscription d'une team
* Si on arrive a 0 plus de possibilité d'inscriptions a un tournoi

# Sprint 3.7 

++++ 30 septembre 2018 ++++

* 

# Sprint 3.8 

++++ 1er octobre 2018 ++++

* Création du panier ( julien ) avec l'aide de Christophe qui intervient sur la fin car impossible de récuperer les articles individuellement => petit cour
* Réponse json pour stopper le chargement a l'ajout d'un article au panier => aide de christophe qui me change juste l'URL 
