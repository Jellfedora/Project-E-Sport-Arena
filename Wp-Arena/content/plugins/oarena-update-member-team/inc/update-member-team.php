<?php

class oArenaUpdateTeamMember
{
    public function __construct()
    {

        add_action('init', [$this, 'updateTeamMember1']);
    }

    public function updateTeamMember1()
    {

        $errorList = array();

        // If the form is submitted
        if (isset($_POST['update-member'])) {
            $user_name = $_POST['_member1'];

            // Removes spaces (or other characters) at the beginning and end of the string
            $user_name = trim($user_name);
            update_post_meta($id_team->ID, '_team_chief', sanitize_text_field($_POST['team_chief']));
            

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
            }}
    
}

