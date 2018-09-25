<?php

require('customizer/section-carousel.php');
require('customizer/section-posts.php');
require('customizer/section-contact.php');

function oarena_customize_register($wp_customize) 
{

    // Add the panel
    $wp_customize->add_panel('oarena_theme_panel', [
        'title' => 'oarena',
        'description' => 'oarena - Gestion du thème',
        'priority' => 1
    ]);    

    // Section carousel
    $wp_customize->add_section('oarena_theme_carousel', [
    'title' => 'Carousel',
    'panel' => 'oarena_theme_panel',
    'priority' => 9
    ]);

    oarena_customize_carousel($wp_customize);

    // Section Posts
     $wp_customize->add_section('oarena_theme_posts', [
         'title' => 'Posts',
         'panel' => 'oarena_theme_panel',
         'prioriy' => 8
     ]);

     oarena_customize_posts($wp_customize);

    // Section Contact
     $wp_customize->add_section('oarena_theme_contact', [
         'title' => 'Contact',
         'panel' => 'oarena_theme_panel',
         'prioriy' => 10
     ]);

     oarena_customize_contact($wp_customize);

 }

add_action('customize_register', 'oarena_customize_register');