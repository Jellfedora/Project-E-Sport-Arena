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
        $('#success-create-team').hide();

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
            url: 'http://localhost/Cours/Wordpress/Projet/Projet-master/Project-E-Sport-Arena/Wp-Arena/creer-une-equipe/',
            method: 'POST',
            dataType: 'json',
            data: dataToSend
        }).done(function (response) {
            console.log(response);
            if (response.code == 1) {
                var $alertsDiv = $('#alert-name');
                $alertsDiv.show();
                $('#alert-name-empty-cross').on('click', function hideEmptyTeam() {
                    $('#alert-name').hide();
                });
                // window.setTimeout(function () {
                //   location.href = response.redirect;
                // }, 5000);
            } else if (response.code == 2) {
                var $alertDivEmpty = $('#alert-name-exist');
                $alertDivEmpty.show();
                $('#alert-name-exist-cross').on('click', function hideExistTeam() {
                    $('#alert-name-exist').hide();
                });
                alert - name - exist
            } else if (response.code == 3) {
                var $alertDescriptionEmpty = $('#alert-description-empty');
                $alertDescriptionEmpty.show();
                $('#alert-description-empty-cross').on('click', function hideEmptyDescription() {
                    $('#alert-description-empty').hide();
                });
            } else if (response.code == 4) {
                var $alertTeamMoreThanOne = $('#alert-team-more-than-one');
                $alertTeamMoreThanOne.show();
                $('#alert-name-already-create-cross').on('click', function hideTeamMoreThan() {
                    $('#alert-team-more-than-one').hide();
                });
            } else if (response.code == 200) {
                $('#success-create-team').show();

                window.location(response.url);
            }

        }).fail(function () {
            console.log('FAIL');
        })
    },
}

$(app.init);