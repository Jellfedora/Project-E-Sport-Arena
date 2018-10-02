<?php get_header(); 
 
// Template Name: create-team
?>


        <!-- Affichage du formulaire -->
<div class="create__team__container">
        <div class="d-flex justify-content-center">
                <!-- Form action the permalink recharge la page a la soumission du formulaire, method post pour récuperer les données du form -->
                <form name="formsubmit" action="" method="post" id="create-team-form">
                        <!-- Test input simple-->
                        <input type="hidden" name="submit-team" value="true">
                        <input type="text" name="team-name" placeholder="Nom de votre team" class="text-center m-auto">
                        <div id="alert-name" class="text-danger h5 font-weight-bold">L'équipe ne peux pas être vide <i id="alert-name-empty-cross" class="fa fa-times-circle mb-2 ml-2" aria-hidden="true" style="color: red; font-size:1em;"></i></div> 
                        <div id="alert-name-exist" class="text-danger h5 font-weight-bold">Cette équipe existe déjà <i id="alert-name-exist-cross" class="fa fa-times-circle mb-2 ml-2" aria-hidden="true" style="color: red; font-size:1em;"></i></div>
                        <div id="alert-team-more-than-one" class="text-danger h5 font-weight-bold">Vous avez déjà créé une team <i id="alert-name-already-create-cross" class="fa fa-times-circle mb-2 ml-2" aria-hidden="true" style="color: red; font-size:1em;"></i></div>
                        <hr>
                        <textarea name="myteamdescription" cols="30" rows="10"></textarea>
                        <div id="alert-description-empty" class="text-danger h5 font-weight-bold">La description ne peux pas être vide <i id="alert-description-empty-cross" class="fa fa-times-circle mb-2 ml-2" aria-hidden="true" style="color: red; font-size:1em;"></i></div>
                        <hr>
                        <!-- Boutton de soumission-->
                        <!-- <div class="one"><input  class="insider" ></div> -->
                        <div class="container">
                                <button class='myButt one' type="submit" value="Creer team">
                                        <div class='insider'></div>
                                        Créer une équipe
                                </button>
                                <div id="success-create-team" class="justify-content-center flex-column w-100">
                                       <div class="text-success h1 font-weight-bold mt-3">Team créée <i class="fa fa-gamepad ml-3 mb-2" style="font-size: 2em;" aria-hidden="true"></i>
                                       </div>
                                      <div><a href="<?= home_url() ; ?>" class="h2">Aller vers l'accueil</a></div>
                                </div>
                        </div>
               </form>
        </div>
</div>


 <?php get_footer(); 