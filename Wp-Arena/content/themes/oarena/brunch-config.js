// See http://brunch.io for documentation.
exports.files = {
  javascripts: {
    joinTo: {
      'js/app.js': /^app/,
      'js/vendors.js': /^node_modules/
    }
  },
  stylesheets: {
    joinTo: {
      'css/app.css': /^app/,
      'css/vendors.css': /^node_modules/
    }
  }
};
exports.plugins = {
  // Paramétrage de sass
  sass: {
    options: {
      includePaths: [
        // déclaration a SASS d'autres fichiers sass
        'node_modules/bootstrap'
      ]
    }
  },
  browserSync: {
    files: ['*']
  },
  copycat: {
    'fonts': ['node_modules/font-awesome/fonts'],
  }
};
exports.watcher = {
  usePolling: true,
  awaitWriteFinish: true
}
exports.npm = {
    styles: {
      'normalize.css': ['normalize.css'],
      'font-awesome': ['css/font-awesome.css'],
      'bootstrap': ['dist/css/bootstrap.css']
    },
    globals: {
      '$': 'jquery',
      'jQuery': 'jquery',
      'rellax': 'rellax',
      'scrollex': 'jquery.scrollex',
      'bootstrap': 'bootstrap'
    }
  },
  exports.modules = {
    autoRequire: {
      'js/app.js': ['initialize', 'form', 'shop-cart', 'create-team', 'form-cart', 'update-cart'],
      //'js/app.js': ['form'],
    }
  }