<?php

Class oArenaCreateTeam
{
    public function __construct()
    {
        
        add_action ('init', [$this, 'addTeam']);
    }
    
    public function addTeam()
    {
        
        $args= [
            'post_type' => 'team',
            'posts_per_page' => -1,
        ];

        $post = get_posts($args);
        // var_dump($test);
        // die;

        foreach ($post as $title) {
            var_dump($title->post_title);
            
        }

        
        // $our_articles = new WP_Query($args);
        
        // if ($our_articles->have_posts()): while ($our_articles->have_posts()): $our_articles->the_post(); 
        // var_dump($args);
        
        
        // endwhile;
                // Je remet les variables globals telle qu'elles étaient avant ma boucle custom
                // wp_reset_postdata();    
                
                // endif; 
        
        
        
        // $post = get_the_title();
        // die;
        
        
        
        
        // $post = get_custom_posts();
        // var_dump($post);
        // die;
        
        
        // $post[] = get_the_title();
        // var_dump($post);
        // foreach($post as $title){
            // var_dump( $title);
            // }
            // echo the_title();
            
            
            
            $errorList = [];    
            
            if (isset($_POST['submit-team'])) 
            {
                // htmlspecialchars convertit les caractères spéciaux en entités HTML
                $teamName = htmlspecialchars($_POST['team-name']);
                // fonction wp qui 'néttoie' le contenu du post
                $myteamdescription = wp_kses_post($_POST['myteamdescription']);
                // Create content in BDD

                // var_dump($teamName);
                // exit;
                if (empty($teamName)) {
                    $errorList[] = 'Ne peux pas etre vide';
                    // var_dump( $errorList);
                    // die;
                }
                
                if (empty($myteamdescription)) {
                    $errorList[] = 'Ne peux pas etre vide non plus';
                } 
                // if ($title === $teamName ) {
                    //     $errorList[] = ' doublon';
                    // }
                    
                    $team_post = [
                        'post_title' => $teamName,
                        'post_content' => $myteamdescription,
                        'post_type' => 'team',
                        'post_status' => 'publish',
                    ];
                    
                    // stocké en bdd dans wp-posts
                    wp_insert_post($team_post);
                    // Je récupére l'ID du membre
                    $user_id = get_current_user_id();
                    // Je lui change son role en team admin
                    wp_update_user([
                        'ID' => $user_id,
                        'role' => 'TeamAdmin',
                        ]);
                      // wp_redirect('gerer-son-equipe');exit;
                   } 
    }       
                
                
}