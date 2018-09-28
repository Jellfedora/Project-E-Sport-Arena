<?php 

$post = get_post();
$id = $post->ID;
//var_dump($id);exit;
?>

<div class="card mb-2 p-3 m-auto w-75 rounded" style="background-color:#6994db ">
    <div class="card__intro d-flex  justify-content-start ">
    <ul class="mt-2 ml-2 d-flex flex-column">
        <i class="fa fa-gamepad" aria-hidden="true"><span class="intro__font ml-1"> <?= get_game(get_the_ID()); ?></span></i>
        <i class="fa fa-user mb-2 mt-2" aria-hidden="true"><span class="intro__font ml-1"> <?= get_seats(get_the_ID()); ?></span></i>
        <i class="fa fa-calendar " aria-hidden="true"><span class="intro__font ml-1"> <?= get_price(get_the_ID()); ?></span></i>
    </ul>
    </div>
    <div class="card-body d-flex flex-column">
        <h3 class="news__tournament"><?php the_title() ; ?></h3>
        <p class="card-text"> <?php the_content() ; ?></p>   
        <h4>team inscrites: </h4>
        <?php  $register_teams = get_post_meta($post->ID, '_team_register');
            foreach ($register_teams as $team) {
            echo $team .'</br>'; 
            }
        ?>
    <form action="add-team" method="post">
    <p class="text-align mt-5">Nom de votre team : </p>
    <input type="test" value="" name="register-team-tournament" >
    <input type="hidden" value="<?= get_the_ID(); ?>" name="register-tournament-id" >
    <button type="submit" class="btn mt-2"> Inscrire ma team</button>
    <button name="remove-team" type="submit" class="btn mt-2" value="remove-team-submit"> Desinscrire ma team</button>
    </form>
    </div>
</div>


