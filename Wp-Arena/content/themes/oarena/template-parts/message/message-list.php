<div class="news p-3 mt-5">
    <h2 class="news__title text-light">Messages Reçus </h2>
    <div class="news__content d-flex flex-column">

    <?php 

    $args= [
        'post_type' => 'contact',
        'cat' => '',
        'posts_per_page' => -1,
        'order' => 'DESC',
        'order_by' => 'date'
    ];

    $our_articles = new WP_Query($args);

    if ($our_articles->have_posts()): while ($our_articles->have_posts()): $our_articles->the_post(); 

        get_template_part('template-parts/message/message' , 'single');

    endwhile;

    // Je remet les variables globals telle qu'elles étaient avant ma boucle custom
    wp_reset_postdata();    
    
    endif; ?>

    </div>
</div>