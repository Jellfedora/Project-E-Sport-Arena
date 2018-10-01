/* Set rates + misc */
var taxRate = 0.00;
var shippingRate = 0.00;
var fadeTime = 300;


var titleOneItem = $('.product-title');
var quantityTotal = $('.product-quantity input')
var item = this;
console.log(item);

// Tout se déclenche au click sur la quantité 
recalculateCart();

/* Assign actions */
$('.product-quantity input').change(function () {
    updateQuantity(this);
});

$('.product-removal button').click(function () {
    removeItem(this);
});

/* Recalculate cart */
function recalculateCart() {
    var subtotal = 0;

    // récupere les valeurs de chaque objet ( each = foreach du php ) .text( ) sans argument me donne un return
    // j'ai donc ici le return du prix ajouter a l'autre prix ( += )
    $('.product').each(function () {
        // parefloat me rend un float
        subtotal += parseFloat($(this).children('.product-line-price').text());
        // PROBLEME ICI comme il boucle au tant que rien n'est affiché il boucle sur du vide NaN => donc bug sur le total nan * nan = nan
        // Probleme de valeur par défaut ? 
        // console.log(subtotal);
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
}


// Mise a jour de la quantité ( 1ere fonction qui se lance )
function updateQuantity(quantityInput) {

    // Calculs 
    // Récupere dans des variables les valeurs 
    var productRow = $(quantityInput).parent().parent();
    // price récupere la valeur de l'enfant de product price ( return car text  est vide)
    var price = parseFloat(productRow.children('.product-price').text());
    // récupere la valeur de l'input ou il y a la quantité avec val vide
    var quantity = $(quantityInput).val();
    // var title = $(titleOneItem).text();
    // console.log(title);
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
    // console.log(this);
    // console.log(linePrice);
    // console.log(($title).text(this));

    // Si la quantité est supérieure a 0 et le lineprice supérieur a 0
    // Alors retourne moi les titres + quantité
    // Au submit enregistre tout dans une métabox.
    // Sur la page panier avec un get_current_user on réinjecte les données dans les méta box 
    // $('.product-quantity input')
    // if (quantity > 0 || lineprice > 0) {
    //     itemQuantity = [];
    //     console.log('coucou vous avez des valeurs supérieures a 0 en quantité et lineprice');
    //     quantityTotal.each(function () {
    //         quantity = itemQuantity.push(quantity);

    //     });
    //     if (this.quantity > 0) {
    //         itemTitle = [];
    //         titleOneItem.each(function () {
    //             title = itemTitle.push(title);
    //         });
    //     } else {
    //         console.log('nope');
    //     }
    // } else {
    //     console.log(vide);
    // }
    // console.log(itemTitle);
    // console.log(quantity);
    // console.log(itemQuantity);
}



// Supprimer l'article du panier
// Remove bouton est l'objet ayant la classe HTML product-removal-button
function removeItem(removeButton) {
    console.log(removeButton);
    // Supprime la ligne contenant le total cible l'article complet avec parent / parent A VOIR  PARCE QUE SUPPRIME TOUT L ARTICLE
    // Fais un effet de style et recalcule le panier
    var productRow = $(removeButton).parent().parent();
    productRow.slideUp(fadeTime, function () {
        productRow.remove();
        recalculateCart();
    });

}