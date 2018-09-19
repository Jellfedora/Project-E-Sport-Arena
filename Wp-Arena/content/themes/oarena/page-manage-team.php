<?php
//Template Name: manage team
?>

<?php get_header();?>

<!-- affiche le post title ou post author=68 (lid de julien admin team)-->
<?php

$current_user = wp_get_current_user();
$user_id = $current_user->ID;
$adminTeam = $current_user->roles;
//var_dump($adminTeam;

if ($adminTeam): 
$arguments = [
    'author__in' => ($user_id),
	'post_type' => 'team',
];

?>
<div class="col-12 col-md-6 offset-md-3 mb-5">
<h2> &#9660; <?php the_title();?> &#9660; </h2>
<?php $user_team = new WP_Query($arguments);
//print_r($user_team); 
if ($user_team->have_posts()): while ($user_team->have_posts()): $user_team->the_post();?>
  
	<h1><?php the_title();?></h1>
	<p><?php the_content();?></p>
			
<?php endwhile;

    // Je remet les variables globals telle qu'elles étaient avant ma boucle custom
    wp_reset_postdata();

endif;
?>

<?php
//requete sql a faire pour récupérer lid du post=356
// SELECT ID FROM `wp_posts` WHERE `post_author` =68
global $wpdb; // On se connecte à la base de données du site
$team_id = $wpdb->get_results("
SELECT ID
FROM wp_posts
WHERE `post_author` = $user_id AND `post_status`='publish'
;
");
foreach($team_id as $id_team){
$id_team->ID;
}
?>

<h3>Chef d'équipe:</h3>
<li><?= $team_chief = get_post_meta($id_team->ID,'_team_chief',true);?></li>
<h3>Membres:</h3>
<ul>
<li><?= $member1 = get_post_meta($id_team->ID,'_member1',true);?></li>
<li><?= $member2 = get_post_meta($id_team->ID,'_member2',true);?></li>	
<li><?= $member3 = get_post_meta($id_team->ID,'_member3',true);?></li>
<li><?= $member4 = get_post_meta($id_team->ID,'_member4',true);?></li>
<li><?= $member5 = get_post_meta($id_team->ID,'_member5',true);?></li>	
</ul>
</div>


	<form action="update-team" class="col-12 col-md-6 offset-md-3 mb-5" method="post">
	    <h1>Changer le membre 1</h1>
	    <div class="form-group">
	        <input type="text" class="form-control" id="username" name="_member1"  aria-describedby="usernameHelp" placeholder="Nom d'utilisateur" required>
	        <small id="usernameHelp" class="form-text text-muted"></small>
	    </div>
	     <input type="submit" name="update-member">
	</form>
<form action="update-team" class="col-12 col-md-6 offset-md-3 mb-5" method="post">
	    <h1>Changer le membre 2</h1>
	    <div class="form-group">
	        <input type="text" class="form-control" id="username" name="_member1"  aria-describedby="usernameHelp" placeholder="Nom d'utilisateur" required>
	        <small id="usernameHelp" class="form-text text-muted"></small>
	    </div>
	     <input type="submit" name="update-member">
	</form>
<form action="update-team" class="col-12 col-md-6 offset-md-3 mb-5" method="post">
	    <h1>Changer le membre 3</h1>
	    <div class="form-group">
	        <input type="text" class="form-control" id="username" name="_member1"  aria-describedby="usernameHelp" placeholder="Nom d'utilisateur" required>
	        <small id="usernameHelp" class="form-text text-muted"></small>
	    </div>
	     <input type="submit" name="update-member">
	</form>
<form action="update-team" class="col-12 col-md-6 offset-md-3 mb-5" method="post">
	    <h1>Changer le membre 4</h1>
	    <div class="form-group">
	        <input type="text" class="form-control" id="username" name="_member1"  aria-describedby="usernameHelp" placeholder="Nom d'utilisateur" required>
	        <small id="usernameHelp" class="form-text text-muted"></small>
	    </div>
	     <input type="submit" name="update-member">
	</form>
<form action="update-team" class="col-12 col-md-6 offset-md-3 mb-5" method="post">
	    <h1>Changer le membre 5</h1>
	    <div class="form-group">
	        <input type="text" class="form-control" id="username" name="_member1"  aria-describedby="usernameHelp" placeholder="Nom d'utilisateur" required>
	        <small id="usernameHelp" class="form-text text-muted"></small>
	    </div>
	     <input type="submit" name="update-member">
	</form>	
		<?php

endif;
?>

<?php get_footer();?>
