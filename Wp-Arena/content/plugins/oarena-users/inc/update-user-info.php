<?php

class oArena_updateUserInfo
{
    public function __construct()
    {

        add_action('init', [$this, 'updateUserInfo']);
    }
    public function updateUserInfo()
    {
        // Récupéres l'utilisateur connecté
        $current_user = wp_get_current_user();

        // Récupéres le nom de l'utilisateur qui est aussi son nom de membre (cpt donc post_title)
        $post_title = $current_user->user_nicename;

        // On se connecte à la base de données du site pour récupérer l'id du post-title
        global $wpdb; 

        $team_id = $wpdb->get_results("
        SELECT ID
        FROM wp_posts
        WHERE `post_title` = '$post_title'
        ;
        ");

        // On récupéres l'id en string
        foreach($team_id as $post){
            $post->ID;
        }

        // Si le formulaire est soumit
        if (isset($_POST['update-user-info-submit'])) {

            if (isset($_POST['member-genre'])) {
                update_post_meta($post->ID, 'member_genre', sanitize_html_class( $_POST['member-genre']));
            }
            // Si l'input est rempli
            if (!empty($_POST['member-name'])) {
                // On met à jour la métaboxe
                update_post_meta($post->ID, 'member_name', sanitize_text_field($_POST['member-name']));
            }
            if (!empty($_POST['member-firstname'])) {
                update_post_meta($post->ID, 'member_firstname', sanitize_text_field($_POST['member-firstname']));
            }
            if (!empty($_POST['member-street'])) {
                update_post_meta($post->ID, 'member_street', sanitize_text_field($_POST['member-street']));
            }
            if (!empty($_POST['member-postal-code'])) {
                update_post_meta($post->ID, 'member_postal_code', sanitize_text_field($_POST['member-postal-code']));
            }
            if (!empty($_POST['member-city'])) {
                update_post_meta($post->ID, 'member_city', sanitize_text_field($_POST['member-city']));
            }
            // Redirige vers la page profil
                wp_redirect('profil');
                exit;
        }
    }
}




// echo('hey1');exit;
// add_action('save_post', 'save_member_info');
// function save_member_info($post_id)
// {
//     echo('hey1');exit;
//     // If the form is submitted
//     if (isset($_POST['update-member-info-submit'])) {
//         echo('hey');exit;
//         // je stocke mes données dans des variables
//         $user_name = ($_POST['user-name']);
//         $user_email = ($_POST['user-email']);
//     }
