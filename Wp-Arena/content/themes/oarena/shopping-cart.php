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


    
    ?>
<form action="validate-cart.php"  method="post" class="container">
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
        <input type="submit" value="Valider la commande" name="validate-cart">
    </div>
</form>


<?php get_footer() ; ?>