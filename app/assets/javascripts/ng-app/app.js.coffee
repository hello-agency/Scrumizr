angular
.module 'Scrumizr', ['ngRoute', 'templates']
.config ($routeProvider, $locationProvider) ->
  $routeProvider
    .when '/dashboard',
      templateUrl: 'dashboard.html'
      controller: 'DashboardController'
  $locationProvider.html5Mode true
