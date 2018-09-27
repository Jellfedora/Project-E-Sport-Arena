<?php

add_action('add_meta_boxes', 'init_metabox');
function init_metabox()
{
    // For CPT Team
    add_meta_box('team_chief', 'Chef', 'team_chief', 'team', 'normal');
    add_meta_box('team_members', 'Membres', 'team_members', 'team', 'normal');

    // For CPT Tournament
    add_meta_box('team_register', 'Participants', 'team_register', 'tournament', 'normal' );

    // For CPT Member
    add_meta_box('member_info', 'Informations livraison', 'member_info', 'members', 'normal');
    add_meta_box('member_cart', 'Panier', 'member_cart', 'members', 'normal');

    // For CPT Article 
    add_meta_box('article_price', 'Prix du billet', 'article_price', 'article', 'normal');
    add_meta_box('article_quantity', 'Places disponibles', 'article_quantity', 'article', 'normal');
}

function team_chief($post)
{
    $team_chief = get_post_meta($post->ID, '_team_chief', true);

    ?>

  <input id="" type="text" name="team_chief" value="<?php echo $team_chief; ?>" />

  <?php
}

function team_members($post)
{
    $member1 = get_post_meta($post->ID, '_member1', true);
    $member2 = get_post_meta($post->ID, '_member2', true);
    $member3 = get_post_meta($post->ID, '_member3', true);
    $member4 = get_post_meta($post->ID, '_member4', true);
    $member5 = get_post_meta($post->ID, '_member5', true);

    ?>

  <input id="" type="text" name="member1" value="<?php echo $member1; ?>" />
  <input id="" type="text" name="member2" value="<?php echo $member2; ?>" />
  <input id="" type="text" name="member3" value="<?php echo $member3; ?>" />
  <input id="" type="text" name="member4" value="<?php echo $member4; ?>" />
  <input id="" type="text" name="member5" value="<?php echo $member5; ?>" />

  <?php
}

function team_register($post) 
{
    $register_teams = get_post_meta($post->ID, '_team_register');

    ?>
     <input id="" type="text" name="register-team" value="<?php echo $register_teams; ?>" />
     <?php
}

function member_info($post)
{
    $member_genre = get_post_meta($post->ID, 'member_genre', true);
    $member_name = get_post_meta($post->ID, 'member_name', true);
    $member_firstname = get_post_meta($post->ID, 'member_firstname', true);
    $member_street = get_post_meta($post->ID, 'member_street', true);
    $member_postal_code = get_post_meta($post->ID, 'member_postal_code', true);
    $member_city = get_post_meta($post->ID, 'member_city', true);
    ?>
   
  <input class="form-check-input" type="radio" name="member_genre" checked value="Mr" <?php checked( $member_genre, 'Mr' ); ?> >
  <label class="form-check-label" for="member_man">Mr / </label>
  <input class="form-check-input ml-2" type="radio" name="member_genre" value="Mme" <?php checked( $member_genre, 'Mme' ); ?> >
  <label class="form-check-label ml-4" for="member_woman"> Mme</label>

  <input id="" type="text" name="member_name" placeholder="Nom" value="<?php echo $member_name; ?>" />
  <input id="" type="text" name="member_firstname" placeholder="Prenom" value="<?php echo $member_firstname; ?>" />
  <input id="" type="text" name="member_street" placeholder="Numéro et nom de la rue" value="<?php echo $member_street; ?>" />
  <input id="" type="text" name="member_postal_code" placeholder="Code Postale" value="<?php echo $member_postal_code; ?>" />
  <input id="" type="text" name="member_city" placeholder="Ville" value="<?php echo $member_city; ?>" />

  <?php
}



function article_price($post)
{
    $article_price = get_post_meta($post->ID, 'article_price', true);
    ?>
    <input type="number" name="article-price" placeholder="Prix" value="<?= $article_price ; ?>"/>
    <?php
}

function article_quantity($post)
{
    $article_quantity = get_post_meta($post->ID, 'article_quantity', true);

    ?>
    <input type="number" name="article-quantity" placeholder="Nombre de places disponibles" value="<?= $article_quantity ; ?>"/>

    <?php 
}

function member_cart($post)
{   
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
    <!--Billet Magique-->
    <div style="display:flex;">
        <div style="border:1px solid black;padding:0.5em;">
            <h5><?= $magique_title ; ?></h5>
            <p>Quantité</p>
            <input id="article-quantity" type="number" name="magique-quantity" placeholder="Quantité" value="<?= $magique_quantity ; ?>"/>
            <p>Prix</p>
            <input type="text" name="magique-price" placeholder="Price unitaire" value="<?= $magique_price ; ?>"/>
            <p style="color:green;">Total pour cet article</p>
            <input type="text" name="magique-total" placeholder="Total pour cet article" value="<?= $magique_total ; ?>"/>
        </div>

        <!-- Billet Tournoi -->
        <div style="border:1px solid black;margin-left:1em;padding:0.5em;">
            <h5><?= $tournoi_title ; ?></h5>
            <p>Quantité</p>
            <input type="number" name="tournoi-quantity" placeholder="Quantity" value="<?= $tournoi_quantity ; ?>"/>
            <p>Prix</p>
            <input type="text" name="tournoi-price" placeholder="Price unitaire" value="<?= $tournoi_price ; ?>"/>
            <p style="color:green;">Total pour cet article</p>
            <input type="text" name="tournoi-total" placeholder="Total pour cet article" value="<?= $tournoi_total ; ?>"/>
        </div>

        <!--Billet Reduit-->
        <div style="border:1px solid black;margin-left:1em;padding:0.5em;">
            <h5><?= $reduit_title ; ?></h5>
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

add_action('save_post', 'save_metabox');
function save_metabox($post_id)
{
    // Team chief
    if (isset($_POST['team_chief'])) {
        update_post_meta($post_id, '_team_chief', sanitize_text_field($_POST['team_chief']));
    }

    // Team members
    if (isset($_POST['member1'])) {
        update_post_meta($post_id, '_member1', sanitize_text_field($_POST['member1']));
    }

    if (isset($_POST['member2'])) {
        update_post_meta($post_id, '_member2', sanitize_text_field($_POST['member2']));
    }

    if (isset($_POST['member3'])) {
        update_post_meta($post_id, '_member3', sanitize_text_field($_POST['member3']));
    }

    if (isset($_POST['member4'])) {
        update_post_meta($post_id, '_member4', sanitize_text_field($_POST['member4']));
    }

    if (isset($_POST['member5'])) {
        update_post_meta($post_id, '_member5', sanitize_text_field($_POST['member5']));
    }

    //
    if (isset($_POST['register-team'])) {
        update_post_meta($post_id, '_team_register', sanitize_text_field($_POST['register-team']));
    }

    // Member information

    
    if (isset($_POST['member_genre'])) {
        update_post_meta($post_id, 'member_genre', sanitize_html_class( $_POST['member_genre']));
    }
    if (isset($_POST['member_name'])) {
        update_post_meta($post_id, 'member_name', sanitize_text_field($_POST['member_name']));
    }
    if (isset($_POST['member_firstname'])) {
        update_post_meta($post_id, 'member_firstname', sanitize_text_field($_POST['member_firstname']));
    }
    if (isset($_POST['member_street'])) {
        update_post_meta($post_id, 'member_street', sanitize_text_field($_POST['member_street']));
    }
    if (isset($_POST['member_postal_code'])) {
        update_post_meta($post_id, 'member_postal_code', sanitize_text_field($_POST['member_postal_code']));
    }
    if (isset($_POST['member_city'])) {
        update_post_meta($post_id, 'member_city', sanitize_text_field($_POST['member_city']));
    }

    // Price article

    if (isset($_POST['article-price'])) {
        update_post_meta($post_id, 'article_price', absint($_POST['article-price']));
    }

    // Quantity Article
    if (isset($_POST['article-quantity'])) {
        update_post_meta($post_id, 'article_quantity', absint($_POST['article-quantity']));
    }

    // Member Cart
        // Billet Magique

        //Sauvegarde la quantitée
    if (isset($_POST['magique-quantity'])) {
        update_post_meta($post_id, 'magique_quantity', absint($_POST['magique-quantity']));
    }
        //Billet Tournoi
    if (isset($_POST['tournoi-quantity'])) {
        update_post_meta($post_id, 'tournoi_quantity', absint($_POST['tournoi-quantity']));
    }

         //Billet Reduit
    if (isset($_POST['reduit-quantity'])) {
        update_post_meta($post_id, 'reduit_quantity', absint($_POST['reduit-quantity']));
    }
}