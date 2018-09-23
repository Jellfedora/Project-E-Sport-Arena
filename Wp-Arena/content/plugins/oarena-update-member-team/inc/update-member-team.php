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


        

        // If the form is submitted and the input is !empty update value and change the member
        if (isset($_POST['member-submit'])) {

            // Je stocke mes données dans des variables
            $member1 = ($_POST['_member1']);
            $member2 = ($_POST['_member2']);
            $member3 = ($_POST['_member3']);
            $member4 = ($_POST['_member4']);
            $member5 = ($_POST['_member5']);

            // Récupére les noms des membres sous forme d'un tableau:
            $members_name = $wpdb->get_results("
            SELECT `post_title` 
            FROM `wp_posts` 
            WHERE `post_type` ='members' 
            ;
            ");

            // Récupére les noms des membres en string et les stocke dans un tableau
            $member_list_name= Array();
            foreach ( $members_name  as $member_name ) {
                $member_name->post_title;
                array_push($member_list_name,$member_name->post_title);
            }
            

            // Stocker erreur dans un tableau et l'afficher en front
            $errorUpdateMember = array();

            // Si la donnée n'est pas vide et le membre existant alors change le!
            if ((!empty($member1)) & (in_array($member1,($member_list_name)))) {
                update_post_meta($id_team->ID, '_member1', sanitize_text_field($member1));
            } else if (!empty($member1)) {
                $errorUpdateMember[] = 'Ce membre1 n\'existe pas';
            }

            if ((!empty($member2)) & (in_array($member2,($member_list_name)))) {
            update_post_meta($id_team->ID, '_member2', sanitize_text_field($member2));
            } else if (!empty($member2)) {
                $errorUpdateMember[] = 'Ce membre2 n\'existe pas';
            }

            if ((!empty($member3)) & (in_array($member3,($member_list_name)))) {
                update_post_meta($id_team->ID, '_member3', sanitize_text_field($member3));  
            } else if (!empty($member3)) {
                $errorUpdateMember[] = 'Ce membre3 n\'existe pas';
            }

            if ((!empty($member4)) & (in_array($member4,($member_list_name)))) {
                update_post_meta($id_team->ID, '_member4', sanitize_text_field($member4)); 
            } else if (!empty($member4)) {
                $errorUpdateMember[] = 'Ce membre4 n\'existe pas';
            }

            if ((!empty($member5)) & (in_array($member5,($member_list_name)))) {
                update_post_meta($id_team->ID, '_member5', sanitize_text_field($member5));
            } else if (!empty($member5)) {
                $errorUpdateMember[] = 'Ce membre5 n\'existe pas';
            }

            // Si il y a des erreurs affiche les
            if (!empty($errorUpdateMember)) {
                var_dump($errorUpdateMember);exit;
            }

        wp_redirect('equipe');exit;
        }

        // If the form is submitted and the input is !empty update value and change the team chief
        if (isset($_POST['team_chief-submit'])) {

            // Stocker erreur dans un tableau et l'afficher en front
            $errorUpdateTeamChief = array();

            // Je stocke mes données dans une variable
            $team_chief = ($_POST['_team_chief']);

            // Récupére les noms des membres sous forme d'un tableau:
            $members_name = $wpdb->get_results("
            SELECT `post_title` 
            FROM `wp_posts` 
            WHERE `post_type` ='members' 
            ;
            ");

            $member_list_name= Array();
            foreach ( $members_name  as $member_name ) {
                $member_name->post_title;
                // Stocke les noms des membres dans un tableau
                array_push($member_list_name,$member_name->post_title);
            //echo($member_list_name);
            }

            //$team_chief = ($_POST['_team_chief']);
            //var_dump($team_chief);
            if ((!empty($team_chief)) & (in_array($team_chief,($member_list_name)))) {
                update_post_meta($id_team->ID, '_team_chief', sanitize_text_field($team_chief));
            } else if (!empty($team_chief)) {
                $errorUpdateTeamChief[] = 'Ce membre n\'existe pas';
            } else if (empty($team_chief)) {
                $errorUpdateTeamChief[] = 'le champ est vide!';
            } 

            // Si il y a des erreurs affiche les
            if (!empty($errorUpdateTeamChief)) {
                var_dump($errorUpdateTeamChief);exit;
            }

        wp_redirect('equipe');exit;
        }
    }
}

