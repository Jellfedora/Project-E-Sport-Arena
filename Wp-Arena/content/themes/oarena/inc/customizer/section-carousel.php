<?php  

function oarena_customize_carousel($wp_customize)
{

    // Show or hide carousel section 
    $wp_customize->add_setting('oarena_theme_carousel_active', [

    ]);

    $wp_customize->add_control('oarena_theme_carousel_active', [
        'type' => 'checkbox',
        'section' => 'oarena_theme_carousel',
        'label' => 'Deactivate carousel',
    ]);

    // Change background image

    $wp_customize->add_setting( 'oarena_theme_carousel_image' , [

    ]);

	$wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, 'oarena_theme_carousel_image', [
        'section' => 'oarena_theme_carousel',
        'settings' => 'oarena_theme_carousel_image',
        'label' => 'Image background carousel 1',
     ] ) );

         $wp_customize->add_setting( 'oarena_theme_carousel_image2' , [

    ]);

	$wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, 'oarena_theme_carousel_image2', [
        'section' => 'oarena_theme_carousel',
        'settings' => 'oarena_theme_carousel_image2',
        'label' => 'Image background carousel 2',
     ] ) );

    $wp_customize->add_setting( 'oarena_theme_carousel_image3' , [

    ]);

	$wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, 'oarena_theme_carousel_image3', [
        'section' => 'oarena_theme_carousel',
        'settings' => 'oarena_theme_carousel_image3',
        'label' => 'Image background carousel 3',
     ] ) );

     // Change interval between 2 slides 

    $wp_customize->add_setting('oarena_theme_carousel_interval', [

    ]);

    $wp_customize->add_control('oarena_theme_carousel_interval',[
        'type' => 'number',
        'section' => 'oarena_theme_carousel',
        'label' => 'Interval between 2 slides (ms-1000ms = 1 sec )'
    ]);
}