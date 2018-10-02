<?php get_header();

    get_template_part('template-parts/front-page/carousel') ; ?>

    <div class="pt-5">
        <div class="loginform">
        <?php
        if ( ! is_user_logged_in() ) { // Display WordPress login form:
            $args = array(
                'redirect' => home_url(), 
                'form_id' => 'loginform-custom',
                'label_username' => __( 'Nom d\'utilisateur' ),
                'label_password' => __( 'Mot de passe' ),
                'label_remember' => __( 'Se souvenir de moi' ),
                'label_log_in' => __( 'Valider' ),
                'remember' => true
            );
            wp_login_form( $args );
        } else { // If logged in:
            echo "Vous êtes déjà connecté ";
        }
        ?>
        </div>
    </div>



<?php get_footer();
