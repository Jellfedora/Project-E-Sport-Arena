<?php 

/**
 * Template Name: Formulaire de contact
 */
 
get_header(); ?>
 
<div id="primary" class="site-content ">
        <div id="content" role="main" class="d-flex justify-content-center">
 
                <?php
 
                /*
                 * Si envoyé, analyser les données du formulaire et les stocker dans des variables
                 */
 
                if (isset($_POST['submit']) && !empty($_POST['myemail'])) {
                        $name = htmlspecialchars($_POST['myname']);
                        $email = sanitize_email($_POST['myemail']);
                        $message = wp_kses_post($_POST['mymessage']);
 
                /*
                 * Créer un post de type 'contact'
                 */
 
                $contact_post = array(
                        'post_title' => $name . ' | ' . $email,
                        'post_content' => $message,
                        'post_type' => 'contact',
                        'post_status' => 'publish'
                );
 
                if (wp_insert_post($contact_post)) echo 'Votre message a bien été enregistré.<br>';
                else echo 'Erreur d\'enregistrement du message';
 
                /*
                 * Affichage basique du formulaire
                 */
 
                } else { ?>
 
                        <form action="<?php echo the_permalink(); ?>" method="post">
                                <label for="name"></label>
                                <input type="text" name="myname" id="name" placeholder="Votre nom" />
                                <hr>
                                <label for="email"></label>
                                <input type="email" name="myemail" id="email" placeholder="Votre e-mail" />
                                <hr>
                                <label for="message"></label>
                                <textarea cols="50" rows="10" name="mymessage" id="message" placeholder="Votre message..."></textarea>
                                <br>
                                <input type="submit" name="submit" value="Envoyer votre message" />
                        </form>
 
                <?php } ?>
 
        </div><!-- #content -->
</div><!-- #primary -->
 
<?php get_footer(); ?>