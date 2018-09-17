<?php get_header(); ?>

<?php
/*
Template Name: members list
*/
?>
 <h2>Liste des membres:</h2>


<?php
$subscribers = get_users( 'blog_id=1&orderby=nicename&role=subscriber' );
// The list of the subscribers
//var_dump($subscribers);
foreach ( $subscribers as $user ) {
	echo '<li><a href="..">' . esc_html( $user->user_login ) . '</li></a>';
}

