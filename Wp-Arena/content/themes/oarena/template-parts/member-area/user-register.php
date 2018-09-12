







<?php

//$user_email='test@test.fr';
//$user_name ='test';
//$user_id = username_exists( $user_name );
//if ( !$user_id and email_exists($user_email) == false ) {
//	$random_password = wp_generate_password( 12, false );
//	$user_id = wp_create_user( $user_name, $random_password, $user_email );
//} else {
//	$random_password = __('User already exists.  Password inherited.');
//}


//$userdata = array(
//    'user_pass' => $random_password,
//    'user_login' => $user_name,
//    'user_email' => $user_email,
//    'user_url'  => site_url( '/' ),
//    'first_name' => 'Amine',
//    'last_name'  => 'Betari',
//);

//$user_id = wp_insert_user( $userdata ) ;

////On success
//if( !is_wp_error($user_id) ) {
// echo "User created : ". $user_id;
//} ?>

<?php $create_user = new Register_user(); ?>

<form action="<?php $create_user ?>" class="col-12 col-md-6 offset-md-3 mb-5" method="post">
    <h1>Inscription</h1>
    
    
    <div class="form-group">
        <label for="email">Email *</label>
        <input type="email" class="form-control" id="email" name="email" value="<?= $user_email ?>" aria-describedby="emailHelp" placeholder="Adresse email" required>
        <small id="emailHelp" class="form-text text-muted">votre adresse email restera secrète. Elle ne sera rendue publique qu'aux inscrits à un évènement dont vous seriez l'organisateur</small>
    </div>
    
    <div class="form-group">
        <label for="username">Nom d'utilisateur *</label>
        <input type="text" class="form-control" id="username" name="username" value="<?= $user_name ?>" aria-describedby="usernameHelp" placeholder="Nom d'utilisateur" required>
        <small id="usernameHelp" class="form-text text-muted">en minuscules et sans espaces ni caractères spéciaux</small>
    </div>

    <div class="form-group">
        <small class="form-text text-muted">* champs obligatoires</small>
    </div>
    <button class="btn btn-block btn-primary">Valider</button>
</form>


<?php

class Register_user
{
     public function __construct()
    {
        add_action('init',[$this, 'create_user']);
    }

    public function __create_user()
    {
        $user_email='test2@test.fr';
        $user_name ='test2';
        $user_id = username_exists( $user_name );
            if ( !$user_id and email_exists($user_email) == false ) {
	        $random_password = wp_generate_password( 12, false );
	        $user_id = wp_create_user( $user_name, $random_password, $user_email );
            } else {
	        $random_password = __('User already exists.  Password inherited.');
    }


    $userdata = array(
    'user_pass' => $random_password,
    'user_login' => $user_name,
    'user_email' => $user_email,
    'user_url'  => site_url( '/' ),
    'first_name' => 'Amine',
    'last_name'  => 'Betari',
    );

    $user_id = wp_insert_user( $userdata ) ;

    //On success
    if( !is_wp_error($user_id) ) {
    echo "User created : ". $user_id;
        }
    }
}






//NOUVEAU TEST

// user registration login form
function pippin_registration_form() {
 
	// only show the registration form to non-logged-in members
	if(!is_user_logged_in()) {
 
		global $pippin_load_css;
 
		// set this to true so the CSS is loaded
		$pippin_load_css = true;
 
		// check to make sure user registration is enabled
		$registration_enabled = get_option('users_can_register');
 
		// only show the registration form if allowed
		if($registration_enabled) {
			$output = pippin_registration_form_fields();
		} else {
			$output = __('User registration is not enabled');
		}
		return $output;
	}
}
add_shortcode('register_form', 'pippin_registration_form');