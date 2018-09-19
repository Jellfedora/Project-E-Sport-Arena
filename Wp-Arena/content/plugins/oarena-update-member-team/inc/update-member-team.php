<?php

class oArenaUpdateTeamMember
{
    public function __construct()
    {

        add_action('init', [$this, 'updateTeamMember1']);
    }

    public function updateTeamMember1()
    {
        // St
        $errorList = array();
        $current_user = wp_get_current_user();
        $user_id = $current_user->ID;
        $adminTeam = $current_user->roles;
        //requete sql a faire pour récupérer lid du post=356
        // SELECT ID FROM `wp_posts` WHERE `post_author` =68
        global $wpdb; // On se connecte à la base de données du site
        $team_id = $wpdb->get_results("
        SELECT ID
        FROM wp_posts
        WHERE `post_author` = $user_id AND `post_status`='publish'
        ;
        ");
        foreach($team_id as $id_team){
        $id_team->ID;
        }

        // If the form is submitted
        
        if (isset($_POST['member1-submit'])) {
            update_post_meta($id_team->ID, '_member1', sanitize_text_field($_POST['_member1']));
            //Redirect to home
            //wp_redirect(home_url());
        }
         if (isset($_POST['member2-submit'])) {
        update_post_meta($id_team->ID, '_member2', sanitize_text_field($_POST['_member2']));
        }

        if (isset($_POST['member3-submit'])) {
            update_post_meta($id_team->ID, '_member3', sanitize_text_field($_POST['_member3']));
        }

        if (isset($_POST['member4-submit'])) {
            update_post_meta($id_team->ID, '_member4', sanitize_text_field($_POST['_member4']));
        }

        if (isset($_POST['member5-submit'])) {
            update_post_meta($id_team->ID, '_member5', sanitize_text_field($_POST['_member5']));
        }


            // Verify username exist 
            //if ($user_id = username_exists($user_name)) {
            //    $errorList[] = 'Ce nom est déjà pris';
            //} else if ($user_name == !ctype_lower($user_name)) {
            //    $errorList[] = 'Ce nom n\'est pas en minuscule ou contient des chiffres ou caractéres spéciaux';
            //}

            //if (!empty($errorList)) {
              //  var_dump($errorList);exit;
            //}




            // Redirect to home
            //wp_redirect(home_url());
            //exit;

            //} else {
                //$errorList[] = $user_name . ' ou ' . $user_email . ' existe déjà';

                // Redirection to register page
                //wp_redirect('gerer-son-equipe');
                //exit;
            }//}
    
}

