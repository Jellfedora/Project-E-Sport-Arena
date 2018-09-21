var app = {

  init: function () {

    console.log('app.init');

    // Je créé mes variables pour cibler mes éléments + facilement
    $menu = $('.menu-lg');
    $footer = $('.footer')


    $('.hidden-menu-button').on('click', app.hideMenu);
    // $body.on('click', '.ui-button', app.toogleMenu);


  },
  hideMenu: function (evt) {

    console.log('hideMenu');

    // Je supprime l'évènement par défaut du bouton
    evt.preventDefault();

    $menu.toggleClass('menu-hide');
  }



}
$(app.init);