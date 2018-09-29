<?php
/*
Template Name: Page panier
 */
?>

<?php get_header() ; ?>



<?php
// TODO: Mettre le css dans app, récupérer les articles dynamiquement

            // Récupéres l'utilisateur connecté
        $current_user = wp_get_current_user();

        // Récupéres le nom de l'utilisateur qui est aussi son nom de membre (cpt donc post_title)
        $post_title = $current_user->user_nicename;

        // On se connecte à la base de données du site pour récupérer l'id du post-title
        global $wpdb; 

        $team_id = $wpdb->get_results("
        SELECT ID
        FROM wp_posts
        WHERE `post_title` = '$post_title'
        ;
        ");

        // On récupéres l'id en string
        foreach($team_id as $post){
            $post->ID;
        }

    // TODO récupérer les id dynamiquement!!!!
    //Renseigne l'id des produits
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
    //(is_numeric($magique_total));
    //var_dump($magique_total);

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



#########################################################################################
//NOUVEAU PANIER
$cart = get_post_meta($post->ID, 'cart');
var_dump($cart);

$total = [];
?>
        <form action="validate-cart.php"  method="post" class="container p-0" style="border:3px solid black;">
    <h3 class="text-center mb-2">Votre Panier</h3>
    <div class="d-flex text-center text-light" style="border-bottom:3px solid black;border-top:3px solid black;margin-top:2em;">
        <h4 class="col">DESIGNATION</h4>
        <h4 class="col">RESTANTS</h4>
        <h4 class="col">PRIX UNITAIRE &nbsp;TTC</h4>
        <h4 class="col">QUANTITE</h4>
        <h4 class="col">TOTAL &nbsp;TTC</h4>
    </div>
<?php
    foreach ($cart as $product)
    {
        //var_dump($product);
        // Je stocke mes données dans des variables
        $product_title = $product['title'];
        $product_price = $product['product-price'];
        $product_quantity = $product['product-quantity'];
        $product_total_price = $product['product-total-price'];
        
        ?>

    <div class="d-flex text-center"style="border-bottom:1px solid black;padding:0.5em;">
        <h5 class="col" style><?= $product_title; ?></h5>
        <p class="col">5</p>
        <p class="col"><?= $product_price; ?> &euro;</p>
        <input class="col text-center text-success" style="background:transparent;border:none;" type="number" name="quantity" placeholder="Quantité" value="<?= $product_quantity; ?>"/>
        <p class="col"> <?= $product_total_price; ?> &euro;</p>
    </div>
 
        <?php
                $product_total_price;
                // var_dump($product_total_price);
                $total[] = $product_total_price;
            }
           $total_price = array_sum($total);?>
           

    <div class="container d-flex"style="padding:0.5em;margin-top:0.5em;">
        <div class="col text-center">
            <!--Total-->
            <h4 class="">Total Panier</h4>
            <p style="color:red;"><?= $total_price; ?> &euro;</p>
            <input class="btn" type="submit" value="Vider le panier" name="reset-cart" />
            <input class="btn" type="submit" value="Confirmer Panier" name="validate-cart">
        </div>
        <div class="col">
            <!-- Paypal -->
            <?php get_template_part('template-parts/shop/shop','paypal'); ?>
        </div>
    </div>  
</form>



<?php get_footer() ; ?>