<?php

/*
Plugin Name: oArena Settings
Description: Réglages pour le théme oArena: Custom Post type, taxonomies, Custom Fields
Authors: Mélissa Tarby Julien Lecointe Bertrand PARROCHE
Version: 1.0.0
*/

    if (!defined('WPINC')) {die();}

    require plugin_dir_path(__FILE__). 'inc/tournament_cpt.php';
    require plugin_dir_path(__FILE__). 'inc/register.php';

    $tournament_cpt = new Tournament_cpt();

    register_activation_hook(__FILE__, [$tournament_cpt, 'activation']);
    register_deactivation_hook(__FILE__, [$tournament_cpt, 'deactivation']);
