<?php 

function oarena_setup()
{
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');

    register_nav_menus([
        'header' => 'menu de navigation du header',
        'footer' => 'menu de navigation du footer'
    ]);

        // Je demande à WordPress que mes post-thumbnails ai la taille de 500*500
        // avec un crop réalisé au centre de l'image
        set_post_thumbnail_size( 500, 500, ['center', 'center']);
        // Je propose plusieurs format de post à l'utilisateur du thème
        add_theme_support('post-formats', [
            'quote'
            ]);    
        }
            
add_action('after_setup_theme', 'oarena_setup');