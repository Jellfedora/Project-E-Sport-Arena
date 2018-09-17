<?php
/*
Template Name: Create-user
 */
?>

<?php get_header();?>

    <?php

// If the form is sent we collect datas in vars
if (isset($_POST['submit'])) {

    echo 'Votre équipe a été créée';

    // htmlspecialchars convertit les caractères spéciaux en entités HTML
    $teamName = htmlspecialchars($_POST['team-name']);
    // fonction wp qui 'néttoie' le contenu du post
    $myteamdescription = wp_kses_post($_POST['myteamdescription']);

    // Create content in BDD

    $team_post = [
        'post_title' => $teamName,
        'post_content' => $myteamdescription,
        'post_type' => 'team',
        'post_status' => 'publish',
    ];

    wp_insert_post($team_post);

    // Je récupére l'ID du membre
    $user_id = get_current_user_id();

    // Je lui change son role en team admin
    wp_update_user([
        'ID' => $user_id,
        'role' => 'TeamAdmin',
    ]);
    // J'affiche le formulaire s'il n'a pas été envoyé
} else {}?>

        <!-- Affichage du formulaire -->

        <!-- Form action the permalink recharge la page a la soumission du formulaire, method post pour récuperer les données du form -->
        <form name="formsubmit" action="<?=the_permalink();?>" method="post">
        <!-- Test input simple-->
        <input type="text" name="team-name" placeholder="Nom de votre team">
        <hr>
        <textarea name="myteamdescription" cols="30" rows="10"></textarea>
        <hr>
        <!-- Boutton de soumission-->
        <input type="submit" name="submit" value="Creer team">
        </form>

<?php get_footer();?>
