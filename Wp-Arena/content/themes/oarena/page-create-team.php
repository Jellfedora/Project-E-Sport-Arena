<?php get_header(); 
 
// Template Name: create-team
?>

<h2 class="news__title text-light  mb-3 text-center">&#9660; Créer votre team &#9660; </h2>
<!-- Affichage du formulaire -->
<div class="create-team">
        <div class="create-team__content">
                <div class="create-team__content__intro">
                        <p>Accéder au podium du World Championship de League of Legends, faire mordre la poussière à l’équipe adverse sur Counter Strike, triompher des meilleurs joueurs du monde sur Starcraft 2…
                        L’univers fascinant du joueur pro et de l’esport est en perpétuelle évolution, et il n’est plus forcément réservé à une élite : avec beaucoup d’entraînement, une bonne dose d’acharnement et la stratégie marketing adaptée, un casual un peu doué peut se professionnaliser peu à peu et finir par drainer une communauté énorme, avec les revenus qui vont avec !
                        Pour vivre du sport électronique cependant, le talent brut ne suffit pas. En dehors du cas très particulier des jeux solo, le soin que vous mettrez à créer et à constituer votre équipe esport fera lui aussi une grosse différence.</p> 
                </div> 
                <!-- Form action the permalink recharge la page a la soumission du formulaire, method post pour récuperer les données du form -->
                <form class="create-team__content__form" name="formsubmit" action="" method="post" id="create-team-form">
                        <div class="create-team__content__form__input">
                                <div class="create-team__content__form__input__name">
                                        <input type="hidden" name="submit-team" value="true">
                                        <p>LE NOM DE VOTRE TEAM </p>
                                        <input type="text" name="team-name" placeholder="Nom de votre team" class="">
                                </div>
                                <div class="create-team__content__form__input__textarea">
                                        <p>LA DESCRIPTION DE VOTRE TEAM</p>
                                        <textarea name="myteamdescription" cols="30" rows="10"></textarea>
                                </div>
                        </div>
                        <!-- Boutton de soumission-->
                        <!-- <div class="one"><input  class="insider" ></div> -->
                        <div class="create-team__content__form__submit text-center">
                                <div class="text-center">
                                        <button class='myButt one d-none' type="submit" value="Creer team">
                                                <div class='insider'></div>
                                                Créer votre équipe
                                        </button>
                                        <button type="submit" class="btn btn-light btn-lg btn-block">Valider</button>
                                </div>
                                <div class="create-team__content__form__submit__error error">
                                        <div id="alert-name" class="text-danger h5 font-weight-bold">L'équipe ne peux pas être vide <i id="alert-name-empty-cross" class="fa fa-times-circle mb-2 ml-2" aria-hidden="true" style="color: red; font-size:1em;"></i></div> 
                                        <div id="alert-name-exist" class="text-danger h5 font-weight-bold">Cette équipe existe déjà <i id="alert-name-exist-cross" class="fa fa-times-circle mb-2 ml-2" aria-hidden="true" style="color: red; font-size:1em;"></i></div>
                                        <div id="alert-team-more-than-one" class="text-danger h5 font-weight-bold">Vous avez déjà créé une team <i id="alert-name-already-create-cross" class="fa fa-times-circle mb-2 ml-2" aria-hidden="true" style="color: red; font-size:1em;"></i></div>
                                        <div id="alert-description-empty" class="text-danger h5 font-weight-bold">La description ne peux pas être vide <i id="alert-description-empty-cross" class="fa fa-times-circle mb-2 ml-2" aria-hidden="true" style="color: red; font-size:1em;"></i></div>
                                </div>
                                <div id="success-create-team" class="">
                                       <div class="text-light h1 font-weight-bold mt-3">Team créée! <i class="fa fa-gamepad ml-3 mb-2" style="font-size: 2em;" aria-hidden="true"></i>
                                       </div>
                                      <div><a href="equipe" class="h2">Clique ici pour voir ton équipe</a></div>
                                </div>
                        </div>
               </form>
        </div>
</div>


 <?php get_footer(); 