<?php  
/*
Plugin Name: oArena Create Team
Description: Création d'équipe 
Author: Julien Lecointe Bertrand PARROCHE
Version: 1.0.0
*/

    if (!defined('WPINC')) {die();}
    
    require plugin_dir_path(__FILE__). 'inc/create-team.php';
    
    // Instantiation of oArenaCreateTeam
    $oArenaCreateTeam = new oArenaCreateTeam();
    
    register_activation_hook(__FILE__, [$oArenaCreateTeam, 'activation']);
    register_deactivation_hook(__FILE__, [$oArenaCreateTeam, 'deactivation']);
