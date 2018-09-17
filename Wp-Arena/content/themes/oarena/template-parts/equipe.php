<?php
/*
Template Name: Create-user
*/
?>

<?php get_header(); ?>
        <!-- Affichage du formulaire -->
        
        <!-- Form action the permalink recharge la page a la soumission du formulaire, method post pour récuperer les données du form -->
        <form submit="create-team.php" name="formsubmit" action="<?= the_permalink(); ?>" method="post">
        <!-- Test input simple-->
        <input type="text" name="team-name" placeholder="Nom de votre team">
        <hr>
        <textarea name="myteamdescription" cols="30" rows="10"></textarea>
        <hr>
        <!-- Boutton de soumission-->   
        <input type="submit" name="submit" value="Creer team"> 
        </form>

<?php get_footer() ; ?>