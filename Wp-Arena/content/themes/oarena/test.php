<?php
/**
 * Template Name: User Profile
 *
 */
?>
<?php get_header();?>


<?php
    $current_user = wp_get_current_user();
    $post_title = $current_user->user_nicename;

    global $wpdb; // On se connecte à la base de données du site

        $team_id = $wpdb->get_results("
        SELECT ID
        FROM wp_posts
        WHERE `post_title` = '$post_title'
        ;
        ");

        foreach($team_id as $post){
            $post->ID;
        }
    ?>
    <?php $member_name = get_post_meta($post->ID, 'member_name', true);?>
    <?php $member_firstname = get_post_meta($post->ID, 'member_firstname', true);?>
    <?php $member_street = get_post_meta($post->ID, 'member_street', true);?>
    <?php $member_postal_code = get_post_meta($post->ID, 'member_postal_code', true);?>
    <?php $member_city = get_post_meta($post->ID, 'member_city', true); ?>

    <h3 class="text-center">Modifier vos informations</h3>

    <div class="team__form-update team-form-update p-2">
	<form action="update-user.php" class="col-12 col-md-6 offset-md-3 mb-5" method="post">
		
		<div class="error team__error">
			<p>Voici les erreurs:</p>
		</div>
        <h4>Vos informations de profil</h4>
	    <div class="form-group">
			<small class="">Votre pseudo</small>
	        <input type="text" class="form-control"  name="user-name"  aria-describedby="user-name" placeholder="<?php the_author_meta( 'nickname', $current_user->ID ); ?>" >
        </div>
        <div class="form-group">
			<small class="">Votre email</small>
	        <input type="text" class="form-control"  name="user-email"  aria-describedby="user-email" placeholder="<?php the_author_meta( 'email', $current_user->ID ); ?>" >
	    </div>
	    <input type="submit" name="update-member-submit">
    </form>

    <form action="update-user-info.php" class="col-12 col-md-6 offset-md-3 mb-5" method="post">
        <h4>Vos informations de livraison</h4>
	    <div class="form-group">
			<small class="">Votre nom</small>
	        <input class="form-control" type="text" name="member-name" placeholder="<?php echo $member_name; ?>"  />
        </div>
        <div class="form-group">
			<small class="">Votre prénom</small>
	        <input class="form-control" type="text" name="member-firstname" placeholder="<?php echo $member_firstname; ?>"/>
        </div>
        <div class="form-group">
			<small class="">Numéro et nom de la rue</small>
	        <input class="form-control" type="text" name="member-street" placeholder="<?php echo $member_street; ?>"/>
        </div>
        <div class="form-group">
			<small class="">Code postal</small>
	        <input class="form-control" type="text" name="member-postal-code" placeholder="<?php echo $member_postal_code; ?>"/>
        </div>
        <div class="form-group">
			<small class="">Ville</small>
	        <input class="form-control" type="text" name="member-city" placeholder="<?php echo $member_city; ?>"/>
        </div>
	    <input type="submit" name="update-user-info-submit">
    </form>
    
 
        

    

    
<?php get_footer() ; ?>