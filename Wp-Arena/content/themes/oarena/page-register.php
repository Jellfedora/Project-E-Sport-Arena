<?php get_header(); 


?>

<form action=" register.php " class="col-12 col-md-6 offset-md-3 mb-5" method="post">
    <h1>Inscription</h1>
    
    
    <div class="form-group">
        <label for="email">Email *</label>
        <input value="<?php $user_email ?>" type="email" class="form-control" id="email" name="email"  aria-describedby="emailHelp" placeholder="Adresse email" required>
        <small id="emailHelp" class="form-text text-muted">votre adresse email restera secrète. Elle ne sera rendue publique qu'aux inscrits à un évènement dont vous seriez l'organisateur</small>
    </div>
    
    <div class="form-group">
        <label for="username">Nom d'utilisateur *</label>
        <input value="<?php $user_name ?>" type="text" class="form-control" id="username" name="username"  aria-describedby="usernameHelp" placeholder="Nom d'utilisateur" required>
        <small id="usernameHelp" class="form-text text-muted">en minuscules et sans espaces ni caractères spéciaux</small>
    </div>

    <div class="form-group">
        <small class="form-text text-muted">* champs obligatoires</small>
    </div>
    <button class="btn btn-block btn-primary">Valider</button>
</form>

<?php //$register = new oArena_register(); ?>


<?php get_footer(); ?>