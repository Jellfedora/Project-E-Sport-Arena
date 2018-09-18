<?php
//Template Name: manage team
?>

<?php get_header();?>

<!-- affiche le post title ou post author=68 (lid de julien admin team)-->
<?php

$current_user = wp_get_current_user();
$user_id = $current_user->ID;
$adminTeam = $current_user->roles;

if ($adminTeam): 
$arguments = [
    'author__in' => ($user_id),
    'post_type' => 'team',
];

?>
<div class="col-12 col-md-6 offset-md-3 mb-5">
<h2> &#9660; <?php the_title();?> &#9660; </h2>
<?php $user_team = new WP_Query($arguments);

if ($user_team->have_posts()): while ($user_team->have_posts()): $user_team->the_post();?>
  
	<h1><?php the_title();?></h1>
	<p><?php the_content();?></p>
			
<?php endwhile;

    // Je remet les variables globals telle qu'elles étaient avant ma boucle custom
    wp_reset_postdata();

endif;
?>
<h3>Membres:</h3>
<ul>
<li>membre1</li>
<li>membre2</li>
</ul>
</div>

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
