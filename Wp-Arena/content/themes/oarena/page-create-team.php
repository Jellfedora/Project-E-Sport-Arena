<?php get_header(); ?>
<?php 
// Template Name: create-team
?>


        <!-- Affichage du formulaire -->
<div class="d-flex justify-content-center">
        <!-- Form action the permalink recharge la page a la soumission du formulaire, method post pour récuperer les données du form -->
        <form name="formsubmit" action="" method="post" id="create-team-form">
        <!-- Test input simple-->
        <input type="hidden" name="submit-team" value="true">
        <input type="text" name="team-name" placeholder="Nom de votre team">
        <div id="alert-name">L'équipe ne peux pas être vide</div> 
        <div id="alert-name-exist">Cette équipe existe déjà</div>
        <div id="alert-team-more-than-one">Vous avez déjà créé une team</div>
        <hr>
        <textarea name="myteamdescription" cols="30" rows="10"></textarea>
        <div id="alert-description-empty">La description ne peux pas être vide</div>
        <hr>
        <!-- Boutton de soumission-->
        <input type="submit" value="Creer team" >
        </form>
</div>


<?php get_footer(); ?>