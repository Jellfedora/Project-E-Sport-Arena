<?php 

class oArenaAddTeam {
    public function __construct() {
        add_action ('init', [$this, 'addTeamTournament']);
    }
    
    function addTeamTournament()
    {
        // add_action('add_meta_boxes', 'addTeamTournament');
        // $post = get_post_type();

        // echo 'you are here';
         $author_id = get_current_user_id();

        $args = array(
            'author' => $author_id,
            'post_type' => 'team',
            'order' => -1
        );

        $user = get_posts($args);
        // untill there i have the var dump ok with post author 
        // var_dump($user);
        // exit;
        if (isset($_POST['register-team-tournament'])) 
        {
            echo 'there';
            function init_metabox_tournament() 
            {
                add_meta_box('team_register_tournament', '', 'team_register_tournament', 'tournament', 'normal' );
            }   
            
            function team_tournament($post)
            {
                // var_dump($post);
                // die;
                $team_tournament = get_post_meta($post->ID, '_team_register_tournament', true);

            }

            add_action('save_post', 'save_metabox');

            function save_metabox_tournament($post_id)
            {
                if (isset($_POST['register-team-tournament'])) 
                {
                    update_post_meta($post_id, '_team_register_tournament', $user->post_title);
                }
            }
        } else {
            echo 'wrong';
        }
    }
}
