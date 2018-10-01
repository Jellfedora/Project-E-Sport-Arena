<?php

class oArenaAddArticlesToCart
{
    public function __construct()
    {

        add_action('init', [$this, 'add_articles_to_cart']);
    }

    // Appel json! fonction

    public function add_articles_to_cart()
    {
        

        //RECUPERER LE MEMBRE ACTUELLEMENT CONNECTE

        //Récupére le user courant 
        $current_user = wp_get_current_user();

        // Récupére le nom du user courant
        $user_login = $current_user->user_login;

        global $wpdb; // On se connecte à la base de données du site
                    
        //Requete sql qui récupére l'ID du post ayant le nom du membre
        $member_id = $wpdb->get_results("
        SELECT ID
        FROM wp_posts
        WHERE `post_title` = '$user_login' AND `post_status`='publish'
        ;
        ");

        $id_member= '';
        foreach($member_id as $id_member){
            $id_member= $id_member->ID;
        }

       // If the form is submitted
        if (isset($_POST['add-product'])) {

            // je stocke mes données dans des variables
            $product_id = esc_html($_POST['product']);
            $product_quantity = esc_html($_POST['product-quantity']);

            // Récupére toutes les informations du produit
            $product_content = get_post($product_id);

            $product_title = $product_content->post_title;
            $product_price = get_post_meta($product_id, 'article_price', true);
            $product_total_price = $product_price * $product_quantity;

            // Je stocke dans un tableau
            //$id = get_the_id();
            //var_dump($id);exit;
            $product_array = oArenaCartFunctions::get_cart_meta($id_member);

            $product_array[$product_id] = [
                // Ajoute id pour identifiant unique 
                'id' => $product_id,
                'title' => $product_title,
                'product-price' => $product_price,
                'product-quantity' => $product_quantity,
                'product-total-price' => $product_total_price,
            ];
            
            // var_dump($product_array);exit;


            //var_dump($product_array);exit;

            // J'ajoute ces informations au panier du membre
            // add_post_meta($id_member, 'cart', $product_array);
            oArenaCartFunctions::add_cart_meta($id_member, $product_array);

            // A changer sur le serveur ou ajax
            $url = 'http://localhost/Cours/Wordpress/Projet/Projet-master/Project-E-Sport-Arena/Wp-Arena/panier/';
            // Redirige vers la page profil
            wp_redirect($url);
            exit;
        } 
        
        // pour json, else message derreur  "une erreur est survenue"
        //$errorList = [
                //             'code' => 4,
                //             'error' => 'Vous avez déjà créé une team'
                //             ];      
                // json_encode($this->displayJson($errorList));

    }
}

