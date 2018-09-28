<?php

class oArenaValidateCart
{
    public function __construct()
    {

        add_action('init', [$this, 'validate_cart']);
    }

    public function validate_cart()
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


        // Si le formulaire est soumit avec l'input reset, reset les valeurs
        if (isset($_POST['reset-cart'])) {
            update_post_meta($post->ID, 'magique_quantity', 0);
            update_post_meta($post->ID, 'tournoi_quantity', 0);
            update_post_meta($post->ID, 'reduit_quantity', 0);
            // Redirige vers la page panier
                    wp_redirect('panier');
                    exit;
        }

        // Si le formulaire est soumit
        if (isset($_POST['validate-cart'])) {
            
            // Billet Magique
            if (!empty($_POST['magique-quantity'])) {
                //echo('hey');exit;
                update_post_meta($post->ID, 'magique_quantity', absint($_POST['magique-quantity']));
            }

                //Billet Tournoi
            if (!empty($_POST['tournoi-quantity'])) {
                update_post_meta($post->ID, 'tournoi_quantity', absint($_POST['tournoi-quantity']));
            }

                //Billet Reduit
            if (!empty($_POST['reduit-quantity'])) {
                update_post_meta($post->ID, 'reduit_quantity', absint($_POST['reduit-quantity']));
            }

        
            // Redirige vers la page panier
                    wp_redirect('panier');
                    exit;
        }
    }
}

