 <?php  
/*
Plugin Name: oArena Shopping
Description: Plugin pour la boutique du site
Author: Julien Lecointe Bertrand PARROCHE
Version: 1.0.0
*/

    if (!defined('WPINC')) {die();}
    
    require plugin_dir_path(__FILE__). 'inc/validate-cart.php';
    // Instantiation of oArenaValidateCart
    $oArenaValidateCart = new oArenaValidateCart();
    
    //require plugin_dir_path(__FILE__). 'inc/update-member-team-ajax.php';
    
    register_activation_hook(__FILE__, [$oArenaValidateCart, 'activation']);
    register_deactivation_hook(__FILE__, [$oArenaValidateCart, 'deactivation']);
 ?>