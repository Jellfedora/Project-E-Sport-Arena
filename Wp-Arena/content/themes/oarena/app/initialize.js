var app = {

  init: function () {

    console.log('app.init');


    // Je créé mes variables pour cibler mes éléments + facilement
    $menu = $('.menu-lg');
    $footer = $('.footer');
    $main = $('.main');


    // Création variable pour soumission du formulaire
    $('#create-team-form').on('click', app.formError);
    $('.hide-menu-button').on('click', app.hideMenu);
    $('.show-menu-button').on('click', app.showMenu);


  },
  hideMenu: function (evt) {

    console.log('hideMenu');

    $menu.addClass('menu-hide');
    $footer.addClass('footer-hide');
    $main.addClass('main-hide');

  },

  showMenu: function (evt) {
    $footer.removeClass('footer-hide');
    $main.removeClass('main-hide');
    setTimeout(app.showMenuheader, 1000);
  },

  showMenuheader: function (evt) {
    console.log('coucoucoucoucou');
    $menu.removeClass('menu-hide');
  },

  // formError: function (evt) {
  //   // FORM = Je stoppe le comportement par défaut de la page
  //   evt.preventDefault();
  //   // console.log('OK')
  //   var dataToSend = $(this).serialize();

  //   //Je cache la div contenant l'alerte
  //   $('#alert-name').hide();
  //   // Je fais un appel Ajax
  //   $.ajax({
  //     url: custom_ajax_vars.ajaxurl,
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
  //       $alertDiv.show();
  //     }
  //   }).fail(function () {
  //     alert('ajax failed');
  //   })
  // }


}
$(app.init);