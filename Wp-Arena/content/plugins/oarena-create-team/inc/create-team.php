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

        $posts = get_posts($args);
                  
        $errorList = [];    
        
        if (isset($_POST['submit-team'])) 
        {
            foreach ($posts as $title) 
            {                
                // htmlspecialchars convertit les caractères spéciaux en entités HTML
                $teamName = htmlspecialchars($_POST['team-name']);
                // fonction wp qui 'néttoie' le contenu du post
                $myteamdescription = wp_kses_post($_POST['myteamdescription']);

                if (empty($teamName)) {
                    $errorList[] = 'Ne peux pas etre vide';
                    
                }  if ($teamName == $title->post_title)
                    {
                    $errorList = 'Cette team existe déjà';
                    var_dump($errorList);
                    wp_redirect('equipe');
                    exit;
                    }
            }
        }
                
        if (empty($myteamdescription)) 
        {

            $errorList = 'Ne peux pas etre vide non plus';

        } else {
                    
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
                    wp_redirect('equipe');exit;
                }
    }                                 
}    
                
                
                

