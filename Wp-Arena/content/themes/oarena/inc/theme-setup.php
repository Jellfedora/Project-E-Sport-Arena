<?php 

function oarena_setup()
{
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');

    register_nav_menus([
        'header' => 'menu de navigation du header',
        'menu-admin' => 'Menu pour l\'admin',
        'user' => 'menu de l\'utilisateur',
    ]);

    

        // Je demande à WordPress que mes post-thumbnails ai la taille de 500*500
        // avec un crop réalisé au centre de l'image
        set_post_thumbnail_size( 500, 500, ['center', 'center']);
        // Je propose plusieurs format de post à l'utilisateur du thème
        add_theme_support('post-formats', [
            'quote'
            ]);    
        }
        
            
add_action('after_setup_theme', 'oarena_setup');


function contact_form() {

	if (isset($_POST['send-to-form']) && isset($_POST['name_of_nonce_field']))  {

		if (wp_verify_nonce($_POST['name_of_nonce_field'], 'name_of_my_action')) {


		}

	}
}
add_action('template_redirect', 'contact_form');

//     function add_js_scripts() {
//         // pass Ajax Url to script.js
//         wp_localize_script('script', 'ajaxurl', admin_url( 'admin-ajax.php' ) );
//     }
//     add_action('wp_enqueue_scripts', 'add_js_scripts');

//     add_action( 'wp_ajax_mon_action', 'mon_action' );
//     add_action( 'wp_ajax_nopriv_mon_action', 'mon_action' );

// function mon_action() {

// 	$param = $_POST['submit-team'];

// 	echo $param;

// 	die();
// }