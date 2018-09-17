

<div class="news__item">
        <div class="news__item-image" style="background-image: url(<?=get_the_post_thumbnail_url();?>);">
        </div>
        <span class="news__items-type">League of legends</span>
        <div class="news__item-content  ">
            <a href="<?=get_the_permalink(get_the_ID());?>">
            <h3 class="news__item-title text-light"><?php the_title();?></h3>
            </a>
            <p class="news__item-text"><?php the_content();?></p>
            <h4>Fait partie de l'équipe:</h4>
        </div>
</div>