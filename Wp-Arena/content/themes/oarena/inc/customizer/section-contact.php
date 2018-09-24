<?php 

function oarena_customize_contact($wp_customize)
{
    // Show or hide contact section 
    $wp_customize->add_setting('oarena_theme_contact_active', [

    ]);

    $wp_customize->add_control('oarena_theme_contact_active', [
        'type' => 'checkbox',
        'section' => 'oarena_theme_contact',
        'label' => 'Deactivate contact',
    ]);

    // Change adress ( street )
    $wp_customize->add_setting('oarena_theme_contact_street', [

    ]);

    $wp_customize->add_control('oarena_theme_contact_street', [
        'type' => 'text',
        'section' => 'oarena_theme_contact',
        'label' => 'Street',
    ]);

    // Change City
    $wp_customize->add_setting('oarena_theme_contact_city', [

    ]);

    $wp_customize->add_control('oarena_theme_contact_city', [
        'type' => 'text',
        'section' => 'oarena_theme_contact',
        'label' => 'City',
    ]);

    // Change phone number
    $wp_customize->add_setting('oarena_theme_contact_phone', [
        'default' => '06.06.06.06.07'
    ]);

    $wp_customize->add_control('oarena_theme_contact_phone', [
        'type' => 'text',
        'section' => 'oarena_theme_contact',
        'label' => 'Numero de téléphone de contact'
    ]);
}