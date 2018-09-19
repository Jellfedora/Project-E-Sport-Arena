<?php
/**
 * Template Name: User Profile
 *
 */

// Permet de récuperer les infos globales du user et son rôle ( boucle WP ? )
// global $current_user, $wp_roles;


$current_user = wp_get_current_user();

// var_dump($current_user);
// die();

// Tableau d'erreurs
$error = [];    
// $SERVER REQUEST METHOD permet d'arriver aux entetes ( Post get etc ) / action pour la soumission 
if ( 'POST' == $_SERVER['REQUEST_METHOD'] && !empty( $_POST['action'] ) && $_POST['action'] == 'update-user' ) {
    // Si le champs n'est pas vide j'update la meta_info
    if ( !empty( $_POST['user-name'] ) ) {

        $current_user = wp_get_current_user();
        $current_user->nickname = esc_attr($_POST['user-name']);
        // $current_user->user_login = esc_attr($_POST['user-name']);
        $current_user->user_nicename = esc_attr($_POST['user-name']);
        $current_user->display_name = esc_attr($_POST['user-name']);
        $current_user->first_name = esc_attr($_POST['user-name']);
        $current_user->last_name = esc_attr($_POST['user-name']);

       wp_update_user($current_user);
       

        // wp_update_user($current_user);
    }
        // update_user_meta( $current_user->ID, 'nickname', esc_attr( $_POST['user-name'] ) );
    // Si mon tableau d'erreurs est vide 
    if ( count($error) == 0 ) {
        // execute le code sur le hook
        do_action('edit_user_profile_update', $current_user->ID);
        wp_redirect( home_url() );
        exit;
    }
}

    //Lancement de la boucle custom
             if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<?php get_header() ; ?>
    <div id="post-<?php get_the_ID(); ?>">
        <div class="entry-content entry">
            <?php the_content(); ?>
            <?php if ( !is_user_logged_in() ) : ?>
                    <p class="warning">
                        <?php _e('You must be logged in to edit your profile.', 'profile'); ?>
                    </p><!-- .warning -->
            <?php else : ?>
                <?php if ( count($error) > 0 ) echo '<p class="error">' . implode("<br />", $error) . '</p>'; ?>
                <form method="post" id="adduser" action="<?php the_permalink(); ?>">
                    <p class="form-username">
                        <label for="user-name"><?php _e('Changer votre Nom', 'profile'); ?></label>
                        <input class="text-input" name="user-name" type="text" id="user-name" value="<?php the_author_meta( 'nickname', $current_user->ID ); ?>" />
                    </p>
                    <?php 
                        //action hook for plugin and extra fields
                        do_action('edit_user_profile',$current_user); 
                    ?>
                    <p class="form-submit">                    
                        <input name="update-user" type="submit" id="updateuser" class="submit button" value="<?php _e('Update', 'profile'); ?>" />
                        <!-- Nonce field est une fonction qui permet de vérifier si la requete viens bien de ce site--> 
                        <?php wp_nonce_field( 'update-user' ) ?>
                        <input name="action" type="hidden" id="action" value="update-user" />
                    </p><!-- .form-submit -->
                </form><!-- #adduser -->
            <?php endif; ?>
        </div><!-- .entry-content -->
    </div><!-- .hentry .post -->
    <?php endwhile; ?>
<?php else: ?>
    <p class="no-data">
        <?php _e('Sorry, no page matched your criteria.', 'profile'); ?>
    </p><!-- .no-data -->
<?php endif; ?>

<?php get_footer() ; ?>