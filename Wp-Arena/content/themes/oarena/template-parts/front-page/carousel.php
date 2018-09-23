<?php if (!get_theme_mod('oarena_theme_carousel_active')) : 
?>

<div class="carousel">
    <div class="" data-ride="carousel" data-interval="<?= get_theme_mod('oarena_theme_carousel_interval') ; ?>">
      <div class="carousel-inner  ">
        <div class="carousel carousel-item active intro" style="background-image: url(<?= get_theme_mod('orena_theme_carousel_image'); ?>">
        </div>
        <div class="carousel carousel-item intro" style="background-image: url(<?= get_theme_mod('orena_theme_carousel_image2'); ?>);">
        </div>
        <div class="carousel carousel-item intro" style="background-image: url(<?= get_theme_mod('orena_theme_carousel_image3'); ?>);">
        </div>
      </div>
    </div>
</div>

<?php endif; ?>