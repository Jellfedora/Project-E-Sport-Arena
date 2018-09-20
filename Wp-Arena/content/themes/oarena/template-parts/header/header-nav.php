<?php

$menu = wp_nav_menu([
    'theme_location' => 'header',
    'container' => 'nav',
    'container_class' => 'nav__content collapse navbar-collapse',
    'echo' => false,
]);

$menu = strip_tags($menu, '<a><li>');
$menu = str_replace('a href', 'a class="nav__link nav-link" href', $menu);

echo $menu;



