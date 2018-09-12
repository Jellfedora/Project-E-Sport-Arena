<?php
Class oArena_register
{
    public $user_name='';
    public $user_email='';

    public function __construct(){
        
        $this->addUser();
    }

    public function addUser()
    {
        
    //$user_name='test';
    //$user_email='test@mail.com';
    $user_id = username_exists( $user_name );

    if ( !$user_id and email_exists($user_email) == false ) {
	    $random_password = wp_generate_password( 12, false );
	    $user_id = wp_create_user( $user_name, $random_password, $user_email );
    } else {
	    $random_password = __('User already exists.  Password inherited.');
        }
    
    //$userdata = array(
    //'user_pass' => $random_password,
    //'user_login' => $user_name,
    //'user_email' => $user_email,
    //'user_url'  => site_url( '/' ),
    //'first_name' => 'Amine',
    //'last_name'  => 'Betari',
    //);
    //$user_id = wp_insert_user( $userdata ) ;

    ////On success
    if( !is_wp_error($user_id) ) {
     echo "User created : ". $user_id;
        }
    }
}
?>