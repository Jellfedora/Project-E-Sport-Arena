<?php

class oArenaCartFunctions
{
    const META_NAME = 'cart';

    public static function add_cart_meta($post_id, $meta_value)
    {
        $return = update_post_meta($post_id,self::META_NAME,$meta_value, self::get_cart_meta($post_id));
    }

    public static function get_cart_meta($post_id)
    {
        $return = get_post_meta($post_id,self::META_NAME, true);

        if (empty($return)) {
            $return = array();
        }

        return $return;
    }
}

