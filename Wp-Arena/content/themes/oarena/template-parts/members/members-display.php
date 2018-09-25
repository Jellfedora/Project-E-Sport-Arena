<?php 

// $post = get_post();
// $id = $post->ID;
// var_dump($id);
// die;
?>

<div class="mb-2 p-3 w-75" >
    <div class="card-body d-flex flex-column">
        <h3 class="news__tournament">Pseudo : <?php the_title();?></h3>
        <p class="card-text"> <?php the_content();?></p>
    </div>
</div>