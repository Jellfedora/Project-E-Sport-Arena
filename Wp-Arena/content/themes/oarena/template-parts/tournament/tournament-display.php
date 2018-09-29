<?php 

$post = get_post();
$id = $post->ID;
//var_dump($id);exit;
?>
<div class="pt-5">  
    <div class="card mb-2 p-3 m-auto w-75 rounded " style="background-color:#6994db ">
        <div class="card__intro d-flex  justify-content-start ">
        <ul class="mt-2 ml-2 d-flex flex-column">
          <div>  <?= get_price(get_the_ID()); ?><i class="fa fa-eur ml-2" aria-hidden="true"></i> </div>
            <i> Places totales : <?= get_post_meta($id, 'tournament_available_total', true);?></i>
            <i> Places restantes : <?= get_post_meta($id, 'tournament_available_seats', true);?></i>
        </ul>
        </div>
        <div class="card-body d-flex flex-column">
            <h3 class="news__tournament"><?php the_title() ; ?></h3>
        
                                    <?php  if(get_post_meta($id, 'tournament_available_seats', true) > 0 ){ ?>
                                       
         <h3 class="m-auto" style="color: green;">Il reste encore des places</h3>                              
        
                                    <?php } else { ?>


        <h3 class="text-danger">Le tournoi est complet !</h3>

                                  <?php  } ?>

            <p class="card-text"> <?php the_content() ; ?></p>   
            <h4>Team inscrites: </h4>
            <?php  $register_teams = get_post_meta($post->ID, '_team_register');
                foreach ($register_teams as $team) {
                echo $team .'</br>'; 
                }
            ?>
        <form action="add-team" method="post">
        <p class="text-align mt-5">Nom de votre team : </p>
        <input type="text" value="" name="register-team-tournament" class="p-2" >
        <input type="hidden" value="<?= get_the_ID(); ?>" name="register-tournament-id" >

                <?php 

                        if (is_user_logged_in()) 
                        {
                            $user = wp_get_current_user()->roles;

                                // var_dump($user);
                                foreach ($user as $role) {
                                    // var_dump($role);
                                    // die;
                                }

                                if ($role === 'administrator' || $role === 'TeamAdmin') 
                                { ; 
                                    if(get_post_meta($id, 'tournament_available_seats', true) > 0 )
                                     { ?> 
        <button type="submit" class="btn btn-success ml-2 mt-2 mr-2 mb-3"> Inscrire ma team</button>
        <button name="remove-team" type="submit" class="btn btn-danger mt-2 mb-3" value="remove-team-submit"> Desinscrire ma team</button>
        </form>
                                    <?php } else { ?> 
        <button name="remove-team" type="submit" class="btn btn-danger mt-2 mb-3" value="remove-team-submit"> Desinscrire ma team</button>
        <p class="text-danger">Le tournoi est complet !</p>
                                  <?php       } 

                                    } 
                                }  ?>
                                
        </div>
    </div>
</div>


