<header>
 <div class="nav navbar navbar-expand-lg navbar">
      <a href="<?= home_url(); ?>">
        <div class="nav__logo d-none-md d-none d-lg-block">
          <img src="http://esportarena.fr/wp-content/uploads/2016/10/defaut-1-300x132.png">
        </div>
      </a>
      <button class="nav navbar-toggler nav__burger" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

    <?php get_template_part('template-parts/header/header', 'nav'); ?>
    
    <?php get_template_part('template-parts/member-area/user-login'); ?>
  </div>


</header>