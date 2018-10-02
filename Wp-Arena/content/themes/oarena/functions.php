<?php

// Dossier pour les require des fonctions ( découpage en plusieurs fichiers )


require 'inc/theme-setup.php';

require 'inc/theme-cleaner.php';

require 'inc/theme-enqueue.php';

require 'inc/theme-template-tags.php';

require 'inc/theme-admin-bar.php';

require 'inc/theme-template.php';

require 'inc/customizer.php';

// Rediriger les non-administrateurs vers la page d'accueil À partir de l'administration
function wpm_admin_redirection() {
		//Si on essaye d'accéder à L'administration Sans avoir le rôle administrateur
        if ( is_admin() && ! current_user_can( 'administrator' ) ) {
			// On redirige vers la page d'accueil
            wp_redirect( home_url() );
            exit;
        }
}
add_action( 'init', 'wpm_admin_redirection' );