var app = {

    init: function () {

        console.log()

        // recuperer le bouton je lance la fonction
        $('.form_add_cart').on('submit', app.addArticle);
        $('.hideDiv').on('click', app.hideItemAdd);
        console.log('update-cart');

        $add_article = $('.alert-add-article');
        $add_article.hide();
    },

    // fonction JSON qui récupere un tableau d erreur 

    addArticle: function (evt) {
        evt.preventDefault();

        var dataToSend = $(this).serialize();
        console.log(dataToSend);
        // console.log($(this).attr('action'));

        // Je fais un appel Ajax
        $.ajax({
            url: 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/panier/',
            method: 'POST',
            dataType: 'json',
            data: dataToSend
        }).done(function (response) {

            if (response.code === 'ok') {
                // preventDefault();
                console.log('bien ajouté au panier')
                // console.log(response.id);
                $id_for_div = 'alert-add-article-ok' + response.id;
                // console.log($id_for_div);
                $('.' + $id_for_div).show();

            } else {
                console.log('Il y a une erreur');
            }


        }).fail(function () {

            console.log('Il y a une erreur');


        })
    },

    hideItemAdd: function () {
        console.log('add');
        $('.' + $id_for_div).hide();
    },

}

$(app.init);