<?php

Class oArenaCreateTeam
{
    public function __construct()
    {
        
        add_action ('init', [$this, 'addTeam']);
    }
    
    function displayJson($to_display)
    {
      header(home_url());
      echo json_encode($to_display);
      exit;
    }
    public function addTeam()
    {
        
        $args= [
            'post_type' => 'team',
            'posts_per_page' => -1,
        ];
        
        $posts = get_posts($args);
        
        $errorList = [];    
        
        // Si le formulaire n'est pas vide
        if (isset($_POST['submit-team'])) 
        {          
            
            // echo json_encode($errorList);
            // die('');
            foreach ($posts as $title) 
            {    // Je récupere les donnnées du form            
                // htmlspecialchars convertit les caractères spéciaux en entités HTML
                $teamName = htmlspecialchars($_POST['team-name']);
                // fonction wp qui 'néttoie' le contenu du post
                $myteamdescription = wp_kses_post($_POST['myteamdescription']);
                
                // Message d'erreur si le nom est vide
                if (empty($teamName))
                {
                    $errorList = [
                    'code' => 1,
                    'error' => 'Le nom de la team ne peux pas être vide'
                      ];
                json_encode($this->displayJson($errorList));
                // die;                    
                }  
                // Message d'erreur si la team existe déjà
                if ($teamName == $title->post_title)
                {
                        $errorList = [
                                      'code' => 2,
                                      'error' => 'Cette team existe déjà blibli'
                                    ];
               json_encode($this->displayJson($errorList));
                // die;
                    // var_dump($errorList);
                    // die();
                    wp_redirect('equipe');
                }
           
                if (empty($myteamdescription)) 
                {            
                    $errorList = [
                                    'code' => 3,
                                    'error' => 'La description d equipe ne peux pas être vide'
                                    ];

                    json_encode($this->displayJson($errorList));      
                        // $this->displayJson($errorList);
                        // die;                  
                    // S'il n'y a aucune erreur
                } else {
            }
        }
                
            // Je récupere l'user et son ID
            $current_user = wp_get_current_user();
            
            // Je récupére l'ID du membre
            $user_id = get_current_user_id();
            
            // Je créée un tableau d'arguments
            $get_post = [
                'numberposts' => '-1',
                'post_type' => 'team',
                'author' => $user_id
                
            ];
            
            // je récupere le WP_Query ayant pour tableau d'arguments $get_post du dessus
            $the_query = new WP_Query($get_post);
            
            // Si le compte des post == 0 ( vide / false ) alors je rentre dans la condition
            if($the_query->post_count === 0)
            {
                // var_dump($errorList);
                // die;
                // J'affiche le tableau en JSON
                // var_dump(json_encode($this->displayJson($errorList)));
                // die;
                
                // Je détermine le tableau d'argument qui récupere les données du formulaire 
                $team_post = [
                    'post_title' => $teamName,
                    'post_content' => $myteamdescription,
                    'post_type' => 'team',
                    'post_status' => 'publish',
                    'author' => $user_id
                ];
                
                // Je créé un nouveau post
                wp_insert_post($team_post);
                
                // Je lui change son role en team admin
                wp_update_user([
                    'ID' => $user_id,
                    'role' => 'TeamAdmin',
                    ]);
                    wp_redirect('equipe');exit;

            // Si le compte est supérieur a 0 Je redirige vers la home 
            } else
            {
                $errorList = [
                            'code' => 4,
                            'error' => 'Vous avez déjà créé une team'
                            ];      
                json_encode($this->displayJson($errorList));
                
                // var_dump('Vous ne pouvez pas creer plusieurs équipes');
                // die();
                // wp_redirect(home_url());
            } 
            
    }                                 
}    
}
                
                

