<?php

Class oArenaCreateTeam
{
    public function __construct()
    {
        
        add_action ('init', [$this, 'addTeam']);
    }

    public function addTeam()
    {

    $errorList2 = [];    

    if (isset($_POST['submit-team'])) 
    {
    // htmlspecialchars convertit les caractères spéciaux en entités HTML
    $teamName = htmlspecialchars($_POST['team-name']);
    // fonction wp qui 'néttoie' le contenu du post
    $myteamdescription = wp_kses_post($_POST['myteamdescription']);
    // Create content in BDD
    if (empty($teamName)) {
        $errorList2[] = 'Ne peux pas etre vide';        
        var_dump($errorList2);
        exit;
    }
    $team_post = [
        'post_title' => $teamName,
        'post_content' => $myteamdescription,
        'post_type' => 'team',
        'post_status' => 'publish',
    ];

    // stocké en bdd dans wp-posts
    wp_insert_post($team_post);
    // Je récupére l'ID du membre
    $user_id = get_current_user_id();
    // Je lui change son role en team admin
    wp_update_user([
        'ID' => $user_id,
        'role' => 'TeamAdmin',
    ]);
    wp_redirect('equipe');exit;
    }}
    
}