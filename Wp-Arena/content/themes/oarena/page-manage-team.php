<?php
//Template Name: manage team
?>

<?php get_header();?>

<!-- affiche le post title ou post author=68 (lid de julien admin team)-->
<?php
$current_user = wp_get_current_user();
var_dump($current_user);

?>

<?php
$user_id = $current_user->ID;
var_dump($user_id);

$adminTeam = $current_user->roles;
echo ('<br>' . 'hey iccccccccciiiiiii' . '<br>');
//var_dump($admin);
//$current_user->user_login
?>






<div class="col-12 col-md-6 offset-md-3 mb-5">
<h2> &#9660; Equipe truc &#9660; </h2>

<h3>Membres:</h3>
<ul>
<li>membre1</li>
<li>membre2</li>
</ul>
</div>
<!-- Sera visible seulement par le team admin -->
<?php
if ($adminTeam): ?>
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
																								<?php

endif;
?>

<?php get_footer();?>
