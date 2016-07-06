React                = require("react")
ReactDom             = require("react-dom")
App                  = require('./components/payments/app');
New                  = require('./components/payments/new');
SignUp               = require('./components/registration/sign_up');

Main = React.createClass

  render: ->
    <div className="col-lg-12">
      ssssssss
    </div>

ReactDom.render(<Main />, document.getElementById('app'))
