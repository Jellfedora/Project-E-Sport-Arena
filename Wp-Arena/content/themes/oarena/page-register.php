<?php get_header(); ?>

<div class="pt-5">
    <form action="register.php" class="col-12 col-md-6 offset-md-3 mb-5" method="post">
        <!-- <h1 class="overline-left-underline-right">Inscription</h1> -->


        <div class="form-group">
            <label for="username"><span class="overline-left-underline-right">Nom d'utilisateur *</span><br></label>
            <input type="text" class="form-control" id="username" name="username"  aria-describedby="usernameHelp" placeholder="Nom d'utilisateur" required>
            <small id="usernameHelp" class="form-text text-danger h6">Sans restrictions</small>
        </div>

        <div class="form-group">
            <label for="email"><span class="overline-left-underline-right">Email *</span><br></label>
            <input type="email" class="form-control" id="email" name="email"  aria-describedby="emailHelp" placeholder="Adresse email" required>
            <small id="emailHelp" class="form-text text-danger h6">Votre adresse email restera secrète</small>
        </div>


        <div class="form-group">
            <label for="password"><span class="overline-left-underline-right">Mot de passe *</span><br></label>
            <input type="password" class="form-control" id="password" name="password" aria-describedby="passwordHelp" placeholder="Choisissez votre mot de passe" required>
            <small id="passwordHelp" class="form-text text-danger h6">8 caractères minimum</small>
        </div>

        <div class="form-group">
            <label for="password2"><span class="overline-left-underline-right">Confirmer votre mot de passe *</span><br></label>
            <input type="password" class="form-control" id="password2" name="password2" placeholder="Confirmation du mot de passe" required>
        </div>

        <div class="form-group">
            <small class="form-text text-dark">* champs obligatoires</small>
        </div>
        <input type="submit" name="envoi" class="btn btn-success" value="S'inscrire">
    </form>
</div>    



<?php get_footer();