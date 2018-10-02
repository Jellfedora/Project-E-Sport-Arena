<div class="actuality pt-5">
    <div class="actuality__item  text-left" >
        <div class="actuality__item__image" style="background-image: url(<?= get_the_post_thumbnail_url(); ?>);">
        </div>
        <div class="actuality__item__content">
            <div class="actuality__item__category-button text-center">
                <a href=""><?php the_category() ; ?></a>
            </div>
            <a href="<?php the_permalink() ; ?>"></a>
            <h3 class="actuality__item__title text-light"><?php the_title(); ?></h3>
            <div class="actuality__item__text text-light">
                <?php the_content() ; ?>
            </div>
        </div>
    </div>
</div>