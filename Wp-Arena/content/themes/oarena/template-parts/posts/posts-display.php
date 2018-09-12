 <div class="news__item">
        <div class="news__item-image" style="background-image: url(<?= get_the_post_thumbnail_url(); ?>);">
        </div>
        <span class="news__items-type">League of legends</span>
        <div class="news__item-content  ">
            <a href="#">
            <h3 class="news__item-title text-light"><?php the_title(); ?></h3><div class="category-button d-flex justify-content-center ml-5">
            <?php the_category() ; ?>
        </div>
        </a>
        <p class="news__item-text"><?php the_content() ; ?></p>
</div>
