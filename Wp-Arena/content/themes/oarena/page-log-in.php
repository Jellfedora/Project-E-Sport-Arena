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
));
?>
<form action="login.php" class="col-12 col-md-6 offset-md-3" method="post" id="login-form">
    <h1>Connexion (pas encore fonctionnel mais au dessus si ;)</h1>

    <div id="alerts" class="alert alert-danger alert-dismissible" role="alert" style="display:none;">
    </div>

    <div class="form-group">
        <label for="label_username">Nom d'utilisateur *</label>
        <input type="text" class="form-control" id="id_username" name="username" value="" placeholder="Votre identifiant" required>
    </div>
    <div class="form-group">
        <label for="password">Mot de passe *</label>
        <input type="password" class="form-control" id="password" name="password" placeholder="Choisissez votre mot de passe" required>
    </div>
    <div class="form-group">
        <small class="form-text text-muted">* champs obligatoires</small>
    </div>
    <button class="btn btn-block btn-primary">Valider</button>
</form>


<a href="<?php echo wp_lostpassword_url(get_bloginfo('url')); ?>" title="Lost Password">J'ai perdu mon mot de passe</a>

<?php get_footer();?>
