<div class="next-tournaments container-fluide">
    <h2 class="news__title text-light  mb-3 text-center">&#9660; PROCHAINS TOURNOIS &#9660; </h2>
    <div class="cards d-flex justify-content-around flex-wrap">

            <?php 

            $args= [
                'post_type' => 'tournament',
                'cat' => '',
                'posts_per_page' => 3,
                'order' => 'DESC',
                'order_by' => 'date'
            ];

            $our_articles = new WP_Query($args);

            if ($our_articles->have_posts()): while ($our_articles->have_posts()): $our_articles->the_post(); 

            get_template_part('template-parts/front-page/tournament');

            endwhile;

            // Je remet les variables globals telle qu'elles étaient avant ma boucle custom
            wp_reset_postdata();    

            endif; ?>
    </div>
</div>