<?php

class oArenaUpdateTeamMember
{
    public function __construct()
    {

        add_action('init', [$this, 'updateTeamMember1']);
    }

    public function updateTeamMember1()
    {
        //A commenter!
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
        
        // Ajouter la condition si le membre existe!

        // If the form is submitted and the input is !empty update value and change the member
        if (isset($_POST['member-submit'])) {

            if (!empty($_POST['_member1'])) {
                update_post_meta($id_team->ID, '_member1', sanitize_text_field($_POST['_member1']));
            }

            if (!empty($_POST['_member2'])) {
            update_post_meta($id_team->ID, '_member2', sanitize_text_field($_POST['_member2']));
            }

            if (!empty($_POST['_member3'])) {
                update_post_meta($id_team->ID, '_member3', sanitize_text_field($_POST['_member3']));  
            }

            if (!empty($_POST['_member4'])) {
                update_post_meta($id_team->ID, '_member4', sanitize_text_field($_POST['_member4'])); 
            }

            if (!empty($_POST['_member5'])) {
                update_post_meta($id_team->ID, '_member5', sanitize_text_field($_POST['_member5']));
            }
        wp_redirect('gerer-son-equipe');exit;
        }

        // If the form is submitted and the input is !empty update value and change the team chief
        if (isset($_POST['team_chief-submit'])) {

            if (!empty($_POST['_team_chief'])) {
                update_post_meta($id_team->ID, '_team_chief', sanitize_text_field($_POST['_team_chief']));
            }
        wp_redirect('gerer-son-equipe');exit;
        }
    }
}

