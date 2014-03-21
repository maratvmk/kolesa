class Kolesa.Routers.Brands extends Backbone.Router
	routes:
		'brands': 'index'
	
	index: ->
		view = new Kolesa.Views.BrandsIndex()
		$('#container').html(view.render().el)
