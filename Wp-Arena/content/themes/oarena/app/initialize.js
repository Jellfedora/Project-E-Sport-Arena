var app = {

  init: function () {

    console.log('app.init');


    // Je créé mes variables pour cibler mes éléments + facilement
    $header = $('.header');
    $menu = $('.menu-lg');
    $menu_v_small = $('.menu-lg-v-small');
    $footer = $('.footer');
    $main = $('.main');


    // Show the team edition form
    $team_form_update = $('.team-form-update');
    $button_update_team = $('.button-update-team');
    $('.button-update-team').on('click', app.showTeamform);

    // Smooth Scroll
    // Je cible tout les a dont le href vaux #
    // MAIS pas ceux ton le href ne vaux QUE #
    $('a[href*="#"]:not([href="#"])').on('click', app.smoothScroll);

    // Création variable pour soumission du formulaire
    // $('#create-team-form').on('click', app.formError);
    $('.hide-menu-button').on('click', app.hideMenu);
    $('.show-menu-button').on('click', app.showMenu);

    // Je cache la div qui contient le message d erreur cette team est deja prise
    $('#alert-name').hide();



  },
  hideMenu: function (evt) {
    $menu.addClass('menu-hide');
    $menu_v_small.removeClass('hide');
    $footer.addClass('footer-hide');
    $main.addClass('main-hide');

  },

  showMenu: function (evt) {
    $menu_v_small.addClass('hide');
    $footer.removeClass('footer-hide');
    $main.removeClass('main-hide');
    setTimeout(app.showMenuheader, 300);
  },

  showMenuheader: function (evt) {
    $menu.removeClass('menu-hide');
  },

  showTeamform: function (evt) {
    $team_form_update.addClass('show');
    $button_update_team.addClass('hide');
  },

  buttonElevator: function (evt) {

  },

  smoothScroll: function (evt) {

    console.log('hey');
    // Je supprime l'évènement par défaut de l'ancre
    evt.preventDefault();

    // Je transforme la cible en objet jquery
    var $target = $(this.hash);

    // SI l'element existe bien...
    if ($target.length) {

      var targetPosition = $target.offset().top - $header.height() + 1;

      $('html, body').animate({
        scrollTop: targetPosition
      }, 1500);
    }


  },

  formError: function (evt) {
    // FORM = Je stoppe le comportement par défaut de la page
    evt.preventDefault();
    console.log('OK')
    var dataToSend = $(this).serialize();

    //Je cache la div contenant l'alerte

    // Je fais un appel Ajax
    //   $.ajax({
    //     url: 'localhost/Project/Project-E-Sport-Arena/Wp-Arena/wp-admin/admin-ajax.php',
    //     method: 'POST',
    //     dataType: 'json',
    //     data: dataToSend
    //   }).done(function (response) {
    //     console.log(coucou);
    //     if (response.code == 1) {
    //       window.setTimeout(function () {
    //         location.href = response.redirect;
    //       }, 2000);
    //     } else {
    //       var $alertsDiv = $('#alert-name');
    //       $alertsDiv.show();
    //     }
    //   }).fail(function () {
    //     console.log('ajax failed');
    //   })
    // }


  }
}
$(app.init);



$(document).ready(function () {
  $(window).scroll(function () {
    if ($(window).scrollTop() == 0) {
      $('#scrollToTop').fadeOut("fast");
    } else {
      if ($('#scrollToTop').length == 0) {
        $('body').append('<div id="scrollToTop">' + '<a href="#">Retour en haut</a>' + '</div>');
      }
      $('#scrollToTop').fadeIn("fast");
    }
  });
  $('body').on('click', '#scrollToTop a', function (event) {
    event.preventDefault();
    $('html,body').animate({
      scrollTop: 0
    }, 'slow');
  });
});