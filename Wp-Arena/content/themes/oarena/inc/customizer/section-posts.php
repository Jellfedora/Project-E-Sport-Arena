<?php 

     function oarena_customize_posts($wp_customize)
     {

     $wp_customize->add_setting('oarena_theme_posts_active', [

     ]);

     $wp_customize->add_control('oarena_theme_posts_active', [
         'type' => 'checkbox',
         'section' => 'oarena_theme_posts',
         'label' => 'Deactivate posts',
     ]);

     $wp_customize->add_setting('oarena_theme_posts_numbers', [
         'default' => '6'
     ]);

     $wp_customize->add_control('oarena_theme_posts_numbers', [
         'type' => 'number',
         'section' => 'oarena_theme_posts',
         'label' => 'Number of posts ( -1 = all )',
         'input_attrs' => [
             'step' => 1
         ]
     ]);
}