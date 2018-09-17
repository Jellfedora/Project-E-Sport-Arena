<?php

/*
Plugin Name: oArena Settings
Description: Réglages pour le théme oArena: Custom Post type, taxonomies, Custom Fields
Author: Mélissa Tarby Julien Lecointe Bertrand PARROCHE
Version: 1.0.0
*/


    // Securisation du plugin
    if (!defined('WPINC')) {die();}

    // on fait un require de inc 
    require plugin_dir_path(__FILE__). 'inc/tournament_cpt.php';

    $tournament_cpt = new Tournament_cpt();

    register_activation_hook(__FILE__, [$tournament_cpt, 'activation']);
    register_deactivation_hook(__FILE__, [$tournament_cpt, 'deactivation']);


    require plugin_dir_path(__FILE__). 'inc/team_cpt.php';

    $team_cpt = new Team_cpt();

    register_activation_hook(__FILE__, [$team_cpt, 'activation']);
    register_deactivation_hook(__FILE__, [$team_cpt, 'deactivation']);

    require plugin_dir_path(__FILE__). 'inc/message_cpt.php';

    $contact_cpt = new Contact_cpt();

    register_activation_hook(__FILE__, [$contact_cpt, 'activation']);
    register_deactivation_hook(__FILE__, [$contact_cpt, 'deactivation']);


    require plugin_dir_path(__FILE__). 'inc/roles.php';

    $roles = new oArenaRole();
    
    register_activation_hook(__FILE__, [$roles, 'activation']);
    register_deactivation_hook(__FILE__, [$roles, 'deactivation']);


  
