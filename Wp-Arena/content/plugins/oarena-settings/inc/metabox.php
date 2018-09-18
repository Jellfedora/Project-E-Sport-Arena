<?php

add_action('add_meta_boxes', 'init_metabox');
function init_metabox()
{
    add_meta_box('member_team', 'Equipe', 'info_client', 'members', 'side');
}

function info_client($post)
{
    $nom = get_post_meta($post->ID, '_nom', true);

    ?>

  <input id="" type="text" name="nom" value="<?php echo $nom; ?>" />

  <?php
}

add_action('save_post', 'save_metabox');
function save_metabox($post_id)
{

    if (isset($_POST['nom'])) {
        update_post_meta($post_id, '_nom', sanitize_text_field($_POST['nom']));
    }

}