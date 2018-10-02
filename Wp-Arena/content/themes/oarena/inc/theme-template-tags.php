<?php

// Adding template tags for tournaments cards
function get_game($post_id)
{
    return get_post_meta($post_id, 'jeu', true);
}

// function get_seats($post_id)
// {
//     return get_post_meta($post_id, 'places', true);
// }

function get_price($post_id)
{
    return get_post_meta($post_id, 'prix', true);
}

function get_date($post_id)
{
    return get_post_meta($post_id, 'date', true);
}
