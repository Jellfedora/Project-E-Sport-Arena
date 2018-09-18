<h2 class="news__title text-light mt-3 mb-3 text-center">&#9660; Equipes &#9660; </h2>
    <div class="cards text-center flex-wrap">

            <?php 

            $args= [
                'post_type' => 'team',
                'posts_per_page' => -1,
                'order' => 'ASC',
                'orderby' => 'name',
            ];

            $our_articles = new WP_Query($args);

            if ($our_articles->have_posts()): while ($our_articles->have_posts()): $our_articles->the_post(); 

            get_template_part('template-parts/team/team' , 'single');

            endwhile;

            // Je remet les variables globals telle qu'elles étaient avant ma boucle custom
            wp_reset_postdata();    

            endif; ?>

</div>