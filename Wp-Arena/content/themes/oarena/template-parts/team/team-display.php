<?php 
$post = get_post();
foreach ($post as $post_id) {
    $post_id = $post->ID;
}

?>
<h2 class="news__title text-light  mb-3 text-center">&#9660; Team &#9660; </h2>

<div class="team-display">
    <div class ="team-display__content text-center">
        <h5 class="team-display__content">Team :&nbsp; <?php the_title() ; ?></h5>
        <img class="team-display__content" src="<?= the_post_thumbnail_url(); ?>" alt="">
        <p class="team-display__content"> <?php the_content() ; ?></p>   
        <h6 class="">Leader de l'équipe : </h6>
        <p class="team-display__content"><?= get_post_meta($post_id,'_team_chief',true); ?></p>
        <h6 class="team-display__content">Membres de l'équipe :</h6>
        <p class="team-display__content"><li><?= $member1 = get_post_meta($post_id,'_member1',true);?></li></p>
        <p class="team-display__content"><li><?= $member1 = get_post_meta($post_id,'_member2',true);?></li></p>
        <p class="team-display__content"><li><?= $member1 = get_post_meta($post_id,'_member3',true);?></li></p>
        <p class="team-display__content"><li><?= $member1 = get_post_meta($post_id,'_member4',true);?></li></p>
        <p class="team-display__content"><li><?= $member1 = get_post_meta($post_id,'_member5',true);?></li></p>
    </div>
</div>