<?php $post = get_post();
// var_dump($post);
?>

  <a href="<?= get_the_permalink($post); ?>"><div class="card mb-2 p-3" style="width: 15rem;">
    <div class="card-body d-flex flex-column">
    <h3 class="news__tournament"><?php the_title();?></h3>
    <p class="card-text"> <?php the_content();?></p>
    </div>
</div>

</a>