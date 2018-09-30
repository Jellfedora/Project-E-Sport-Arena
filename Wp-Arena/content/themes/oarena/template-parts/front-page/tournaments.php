
<div class="next-tournaments container">
<h2 class="news__title text-light  mb-3 text-center">&#9660; PROCHAINS TOURNOIS &#9660; </h2>
    <div class="cards d-flex justify-content-around flex-wrap">

            <?php 

            $args= [
                'post_type' => 'tournament',
                'cat' => '',
                'posts_per_page' => 4,
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
    <div class="description__arrow">
      <a class="scroll-to-actualities" href="#"><img src="http://image.noelshack.com/fichiers/2018/38/7/1537696980-white-arrow-bottom.png" alt=""></a>
    </div>
</div>