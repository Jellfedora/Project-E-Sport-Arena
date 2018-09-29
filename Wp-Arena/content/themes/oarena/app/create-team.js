var app = {

    init: function () {

        console.log('create-team-init');
        nameArray = [];
        quantityArray = [];
        priceArray = [];

        // Je cache la div qui contient le message d erreur cette team est deja prise
        $('#create-team-form').on('submit', app.formError);
        $('#alert-name').hide();
        $('#alert-name-exist').hide();
        $('#alert-team-more-than-one').hide();
        $('#alert-description-empty').hide();

    },

    formError: function (evt) {
        evt.preventDefault();
        console.log('OK')

        var dataToSend = $(this).serialize();

        console.log(this);
        console.log(dataToSend);
        console.log($(this).attr('action'));

        // Je cache la div contenant l 'alerte

        // Je fais un appel Ajax
        $.ajax({
            url: 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/creer-une-equipe/',
            method: 'POST',
            dataType: 'json',
            data: dataToSend
        }).done(function (response) {
            console.log(response);
            if (response.code == 1) {
                var $alertsDiv = $('#alert-name');
                $alertsDiv.show();
                // window.setTimeout(function () {
                //   location.href = response.redirect;
                // }, 5000);
            }
            if (response.code == 2) {
                var $alertDivEmpty = $('#alert-name-exist');
                $alertDivEmpty.show();
            }
            if (response.code == 3) {
                var $alertDescriptionEmpty = $('#alert-description-empty');
                $alertDescriptionEmpty.show();
            }
            if (response.code == 4) {
                var $alertTeamMoreThanOne = $('#alert-team-more-than-one');
                $alertTeamMoreThanOne.show();
            }
        }).fail(function () {
            console.log('IF OK ');
            $('#alert-name').hide();
            window.alert('Team créée félicitations');
            window.setTimeout(function () {
                location.href = response.redirect;
            }, 500);
        })
    },
}

$(app.init);