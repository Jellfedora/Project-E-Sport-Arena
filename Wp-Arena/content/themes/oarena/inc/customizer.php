<?php 

require('customizer/section-carousel.php');
require('customizer/section-posts.php');

function oarena_customize_register($wp_customize) 
{
    // general Panel
    $wp_customize->add_panel('oarena_theme_panel', [
        'title' => 'oArena',
        'description' => 'oArena - Gestion du thème',
        'priority' => 1
    ]);

    add_action('customize_register', 'oarena_customize_register');
    
    // Section Carousel
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

}



add_action('customize_register', 'oarena_customize_register');