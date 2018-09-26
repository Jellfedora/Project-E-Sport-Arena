
<?php
// Displays the name of the connected user
if (is_user_logged_in()) {
    $current_user = wp_get_current_user(); ?>
    <div class="text-center text-light" style="font-size:1.3em;">
        <?php
    echo 'Bienvenue ' . $current_user->display_name . '<br />';?>
    </div>
    <div class="menu__login d-flex justify-content-around">
    <?php
    
    echo ('
    <a class="data-toggle="tooltip" title="Déconnexion"
    href="' . wp_logout_url(home_url()) . '"><i class="fa fa-sign-out" aria-hidden="true"></i></a>');

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
    $shopping_cart = site_url('panier'); 

    echo ('
    <a class="data-toggle="tooltip" title="Profil"
    href="' . $url_profil . '"><i class="fa fa-user" aria-hidden="true"></i></a>
    
    ');

    echo ('
    <a class="data-toggle="tooltip" title="Créer une équipe"
    href="' . $url_add_team . '"><i class="fa fa-user-plus" aria-hidden="true"></i></a>');

    echo ('
    <a class="data-toggle="tooltip" title="Voir son équipe"
    href="' . $url_team . '"><i class="fa fa-users" aria-hidden="true"></i></a>');

    echo ('
    <a class="data-toggle="tooltip" title="Mon panier"
    href="' . $shopping_cart . '"><i class="fa fa-shopping-basket" aria-hidden="true"></i></a>');
    
    ?>
    
    </div>
    <?php
} else {
    ?>
    <div class="menu__login d-flex justify-content-around">
    <?php
    $url_log_in = site_url ('log-in');
    $url_register = site_url ('register');
    echo ('
    <a class="data-toggle="tooltip" title="Connexion"
    href="' . $url_log_in . '"><i class="fa fa-sign-in" aria-hidden="true"></i></a>
    ');

    echo ('
    <a class="data-toggle="tooltip" title="Inscription"
    href="' . $url_register . '"><i class="fa fa-registered" aria-hidden="true"></i></a>
    ');
    ?>
    </div>
    <?php
   
}?>

