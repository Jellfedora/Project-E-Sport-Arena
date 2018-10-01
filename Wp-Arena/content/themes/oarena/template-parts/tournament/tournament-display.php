<?php 

$post = get_post();
$id = $post->ID;
//var_dump($id);exit;
?>
<h2 class="d-none text-light  mb-3 text-center">&#9660; R&#201;PONDEZ &#192; L'APPEL ! &#9660; </h2>

<div class="tournament " style="background-image:url(<?= the_post_thumbnail_url('full'); ?>);">  
        <div class="tournament__content">
            <h3 class="tournament__title"><?php the_title() ; ?></h3>

<?php  if(get_post_meta($id, 'tournament_available_seats', true) > 0 ){ ?>
            <p class="" style="color: green;">Il reste encore des places</p>
<?php } else { ?>
            <p class="text-danger">Le tournoi est complet !</p>
<?php  } ?>

            <div class="tournament__meta-info">
                <p>Places totales : <?= get_post_meta($id, 'tournament_available_total', true);?></p>
                <p>Places restantes : <?= get_post_meta($id, 'tournament_available_seats', true);?></p>
                <p>Prix:<?= get_price(get_the_ID()); ?><i class="fa fa-eur ml-2" aria-hidden="true"></i></p>
            </div>
            <div class="card-body d-flex flex-column">
                <p class="card-text"> <?php the_content() ; ?></p>   
                <h4>Team inscrites: </h4>

<?php   $register_teams = get_post_meta($post->ID, '_team_register');
        foreach ($register_teams as $team) {
            echo $team .'</br>'; 
        }?>

            <form action="add-team" method="post">
                <p class="text-align mt-5">Nom de votre team : </p>
                <input type="text" value="" name="register-team-tournament" class="p-2" >
                <input type="hidden" value="<?= get_the_ID(); ?>" name="register-tournament-id" >

<?php 

        if (is_user_logged_in()) {
            $user = wp_get_current_user()->roles;
            foreach ($user as $role) {
            }
            if ($role === 'administrator' || $role === 'TeamAdmin') { ; 
                if(get_post_meta($id, 'tournament_available_seats', true) > 0 )
                { ?> 
                <button type="submit" class="btn btn-success ml-2 mt-2 mr-2 mb-3"> Inscrire ma team</button>
                <button name="remove-team" type="submit" class="btn btn-danger mt-2 mb-3" value="remove-team-submit"> Desinscrire ma team</button>
            </form>
<?php   } else { ?> 
                <button name="remove-team" type="submit" class="btn btn-danger mt-2 mb-3" value="remove-team-submit"> Desinscrire ma team</button>
                <p class="text-danger">Le tournoi est complet !</p>
<?php           } 

         } 
     }?>
             
    </div>
</div>

