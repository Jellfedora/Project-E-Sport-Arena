<header class="header">
  <!--menu for small screen/mobile-->
  <div class="menu-xs">
    <nav class=" nav navbar navbar-expand-lg ">
      <a class="navbar-brand" href="<?=home_url();?>"><img id="ancre"src="https://zupimages.net/up/18/38/3fnl.png"></a>
      <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon "><i class="fa fa-bars" aria-hidden="true"></i></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <?php get_template_part('template-parts/header/header', 'nav');?>
        </ul>
      </div>
    </nav>
    <div class=menu-xs__user>
    <?php get_template_part('template-parts/header/member', 'area');?>
    </div>
  </div>

  <!--Menu for large screen version large-->
  <div class="menu-lg ">
    <div class="menu-lg__hidden text-center">
      <button class="menu-lg-button hide-menu-button "><i class="fa fa-long-arrow-left" aria-hidden="true"></i></button>
    </div>
    
    <div class="menu-lg__logo text-center">
      <a class="" href="<?=home_url();?>"><img src="https://zupimages.net/up/18/38/3fnl.png"></a>
    </div>
    <div>
      <div class="menu_lg__nav">
        <ul class="text-center">
          <?php get_template_part('template-parts/header/header', 'nav');?>
        </ul>
        <div class="menu-lg__video text-center">
          <iframe width="260" height="180" src="https://www.youtube.com/embed/cjg7M1IvnXs" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
        <div class="menu-lg__user">
          <?php get_template_part('template-parts/header/member', 'area');?>
        </div>
    </div>
  </div>
</div>
  <!--Menu for large screen version small-->
  <div class="menu-lg-v-small hide ">
    <div class="menu-lg-v-small__content text-center">
      <button class="menu-lg-button show-menu-button "><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
    </div>
    <div class="menu-lg-v-small__logo text-center">
      <a class="" href="<?=home_url();?>"><img src="http://image.noelshack.com/fichiers/2018/38/6/1537605295-webp-net-resizeimage-2.png"></a>
    </div>
    <div>
      <div class="menu_lg-v-small__nav">
        <div class="menu-lg-v-small__user">
          <?php get_template_part('template-parts/header/member', 'area-small');?>
        </div>
    </div>
</header>

<main class="main ">
