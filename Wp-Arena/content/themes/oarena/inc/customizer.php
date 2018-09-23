<?php

require('customizer/section-carousel.php');

function oarena_customize_register($wp_customize) 
{

    // Add the panel
    $wp_customize->add_panel('oarena_theme_panel', [
        'title' => 'oarena',
        'description' => 'oarena - Gestion du thème',
        'priority' => 1
    ]);

    $wp_customize->add_section('oarena_theme_carousel', [
    'title' => 'Carousel',
    'panel' => 'oarena_theme_panel',
    'priority' => 9
    ]);

    oarena_customize_carousel($wp_customize);
}

add_action('customize_register', 'oarena_customize_register');