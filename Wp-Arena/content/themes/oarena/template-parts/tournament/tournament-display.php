<?php 

$post = get_post();
$id = $post->ID;
//var_dump($id);exit;
?>
<h2 class="d-none text-light  mb-3 text-center">&#9660; R&#201;PONDEZ &#192; L'APPEL ! &#9660; </h2>

<div class="tournament parallax" style="background-image:url(<?= the_post_thumbnail_url('full'); ?>);">  
        <div class="tournament__content">
            <div class="tournament__header">
                <h3 class="tournament__title"><?php the_title() ; ?></h3>

                <?php  if(get_post_meta($id, 'tournament_available_seats', true) > 0 ){ ?>
                                <p class="text-success d-none">INSCRIPTIONS OUVERTES</p>
                                <img src="http://image.noelshack.com/fichiers/2018/40/2/1538440332-d312160c-5ce0-4b1f-b490-1ae99d40a83e.png" alt="">
                <?php } else { ?>
                                <p class="text-danger d-none">INSCRIPTIONS FERMEES&#201;</p>
                                <img src="http://image.noelshack.com/fichiers/2018/40/2/1538440326-1d89a8cd-78e3-444a-b2a9-ced763127d36.png" alt="">
                <?php  } ?>
            </div>
            <div class="tournament__info">
                <div class="tournament__info__content">
                    <div class="tournament__info__text">
                        <p class="card-text"> <?php the_content() ; ?></p> 
                    </div> 
                </div>
                    <form class="add-team-to-tournament-form tournament__form text-center" action="add-team" method="post">
                        <div class="tournament__info__meta text-center">
                            <p>Date : <?= get_post_meta($id, 'date', true);?></p>
                            <p>Places totales : <?= get_post_meta($id, 'tournament_available_total', true);?></p>
                            <p>Places restantes : <?= get_post_meta($id, 'tournament_available_seats', true);?></p>
                        </div>
                        <h4 class="tournament__form__title">Ils vous attendent dans l'aréne ! </h4>
                        <div class="tournament__form__participants">  

                        <?php   $register_teams = get_post_meta($post->ID, '_team_register');
                                foreach ($register_teams as $team) {
                                    echo '<div class="tournament__form__participants__team" >' .$team .'</div>'; 
                                }?>   

                        </div>

                    
                                 <?php 
                                if (is_user_logged_in())
                                {
                                    $user = wp_get_current_user()->roles;
                                    foreach ($user as $role) 
                                    {
                                    }
                                    if ($role === 'administrator' || $role === 'TeamAdmin')
                                    { ; 
                                        if(get_post_meta($id, 'tournament_available_seats', true) > 0 )
                                        { ?> 

                        <p class="text-align mt-5">Rejoindre le combat! </p>
                        <input type="text" value="" name="register-team-tournament" placeholder="Votre équipe" class="p-2" >
                        <input type="hidden" value="<?= get_the_ID(); ?>" name="register-tournament-id" >
                        <button type="submit" id="submit-team-to-tournament" class="btn btn-success ml-2 mt-2 mr-2 mb-3"> Inscrire ma team</button>
                         <div id="alert-team-subscribe" class="text-success h5 font-weight-bold">Votre team est inscrite au tournoi ! <i id="alert-team-subscribe-cross" class="fa fa-times-circle mb-2 ml-2" aria-hidden="true" style="color: green; font-size:1em;"></i></div>
                         <div id="alert-team-error-subscribe" class="text-danger h5 font-weight-bold">Team déjà inscrite, inconnue ou vous n'êtes pas l'admin ! <i id="alert-team-error-subscribe-cross" class="fa fa-times-circle mb-2 ml-2" aria-hidden="true" style="color: green; font-size:1em;"></i></div>
                    </form>
                    <form action="remove-team" method="post" class="delete-team-to-tournament-form tournament__form text-center mt-0">
                        <input type="text" value="" name="delete-team-tournament" placeholder="Votre équipe" class="p-2" >
                        <input type="hidden" value="<?= get_the_ID(); ?>" name="delete-tournament-id" >
                        <button name="remove-team" type="submit" class="btn btn-danger ml-2 mt-2 mb-3"> Desinscrire ma team</button>
                        <div class="alert-team-delete" class="text-success h5 font-weight-bold">Votre team est désinscrite du tournoi ! <i class="alert-team-delete-cross" class="fa fa-times-circle mb-2 ml-2" aria-hidden="true" style="color: green; font-size:1em;"></i></div>
                    </form>

                    <?php   } else { 
                    ; ?> 
                        </form>
                        <p class="text-danger">Le tournoi est complet !</p>
                    <form action="add-team" method="post" class="delete-team-to-tournament-form tournament__form text-center mt-0">
                        <input type="text" value="" name="delete-team-tournament" placeholder="Votre équipe" class="p-2" >
                        <input type="hidden" value="<?= get_the_ID(); ?>" name="delete-tournament-id" >
                        <button name="remove-team" type="submit" class="btn btn-danger ml-2 mt-2 mb-3"> Desinscrire ma team</button>
                        <div class="alert-team-delete" class="text-danger h5 font-weight-bold">Votre team est désinscrite du tournoi ! <i class="alert-team-delete-cross" class="fa fa-times-circle mb-2 ml-2" aria-hidden="true" style="color: green; font-size:1em;"></i></div>
                     </form>
                    <?php   } 

                        } 
                    }?>
            </div>
    </div>
</div>

