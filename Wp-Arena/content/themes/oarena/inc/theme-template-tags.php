<?php

function get_jeux($post_id)
{
    return get_post_meta($post_id, 'jeux', true);
}

function get_places($post_id)
{
    return get_post_meta($post_id, 'places', true);
}

function get_prix($post_id)
{
    return get_post_meta($post_id, 'prix', true);
}

function get_date($post_id)
{
    return get_post_meta($post_id, 'date', true);
}
