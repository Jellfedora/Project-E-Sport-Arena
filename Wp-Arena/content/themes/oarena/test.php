<?php
/**
 * Template Name: User Profile
 *
 * Allow users to update their profiles from Frontend.
 *
 */

// Permet de récuperer les infos globales du user et son rôle ( boucle WP ? )
global $current_user, $wp_roles;

// Tableau d'erreurs
$error = [];    
// $SERVER REQUEST METHOD permet d'arriver aux entetes ( Post get etc ) / action pour la soumission 
if ( 'POST' == $_SERVER['REQUEST_METHOD'] && !empty( $_POST['action'] ) && $_POST['action'] == 'update-user' ) {

    /* Update user password. */
    // if ( !empty($_POST['pass1'] ) && !empty( $_POST['pass2'] ) ) {
    //     if ( $_POST['pass1'] == $_POST['pass2'] )
    //         wp_update_user( array( 'ID' => $current_user->ID, 'user_pass' => esc_attr( $_POST['pass1'] ) ) );
    //     else
    //         $error[] = __('The passwords you entered do not match.  Your password was not updated.', 'profile');
    // }

    // /* Update user information. */
    // if ( !empty( $_POST['url'] ) )
    //     wp_update_user([
    //             'ID' => $current_user->ID,
    //             // esc_url permet de nettoyer l'url des caracteres invalides ou dangereux )
    //             'user_url' => esc_url($_POST['url'])
    //     ]);
    if ( !empty( $_POST['email'] ) )
    {
    // esc_attr permet d'éliminer les "<" et ">"
        if (!is_email(esc_attr( $_POST['email'] )))
            $error[] = __('The Email you entered is not valid.  please try again.', 'profile');
    // emails exists regarde si le mail ou l'ID existe
        elseif(email_exists(esc_attr( $_POST['email'] )) != $current_user->id )
            $error[] = __('This email is already used by another user.  try a different one.', 'profile');
        else{
    // Si je rentre dans les conditions je mets a jour et néttoie l'email
            wp_update_user([
                'ID' => $current_user->ID,
                 'user_email' => esc_attr( $_POST['email'] )]);
        }
    }

    // Si le champs n'est pas vide j'update la meta_info
    if ( !empty( $_POST['user-name'] ) )
        update_user_meta( $current_user->ID, 'nickname', esc_attr( $_POST['user-name'] ) );
    if ( !empty( $_POST['last-name'] ) )
        update_user_meta( $current_user->ID, 'description', esc_attr( $_POST['description'] ) );

    // Si mon tableau d'erreurs est vide 
    if ( count($error) == 0 ) {
        // execute le code sur le hook
        do_action('edit_user_profile_update', $current_user->ID);
        wp_redirect( home_url() );
        exit;
    }
}
?>


<?php
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
                        <label for="user-name"><?php _e('User Name', 'profile'); ?></label>
                        <input class="text-input" name="user-name" type="text" id="user-name" value="<?php the_author_meta( 'first_name', $current_user->ID ); ?>" />
                    </p><!-- .form-username -->
                    <!-- <p class="form-username">
                        <label for="last-name"><?php _e('Last Name', 'profile'); ?></label>
                        <input class="text-input" name="last-name" type="text" id="last-name" value="<?php the_author_meta( 'last_name', $current_user->ID ); ?>" />
                    </p>.form-username -->
                    <p class="form-email">
                        <label for="email"><?php _e('E-mail *', 'profile'); ?></label>
                        <input class="text-input" name="email" type="text" id="email" value="<?php the_author_meta( 'user_email', $current_user->ID ); ?>" />
                    </p><!-- .form-email -->
                    <!-- <p class="form-password">
                        <label for="pass1">
                        </label>
                        <input class="text-input" name="pass1" type="password" id="pass1" />
                    </p>.form-password -->
                    <!-- <p class="form-password">
                        <label for="pass2"></label>
                        <input class="text-input" name="pass2" type="password" id="pass2" />
                    </p>.form-password 
                    <p class="form-textarea">
                        <label for="description"></label>
                        <textarea name="description" id="description" rows="3" cols="50"><?php the_author_meta( 'description', $current_user->ID ); ?></textarea>
                    </p>form-textarea -->

                    <?php 
                        //action hook for plugin and extra fields
                        do_action('edit_user_profile',$current_user); 
                    ?>
                    <p class="form-submit">
                    
                        <input name="updateuser" type="submit" id="updateuser" class="submit button" value="<?php _e('Update', 'profile'); ?>" />
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