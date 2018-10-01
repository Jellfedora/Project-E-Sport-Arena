var app = {

    init: function () {

        console.log()

        // recuperer le bouton je lance la fonction
        $('.form_add_cart').on('submit', app.addArticle);

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
                $id = response.id;
                $('.hideDiv' + $id).on('click', function hideItemAdd() {
                    $id = response.id;
                    $id_for_div = 'alert-add-article-ok' + $id;
                    $('.' + $id_for_div).hide();

                });
                // preventDefault();
                console.log('bien ajouté au panier')
                // console.log(response.id);
                $id_for_div = 'alert-add-article-ok' + $id;
                console.log($id_for_div);

            } else {
                console.log('Il y a une erreur');
            }
            $('.' + $id_for_div).show();


        }).fail(function () {

            console.log('Il y a une erreur');

        })
    },
}

$(app.init);