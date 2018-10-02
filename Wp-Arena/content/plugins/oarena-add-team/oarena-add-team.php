<?php  
/*
Plugin Name: oArena add team to tournament
Description: Plugin pour s'inscrire à un tournoi
Author: Julien Lecointe Bertrand PARROCHE
Version: 1.0.0
*/

    if (!defined('WPINC')) {die();}
    
    require plugin_dir_path(__FILE__). 'inc/add-team.php';
    
    // Instantiation of oArenaUpdateTeamMember
    $oarena_addteam_tournament = new oArenaAddTeam();

    register_activation_hook(__FILE__, [$oarena_addteam_tournament, 'activation']);
    register_deactivation_hook(__FILE__, [$oarena_addteam_tournament, 'deactivation']);
 