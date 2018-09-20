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
            
            $menu = wp_nav_menu([
                'theme_location' => 'menu-admin',
                'container' => 'nav',
                'container_class' => 'nav__content collapse navbar-collapse',
                'echo' => false,
                ]);
                
                $menu = strip_tags($menu, '<a><li>');
                $menu = str_replace('a href', 'a class="nav__link nav-link" href', $menu);
                
                echo $menu;
            }

            else {
                $menu = wp_nav_menu([
                'theme_location' => 'header',
                'container' => 'nav',
                'container_class' => 'nav__content collapse navbar-collapse',
                'echo' => false,
                ]);
                
                $menu = strip_tags($menu, '<a><li>');
                $menu = str_replace('a href', 'a class="nav__link nav-link" href', $menu);
                
                echo $menu;
            };
        } else {
       
     $menu = wp_nav_menu([
                'theme_location' => 'header',
                'container' => 'nav',
                'container_class' => 'nav__content collapse navbar-collapse',
                'echo' => false,
                ]);
                
                $menu = strip_tags($menu, '<a><li>');
                $menu = str_replace('a href', 'a class="nav__link nav-link" href', $menu);
                
                echo $menu;
}



