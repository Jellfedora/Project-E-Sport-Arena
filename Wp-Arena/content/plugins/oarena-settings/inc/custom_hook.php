<?php 


function stan_hook() {
    do_action('stan_hook');
}

add_action('stan_hook', 'stan_function');
 
function stan_function() {
	echo 'Hey, that is amazing.';
}