<a class="team__name" href="<?= get_the_permalink(get_the_ID()) ; ?>">
<div class="team" style="background-image:url('<?= the_post_thumbnail_url(); ?>');">
    <h3 class="team__title text-light">Team: <?php the_title(); ?></h3>
</div>
</a>