   <?php get_header(); ?>
   
       <?php

            if (have_posts()): while (have_posts()): the_post();

                get_template_part('template-parts/message/message', 'display');

            endwhile; wp_reset_postdata(); endif;

        ?>
    </main>

    <?php get_footer() ; ?>