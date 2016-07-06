_            = require('underscore')
$            = require ('jquery')
envUrlPrefix = window.location.host

apiPrefix = "/api/"

routes =
  users:
    create:      "applications"
    index:       "users"
    show:        "applications/:id"
    destroy:     "applications/:id"
    for_project: "applications/for_project/:id"

actionMethodMap =
  index:      "GET"
  create:     "POST"
  update:     "PATCH"
  destroy:    "DELETE"
  deactivate: "POST"

module.exports = (resource, action, data, success = null, error = null, method = null, additionalSetup = {}) ->

  if resourceHash = routes[resource]
    if url = "#{window.location.protocol}//#{envUrlPrefix}#{apiPrefix}#{resourceHash[action]}"
      if url.match(/:id/g) and data.id
        url = url.replace ":id", data.id
        delete data.id

      unless method
        method = actionMethodMap[action]

  setup =
    url: url
    method: method
    data: data
    success: success
    error: error

  _.extend setup, additionalSetup
  $.ajax setup

