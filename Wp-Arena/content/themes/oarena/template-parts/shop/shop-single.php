<div class="card mb-2 p-3 width-75">
    <div class="card__intro d-flex justify-content-around ">
    <img class="card-img-top p-1" src="https://source.unsplash.com/100x100/?fortnite">
    </div>
    <div class="card-body d-flex flex-column">
    <h3 class="news__tournament"><?php the_title() ; ?></h3>
    <p><?php the_content(); ?></p>
    <div class="d-flex">
    <h4>Nombre de billets restants:</h4>
    <p><?= get_post_meta($post->ID, 'article_quantity', true); ?></p> 
    </div>
    <div class="d-flex">
    <h4>Prix:</h4>
    <p><?= get_post_meta($post->ID, 'article_price', true); ?><i class="fa fa-eur" aria-hidden="true"></i></p>
    </div>
    <a href="<?= get_the_permalink(get_the_ID()) ; ?>" class="text-center"><button type="button" class="btn btn-info" >Voir le produit</button></a>
    </div>
</div>
