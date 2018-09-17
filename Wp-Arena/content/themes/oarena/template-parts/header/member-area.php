
<?php
// Displays the name of the connected user
if (is_user_logged_in()) {
    $current_user = wp_get_current_user();
    echo 'Bienvenue ' . $current_user->user_login . '<br />';
    echo '<a href="' . admin_url('user-edit.php?user_id=' . get_current_user_id()) . '">Accès au profil</a>';
    echo '<a class="ml-4" href="' . wp_logout_url(home_url()) . '">Se déconnecter</a>';

} else {
    echo ('<a href="log-in"><button class="action-button">Connexion</button></a>');
    echo ('<a href="register"><button class="action-button">Inscription</button></a>');
}
