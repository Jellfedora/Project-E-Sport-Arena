<?php 

$post = get_post();
$id = $post->ID;
// var_dump($id);
// die;
?>

<div class="card mb-2 p-3 m-auto w-75 rounded" style="background-color:#6994db ">
    <?php echo the_title() ; ?>
    <a href="<?= get_the_permalink(get_the_ID()) ; ?>" class="text-center"><button type="button" class="btn btn-info" >Voir la fiche produit</button></a>
</div>