<?php
//Template Name: manage team
?>

<?php get_header();?>

<h2> &#9660; Equipe truc &#9660; </h2>

<h3>Membres:</h3>
<ul>
<li>membre1</li>
<li>membre2</li>
</ul>

<!-- Sera visible seulement par le team admin -->
<form action="#" class="col-12 col-md-6 offset-md-3 mb-5" method="post">
    <h1>Ajouter un membre à l'équipe</h1>
    <div class="form-group">
        <input type="text" class="form-control" id="username" name="username"  aria-describedby="usernameHelp" placeholder="Nom d'utilisateur" required>
        <small id="usernameHelp" class="form-text text-muted"></small>
    </div>
     <input type="submit" name="add-member">
</form>

<form action="#" class="col-12 col-md-6 offset-md-3 mb-5" method="post">
    <h1>Supprimer un membre de l'équipe</h1>
    <div class="form-group">
        <input type="text" class="form-control" id="username" name="username"  aria-describedby="usernameHelp" placeholder="Nom d'utilisateur" required>
        <small id="usernameHelp" class="form-text text-muted"></small>
    </div>
     <input type="submit" name="remove-member">
</form>

<?php get_footer();?>
