
<?php
// Displays the name of the connected user
if (is_user_logged_in()) {
    $current_user = wp_get_current_user(); ?>
    <div class="text-center">
        <?php
    echo 'Bienvenue ' . $current_user->display_name . '<br />';?>
    </div>
    <div class="d-sm-flex flex-wrap justify-content-around align-items-lg-center">
    <?php
    
    echo ('<a href="' . wp_logout_url(home_url()) . '">Deconnexion</a>');

    
    $user_menu = wp_nav_menu([
    'theme_location' => 'user',
    'echo' => false,
    ]);

    $user_menu = strip_tags($user_menu, '<a>');
    $user_menu = str_replace('a href', 'a class="insider" href', $user_menu);
    
    
    echo $user_menu; ?>
    
    </div>
    <?php
} else {
    ?>
    <div class="menu__login">
    <?php
    $url_log_in = site_url ('log-in');
    $url_register = site_url ('register');
    
    echo ('<a class="menu__login-a" href="' . $url_log_in . '"><button class="myButt one"><div class="insider"></div>Connexion</button></a>');
    echo ('<a class="menu__login-a" href="' . $url_register . '"><button class="myButt one"><div class="insider"></div>Inscription</button></a>');
    ?>
    </div>
    <?php
   
}?>

