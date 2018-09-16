<?php get_header();

// Form of log in
wp_login_form(array(
    'redirect' => home_url(), // Return to home after login
    'label_username' => 'Login',
    'label_password' => 'Mot de passe',
    'label_remember' => 'Se souvenir de moi',
    'label_log_in' => 'Se connecter',
    'form_id' => 'login-form',
    'id_username' => 'user-login',
    'id_password' => 'user-pass',
    'id_remember' => 'rememberme',
    'id_submit' => 'wp-submit',
    'remember' => true,
    'value_remember' => false,
));

get_footer();
