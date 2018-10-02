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
                <p class="text-success d-none">INSCRIPTION OUVERTE</p>
                <img src="http://image.noelshack.com/fichiers/2018/40/2/1538440332-d312160c-5ce0-4b1f-b490-1ae99d40a83e.png" alt="">
<?php } else { ?>
                <p class="text-danger d-none">INSCRIPTION FERME&#201;</p>
                <img src="http://image.noelshack.com/fichiers/2018/40/2/1538440326-1d89a8cd-78e3-444a-b2a9-ced763127d36.png" alt="">
<?php  } ?>
            </div>
            <div class="tournament__info">
                <div class="tournament__info__content">
                    <div class="tournament__info__meta text-center">
                        <p>Places totales : <?= get_post_meta($id, 'tournament_available_total', true);?></p>
                        <p>Places restantes : <?= get_post_meta($id, 'tournament_available_seats', true);?></p>
                        <p>Prix:<?= get_price(get_the_ID()); ?><i class="fa fa-eur ml-2" aria-hidden="true"></i></p>
                    </div>
                    <div class="tournament__info__text">
                        <p class="card-text"> <?php the_content() ; ?></p> 
                    </div> 
                </div>
                <form class="tournament__form text-center" action="add-team" method="post">
                    <h4>Ils vous attendent dans l'aréne ! </h4>
                    <div class="tournament__form__participants">  
<?php   $register_teams = get_post_meta($post->ID, '_team_register');
        foreach ($register_teams as $team) {
            echo '<div class="tournament__form__participants__team" >' .$team .'</div>'; 
        }?>         </div>

                
                    <p class="text-align mt-5">Rejoindre le combat! </p>
                    <input type="text" value="" name="register-team-tournament" placeholder="Votre équipe" class="p-2" >
                    <input type="hidden" value="<?= get_the_ID(); ?>" name="register-tournament-id" >

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
                    <button type="submit" class="btn btn-success ml-2 mt-2 mr-2 mb-3"> Inscrire ma team</button>
                    <button name="remove-team" type="submit" class="btn btn-danger mt-2 mb-3" value="remove-team-submit"> Desinscrire ma team</button>
                </form>
        <?php   } else { ?> 
                <button name="remove-team" type="submit" class="btn btn-danger mt-2 mb-3" value="remove-team-submit"> Desinscrire ma team</button>
                <p class="text-danger">Le tournoi est complet !</p>
          <?php } 

            } 
    }?>
             
    </div>
</div>

