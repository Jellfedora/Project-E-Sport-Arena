<?php
//Template Name: manage team
?>

<?php get_header();?>


<?php
//A mettre dans le plugin
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

	<form action="update-member-team" class="col-12 col-md-6 offset-md-3 mb-5" method="post">
	    <h3>Ajouter ou changer de chef d'équipe</h3>
	    <div class="form-group">
			<small id="usernameHelp" class="">Chef d'équipe</small>
	        <input type="text" class="form-control" id="username" name="_team_chief"  aria-describedby="usernameHelp" placeholder="<?= $team_chief ?>" >
	    </div>
	    <input type="submit" name="team_chief-submit">
	</form>


<h3>Membres:</h3>
<ul>
<li><?= $member1 = get_post_meta($id_team->ID,'_member1',true);?></li>
<li><?= $member2 = get_post_meta($id_team->ID,'_member2',true);?></li>	
<li><?= $member3 = get_post_meta($id_team->ID,'_member3',true);?></li>
<li><?= $member4 = get_post_meta($id_team->ID,'_member4',true);?></li>
<li><?= $member5 = get_post_meta($id_team->ID,'_member5',true);?></li>	
</ul>
</div>


	<form action="update-member-team" class="col-12 col-md-6 offset-md-3 mb-5" method="post">
	    <h3>Ajouter ou changer de membres</h3>
	    <div class="form-group">
			<small id="usernameHelp" class="">Membre 1 </small>
	        <input type="text" class="form-control" id="username" name="_member1"  aria-describedby="usernameHelp" placeholder="<?= $member1 ?>" >
			<small id="usernameHelp" class="">Membre 2</small>
			<input type="text" class="form-control" id="username" name="_member2"  aria-describedby="usernameHelp" placeholder="<?= $member2 ?>" >
			<small id="usernameHelp" class="">Membre 3</small>
			<input type="text" class="form-control" id="username" name="_member3"  aria-describedby="usernameHelp" placeholder="<?= $member3 ?>" >
			<small id="usernameHelp" class="">Membre 4</small>
			<input type="text" class="form-control" id="username" name="_member4"  aria-describedby="usernameHelp" placeholder="<?= $member4 ?>" >
	        <small id="usernameHelp" class="">Membre 5</small>
			<input type="text" class="form-control" id="username" name="_member5"  aria-describedby="usernameHelp" placeholder="<?= $member5 ?>" >
	    </div>
	    <input type="submit" name="member-submit">
	</form>

<?php
endif;
?>

<?php get_footer();?>