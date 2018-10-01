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

//NOUVEAU PANIER
$cart = oArenaCartFunctions::get_cart_meta($post->ID);
$total =[];
?>
        <form action="validate-cart.php"  method="post" class="container p-0" style="border:3px solid black;">
    <h3 class="text-center mb-2">Votre Panier</h3>
    <div class="d-flex text-center text-light" style="border-bottom:3px solid black;border-top:3px solid black;margin-top:2em;">
        <h4 class="col">REFERENCE PRODUIT</h4>
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
        $product_id = $product['id'];
        $product_title = $product['title'];
        $product_price = $product['product-price'];
        $product_quantity = $product['product-quantity'];
        $product_total_price = $product['product-total-price'];
        
        ?>

    <div class="product-cart d-flex text-center"style="border-bottom:1px solid black;padding:0.5em;">
        <p class="col" style><?= $product_id; ?></p>
        <h5 class="col" style><?= $product_title; ?></h5>
        <p class="product-seats col text-center"style="background:transparent;border:none;">6</p>
        <p id="" class="product-cart-price col"><?= $product_price; ?>&euro;</p>
        <p class="product-cart-quantity d-none col text-center"name="quantity" placeholder="Quantité"><?= $product_quantity; ?></p>
        <input class="col text-center text-success" style="background:transparent;border:none;" type="number" name="quantity[<?= $product_id; ?>]" placeholder="Quantité" value="<?= $product_quantity; ?>"/>
        <div class="product-total-cart-price col">
            <p id="" > <?= $product_total_price; ?>&euro;</p>
        </div>
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
            <p id="total-cart" style="color:red;"><?= $total_price; ?> &euro;</p>
            <div class="d-flex ">
                <input class="btn col text-light" style="background:none;" type="submit" value="Vider le panier" name="reset-cart" />
                <input class="btn" type="submit" value="Confirmer Panier" name="validate-cart">
                <div class=" col">
                    <!-- Paypal -->
                    <?php get_template_part('template-parts/shop/shop','paypal'); ?>
                </div>
            </div>
        </div>
        
    </div>  
</form>









    <?php $member_genre = get_post_meta($post->ID, 'member_genre', true);?>
    <?php $member_name = get_post_meta($post->ID, 'member_name', true);?>
    <?php $member_firstname = get_post_meta($post->ID, 'member_firstname', true);?>
    <?php $member_street = get_post_meta($post->ID, 'member_street', true);?>
    <?php $member_postal_code = get_post_meta($post->ID, 'member_postal_code', true);?>
    <?php $member_city = get_post_meta($post->ID, 'member_city', true); ?>

<div class="container mt-2">
        <h4>Votre adresse de facturation:</h4>
      
	    <div class="">
			<p class="">Votre nom: <?php echo $member_name; ?></p>
        </div>
        <div class="">
			<p class="">Votre prénom: <?php echo $member_firstname; ?></p>
        </div>
        <div class="">
			<p class="">Numéro et nom de la rue: <?php echo $member_street; ?></p>
        </div>
        <div class="">
			<p class="">Code postal: <?php echo $member_postal_code; ?></p>
        </div>
        <div class="">
			<p class="">Ville: <?php echo $member_city; ?></p>
        </div>
        <a href="profil" class="text-light">Modifier</a>
    </div>


<?php get_footer() ; ?>