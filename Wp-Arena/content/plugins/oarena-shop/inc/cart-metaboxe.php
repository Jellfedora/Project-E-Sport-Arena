<?php

add_action('add_meta_boxes', 'init_cart_metabox');
function init_cart_metabox()
{
    // For CPT Member
    add_meta_box('cart', 'Panier', 'cart', 'members', 'normal');
}


function cart($post)
{
    $cart = get_post_meta($post->ID, 'cart');
    var_dump($post->ID);
    $total = [];
    foreach ($cart as $product)
    {
        //var_dump($product);
        // Je stocke mes données dans des variables
        $product_title = $product['title'];
        $product_price = $product['product-price'];
        $product_quantity = $product['product-quantity'];
        $product_total_price = $product['product-total-price'];
        
        ?>
        <div style="border:1px solid black; padding:0.5em;">
            <input type="hidden" value="<?= $post->ID ?>">
            <p>Référence: <?= $product_title; ?></p>
            <p>Prix: <?= $product_price; ?> &euro;</p>
            <p>Quantité: <?= $product_quantity; ?></p>
            <p>Prix total pour cet article: <?= $product_total_price; ?> &euro; </p>
        </div>
        
        <?php
                $product_total_price;
                // var_dump($product_total_price);
                $total[] = $product_total_price;
            }
           $total_price = array_sum($total);?>
<<<<<<< HEAD
           <p>Prix total du panier: <?= $total_price; ?> &euro; </p>
           <?php
            //var_dump($total_price);
               
=======
           <p style="color:red;">Prix total du panier: <?= $total_price; ?> &euro; </p>

           <?php
>>>>>>> master
}

add_action('save_post', 'save_cart_metabox');


function save_cart_metabox($post_id)
{
    // PANIER TEST
    if (isset($_POST['cart'])) {
        update_post_meta($post_id, '_cart', sanitize_text_field($_POST['cart']));
    }
}