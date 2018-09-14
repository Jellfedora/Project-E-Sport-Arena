<?php

Class oArena_register
{
    public function __construct(){
        
        add_action ('init', [$this, 'addUser']);
    }

    public function addUser()
    {
        //$_POST['email']='';
        //$_POST['username']='';
        //$user_email= $_POST['email'];
        //$user_name= $_POST['username'];
        //$user_email='';
        //$user_name='';

    // If the form is submitted
    if(isset($_POST['envoi'])) {
        $user_name= $_POST['username'];
        $user_email= $_POST['email'];
        // Returns the user ID if the user exists or false if the user doesn't exist.
        $user_id = username_exists( $user_name );
    
         // This function will check whether or not a given email address ($email) has 
        // already been registered to a username, and returns that users ID (or false if none exists).
        if ( !$user_id && email_exists($user_email) == false ) {
        // Generates a random password drawn from the defined set of characters.
        $random_password = wp_generate_password( 12, false );
        $user_id = wp_create_user( $user_name, $random_password, $user_email );
        echo ('Nouveau membre créé: '. $user_name . '<br/>');
        // Redirect to home
        wp_redirect(home_url());
        exit;
        } else {
        echo($user_name .' ou '.$user_email.' existe déjà'. '<br/>');
        // Ajouter la Redirection
        wp_redirect( 'register' );
        exit;  
        }}
    }
}


    //var_dump($user_email);exit;
    //$userdata = array(
    //'user_pass' => $random_password,
    //'user_login' => $user_name,
    //'user_email' => $user_email,
    //'user_url'  => site_url( '/' ),
    //'first_name' => 'Amine',
    //'last_name'  => 'Betari',
    //);
    //$user_id = wp_insert_user( $userdata ) ;


?>