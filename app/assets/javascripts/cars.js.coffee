# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$('#car_brand_id').change ->
		$.ajax
		  url: "/cars/models"
		  data: { brand_id: $('#car_brand_id').val() }
		  success: (data) ->
		    $('#car_model_id').html(data).removeAttr('disabled')
		 