
<?php
// Displays the name of the connected user
if (is_user_logged_in()) {
    $current_user = wp_get_current_user(); ?>
    <div class="text-center menu-lg-v-small__user-name">
        <?php
    echo $current_user->display_name . '<br />';?>
    </div>
    <div class="menu-lg-v-small__user-links ">
    <?php
    
    echo ('
    <a class="data-toggle="tooltip" title="Déconnexion"
    href="' . wp_logout_url(home_url()) . '"><i class="fa fa-sign-out" aria-hidden="true"></i></a>
    ');



    $url_profil = site_url ('profil');
    $url_add_team = site_url ('creer-une-equipe');
    $url_team = site_url ('equipe');

    echo ('
    <a class="data-toggle="tooltip" title="Profil"
    href="' . $url_profil . '"><i class="fa fa-user" aria-hidden="true"></i></a>
    ');

    echo ('
    <a class="data-toggle="tooltip" title="Creer une équipe"
    href="' . $url_add_team . '"><i class="fa fa-user-plus" aria-hidden="true"></i></a>
    ');

    echo ('
    <a class="data-toggle="tooltip" title="Voir son équipe"
    href="' . $url_team . '"><i class="fa fa-users" aria-hidden="true"></i></a>
    ');
    
    ?>
    
    </div>
    <?php
} else {
    ?>
    <div class="menu-lg-v-small__user-links">
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

