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
        
        $array_title = [];
        // $myTeamName = $_POST['register-team-tournament'];
        
        foreach ($user as $post)
        {
            $array_title = $post->post_title;
        }
        // var_dump($array_title);
        // die;
        
        // var_dump($myTeamName);
        // die;

            if (isset($_POST['register-team-tournament']))
            {
                if ($_POST['register-team-tournament'] === $array_title )
                {
                    // var_dump($array_title);
                    // die;
                    var_dump('Vous pouvez inscrire cette equipe');
                    die;
                } else {
                    var_dump('Cette team n existe pas ou ce n est pas vous qui l avez créée');
                    die;
                }
            }
    }    
}
