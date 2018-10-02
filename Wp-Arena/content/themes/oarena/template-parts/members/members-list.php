<div class="pt-3">
<h2 class="news__title text-light mt-3 mb-3 text-center">&#9660; Membres &#9660; </h2>
    <div class="cards text-center flex-wrap">

            <?php

$args = [
    'post_type' => 'members',
    'posts_per_page' => -1,
    'order' => 'ASC',
    'orderby' => 'name',
];

$members = new WP_Query($args);

if ($members->have_posts()): while ($members->have_posts()): $members->the_post();

        get_template_part('template-parts/members/members', 'single');

    endwhile;

    // Je remet les variables globals telle qu'elles étaient avant ma boucle custom
    wp_reset_postdata();

endif;?>

</div>
</div>