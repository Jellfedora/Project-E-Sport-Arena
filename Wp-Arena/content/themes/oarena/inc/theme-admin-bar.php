<?php

if (is_user_logged_in()) 
{
    $user = wp_get_current_user()->roles;

    // var_dump($user);
    foreach ($user as $role) {
        // var_dump($role);
        // die;
    }

    if ($role === 'administrator') {   

        show_admin_bar(true);
    
    } else 
    {

        show_admin_bar(false);

    }
}