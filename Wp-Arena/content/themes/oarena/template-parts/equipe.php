<?php
/*
Template Name: Create-user
*/
?>
<?php get_header(); ?>
        <!-- Affichage du formulaire -->

        <h1 style="color: red;">NE PAS CREER D EQUIPE EN TANT QU ARENA !!!</h1>
        
        <!-- Form action the permalink recharge la page a la soumission du formulaire, method post pour récuperer les données du form -->
        <form  require action="create-team.php" method="post">
        <!-- Test input simple-->
        <input type="text"  name="team-name" placeholder="Nom de votre team">
        <hr>
        <textarea name="myteamdescription" cols="30" rows="10"></textarea>
        <hr>
        <!-- Boutton de soumission-->   
        <input type="submit" name="submit" value="Creer team"> 
        </form>


<?php get_footer(); ?>
