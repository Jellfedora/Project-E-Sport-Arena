    <?php $post = get_post();
    $i = 0;
    // var_dump($post);
    // var_dump($our_articles);
    $article_post = wp_count_posts('article');
    $count = $article_post->publish;
    $count_int = intval($count);
    $result = 0;
    // var_dump($count);
    // die;

    ; ?>


<div class="card mb-2 p-3 width-75">
    <div class="card__intro d-flex justify-content-around ">
        <img class="card-img-top p-1" src="http://media.gettyimages.com/vectors/gold-ticket-golden-token-with-star-magical-background-vector-id851591454?s=170667a&w=1007">
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

<?php 

// var_dump($count);
//     die;
           ; ?>                 <!-- <form action="post" name="shop-form"><br>
                                <button>Passer au payement</button>
                            </form> -->
                            <div class="card-body d-flex flex-column">                       
                <label>Votre article</label>
                <input readonly ="readonly" type="text" class="item-name" value="<?php the_title() ; ?>"><br>
                <label>Quantité</label>
                <input type="number" class="item-quantity" min="0"><br>
                <label>Prix</label>
                <input readonly="readonly" class="item-price" min="0" value="<?= get_post_meta($post->ID, 'article_price', true); ?>"><br>  
                <?php do {   
                    
                    $i = $i + 1;
                    $result = $result;
                    
                    ?>    
     

                    <div id="addToCart-item" style="width: 100%;"></div>  
            <button class="cart-add-item">Ajouter au panier</button>

                    <?php 
                    } while ($i < $count_int - $count +1 )              
                    ?>
                <div id="cart-mycart" style="width: 100%;"></div>
                
        </div>
                        
            </div>


</div>
