<header>
  <!--menu for small screen/mobile-->
  <div class="menu-xs">
    <nav class=" nav navbar navbar-expand-lg ">
      <a class="navbar-brand" href="<?=home_url();?>"><img src="http://image.noelshack.com/fichiers/2018/38/4/1537467630-efad17ce-f4d2-4dee-96f8-d8e47fb5973d.png"></a>
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
  </div>

  <!--Menu for large screen-->
  <div class="menu-lg">
    <div class="menu-lg__logo text-center">
      <a class="" href="<?=home_url();?>"><img src="http://image.noelshack.com/fichiers/2018/38/4/1537467630-efad17ce-f4d2-4dee-96f8-d8e47fb5973d.png"></a>
    </div>
    <div>
      <div class="menu_lg__nav">
        <ul class="text-center">
          <?php get_template_part('template-parts/header/header', 'nav');?>
        </ul>
        <div class="menu-lg__user">
          <?php get_template_part('template-parts/header/member', 'area');?>
        </div>
    </div>
  </div>
</header>
  
<main class="main">
