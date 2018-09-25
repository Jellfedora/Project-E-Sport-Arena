<?php 

$shopping_cart = site_url('panier'); 

?>

<div class="news p-3 d-flex justify-content-around">
    <h2 class="news__title text-light">Billets disponibles</h2>
   <a href="<?= $shopping_cart; ?>" style="color: black;"><i class="fa fa-shopping-basket" style="font-size: 2em;" aria-hidden="true"></i></a>
</div>
    <div class="news__content">

    <?php 

$args= [
    'post_type' => 'article',
    'cat' => '',
    'posts_per_page' => -1,
    'order' => 'ASC',
    'order_by' => 'date'
];

$our_articles = new WP_Query($args);

if ($our_articles->have_posts()): while ($our_articles->have_posts()): $our_articles->the_post(); 

        get_template_part('template-parts/shop/shop' , 'single');

        endwhile;

        // Je remet les variables globals telle qu'elles étaient avant ma boucle custom
        wp_reset_postdata();    
        
        endif; ?>

</div>