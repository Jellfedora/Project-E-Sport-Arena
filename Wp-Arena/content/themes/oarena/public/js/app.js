<<<<<<< HEAD
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
require.register("initialize.js", function(exports, require, module) {
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

  formError: function (evt) {
    // FORM = Je stoppe le comportement par défaut de la page
    evt.preventDefault();
    // console.log('OK')
    var dataToSend = $(this).serialize();

    //Je cache la div contenant l'alerte
    $('#alert-name').hide();
    // Je fais un appel Ajax
    $.ajax({
      url: custom_ajax_vars.ajaxurl,
      method: 'POST',
      dataType: 'json',
      data: dataToSend
    }).done(function (response) {
      console.log(coucou);
      if (response.code == 1) {
        window.setTimeout(function () {
          location.href = response.redirect;
        }, 2000);
      } else {
        var $alertsDiv = $('#alert-name');
        $alertDiv.show();
      }
    }).fail(function () {
      alert('ajax failed');
    })
  }


}
$(app.init);
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
=======
!function(){"use strict";var e="undefined"==typeof global?self:global;if("function"!=typeof e.require){var n={},r={},i={},o={}.hasOwnProperty,t=/^\.\.?(\/|$)/,u=function(e,n){for(var r,i=[],o=(t.test(n)?e+"/"+n:n).split("/"),u=0,s=o.length;u<s;u++)r=o[u],".."===r?i.pop():"."!==r&&""!==r&&i.push(r);return i.join("/")},s=function(e){return e.split("/").slice(0,-1).join("/")},l=function(n){return function(r){var i=u(s(n),r);return e.require(i,n)}},a=function(e,n){var i=m&&m.createHot(e),o={id:e,exports:{},hot:i};return r[e]=o,n(o.exports,l(e),o),o.exports},c=function(e){return i[e]?c(i[e]):e},f=function(e,n){return c(u(s(e),n))},d=function(e,i){null==i&&(i="/");var t=c(e);if(o.call(r,t))return r[t].exports;if(o.call(n,t))return a(t,n[t]);throw new Error("Cannot find module '"+e+"' from '"+i+"'")};d.alias=function(e,n){i[n]=e};var h=/\.[^.\/]+$/,p=/\/index(\.[^\/]+)?$/,w=function(e){if(h.test(e)){var n=e.replace(h,"");o.call(i,n)&&i[n].replace(h,"")!==n+"/index"||(i[n]=e)}if(p.test(e)){var r=e.replace(p,"");o.call(i,r)||(i[r]=e)}};d.register=d.define=function(e,i){if(e&&"object"==typeof e)for(var t in e)o.call(e,t)&&d.register(t,e[t]);else n[e]=i,delete r[e],w(e)},d.list=function(){var e=[];for(var r in n)o.call(n,r)&&e.push(r);return e};var m=e._hmr&&new e._hmr(f,d,n,r);d._cache=r,d.hmr=m&&m.wrap,d.brunch=!0,e.require=d}}(),function(){var e;"undefined"==typeof window?this:window;require.register("form.js",function(e,n,r){var i={init:function(){console.log("form js init")}};$(i.init)}),require.register("initialize.js",function(e,n,r){var i={init:function(){console.log("app.init"),$menu=$(".menu-lg"),$footer=$(".footer"),$main=$(".main"),$(".hide-menu-button").on("click",i.hideMenu),$(".show-menu-button").on("click",i.showMenu)},hideMenu:function(e){console.log("hideMenu"),$menu.addClass("menu-hide"),$footer.addClass("footer-hide"),$main.addClass("main-hide")},showMenu:function(e){$footer.removeClass("footer-hide"),$main.removeClass("main-hide"),setTimeout(i.showMenuheader,1e3)},showMenuheader:function(e){console.log("showMenu"),$menu.removeClass("menu-hide")}};$(i.init)}),require.alias("process/browser.js","process"),e=require("process"),require.register("___globals___",function(e,n,r){window.$=n("jquery"),window.jQuery=n("jquery"),window.rellax=n("rellax"),window.scrollex=n("jquery.scrollex"),window.bootstrap=n("bootstrap")})}(),require("___globals___"),require("initialize");
>>>>>>> master
