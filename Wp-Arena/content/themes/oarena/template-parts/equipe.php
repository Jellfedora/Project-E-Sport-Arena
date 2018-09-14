<?php
/*
Template Name: Create-user
*/
?>

<?php get_header(); ?>

    <?php

        // Si formulaire envoyé on récupere les données dans des variables
        if (isset($_POST['submit'])) {

            echo 'Votre équipe a été créée';

            // htmlspecialchars convertit les caractères spéciaux en entités HTML
            $teamName = htmlspecialchars($_POST['team-name']);
            // fonction wp qui 'néttoie' le contenu du post
            $myteamdescription = wp_kses_post($_POST['myteamdescription']);
        
        // Création du contenu team dans la BDD

        $team_post = [
            'post_title' => $teamName,
            'post_content'=> $myteamdescription,
            'post_type' => 'team',
            'post_status' => 'publish'
        ];
        
        wp_insert_post($team_post);

        // J'affiche le formulaire s'il n'a pas été envoyé        
        } else { ?> 

        <!-- Affichage du formulaire -->
        
        <!-- Form action the permalink recharge la page a la soumission du formulaire, method post pour récuperer les données du form -->
        <form action="<?= the_permalink(); ?>" method="post">
        <!-- Test input simple-->
        <input type="text" name="team-name" placeholder="Nom de votre team">
        <hr>
        <textarea name="myteamdescription" cols="30" rows="10"></textarea>
        <hr>
        <!-- Boutton de soumission-->   
        <input type="submit" name="submit" value="Creer team"> 
        </form>
            
    <?php } ?>

<?php get_footer() ; ?>