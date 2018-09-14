<?php

/*
Plugin Name: oArena Settings
Description: Réglages pour le théme oArena: Custom Post type, taxonomies, Custom Fields
Authors: Mélissa Tarby Julien Lecointe Bertrand PARROCHE
Version: 1.0.0
*/


    // Securisation du plugin
    if (!defined('WPINC')) {die();}

    // on fait un require de inc 
    require plugin_dir_path(__FILE__). 'inc/tournament_cpt.php';
    require plugin_dir_path(__FILE__). 'inc/team_cpt.php';
    require plugin_dir_path(__FILE__). 'inc/message_cpt.php';

    $tournament_cpt = new Tournament_cpt();
    $team_cpt = new Team_cpt();
    $contact_cpt = new Contact_cpt();

    // Je l'accroche au hook avec premier argument FICHIER, deuxieme argument : le callback ( donc on lui donne l'objet ) puis il apelle la méthode activation

    register_activation_hook(__FILE__, [$tournament_cpt, 'activation']);
    register_deactivation_hook(__FILE__, [$tournament_cpt, 'deactivation']);
    register_activation_hook(__FILE__, [$team_cpt, 'activation']);
    register_deactivation_hook(__FILE__, [$team_cpt, 'deactivation']);
    register_activation_hook(__FILE__, [$contact_cpt, 'activation']);
    register_deactivation_hook(__FILE__, [$contact_cpt, 'deactivation']);

    // register_activation_hook(__FILE__, [$roles, 'activation']);
    // regiter_deactivation_hook(__FILE__, [$roles, 'deactivation']);
