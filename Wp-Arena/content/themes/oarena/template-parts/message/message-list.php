 <?php 

    $args= [
        'post_type' => 'contact',
        'cat' => '',
        'posts_per_page' => -1,
        'order' => 'DESC',
        'order_by' => 'date'
    ];

    $our_articles = new WP_Query($args);

        if (is_user_logged_in()) 
        {
            $user = wp_get_current_user()->roles;

                // var_dump($user);
                foreach ($user as $role) {
                    // var_dump($role);
                    // die;
                }

                if ($role === 'administrator') {  

    if ($our_articles->have_posts()): while ($our_articles->have_posts()): $our_articles->the_post(); 

        get_template_part('template-parts/message/message' , 'single');

    endwhile;

    // Je remet les variables globals telle qu'elles étaient avant ma boucle custom
    wp_reset_postdata();    
    
    endif;
                } else {
                echo ' Entrée interdite ;) ';
            }
        } ;?>
        </div>
</div>