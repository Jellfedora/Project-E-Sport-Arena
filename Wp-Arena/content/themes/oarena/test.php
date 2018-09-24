<?php
/**
 * Template Name: User Profile
 *
 */
?>
<?php get_header();?>

    <div class="team__form-update team-form-update p-2">
	<form action="update-user.php" class="col-12 col-md-6 offset-md-3 mb-5" method="post">
		<h3 class="text-center">Modifier vos informations</h3>
		<div class="error team__error">
			<p>Voici les erreurs:</p>
		</div>
	    <div class="form-group">
			<small class="">Votre nom</small>
	        <input type="text" class="form-control"  name="user-name"  aria-describedby="user-name" placeholder="<?php the_author_meta( 'nickname', $current_user->ID ); ?>" >
        </div>
        <div class="form-group">
			<small class="">Votre email</small>
	        <input type="text" class="form-control"  name="user-email"  aria-describedby="user-email" placeholder="<?php the_author_meta( 'email', $current_user->ID ); ?>" >
	    </div>
	    <input type="submit" name="update-member-submit">
	</form>
 
<?php get_footer() ; ?>