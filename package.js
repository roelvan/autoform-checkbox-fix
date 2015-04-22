Package.describe({
  name: 'rova:autoform-checkbox-fix',
  version: '0.0.1',
  summary: 'Quickfix for the autoform checkbox problem.',
  git: '',
});

Package.onUse(function(api) {
  api.versionsFrom('1.1.0.2');
  api.use([
    'jquery',
    'templating',
    'reactive-var',
    'coffeescript',
    'ui',
    'aldeed:autoform@4.0.0 || 5.0.0'
  ], 'client');
  api.addFiles([
    'afCheckboxFix.html',
    'afCheckboxFix.coffee'
  ], 'client');
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('rova:autoform-icheck');
  api.addFiles('autoform-icheck-tests.js');
});
