<div class="container_fluide bg-dark d-flex justify-content-around">
<?php
// Displays the name of the connected user
if (is_user_logged_in()) {
    $current_user = wp_get_current_user();
    echo 'Bienvenue ' . $current_user->display_name . '<br />';
    echo '<a class="" href="' . wp_logout_url(home_url()) . '">Se déconnecter</a>';

    $user_menu = wp_nav_menu([
    'theme_location' => 'user',
    'container' => 'nav',
    'container_class' => ' ',
    'echo' => false,
    ]);

    $user_menu = strip_tags($user_menu, '<a><li>');
    $user_menu = str_replace('a href', 'a class="d-flex" href', $user_menu);

    echo $user_menu;
} else {
    ?>
    <div class="container-fluide d-flex">
    <?php
    // Lien à changer avec blog bloginfo('url');
    echo ('<a href="log-in"><button class="myButt one"><div class="insider"></div>Connexion</button></a>');
    echo ('<a href="register"><button class="myButt one"><div class="insider"></div>Inscription</button></a>');
    ?>
    </div>
    <?php
   
}?>
</div>
