<?php get_header(); ?>

    <?php// wp_list_authors('exclude_admin = 0'); ?>


<?php 
$curauth = (isset($_GET['author_name'])) ? get_user_by('slug', $author_name) : get_userdata(intval($author));
?>

<h2>Vous êtes sur le profil de <?php echo $curauth->nickname; ?></h2>

<h3>Description</h3>
<p><?= $curauth->description; ?></p>

<h3>Equipe: <?= truc ?> </h3>

<h3>Mon email</h3>
<p><?= $curauth->user_email; ?></p>

<?php get_footer(); ?>