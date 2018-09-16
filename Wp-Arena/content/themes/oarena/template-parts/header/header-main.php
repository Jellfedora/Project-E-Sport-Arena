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
<?php get_template_part('template-parts/header/member', 'area');?>
</header>