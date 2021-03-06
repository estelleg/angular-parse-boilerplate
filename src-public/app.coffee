'use strict'

app = angular.module 'angularParseBoilerplate', [
  'ng'
  'ngResource'
  'ui.router'
  'ui.bootstrap'
  'app.templates'
  'Parse'
]

app.config (
  $locationProvider
  $stateProvider
  $urlRouterProvider
  ParseProvider
) ->

  $locationProvider.hashPrefix '!'

  $stateProvider
  .state 'task',
    url: '/:locale'
    controller: 'TaskCtrl'
    templateUrl: 'task.html'

  $urlRouterProvider.otherwise '/fr'

  ParseProvider.initialize(
    "N2xyMRbsrFcBuzq7TXLwieDGM9FzwODEY44LLFOP",
    "zTAHO7HKWvbV1awq5wQlexRc368lOQtSbmycOi0O"
  )

app.run ($rootScope, $state) ->
  $rootScope.$state = $state
