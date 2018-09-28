<?php

class oArenaAddTeam 
{ 
    public function __construct()
    {
         add_action ('init', [$this, 'addTeamTournament']);
        
    }

    function addTeamTournament()
    {

        $author_id = get_current_user_id();

        $args = array(
            'author' => $author_id,
            'post_type' => 'team',
            'status' => 'publish'
        );

        $user = get_posts($args);
        // $user_post = $user->post_title;
        // var_dump();
        // die;
        
        $array_title = '';
        // $myTeamName = $_POST['register-team-tournament'];
        
        foreach ($user as $post)
        {
            $array_title = $post->post_title;
        }

            if (isset($_POST['register-team-tournament']))
            {
                if(isset($_POST['remove-team']) AND ($_POST['register-team-tournament'] === $array_title )) {
                    
                    // Delete the value of the metaboxe
                    delete_post_meta($_POST['register-tournament-id'], '_team_register', $array_title);
                    
                    // Redirect to home
                    wp_redirect(home_url());
                    exit;

                }

                if ($_POST['register-team-tournament'] === $array_title )
                {
                    // add value of the metaboxe
                    add_post_meta($_POST['register-tournament-id'], '_team_register', $array_title);

                    /* var_dump($array_title);
                        die;
                        var_dump('Vous pouvez inscrire cette equipe');
                        function team_register_tournament($post) 
                        {
                            $register_teams = get_post_meta($post->ID, '_team_register', true);

                            ?>
                            <input id="" type="text" name="register-team" value="<?php echo $register_teams; ?>" />
                            <?php
                        }
                        add_action('save_post', 'save_metabox_tournament');

                        function save_metabox_tournament($post_id)
                        {
                            add_post_meta($post_id, '_team_register', $array_title);
                     }
                     */
                    // Redirige vers la page profil
                    wp_redirect(home_url());
                    exit;

                } else {
                    var_dump('Cette team n existe pas ou ce n est pas vous qui l avez créée');
                    die;
                }
            }
    }    
}
