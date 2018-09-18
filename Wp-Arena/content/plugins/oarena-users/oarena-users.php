<?php

/*
Plugin Name: oArena Users
Description: Ajout de l'espace membre de oArena
Author: Julien Lecointe Bertrand PARROCHE
Version: 1.0.0
 */

if (!defined('WPINC')) {die();}

require plugin_dir_path(__FILE__) . 'inc/register.php';
require plugin_dir_path(__FILE__) . 'inc/members_cpt.php';
require plugin_dir_path(__FILE__) . 'inc/metabox.php';

// Instantiation of oArena_register
$oArena_register = new oArena_register();
$oArena_members = new oArenaMembersCpt();

register_activation_hook(__FILE__, [$oArena_register, 'activation']);
register_deactivation_hook(__FILE__, [$oArena_register, 'deactivation']);
