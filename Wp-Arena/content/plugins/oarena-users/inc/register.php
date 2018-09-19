<?php

class oArena_register
{
    public function __construct()
    {

        add_action('init', [$this, 'addUser']);
    }

    public function addUser()
    {

        $errorList = array();

        // If the form is submitted
        if (isset($_POST['envoi'])) {
            $user_name = $_POST['username'];
            $user_email = $_POST['email'];
            $user_password = $_POST['password'];
            $user_passwordConfirm = $_POST['password2'];

            // Removes spaces (or other characters) at the beginning and end of the string
            $user_name = trim($user_name);
            $user_email = trim($user_email);
            $user_password = trim($user_password);
            $user_passwordConfirm = trim($user_passwordConfirm);

            // Verify email is conform
            if (empty($user_email)) {
                $errorList[] = 'L\'email doit être renseigné';
            } else if (filter_var($user_email, FILTER_VALIDATE_EMAIL) === false) {
                $errorList[] = 'L\'email est incorrect';
            }

            // Verify password is conform
            if (empty($user_password)) {
                $errorList[] = 'Le mot de passe doit être renseigné';

            } else if (strlen($user_password) < 8) {
                $errorList[] = 'Le mot de passe doit contenir au moins 8 caractères';
            } else if ($user_password !== $user_passwordConfirm) {
                $errorList[] = 'Les deux mots de passe doivent être identiques';
            }

            // Verify username exist
            if ($user_id = username_exists($user_name)) {
                $errorList[] = 'Ce nom est déjà pris';
            } 

            if (!empty($errorList)) {
                var_dump($errorList);exit;
            }

            // Verify email exist
            if (!$user_id && email_exists($user_email) == false) {
                // Succes created user!
                $user_id = wp_create_user($user_name, $user_password, $user_email);

            $name = trim(htmlspecialchars($_POST['username']));
              
            
            // Je récupére l'ID du membre
                
                $profile_post = [
                    'post_title' => $name,
                    'post_type' => 'members',
                    'post_status' => 'publish'
                ];
                // Create content in BDD

            wp_insert_post($profile_post);

                wp_update_user([
                'ID' => $user_id,
                'role' => 'Membre',
                ]);

            // Redirect to home
            wp_redirect(home_url());
            exit;

            } else {
                $errorList[] = $user_name . ' ou ' . $user_email . ' existe déjà';

                // Redirection to register page
                wp_redirect('register');
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
