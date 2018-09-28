    <!-- $post = get_post(); -->
    <!-- $i = 0; -->
    <!-- // var_dump($post);
    // var_dump($our_articles);
    // $article_post = wp_count_posts('article');
    // $count = $article_post->publish;
    // $count_int = intval($count);
    // $result = 0;
    // var_dump($count);
    // die; -->




<!-- <div class="card mb-2 mt-5 p-3 w-25">
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
        <a href="" class="text-center"><button type="button" class="btn btn-info" >Voir le produit</button></a>                     
    </div>
</div> -->


<div class="shopping-cart">
    <div style="display: none;">
        <div class="column-labels">
            <label class="product-image">Image</label>
            <label class="product-details">Product</label>
            <label class="product-price">Price</label>
            <label class="product-quantity">Quantity</label>
            <label class="product-removal">Remove</label>
            <label class="product-line-price">Total</label>
        </div>
    </div>
  <div class="product">
    <div class="product-image">
      <img src="https://images-na.ssl-images-amazon.com/images/I/911MDRVptZL._SX425_.jpg">
    </div>
    <div class="product-details">
      <div class="product-title"><?= the_title() ; ?></div>
      <p class="product-description"><?= the_content() ; ?></p>
    </div>
    <div class="h2">Prix : </div>
    <div class="product-price h2"><?= get_post_meta($post->ID, 'article_price', true); ?></div>
    <div>Quantité : </div>
    <div class="product-quantity h2">
      <input type="number" value="0" min="0">
    </div>
    <div class="product-line-price h2"></div>
  </div>

</div>
   


