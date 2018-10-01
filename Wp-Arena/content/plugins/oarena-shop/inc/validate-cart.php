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


        // Si le formulaire est soumit avec l'input reset, efface le post meta
        if (isset($_POST['reset-cart'])) {
            delete_post_meta($post->ID, 'cart');
            //var_dump($post->ID);exit;
            // Redirige vers la page panier
                    wp_redirect('panier');
                    exit;
        }

        // Si le formulaire est soumit
        if (isset($_POST['validate-cart'])) {

            ##############################################################

            var_dump(get_post_meta($post->ID, 'cart'));
            var_dump($_POST);exit;

            ##############################################################
            // Changer la quantité
            if (isset($_POST['quantity'])) {

                //print_r($_POST);exit;


                // Si plusieurs articles $cart est un tableau multidimensionnel
                $cart = get_post_meta($post->ID, 'cart');
                var_dump($_POST['quantity']);exit;
                //print_r($cart[1]);
                



                update_post_meta($post->ID, 'cart','product-quantity', absint($_POST['quantity']));
            }

            

        
            // Redirige vers la page panier
                    wp_redirect('panier');
                    exit;
        }
    }
}

