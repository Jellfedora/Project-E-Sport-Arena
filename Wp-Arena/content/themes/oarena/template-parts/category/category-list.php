    <?php get_header() ;  
    
        $array_categories = get_categories();

     //var_dump($array_categories);
     //die();

    // $choice_categories[0] = 'blog';
    // $choice_categories[1] = 'news';

    $choice_categories = [];

    foreach($array_categories as $category)
    {
        // var_dump($category);
        // die;
         $choice_categories = $category->name;
    }
    //var_dump($category->name);
     //die;
    
    $args= [
        'post_type' => 'post',
        'cat' => $choice_categories,
        'posts_per_page' => -1,
        'order' => 'DESC',
        'order_by' => 'date'
    ];
    

    $our_articles = new WP_Query($args);

    if ($our_articles->have_posts()): while ($our_articles->have_posts()): $our_articles->the_post(); 

    // $category = get_the_category();
    // var_dump($category);
    // die;
        $args= [
            'post_type' => 'post',
            'cat' => $choice_categories,
            'posts_per_page' => -1,
            'order' => 'DESC',
            'order_by' => 'date'
        ];
        
        
        $our_articles = new WP_Query($args);
        
        if ($our_articles->have_posts()): while ($our_articles->have_posts()): $our_articles->the_post(); 
        
        // $category = get_the_category();
        // var_dump($category);
        // die;
        
        get_template_part('template-parts/category/category' , 'display' );
        
    endwhile;
    
    // Je remet les variables globals telle qu'elles étaient avant ma boucle custom
    wp_reset_postdata();    
    
endif; ?>
<?php get_footer() ; ?>