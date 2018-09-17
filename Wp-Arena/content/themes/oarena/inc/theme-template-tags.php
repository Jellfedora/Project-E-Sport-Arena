<?php

function get_recipe_ingredients($post_id)
{
    $output = '';

    $array_ingredient = wp_get_post_terms($post_id, 'tournament');

    foreach ($array_ingredient as $ingredient) {

        $output .= '<a href="' . get_term_link($ingredient) . '" class="tag is-dark is-rounded">';
        $output .= $ingredient->name;
        $output .= '</a>';
    }

    return $output;
}

function get_recipe_types($post_id)
{
    $output = '';

    $array_types = wp_get_post_terms($post_id, 'type');

    if (is_array($array_types)) {

        foreach ($array_types as $type) {

            $output .= '<a href="' . get_term_link($type) . '" class="tag is-light is-large">';
            $output .= $type->name;
            $output .= '</a>';
        }
    }

    return $output;
}

function get_preparation($post_id)
{
    return get_post_meta($post_id, 'preparation', true);
}

function get_cuisson($post_id)
{
    return get_post_meta($post_id, 'cuisson', true);
}

function get_prix($post_id)
{
    return get_post_meta($post_id, 'prix', true);
}
