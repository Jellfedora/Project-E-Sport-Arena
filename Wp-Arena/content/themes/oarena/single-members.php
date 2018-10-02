<?php get_header();

       
if (have_posts()): while (have_posts()): the_post();

    get_template_part('template-parts/members/members', 'display');

    endwhile;

    wp_reset_postdata();endif;

?>
    </main>

<?php get_footer();

