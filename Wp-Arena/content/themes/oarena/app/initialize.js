var app = {

  init: function () {

    console.log('app.init');

    // Je créé mes variables pour cibler mes éléments + facilement
    $header = $('.header');
    $menu = $('.menu-lg');
    $menu_v_small = $('.menu-lg-v-small');
    $footer = $('.footer');
    $main = $('.main');
    $form_update_member_error = $('.error');
    $itemName = $('.item-name');

    //Effet sur lelement precedent quand on tape dans l'input
    $('.effect-register').on('keypress', app.showHoverEffect);

    // Show the team edition form
    $team_form_update = $('.team-form-update');
    $button_update_team = $('.button-update-team');

    $('.button-update-team').on('click', app.showTeamform);

    // Smooth Scroll
    // Je cible tout les a dont le href vaux #
    // MAIS pas ceux ton le href ne vaux QUE #
    $('#scrollToTop').on('click', app.smoothScroll);

    //A la soumission du formulaire update membre
    //$('.button-update-member').on('click', app.showErrorUpdateMember);

    // Création variable pour soumission du formulaire
    //$('#create-team-form').on('submit', app.formError);
    $('.hide-menu-button').on('click', app.hideMenu);
    $('.show-menu-button').on('click', app.showMenu);

    // j ecoute l evenement ajouter au panier
    $('.cart-add-item').on('click', app.addItemToCart);

    // Scroll to next elements . A minifier!!
    $('.scroll-to-tournament').click(function () {
      $('html,body').animate({
          scrollTop: $('.news__title').offset().top
        },
        'slow');
    });
    $('.scroll-to-actualities').click(function () {
      $('html,body').animate({
          scrollTop: $('.actualities').offset().top
        },
        'slow');
    });
    // app.addToCart();

  },
  showHoverEffect: function () {
    console.log('yoooo');
    $(this).prev().css('color', "green");
  },

  hideMenu: function (evt) {
    $menu.fadeOut(200);
    $menu_v_small.removeClass('hide');
    $footer.addClass('footer-hide');
    $main.addClass('main-hide');

  },

  showMenu: function (evt) {
    $menu_v_small.addClass('hide');
    $footer.removeClass('footer-hide');
    $main.removeClass('main-hide');
    setTimeout(app.showMenuheader, 100);
  },

  showMenuheader: function (evt) {
    $menu.fadeIn(300);
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
    //evt.preventDefault();

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
  /////////////////////////////////////////////////////////////////////////
  showErrorUpdateMember: function (evt) {
    evt.preventDefault();
    console.log('formulaire update membre soumis');

    // Je récupère les données à envoyer, déjà formatées
    // "dataToSend" est au format "Query String"
    var dataToSend = $(this).serialize();
    $.ajax({
      url: $(this).attr('update-member-team.php'), // à adapter selon la ressource
      method: 'POST', // GET par défaut
      data: dataToSend,

      headers: {}, // si je souhaite modifier les entêtes
      success: function (data) { // en cas de requête réussie
        // Je procède à l'insertion
        $form_update_member_error.addClass('show');
        console.log('bravo');
      },
      error: function (data) { // en cas d'échec
        // Sinon je traite l'erreur
        console.log('Erreur…');
      }
    });
  },
}




$(app.init);

// A ranger!!!

// Mise en place du scroll to top.
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





// hideMenu: function (evt) {
//     $menu.fadeOut(3000);
//     $menu_v_small.fadeIn(3000);
//     $footer.addClass('footer-hide');
//     $main.addClass('main-hide');

//   },

//   showMenu: function (evt) {
//     $menu_v_small.fadeOut(3000);
//     $footer.removeClass('footer-hide');
//     $main.removeClass('main-hide');
//     setTimeout(app.showMenuheader, 300);
//   },

//   showMenuheader: function (evt) {
//     $menu.fadeIn(3000);
//   },