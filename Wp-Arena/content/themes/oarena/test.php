<?php
/**
 * Template Name: User Profile
 *
 */
?>
<?php get_header();?>

        <div class="entry-content entry">
                <form method="post" id="adduser" action="update-user.php" class="d-flex text-center flex-column">
                    <p class="form-username d-flex flex-column justify-content-center">
                        <label class="justify-content-center m-auto pb-1" for="user-name"><?php _e('Changer votre Nom', 'profile'); ?></label>
                        <input class="text-input text-center w-25 m-auto mt-2" name="user-name" type="text" id="user-name" placeholder="<?php the_author_meta( 'nickname', $current_user->ID ); ?>" />
                    </p>
                    <p class="form-submit">                    
                        <input name="update-user" type="submit" id="updateuser" class="submit button" value="Mettre à jour" />
                        <input name="update-member-submit" type="hidden" id="action" value="update-user" />
                    </p>
                </form>
        </div>
 
<?php get_footer() ; ?>