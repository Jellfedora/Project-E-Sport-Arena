// var app = {

//     init: function () {

//         console.log('team-to-tournament-init');

//         // Je cache la div qui contient le message d erreur cette team est deja prise
//         // $('.add-team-to-tournament-form').on('submit', app.formTeamToTournament);
//         $('.delete-team-to-tournament-form').on('submit', app.formTeamToTournament);
//         $('#alert-team-subscribe').hide();
//         $('.alert-team-delete').hide();
//         $('#alert-team-error-subscribe').hide();

//     },

//     formTeamToTournament: function (evt) {
//         evt.preventDefault();
//         console.log('OK')

//         var dataToSend = $(this).serialize();

//         console.log(this);
//         console.log(dataToSend);
//         console.log($(this).attr('action'));

//         // Je cache la div contenant l 'alerte

//         // Je fais un appel Ajax
//         $.ajax({
//             url: 'http://localhost/Project/Project-E-Sport-Arena/Wp-Arena/tournoi/counter-strike-go/',
//             method: 'POST',
//             dataType: 'json',
//             data: dataToSend
//         }).done(function (response) {
//             console.log(response);
//             if (response.code == 200) {
//                 var $alertsDiv = $('#alert-team-subscribe');
//                 $alertsDiv.show();
//                 $('#alert-team-subscribe-cross').on('click', function teamSubscribe() {
//                     $('#alert-team-subscribe').hide();
//                 });
//                 // window.setTimeout(function () {
//                 //   location.href = response.redirect;
//                 // }, 5000);
//             } else if (response.code == 1) {
//                 var $alertsDiv = $('#alert-team-subscribe');
//                 $alertsDiv.show();
//                 $('#alert-team-subscribe-cross').on('click', function teamExiste() {
//                     $('alert-team-error-subscribe-cross').hide();
//                 });

//             } else if (response.code == 100) {
//                 var $alertsDiv = $('#alert-team-error-subscribe');
//                 $alertsDiv.show();
//                 $('alert-team-subscribe-cross').on('click', function test() {
//                     $('#alert-team-error-subscribe').hide();
//                 });
//             }

//         }).fail(function () {
//             console.log('FAIL');
//         })
//     },
// }

// $(app.init);