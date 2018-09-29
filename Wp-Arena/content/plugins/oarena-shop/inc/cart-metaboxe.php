<?php

add_action('add_meta_boxes', 'init_cart_metabox');
function init_cart_metabox()
{
    // For CPT Member
    add_meta_box('member_cart', 'Panier', 'member_cart', 'members', 'normal');
    // For CPT Member
    add_meta_box('cart', 'Panier test', 'cart', 'members', 'normal');
}

function member_cart($post)
{   
            $billet_magique_id = 5355;
            $billet_tournoi_id = 5365;
            $billet_reduit_id = 5431;
            //Recupére le nom de l'article billet magique
            $magique_name = get_post($billet_magique_id);
            $magique_title = $magique_name->post_title;
            //Récupére le nom de l'article billet tournoi
            $tournoi_name = get_post($billet_tournoi_id);
            $tournoi_title = $tournoi_name->post_title;
            //Récupére le nom de l'article billet réduit
            $reduit_name = get_post($billet_reduit_id);
            $reduit_title = $reduit_name->post_title;
            
    //Billet magique
    $magique_quantity = get_post_meta($post->ID, 'magique_quantity', true);
    $magique_price = get_post_meta($billet_magique_id, 'article_price', true);
    $magique_total = ($magique_price * $magique_quantity);

    //Billet tournoi
    $tournoi_quantity = get_post_meta($post->ID, 'tournoi_quantity', true);
    $tournoi_price = get_post_meta($billet_tournoi_id, 'article_price', true);
    $tournoi_total = ($tournoi_price * $tournoi_quantity);

    //Billet reduit
    $reduit_quantity = get_post_meta($post->ID, 'reduit_quantity', true);
    $reduit_price = get_post_meta($billet_reduit_id, 'article_price', true);
    $reduit_total = ($reduit_price * $reduit_quantity);

    //Billet total
    $cart_total = ($magique_total + $tournoi_total + $reduit_total);


    
    ?>
<!--TEST-------------------------------------------------------------->


<!--TEST-------------------------------------------------------------->


    <!--Billet Magique-->
    <div style="display:flex;">
        <div style="border:1px solid black;padding:0.5em;">
            <h5 style><?= $magique_title ; ?></h5>
            <p>Quantité</p>
            <input id="article-quantity" type="number" name="magique-quantity" placeholder="Quantité" value="<?= $magique_quantity ; ?>"/>
            <p>Prix</p>
            <input type="text" name="magique-price" placeholder="Price unitaire" value="<?= $magique_price ; ?>"/>
            <p style="color:green;">Total pour cet article</p>
            <input type="text" name="magique-total" placeholder="Total pour cet article" value="<?= $magique_total ; ?>"/>
        </div>

        <!-- Billet Tournoi -->
        <div style="border:1px solid black;margin-left:1em;padding:0.5em;">
            <h5 style><?= $tournoi_title ; ?></h5>
            <p>Quantité</p>
            <input type="number" name="tournoi-quantity" placeholder="Quantity" value="<?= $tournoi_quantity ; ?>"/>
            <p>Prix</p>
            <input type="text" name="tournoi-price" placeholder="Price unitaire" value="<?= $tournoi_price ; ?>"/>
            <p style="color:green;">Total pour cet article</p>
            <input type="text" name="tournoi-total" placeholder="Total pour cet article" value="<?= $tournoi_total ; ?>"/>
        </div>

        <!--Billet Reduit-->
        <div style="border:1px solid black;margin-left:1em;padding:0.5em;">
            <h5 style><?= $reduit_title ; ?></h5>
            <p>Quantité</p>
            <input type="number" name="reduit-quantity" placeholder="Quantity" value="<?= $reduit_quantity ; ?>"/>
            <p>Prix</p>
            <input type="text" name="reduit-price" placeholder="Price unitaire" value="<?= $reduit_price ; ?>"/>
            <p style="color:green;">Total pour cet article</p>
            <input type="text" name="reduit-total" placeholder="Total pour cet article" value="<?= $reduit_total ; ?>"/>
            <br/>
        </div>
    </div>
    <div style="color:red;border:1px solid black;padding:0.5em;margin-top:0.5em;">
        <!--Total-->
        <h4 >Total Panier</h4>
        <input type="text" name="cart-total" placeholder="Total panier" value="<?= $cart_total ; ?>"/>
    </div>
    <?php
}

function cart($post)
{
    $cart = get_post_meta($post->ID, 'cart');
    //var_dump($post->ID);
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
           <p>Prix total du panier: <?= $total_price; ?> &euro; </p>
           <?php
            //var_dump($total_price);
               
}

add_action('save_post', 'save_cart_metabox');


function save_cart_metabox($post_id)
{
    // PANIER TEST
    if (isset($_POST['cart'])) {
        update_post_meta($post_id, '_cart', sanitize_text_field($_POST['cart']));
    }


        // Billet Magique

        //Sauvegarde la quantitée
    if (isset($_POST['magique-quantity'])) {
        update_post_meta($post_id, '_magique_quantity', absint($_POST['magique-quantity']));
    }
        //Billet Tournoi
    if (isset($_POST['tournoi-quantity'])) {
        update_post_meta($post_id, '_tournoi_quantity', absint($_POST['tournoi-quantity']));
    }

         //Billet Reduit
    if (isset($_POST['reduit-quantity'])) {
        update_post_meta($post_id, '_reduit_quantity', absint($_POST['reduit-quantity']));
    }
}