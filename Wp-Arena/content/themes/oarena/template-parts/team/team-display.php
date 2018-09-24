<?php 
$post = get_post();
foreach ($post as $post_id) {
    $post_id = $post->ID;
}
// var_dump($post_id);
// // die;
?>
<div style="padding-bottom: 3em;">
<div class="card mb-2 p-3 m-auto w-75 rounded" style="background-color:#6994db ">
    <div class="card-body d-flex flex-column">
        <h5 class="news__tournament">Team :&nbsp; <?php the_title() ; ?></h5>
        <p class="card-text"> <?php the_content() ; ?></p>   
        <div class="news__tournament__status__chief">Leader de l'équipe : </div>
     <div class="news__tournament__status__chief__name"><?= get_post_meta($post_id,'_team_chief',true); ?></div>
        <div class="news__tournament__status__members">Membres de l'équipe :</div>
        <div class="news__tournament__status__members__name"><li><?= $member1 = get_post_meta($post_id,'_member1',true);?></li></div>
        <div class="news__tournament__status__members__name"><li><?= $member1 = get_post_meta($post_id,'_member2',true);?></li></div>
        <div class="news__tournament__status__members__name"><li><?= $member1 = get_post_meta($post_id,'_member3',true);?></li></div>
        <div class="news__tournament__status__members__name"><li><?= $member1 = get_post_meta($post_id,'_member4',true);?></li></div>
        <div class="news__tournament__status__members__name"><li><?= $member1 = get_post_meta($post_id,'_member5',true);?></li></div>
    </div>
</div>