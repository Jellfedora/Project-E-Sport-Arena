<?php

function oarena_script_stylelink()
{
    wp_enqueue_style(
        'oagency_app_css',
        get_theme_file_uri('/public/css/app.css'),
        ['oagency_vendors_css'],
        '1.0.0'
    );

    wp_enqueue_style(
        'oagency_vendors_css',
        get_theme_file_uri('/public/css/vendors.css'),
        '1.0.0'
    );

    wp_enqueue_script(
        'oagency_app_js',
        get_theme_file_uri('/public/js/app.js'),
        ['oagency_vendors_js'],
        '1.0.0',
        true
    );
    wp_enqueue_script(
        'oagency_vendors_js',
        get_theme_file_uri('/public/js/vendors.js'),
        [],
        '1.0.0',
        true
    );
}

//  Je la met a un hook

add_action('wp_enqueue_scripts', 'oarena_script_stylelink');
