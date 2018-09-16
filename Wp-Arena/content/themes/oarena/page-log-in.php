<?php get_header();

// Form of log in
wp_login_form(array(
    'redirect' => home_url(), // Return to home after login
    'label_username' => 'Votre identifiant',
    'label_password' => 'Votre mot de passe',
    'label_remember' => 'Se souvenir de moi',
    'label_log_in' => 'Se connecter',
    'form_id' => 'login-form',
    'id_username' => 'user-login',
    'id_password' => 'user-pass',
    'id_remember' => 'rememberme',
    'id_submit' => 'wp-submit',
    'remember' => true,
    'value_remember' => false,
));?>
<a href="<?php echo wp_lostpassword_url(get_bloginfo('url')); ?>" title="Lost Password">J'ai perdu mon mot de passe</a>

<?php get_footer();?>
