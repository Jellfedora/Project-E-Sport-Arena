<?php
/*
Template Name: Page panier
 */
?>

<?php get_header() ; ?>

<div class="card mb-2 p-3 m-auto w-75 rounded" style="background-color:#6994db ">
    <div class="card-body d-flex flex-column">
    <h3>Votre panier :</h3>
    <form action="post" name="shop-form">
    <button>Passer au payement</button>
    </form>
    </div>
</div>

<?php get_footer() ; ?>