<header>

<nav class="nav navbar navbar-expand-lg ">
  <a class="navbar-brand" href="<?=home_url();?>"><img src="http://esportarena.fr/wp-content/uploads/2016/10/defaut-1-300x132.png"></a>
  <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon "><i class="fa fa-bars" aria-hidden="true"></i></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">



      <?php get_template_part('template-parts/header/header', 'nav');?>

    </ul>
  </div>
</nav>



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
?>

</header>