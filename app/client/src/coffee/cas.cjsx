module.exports = class

  @deauthorize: -> $.removeCookie("authentication_token")

  @authorize: (authentication_token) ->
    $.cookie 'authentication_token', authentication_token,
      secure: window.location.protocol is "https:"
      path: "/"
      expires: 30

  @boot: ->
    @app = new Davis.App

    # Configure the app
    @app.configure (config) ->
      config.handleRouteNotFound = false

    # Attach the routes to the app
    @app.use(route) for route in routes

    # Prime the history
    Davis.history.replace Davis.Request.forPageLoad()

    # Kickoff!
    @app.start()

routes = require 'routes'
