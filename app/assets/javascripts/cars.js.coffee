# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
	$('#car_brand_id').change ->
		$.ajax
		  url: "/cars/models"
		  data: { brand_id: $('#car_brand_id').val() }
		  success: (data) ->
		    $('#car_model_id').html(data).removeAttr('disabled')

	$('.thumb-image').on 'click', (e) -> 
		$('#gallery a:first').css('visibility', 'hidden')
		$('#gallery a:first').html("<img src=" + $(this).parent().attr('href') + " style='padding-bottom: 9px;' >")
			.attr('href', $(this).parent().attr('href'))
		$('#gallery a:first img').load ->
			$('#gallery a:first').css('visibility', 'visible')
		e.preventDefault()

	$('#brand span').click ->
		$('#brand span[data-id=' + $('#q_brand_id_eq').val() + ']').css('border-bottom', '1px dotted #0066CC').css('padding', '0').css('background-color', '#FAE8BB')
		$(this).css('background-color', '#FFCC33').css('border', 'none').css('padding', '4px')
		$('#q_brand_id_eq').val $(this).attr('data-id')
		$.ajax
		  url: "/cars/models"
		  data: { brand_id: $('#q_brand_id_eq').val(), tag: 'span' }
		  success: (data) ->
		    $('#model div').html(data)
		    
	$('#model div').on 'click', 'span', (e) ->
		$('#model span[data-id=' + $('#q_model_id_eq').val() + ']').css('border-bottom', '1px dotted #0066CC').css('padding', '0').css('background-color', '#FAE8BB')
		$(this).css('background-color', '#FFCC33').css('border', 'none').css('padding', '4px')
		$('#q_model_id_eq').val $(this).attr('data-id')

	$('#city span').click ->
		$('#city span[data-id=' + $('#q_city_id_eq').val() + ']').css('border-bottom', '1px dotted #0066CC').css('padding', '0').css('background-color', '#FAE8BB')
		$(this).css('background-color', '#FFCC33').css('border', 'none').css('padding', '4px')
		$('#q_city_id_eq').val $(this).attr('data-id')

$(document).ready(ready)
$(document).on('page:load', ready) 