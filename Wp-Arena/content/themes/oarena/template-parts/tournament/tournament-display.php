<?php 

$post = get_post();
$id = $post->ID;
// var_dump($id);
// die;
?>

<div class="card mb-2 p-3 m-auto w-25">
    <div class="card__intro d-flex justify-content-around ">
    <img class="card-img-top p-1" src="https://source.unsplash.com/100x100/?fortnite">
    <ul class="mt-2 ml-2">
        <i class="fa fa-gamepad" aria-hidden="true"><span class="intro__font ml-1"> Jeux</span></i>
        <i class="fa fa-user " aria-hidden="true"><span class="intro__font ml-1"> Places</span></i>
        <i class="fa fa-calendar " aria-hidden="true"><span class="intro__font ml-1"> Date</span></i>
    </ul>
    </div>
    <div class="card-body d-flex flex-column">
    <h4>team inscrites: </h4>
    <li><?= get_post_meta($id, '_team_register', true) ; ?></li>
    <h3 class="news__tournament"><?php the_title() ; ?></h3>
    <p class="card-text"> <?php the_content() ; ?></p>   
    <form action="add-team" method="post">
    <input type="submit" value="S'inscrire" name="register-team-tournament"">
    </form>
    </div>
</div>

