<?php get_header();

    get_template_part('template-parts/front-page/carousel') ; ?>
<h2 class="news__title text-light  mb-3 text-center">&#9660; Connexion &#9660; </h2>
    <div class="pt-5 text-light">
        <div class="loginform text-center">
        <?php
        if ( ! is_user_logged_in() ) { // Display WordPress login form:
            $args = array(
                'redirect' => home_url(), 
                'form_id' => 'loginform-custom',
                'label_username' => __( 'Votre nom d\'utilisateur ou votre adresse e-mail : ' ),
                'label_password' => __( 'Votre Mot de passe : ' ),
                'label_remember' => __( 'Se souvenir de vous : ' ),
                'label_log_in' => __( 'Connexion' ),
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
