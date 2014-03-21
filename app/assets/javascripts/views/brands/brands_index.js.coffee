class Kolesa.Views.BrandsIndex extends Backbone.View

  template: JST['brands/index']

  render: ->
  	$(@el).html(@template())
  	this
