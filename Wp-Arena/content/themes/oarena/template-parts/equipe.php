<?php
/*
Template Name: page-team
 */
get_header();?>

<h2 class="news__title text-light  mb-3 text-center">&#9660; VOTRE EQUIPE &#9660; </h2>
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


<div class="equipe text-center ">
	
	

<?php $user_team = new WP_Query($arguments);
//print_r($user_team); 
if ($user_team->have_posts()): while ($user_team->have_posts()): $user_team->the_post();?>
	<div class="equipe__title">
		<h2 class="text-center"> &#9660; Team <?php the_title();?> &#9660;  </h2>
	</div>
	<div class="team__logo text-center">
		<img  src="<?= the_post_thumbnail_url('thumbnail'); ?>" alt="">
	</div>
	<div class="equipe__bio">
		<p>Description: <?php the_content();?></p>
	</div>
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
	<div class="equipe__chief">
		<h3>Chef d'équipe:</h3>
		<li><?= $team_chief = get_post_meta($id_team->ID,'_team_chief',true);?></li>
	</div>
	<div class="equipe__member">
		<h3>Membres:</h3>
		<ul>
			<li><?= $member1 = get_post_meta($id_team->ID,'_member1',true);?></li>
			<li><?= $member2 = get_post_meta($id_team->ID,'_member2',true);?></li>	
			<li><?= $member3 = get_post_meta($id_team->ID,'_member3',true);?></li>
			<li><?= $member4 = get_post_meta($id_team->ID,'_member4',true);?></li>
			<li><?= $member5 = get_post_meta($id_team->ID,'_member5',true);?></li>	
		</ul>
	</div>
    <div class="equipe__button-update button-update-team svg-wrapper">
      <svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
        <rect id="shape" height="40" width="150" />
        <div id="text">
          <span class="spot button-update-team"></span>Modifier équipe
        </div>
      </svg>
    </div>


<div class="team__form-update team-form-update hide">
	<form action="update-member-team" class="col-12 col-md-6 offset-md-3 mb-5" method="post">
		<h3 class="text-center">Changer le chef d'équipe</h3>
		<div class="error team__error">
			<p>Voici les erreurs:</p>
		</div>
	    <div class="form-group">
			<p id="member" class="">Chef d'équipe</p>
	        <input type="text" class="form-control"  name="_team_chief"  aria-describedby="member" placeholder="<?= $team_chief ?>" >
	    </div>
	    <input class="button-update-member" type="submit" name="team_chief-submit">
	</form>

	<form action="update-member-team" class="col-12 col-md-6 offset-md-3 mb-5" method="post">
	    <h3 class="text-center">Changer les membres</h3>
	    <div class="form-group">
			<p id="member1" class="">Membre 1 </p>
	        <input type="text" class="form-control" name="_member1"  aria-describedby="member" placeholder="<?= $member1 ?>" >
			<p id="member2" class="">Membre 2</p>
			<input type="text" class="form-control" name="_member2"  aria-describedby="member" placeholder="<?= $member2 ?>" >
			<p id="member3" class="">Membre 3</p>
			<input type="text" class="form-control" name="_member3"  aria-describedby="member" placeholder="<?= $member3 ?>" >
			<p id="member4" class="">Membre 4</p>
			<input type="text" class="form-control" name="_member4"  aria-describedby="member" placeholder="<?= $member4 ?>" >
	        <p id="member5" class="">Membre 5</p>
			<input type="text" class="form-control" name="_member5"  aria-describedby="member" placeholder="<?= $member5 ?>" >
	    </div>
	    <input type="submit" name="member-submit">
	</form>
</div>
</div>
<?php
endif;





get_footer();?>
