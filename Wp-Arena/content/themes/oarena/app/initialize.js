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
    //console.log($itemName);
    $itemQuantity = $('.item-quantity');
    $itemPrice = $('.item-price');
    nameArray = [];
    quantityArray = [];
    priceArray = [];


    // $('#create-team-form').on('submit', app.formError);

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

    // Je cache la div qui contient le message d erreur cette team est deja prise
    $('#alert-name').hide();
    $('#alert-name-exist').hide();
    $('#alert-team-more-than-one').hide();
    $('#alert-description-empty').hide();

    // Scroll to next elements . A minifier!!
    $('.scroll-to-tournament').click(function () {
      $('html,body').animate({
          scrollTop: $('.news__title').offset().top
        },
        'slow');
    });
    $('.scroll-to-actualities').click(function () {
      $('html,body').animate({
          scrollTop: $('.news').offset().top
        },
        'slow');
    });
    // app.addToCart();

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

  ////////////////////////////////////////////////////////////////////////
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
      }, 10000);
    })
  },

  // addItemToCart: function (evt) {
  //   evt.preventDefault();
  //   console.log('addItemOK');
  //   var array_name = [];
  //   var array_quantity = [];
  //   var array_price = [];

  //   // $itemName.val();
  //   $name = $itemName.val();
  //   $quantity = parseInt($itemQuantity.val());
  //   $price = parseInt($itemPrice.val());
  //   console.log($name);
  //   console.log($quantity);
  //   console.log($price);
  //   nameArray.push($name);
  //   quantityArray.push($quantity);
  //   priceArray.push($price);
  //   console.log(nameArray)


  //   app.displayCart()
  // },

  // displayCart: function (elem) {
  //   console.log(elem);
  //   console.log('je suis dans display cart');
  //   cartData = '<table><tr><th class="pr-2">Produit</th class="pl-5"><th>Quantité</th><th class="pr-5 pl-3">Prix</th><th class="pr-5">Total</th></tr>'
  //   // console.log(cartData);
  //   total = 0;
  //   for (i = 0; i < nameArray.length; i++) {
  //     total += quantityArray[i] * priceArray[i];
  //     cartData += "<tr><td class='mr-2'>" + nameArray[i] + "</td><td>" + quantityArray[i] + "</td><td class='pl-3'>" + priceArray[i] + "</td><td>" + quantityArray[i] * priceArray[i] + "</td><td><button id='buttonDelete" + i + "'>Supprimer</button></td></tr>"
  //   }
  //   cartData += '<tr><td></td><td></td><td></td><td>' + total + '</td></tr></table>';
  //   document.getElementById('cart-mycart').innerHTML = cartData
  //   // Je rajoute un evenement au click sur supprimer
  //   $('.buttonDelete').on('click', app.delElement);
  // },

  // delElement: function (a) {
  //   nameArray.splice(a, 1);
  //   quantityArray.splice(a, 1);
  //   priceArray.splice(a, 1);
  //   app.displayCart();
  // },

  // addToCart: function () {
  //   console.log('coucou t es dans addtocart');
  //   for (i = 0; i < nameArray.lenght; i++) {
  //     addToCartData = "<button class='cart-add-item" + i + "'>Ajouter au panier</button>"
  //     console.log(addToCartData);
  //     document.getElementByClass("cart-add-item" + $i).innerHTML = addToCartData;

  //   }
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