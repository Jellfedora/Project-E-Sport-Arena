<?php get_header(); ?>
<?php 
// Template Name: create-team
?>


        <!-- Affichage du formulaire -->
<div class="d-flex justify-content-center">
        <!-- Form action the permalink recharge la page a la soumission du formulaire, method post pour récuperer les données du form -->
        <form name="formsubmit" action="<?= home_url(); ?>" method="post" id="create-team-form">
        <!-- Test input simple-->
        <input type="hidden" name="submit-team" value="true">
        <input type="text" name="team-name" placeholder="Nom de votre team">
        <div id="alert-name">Cette équipe existe déjà</div> 
        <hr>
        <textarea name="myteamdescription" cols="30" rows="10"></textarea>
        <hr>
        <!-- Boutton de soumission-->
        <input type="submit" value="Creer team" >
        </form>
</div>


<?php get_footer(); ?>