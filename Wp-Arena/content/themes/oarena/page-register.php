<?php get_header();

?>

<form action="register.php" class="col-12 col-md-6 offset-md-3 mb-5" method="post">
    <h1>Inscription</h1>

    <div class="form-group">
        <label for="username">Nom d'utilisateur *</label>
        <input type="text" class="form-control" id="username" name="username"  aria-describedby="usernameHelp" placeholder="Nom d'utilisateur" required>
        <small id="usernameHelp" class="form-text text-muted">en minuscules,sans chiffres et sans caractéres spéciaux</small>
    </div>

    <div class="form-group">
        <label for="email">Email *</label>
        <input type="email" class="form-control" id="email" name="email"  aria-describedby="emailHelp" placeholder="Adresse email" required>
        <small id="emailHelp" class="form-text text-muted">votre adresse email restera secrète</small>
    </div>


    <div class="form-group">
        <label for="password">Mot de passe *</label>
        <input type="password" class="form-control" id="password" name="password" aria-describedby="passwordHelp" placeholder="Choisissez votre mot de passe" required>
        <small id="passwordHelp" class="form-text text-muted">8 caractères minimum</small>
    </div>

    <div class="form-group">
        <label for="password2">Confirmation *</label>
        <input type="password" class="form-control" id="password2" name="password2" placeholder="Confirmation du mot de passe" required>
    </div>

    <div class="form-group">
        <small class="form-text text-muted">* champs obligatoires</small>
    </div>
     <input type="submit" name="envoi">
</form>



<?php get_footer();?>