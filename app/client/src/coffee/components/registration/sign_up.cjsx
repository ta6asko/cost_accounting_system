React            = require("react")
LinkedStateMixin = require('react-addons-linked-state-mixin')
comm             = require('../common/comm')

module.exports = React.createClass

  mixins: [LinkedStateMixin]

  getInitialState: ->
    email: ''
    password: ''
    passwordConfirmation: ''

  submitForm: ->
    comm "users", "index", {}, (result, status) =>
      console.log result
      console.log APP_ROOT
    false

  render: ->
    <div className="col-lg-12">
      <div className="col-lg-4 col-lg-offset-4">
        <div className="panel panel-default">
          <div className="panel-body">
            <h2>Sign up</h2>
            <form className="form-vertical">
              <div className="form-group">
                <input className="form-control"
                       name="email"
                       valueLink={@state.email}
                       type="email"
                       required
                       autoFocus
                       valueLink={@linkState('email')} />
              </div>
              <div className="form-group">
                <input className="form-control"
                       valueLink={@state.password}
                       type="password"
                       required
                       valueLink={@linkState('password')} />
              </div>
              <div className="form-group">
                <input className="form-control"
                  valueLink={@state.passwordConfirmation}
                  type="password"
                  required
                  valueLink={@linkState('passwordConfirmation')} />
              </div>
              <div className="text-center">
                <button className="btn btn-default btn-primary" onClick={@submitForm}>
                  Sign Up
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
