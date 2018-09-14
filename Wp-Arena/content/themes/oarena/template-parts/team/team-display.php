<div class="card mb-2 p-3" style="width: 15rem;">
    <div class="card-body d-flex flex-column">
    <h3 class="news__tournament"><?php the_title() ; ?></h3>
    <p class="card-text"> <?php the_content() ; ?></p>
        <a href="<?= get_the_permalink(get_the_ID()) ; ?>" class="text-center"><button type="button" class="btn btn-info" >S'inscrire</button></a>
    </div>
</div>