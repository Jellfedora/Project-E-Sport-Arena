<?php

class oArena_updateUser
{
    public function __construct()
    {

        add_action('init', [$this, 'updateUser']);
    }

    public function updateUser()
    {
        // If the form is submitted
        if (isset($_POST['update-member-submit'])) {

            // je stocke mes données dans des variables
            $user_name = ($_POST['user-name']);

            // If the input is !empty 
            if (!empty($user_name)) {

                //Ajout d'un tableau contenant les erreurs
                $errorList = array();

                //Récupére l'utilisateur courant
                $current_user = wp_get_current_user();
                $current_user->nickname = esc_attr($user_name);
                // $current_user->user_login = esc_attr($user_name);
                $current_user->user_nicename = esc_attr($user_name);
                $current_user->display_name = esc_attr($user_name);
                $current_user->first_name = esc_attr($user_name);
                $current_user->last_name = esc_attr($user_name);
                
                wp_update_user($current_user);
                //var_dump($current_user->last_name);exit;

                wp_redirect('profil');
                exit;

            } else $errorList[] = 'le champ est vide!';


            // Si il y a des erreurs affiche les
            if (!empty($errorList)) {
                var_dump($errorList);exit;
            }
        } 
    }
}




        // // $SERVER REQUEST METHOD permet d'arriver aux entetes ( Post get etc ) / action pour la soumission 
        // if ( 'POST' == $_SERVER['REQUEST_METHOD'] && !empty( $_POST['action'] ) && $_POST['action'] == 'update-user' ) {
        //     // Si le champs n'est pas vide j'update la meta_info
        //     // Ajouter si le nom n'est pas pris!
        //     if ( !empty( $_POST['user-name'] ) ) {
                
        //         $current_user = wp_get_current_user();
        //         $current_user->nickname = esc_attr($_POST['user-name']);
        //         // $current_user->user_login = esc_attr($_POST['user-name']);
        //         $current_user->user_nicename = esc_attr($_POST['user-name']);
        //         $current_user->display_name = esc_attr($_POST['user-name']);
        //         $current_user->first_name = esc_attr($_POST['user-name']);
        //         $current_user->last_name = esc_attr($_POST['user-name']);
                
        //         wp_update_user($current_user);
                
                
        //         // wp_update_user($current_user);
        //     }
        //     // update_user_meta( $current_user->ID, 'nickname', esc_attr( $_POST['user-name'] ) );
        //     // Si mon tableau d'erreurs est vide 
        //     if ( count($error) == 0 ) {
        //         // execute le code sur le hook
        //         do_action('edit_user_profile_update', $current_user->ID);
        //         wp_redirect('profil');
        //         exit;
        //     }
        
    
        
 

        
  