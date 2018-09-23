<?php
// Securise le wordpress afin de ne pas afficher le nom de l'admin avec:
// ?author=1

wp_redirect( home_url() );

exit;