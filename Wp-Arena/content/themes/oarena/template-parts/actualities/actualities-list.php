<div class="news p-3 mt-5">
    <h2 class="news__title text-light">&#9660; ACTUALIT&Eacute;S &#9660; </h2>
    <div class="news__content">

    <?php 

    $args= [
        'post_type' => 'post',
        'cat' => get_the_category(),
        'posts_per_page' => get_theme_mod('oarena_theme_posts_numbers'),
        'order' => 'DESC',
        'order_by' => 'date'
    ];

    $our_articles = new WP_Query($args);

    if ($our_articles->have_posts()): while ($our_articles->have_posts()): $our_articles->the_post(); 

        get_template_part('template-parts/actualities/actualities' , "display");

    endwhile;

    // Je remet les variables globals telle qu'elles étaient avant ma boucle custom
    wp_reset_postdata();    
    
    endif; ?>

    </div>
</div>
