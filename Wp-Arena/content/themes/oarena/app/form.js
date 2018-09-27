var app = {

    init: function () {

        console.log('form js init');
        $itemName = $('.item-name');
        console.log($itemName);
        $itemQuantity = $('.item-quantity');
        $itemPrice = $('.item-price');
        nameArray = [];
        quantityArray = [];
        priceArray = [];
        // j ecoute l evenement ajouter au panier
        $('#article-quantity').on('click', app.addItemToCart);
    },
    addItemToCart: function (evt) {
        evt.preventDefault();
        console.log('addItemOK');
        var array_name = [];
        var array_quantity = [];
        var array_price = [];

        // $itemName.val();
        $name = $itemName.val();
        $quantity = parseInt($itemQuantity.val());
        $price = parseInt($itemPrice.val());
        console.log($name);
        console.log($quantity);
        console.log($price);
        nameArray.push($name);
        quantityArray.push($quantity);
        priceArray.push($price);
        console.log(nameArray)


        app.displayCart()
    },
    displayCart: function () {
        console.log('je suis dans display cart');
        cartData = '<table><tr><th class="pr-2">Produit</th class="pl-5"><th>Quantité</th><th class="pr-5 pl-3">Prix</th><th class="pr-5">Total</th></tr>'
        // console.log(cartData);
        total = 0;
        for (i = 0; i < nameArray.length; i++) {
            total += quantityArray[i] * priceArray[i];
            cartData += "<tr><td class='mr-2'>" + nameArray[i] + "</td><td>" + quantityArray[i] + "</td><td class='pl-3'>" + priceArray[i] + "</td><td>" + quantityArray[i] * priceArray[i] + "</td><td><button class='buttonDelete'>Supprimer</button></td></tr>"
        }
        cartData += '<tr><td></td><td></td><td></td><td>' + total + '</td></tr></table>';
        document.getElementById('cart-mycart').innerHTML = cartData
        // Je rajoute un evenement au click sur supprimer
        $('.buttonDelete').on('click', app.delElement);
    },

    delElement: function (a) {
        nameArray.splice(a, 1);
        quantityArray.splice(a, 1);
        priceArray.splice(a, 1);
        app.displayCart();
    }

}
$(app.init);