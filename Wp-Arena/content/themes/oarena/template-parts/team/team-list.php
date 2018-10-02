<h2 class="news__title text-light  mb-3 text-center">&#9660; Teams &#9660; </h2>
    <div class="team-list">

            <?php 

            $args= [
                'post_type' => 'team',
                'posts_per_page' => -1,
                'order' => 'ASC',
                'orderby' => 'name',
            ];

            $our_articles = new WP_Query($args);

            if ($our_articles->have_posts()): while ($our_articles->have_posts()): $our_articles->the_post(); 

            get_template_part('template-parts/team/team' , 'single-list');

            endwhile;

            // Je remet les variables globals telle qu'elles étaient avant ma boucle custom
            wp_reset_postdata();    

            endif; ?>

</div>