<?php

add_action('add_meta_boxes', 'init_metabox');
function init_metabox()
{
    add_meta_box('team_chief', 'Chef', 'team_chief', 'team', 'normal');
    add_meta_box('team_members', 'Membres', 'team_members', 'team', 'normal');
    add_meta_box('team_register', 'Participants', 'team_register', 'tournament', 'normal' );
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
    $register_teams = get_post_meta($post->ID, '_team_register', true);

    ?>
     <input id="" type="text" name="register-team" value="<?php echo $register_teams; ?>" />
     <?php
}

add_action('save_post', 'save_metabox');
function save_metabox($post_id)
{

    if (isset($_POST['team_chief'])) {
        update_post_meta($post_id, '_team_chief', sanitize_text_field($_POST['team_chief']));
    }

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
    if (isset($_POST['register-team'])) {
        update_post_meta($post_id, '_team_register', sanitize_text_field($_POST['register-team']));
    }
}