window.Kolesa =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
  	new Kolesa.Routers.Brands()
  	Backbone.history.start(pushState: true)

$(document).ready ->
  Kolesa.initialize()
