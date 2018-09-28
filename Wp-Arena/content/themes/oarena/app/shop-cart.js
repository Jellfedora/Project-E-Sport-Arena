var app = {

    init: function () {

        var taxRate = 0.00;
        var shippingRate = 5.00;
        var fadeTime = 300;

        // Tout se déclenche au click sur la quantité 
        app.recalculateCart();

        /* Assign actions */
        $('.product-quantity input').change(function () {
            updateQuantity(this);
        });

        $('.product-removal button').click(function () {
            removeItem(this);
        });
    },

    /* Recalculate cart */
    recalculateCart: function () {
        var subtotal = 0;

        // récupere les valeurs de chaque objet ( each = foreach du php ) .text( ) sans argument me donne un return
        // j'ai donc ici le return du prix ajouter a l'autre prix ( += )
        $('.product').each(function () {
            // parefloat me rend un float
            subtotal += parseFloat($(this).children('.product-line-price').text());
            // PROBLEME ICI comme il boucle et que rien n'est affiché il boucle sur du vide NaN => donc bug sur le total nan * nan = nan
            // Probleme de valeur par défaut ? 
            console.log(subtotal);
        });

        // Calcul du total de tous les articles 
        // Je multiplie le prix total des 3 articles * les taxes ( ici 0 )
        var tax = subtotal * taxRate;
        var shipping = (subtotal > 0 ? shippingRate : 0);
        var total = subtotal + tax + shipping;

        // affichage dans le panier total 
        // Je fais un fadeout ( effet de transparence ) sur tous les chiffres 
        $('.totals-value').fadeOut(fadeTime, function () {
            // J'insere dans le tableau les valeurs ( html + arg variable subtotal ) ( si vide = return)
            // Je fixe les 2 chiffres aprés la virgule a 2
            $('#cart-subtotal').html(subtotal.toFixed(2));
            $('#cart-tax').html(tax.toFixed(2));
            $('#cart-shipping').html(shipping.toFixed(2));
            $('#cart-total').html(total.toFixed(2));
            // Si le total = 0
            // Effets divers sur le bouton
            if (total == 0) {
                $('.checkout').fadeOut(fadeTime);
            } else {
                $('.checkout').fadeIn(fadeTime);
            }
            $('.totals-value').fadeIn(fadeTime);
        });
    },

    // Mise a jour de la quantité ( 1ere fonction qui se lance )
    updateQuantity: function (quantityInput) {

        // Calculs 
        // Récupere dans des variables les valeurs 
        var productRow = $(quantityInput).parent().parent();
        // price récupere la valeur de l'enfant de product price ( return car text  est vide)
        var price = parseFloat(productRow.children('.product-price').text());
        // récupere la valeur de l'input ou il y a la quantité avec val vide
        var quantity = $(quantityInput).val();
        // linePrice récupere le total de chaque article ( prix * quantité )
        var linePrice = price * quantity;

        // Mise a jour + effets sur l'apparition / disparition du chiffre
        productRow.children('.product-line-price').each(function () {
            $(this).fadeOut(fadeTime, function () {
                $(this).text(linePrice.toFixed(2));
                recalculateCart();
                $(this).fadeIn(fadeTime);
            });
        });
    }


    // Supprimer l'article du panier
    // Remove bouton est l'objet ayant la classe HTML product-removal-button
    // function removeItem(removeButton) {
    //     console.log(removeButton);
    // Supprime la ligne contenant le total cible l'article complet avec parent / parent A VOIR  PARCE QUE SUPPRIME TOUT L ARTICLE
    // Fais un effet de style et recalcule le panier
    // var productRow = $(removeButton).parent().parent();
    // productRow.slideUp(fadeTime, function () {
    //     productRow.remove();
    //     recalculateCart();
    // });

}


$(app.init);