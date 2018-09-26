<?php
/*
Template Name: Page panier
 */
?>

<?php get_header() ; ?>

<div class="card mb-2 p-3 m-auto w-75 rounded" style="background-color:#6994db ">
    <div class="card-body d-flex flex-column">
    <h3>Votre panier :</h3>
    <form action="">
        <div id="cart-form"></div>
        <label>Votre article</label>
        <input type="text" id="product-name"><br>
        <label>Quantité</label>
        <input type="number" id="product-quantity"><br>
        <label>Prix</label>
        <input type="number" id="product-price"><br>
        <button id="cart-add-item">Ajouter au panier</button>
    </form>
    <form action="post" name="shop-form">
    <button>Passer au payement</button>
    </form>
    </div>
</div>

<?php get_footer() ; ?>