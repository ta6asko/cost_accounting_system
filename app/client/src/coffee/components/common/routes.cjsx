React        = require('react');
Router       = require('react-router');
App          = require('../payments/app');
New          = require('../payments/new');
SignUp       = require('../registration/sign_up');
DefaultRoute = Router.DefaultRoute
Route        = Router.Route

module.exports = ->
  <Route name="main" path="/" handler={App}>
    <DefaultRoute name="new" handler={New} />
    <Route name="sign_up" handler={SignUp} />
  </Route>
