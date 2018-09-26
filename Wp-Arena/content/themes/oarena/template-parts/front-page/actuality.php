 <div class="news__item">
        <div class="news__item-image" style="background-image: url(<?= get_the_post_thumbnail_url(); ?>);">
            <div class="news_item-category d-flex  mb-3">
                <div class="category-button d-flex justify-content-center text-light">
                    <?= the_category() ; ?>
                </div>
            </div>
        </div>
        <span class="news__items-type">League of legends</span>
        <div class="news__item-content  ">
            <a href="<?php the_permalink() ; ?>">
            <h3 class="news__item-title text-light"><?php the_title(); ?></h3>
            </a>
            <p class="news__item-text"><?php echo strip_tags(get_the_excerpt()); ?></p>
            <a class="learn-more-button d-flex justify-content-center text-light bg-dark" href="<?php the_permalink() ; ?>">En savoir plus</a>
        </div>
</div>

