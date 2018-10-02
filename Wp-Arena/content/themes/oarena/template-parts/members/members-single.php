<?php
// pour afficher la pag du membre (pas de contenu sur cette page pour le moment)
//get_the_permalink(get_the_ID()) ;
?>


<!-- <a class="member__name" href=""> -->
<div class="member " style="background-image:url('<?= the_post_thumbnail_url(); ?>');">
    <h3 class="member__title text-light text-center"><?php the_title(); ?></h3>
</div>
</a>

