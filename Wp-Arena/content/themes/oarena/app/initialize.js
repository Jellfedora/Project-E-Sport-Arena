var app = {

  init: function () {

    console.log('app.init');

    // Je créé mes variables pour cibler mes éléments + facilement
    $menu = $('.menu-lg');
    $footer = $('.footer')
    $main = $('.main')


    $('.hide-menu-button').on('click', app.hideMenu);
    $('.show-menu-button').on('click', app.showMenu);
    // $body.on('click', '.ui-button', app.toogleMenu);


  },
  hideMenu: function (evt) {

    console.log('hideMenu');

    $menu.addClass('menu-hide');
    $footer.addClass('footer-hide');
    $main.addClass('main-hide');

  },
  showMenu: function (evt) {
    console.log('showMenu');
    // Je supprime l'évènement par défaut du bouton
    evt.preventDefault();
    $menu.removeClass('menu-hide');
    $footer.removeClass('footer-hide');
    $main.removeClass('main-hide');
  },



}
$(app.init);