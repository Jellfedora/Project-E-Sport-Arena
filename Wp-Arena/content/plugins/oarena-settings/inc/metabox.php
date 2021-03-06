<?php

add_action('add_meta_boxes', 'init_metabox');
function init_metabox()
{
    // For CPT Team
    add_meta_box('team_chief', 'Chef', 'team_chief', 'team', 'normal');
    add_meta_box('team_members', 'Membres', 'team_members', 'team', 'normal');

    // For CPT Tournament
    add_meta_box('team_register', 'Participants', 'team_register', 'tournament', 'normal' );

    // Check available seats on tournament
    add_meta_box('tournament_available_total', 'Capacité maximum pour ce tournoi', 'tournament_available_total', 'tournament', 'normal' );
    add_meta_box('tournament_available_seats', 'Places encore disponibles pour ce tournoi', 'tournament_available_seats', 'tournament', 'normal' );

    // For CPT Member
    add_meta_box('member_info', 'Informations livraison', 'member_info', 'members', 'normal');

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

    //var_dump($register_teams);

    foreach ($register_teams as $team) {
        //var_dump($teams);exit;
       ?> <input id="" type="text" name="register-team" value="<?= $team; ?>" /><?php
    }
}
    
function tournament_available_seats($post) 
{
        $available_seats = get_post_meta($post->ID, 'tournament_available_seats', true);

    ?>
    <input type="number" name="tournament-available-seats" placeholder="Nombre de places au tournoi disponibles" value="<?= $available_seats ; ?>"/>

    <?php 
     
}

function tournament_available_total($post) 
{
        $available_seats_total = get_post_meta($post->ID, 'tournament_available_total', true);

    ?>
    <input type="number" name="tournament-available-total" placeholder="Nombre de places au tournoi disponibles" value="<?= $available_seats_total ; ?>"/>

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
    <input type="number" name="article-quantity" placeholder="Nombre d'articles' disponibles" value="<?= $article_quantity ; ?>"/>

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

    // tournament seats

    if (isset($_POST['tournament-available-seats'])) {
        update_post_meta($post_id, 'tournament_available_seats', sanitize_text_field($_POST['tournament-available-seats']));
    }

    if (isset($_POST['tournament-available-total'])) {
        update_post_meta($post_id, 'tournament_available_total', sanitize_text_field($_POST['tournament-available-total']));
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

    
}