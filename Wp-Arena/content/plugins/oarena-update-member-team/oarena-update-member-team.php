 <?php  
/*
Plugin Name: oArena Update Member Team
Description: Mise à jour des membres des teams pour le théme oArena
Author: Julien Lecointe Bertrand PARROCHE
Version: 1.0.0
*/

    if (!defined('WPINC')) {die();}
    
    require plugin_dir_path(__FILE__). 'inc/update-member-team.php';
    // Instantiation of oArenaUpdateTeamMember
    $oArenaUpdateTeamMember = new oArenaUpdateTeamMember();
    
    //require plugin_dir_path(__FILE__). 'inc/update-member-team-ajax.php';
    
    register_activation_hook(__FILE__, [$oArenaUpdateTeamMember, 'activation']);
    register_deactivation_hook(__FILE__, [$oArenaUpdateTeamMember, 'deactivation']);
 ?>