(function() {
  'use strict';

  var globals = typeof global === 'undefined' ? self : global;
  if (typeof globals.require === 'function') return;

  var modules = {};
  var cache = {};
  var aliases = {};
  var has = {}.hasOwnProperty;

  var expRe = /^\.\.?(\/|$)/;
  var expand = function(root, name) {
    var results = [], part;
    var parts = (expRe.test(name) ? root + '/' + name : name).split('/');
    for (var i = 0, length = parts.length; i < length; i++) {
      part = parts[i];
      if (part === '..') {
        results.pop();
      } else if (part !== '.' && part !== '') {
        results.push(part);
      }
    }
    return results.join('/');
  };

  var dirname = function(path) {
    return path.split('/').slice(0, -1).join('/');
  };

  var localRequire = function(path) {
    return function expanded(name) {
      var absolute = expand(dirname(path), name);
      return globals.require(absolute, path);
    };
  };

  var initModule = function(name, definition) {
    var hot = hmr && hmr.createHot(name);
    var module = {id: name, exports: {}, hot: hot};
    cache[name] = module;
    definition(module.exports, localRequire(name), module);
    return module.exports;
  };

  var expandAlias = function(name) {
    return aliases[name] ? expandAlias(aliases[name]) : name;
  };

  var _resolve = function(name, dep) {
    return expandAlias(expand(dirname(name), dep));
  };

  var require = function(name, loaderPath) {
    if (loaderPath == null) loaderPath = '/';
    var path = expandAlias(name);

    if (has.call(cache, path)) return cache[path].exports;
    if (has.call(modules, path)) return initModule(path, modules[path]);

    throw new Error("Cannot find module '" + name + "' from '" + loaderPath + "'");
  };

  require.alias = function(from, to) {
    aliases[to] = from;
  };

  var extRe = /\.[^.\/]+$/;
  var indexRe = /\/index(\.[^\/]+)?$/;
  var addExtensions = function(bundle) {
    if (extRe.test(bundle)) {
      var alias = bundle.replace(extRe, '');
      if (!has.call(aliases, alias) || aliases[alias].replace(extRe, '') === alias + '/index') {
        aliases[alias] = bundle;
      }
    }

    if (indexRe.test(bundle)) {
      var iAlias = bundle.replace(indexRe, '');
      if (!has.call(aliases, iAlias)) {
        aliases[iAlias] = bundle;
      }
    }
  };

  require.register = require.define = function(bundle, fn) {
    if (bundle && typeof bundle === 'object') {
      for (var key in bundle) {
        if (has.call(bundle, key)) {
          require.register(key, bundle[key]);
        }
      }
    } else {
      modules[bundle] = fn;
      delete cache[bundle];
      addExtensions(bundle);
    }
  };

  require.list = function() {
    var list = [];
    for (var item in modules) {
      if (has.call(modules, item)) {
        list.push(item);
      }
    }
    return list;
  };

  var hmr = globals._hmr && new globals._hmr(_resolve, require, modules, cache);
  require._cache = cache;
  require.hmr = hmr && hmr.wrap;
  require.brunch = true;
  globals.require = require;
})();

(function() {
var global = typeof window === 'undefined' ? this : window;
var process;
var __makeRelativeRequire = function(require, mappings, pref) {
  var none = {};
  var tryReq = function(name, pref) {
    var val;
    try {
      val = require(pref + '/node_modules/' + name);
      return val;
    } catch (e) {
      if (e.toString().indexOf('Cannot find module') === -1) {
        throw e;
      }

      if (pref.indexOf('node_modules') !== -1) {
        var s = pref.split('/');
        var i = s.lastIndexOf('node_modules');
        var newPref = s.slice(0, i).join('/');
        return tryReq(name, newPref);
      }
    }
    return none;
  };
  return function(name) {
    if (name in mappings) name = mappings[name];
    if (!name) return;
    if (name[0] !== '.' && pref) {
      var val = tryReq(name, pref);
      if (val !== none) return val;
    }
    return require(name);
  }
};
require.register("form.js", function(exports, require, module) {
var app = {

    init: function () {

        console.log('form js init');

    }

}
$(app.init);
});

require.register("initialize.js", function(exports, require, module) {
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
    $('#scrollToTop').on('click', app.smoothScroll);

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
});

require.alias("process/browser.js", "process");process = require('process');require.register("___globals___", function(exports, require, module) {
  

// Auto-loaded modules from config.npm.globals.
window["$"] = require("jquery");
window.jQuery = require("jquery");
window.rellax = require("rellax");
window.scrollex = require("jquery.scrollex");
window.bootstrap = require("bootstrap");


});})();require('___globals___');

require('initialize');
//# sourceMappingURL=app.js.map