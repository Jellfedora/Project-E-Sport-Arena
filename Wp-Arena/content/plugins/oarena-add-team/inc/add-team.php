<?php

class oArenaAddTeam 
{ 
    public function __construct()
    {
         add_action ('init', [$this, 'addTeamTournament']);
        
    }

    function displayJson($to_display)
    {
      header('Content-type: application/json');
      echo json_encode($to_display);
    //   exit;
    }

    function addTeamTournament()
    {

        $errorList = []; 

        $author_id = get_current_user_id();

        $args = array(
            'author' => $author_id,
            'post_type' => 'team',
            'status' => 'publish'
        );

        $user = get_posts($args);
       
        $array_title = '';
        
        foreach ($user as $post)
        {
            $array_title = $post->post_title;
        }

            if (isset($_POST['register-team-tournament']))
            {
                if ($_POST['register-team-tournament'] === $array_title )
                {
                    // Verifie que la team nest pas déjà inscrite au tournoi
                    if (in_array($array_title,(get_post_meta($_POST['register-tournament-id'], '_team_register')))) 
                    {

                        $errorList = [
                            'code' => 1,
                            'error' => 'Déja inscrit'
                            ];

                    $this->displayJson($errorList);
                        // echo('Vous etes déjà inscrit à ce tournoi');exit;
                    }

                    // add value of the metaboxe
                    add_post_meta($_POST['register-tournament-id'], '_team_register', $array_title);
                    
                   $numberSeatsAvailable = get_post_meta($_POST['register-tournament-id'], 'tournament_available_seats');
                
                    foreach ($numberSeatsAvailable as $seats)
                    {
                            $seat = intval($seats)-1;
                    }
                    update_post_meta($_POST['register-tournament-id'], 'tournament_available_seats', $seat);

                    $errorList = [
                    'code' => 200,
                    'error' => 'Team inscrite'
                      ];
                    $this->displayJson($errorList);

                    // wp_redirect(home_url());
                        // exit;

                    } else {
                        var_dump('Cette team n\'est pas la vôtre ou elle n\'existe pas');
                        die;
                }

            }
            
            if(isset($_POST['delete-team-to-tournament-form']) && $_POST['delete-team-tournament'] === $array_title )
            {
                // Delete the value of the metaboxe
                delete_post_meta($_POST['delete-tournament-id'], '_team_register', $array_title);

                $numberSeatsAvailable = get_post_meta($_POST['delete-tournament-id'], 'tournament_available_seats');
                
                foreach ($numberSeatsAvailable as $seats) 
                {
                        $seat = intval($seats)+1;
                }

                
                update_post_meta($_POST['delete-tournament-id'], 'tournament_available_seats', $seat);
                
                    $errorList = [
                        'code' => 100,
                        'error' => 'team desinscrite'
                          ];
                $this->displayJson($errorList);
                
                // Redirect to home
                wp_redirect(home_url());
                exit;

            }
    }    
}
