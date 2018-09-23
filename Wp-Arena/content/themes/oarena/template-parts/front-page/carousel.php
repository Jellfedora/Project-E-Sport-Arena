<?php if (!get_theme_mod('oarena_theme_carousel_active')) : 
?>

<div id="carousel" class="carousel slide" data-ride="carousel" data-interval="<?= get_theme_mod('oarena_theme_carousel_interval'); ?>">
  <ol class="carousel-indicators">
    <li data-target="#carousel" data-slide-to="0" class="active"></li>
    <li data-target="#carousel" data-slide-to="1"></li>
    <li data-target="#carousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="carousel-item-image" src="https://comarketing-news.fr/wp-content/uploads/eSport-un-secteur-en-plein-developpement.jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">  
      <div class=" carousel__text container">
          <h3 class="">Tournoi des tournois</h1>
          <button class="carousel__button">En savoir plus</button>
    </div>
</div>
</div>
    <div class="carousel-item">
      <img class="carousel-item-image" src="https://static.nintendomaine.com/2008/07/Super_Smash_Bros_Brawl_Fond.jpg" alt="Second slide">
      <div class="carousel-caption d-none d-md-block">
        <div class=" carousel__text container">
          <h3 class="">Tournoi Super Smash Bros Melee</h1>
          <button class="carousel__button">En savoir plus</button>
        </div>
      </div>
    </div>
    <div class="carousel-item">
      <img class="carousel-item-image" src="http://ekladata.com/YjUo7-ppVKPhJ590xPvCBtZMjgw.png" alt="Third slide">
      <div class="carousel-caption d-none d-md-block">
        <div class=" carousel__text container">
          <h3 class="">Tournoi League Of Legend</h1>
          <button class="carousel__button">En savoir plus</button>
        </div>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


<?php endif; ?>