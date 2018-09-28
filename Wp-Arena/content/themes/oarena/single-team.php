   <?php get_header();?>

       <?php

if (have_posts()): while (have_posts()): the_post();

        get_template_part('template-parts/team/team', 'display');

    endwhile;
    wp_reset_postdata();endif;

?>
    <?php get_footer();?>