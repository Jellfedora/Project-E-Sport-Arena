var app = {

    init: function () {

        console.log('js panier ok');
        //ecouteur d'evenement sur les changements de quantité
        //$('.product-cart-quantity').on('click', app.recalculateTotal);



    },
    recalculateTotal: function () {

        // Récupére la quantité de chaque produit OK
        $('.product-cart-quantity').each(function () {
            quantity = parseFloat($(this).val())
            console.log(('quantité du produit: ') + quantity);
        });

        // Récupére le prix unitaire de chaque produit OK
        $('.product-cart-price').each(function () {
            units = parseFloat($(this).text());
            console.log(('prix unitaire du produit: ') + (units));
        });


        //////////////////////////////////////////////
        //Partie qui ne fonctionne pas!
        // Prix total du produit
        $('.product-cart-price').each(function () {
            productTTC = units * quantity;
            //productTTC = parseInt($(this).text());
            console.log(('prix total ttc du produit: ') + (productTTC));
            // Je change le contenu du total ttc du produit
            $('.product-total-cart-price').html(productTTC.toFixed(2));;
        });
        /////////////////////////////////////////////


        // Renseigne le prix total du panier OKKKK NE PAS TOUCHER!!
        var results = 0;
        $('.product-total-cart-price').each(function () {
            results += parseInt($(this).text());
        });
        //console.log(('prix total du panier: ') + results);
        $('#total-cart').html(results.toFixed(2));


    },

}
$(app.init);




// A GARDER FONCTIONNE POUR UN PRODUIT MAIS PAS SI PLUSIEURS
// // Je récupére la quantité de chaque produit, FONCTIONNE SI UN SEUL TABLEAU
// var quantity = 0;
// $('.product-quantity').each(function () {
//     quantity = $(this).val();
//     console.log(('quantité du produit: ') + quantity);
//     return quantity;
// });

// // Aprés cest ok
// var units = 0;
// $('.product-price').each(function () {
//     //quantity = $('.product-quantity').val();
//     //console.log(('quantité du produit: ') + quantity);
//     units = parseInt($(this).text());
//     console.log(('prix unitaire du produit: ') + (units));
//     ttc = units * quantity;
//     console.log(('prix total ttc du produit: ') + (ttc));
//     // Je change le contenu du total ttc du produit
//     $('.product-total-price').html(ttc.toFixed(2));
// });