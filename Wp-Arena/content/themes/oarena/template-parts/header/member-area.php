
<?php
// Displays the name of the connected user
if (is_user_logged_in()) {
    $current_user = wp_get_current_user(); ?>
    <div class="text-center">
        <?php
    echo 'Bienvenue ' . $current_user->display_name . '<br />';?>
    </div>
    <div class="menu__login d-flex justify-content-around">
    <?php
    
    echo ('<a href="' . wp_logout_url(home_url()) . '"><i class="fa fa-sign-out" aria-hidden="true"></i></a>');

    //Menu Wordpress remplacé par le suivant pour intégration icones
    // $user_menu = wp_nav_menu([
    // 'theme_location' => 'user',
    // 'echo' => false,
    // ]);
    // $user_menu = strip_tags($user_menu, '<a>');
    // $user_menu = str_replace('a href', 'a class="insider" href', $user_menu);
    // echo $user_menu; 

    $url_profil = site_url ('profil');
    $url_add_team = site_url ('creer-une-equipe');
    $url_team = site_url ('equipe');

    echo ('<a href="' . $url_profil . '"><i class="fa fa-user" aria-hidden="true"></i></a>');
    echo ('<a href="' . $url_add_team . '"><i class="fa fa-user-plus" aria-hidden="true"></i></a>');
    echo ('<a href="' . $url_team . '"><i class="fa fa-users" aria-hidden="true"></i></a>');
    
    ?>
    
    </div>
    <?php
} else {
    ?>
    <div class="menu__login d-flex justify-content-around">
    <?php
    $url_log_in = site_url ('log-in');
    $url_register = site_url ('register');
    echo ('<a href="' . $url_log_in . '"><i class="fa fa-sign-in" aria-hidden="true"></i></a>');
    echo ('<a href="' . $url_register . '"><i class="fa fa-registered" aria-hidden="true"></i></a>');
    ?>
    </div>
    <?php
   
}?>

