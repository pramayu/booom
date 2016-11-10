jQuery ->
  states = $('#user_state_id').html()
  $('#user_country_id').change ->
    country = $('#user_country_id :selected').text()
    escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(states).filter("optgroup[label='#{escaped_country}']").html()
    if options
      $('#user_state_id').html(options)
      $('#user_state_id').parent().show()

jQuery ->
  $('#vacancy_state_id').parent().hide()
  $('.vamc_ooo').hide()
  states = $('#vacancy_state_id').html()
  $('#vacancy_country_id').change ->
    country = $('#vacancy_country_id :selected').text()
    escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(states).filter("optgroup[label='#{escaped_country}']").html()
    if options
      $('#vacancy_state_id').html(options)
      $('#vacancy_state_id').parent().show()
      $('.vamc_ooo').show()
    else
      $('#vacancy_state_id').empty()
      $('#vacancy_state_id').parent().hide()
      $('.vamc_ooo').hide()


jQuery -> 
	$('#code_codesub_id').parent().hide()
	$('.ykin').hide()
	codesubs = $('#code_codesub_id').html()
	$('#code_subcategory_ids_').change ->
		subcategory = $('#code_subcategory_ids_ :selected').text()
		escaped_subcategory = subcategory.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
		options = $(codesubs).filter("optgroup[label='#{escaped_subcategory}']").html()
		if options
			$('#code_codesub_id').html(options)
			$('#code_codesub_id').parent().show()
			$('.ykin').show()
		else
			$('#code_codesub_id').empty()
			$('#code_codesub_id').parent().hide()
			$('.ykin').hide()

jQuery ->
	$('#android').hide()
	$('#ios').hide()
	$('#common').show()
	$('#code_subcategory_ids_').change ->
		val = $(this).val()
		if val == '1216'
			$('#android').show()
			$('#ios').hide()
			$('#common').hide()
		else if val == '1217'
			$('#android').hide()
			$('#ios').show()
			$('#common').hide()
		else
			$('#android').hide()
			$('#ios').hide()
			$('#common').show()


jQuery -> 
	$('#t3d_modelsub_id').parent().hide()
	$('.kled').hide()
	codesubs = $('#t3d_modelsub_id').html()
	$('#t3d_subcategory_ids_').change ->
		subcategory = $('#t3d_subcategory_ids_ :selected').text()
		escaped_subcategory = subcategory.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
		options = $(codesubs).filter("optgroup[label='#{escaped_subcategory}']").html()
		if options
			$('#t3d_modelsub_id').html(options)
			$('#t3d_modelsub_id').parent().show()
			$('.kled').show()
		else
			$('#t3d_modelsub_id').empty()
			$('#t3d_modelsub_id').parent().hide()
			$('.kled').hide()

jQuery -> 
	$('#videofx_vidsub_id').parent().hide()
	$('.goku').hide()
	codesubs = $('#videofx_vidsub_id').html()
	$('#videofx_subcategory_ids_').change ->
		subcategory = $('#videofx_subcategory_ids_ :selected').text()
		escaped_subcategory = subcategory.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
		options = $(codesubs).filter("optgroup[label='#{escaped_subcategory}']").html()
		if options
			$('#videofx_vidsub_id').html(options)
			$('#videofx_vidsub_id').parent().show()
			$('.goku').show()
		else
			$('#videofx_vidsub_id').empty()
			$('#videofx_vidsub_id').parent().hide()
			$('.goku').hide()


$(document).on 'page:change', ->
  for player in document.getElementsByClassName 'video-js'
    videojs player

$(document).on 'page:before-unload', ->
  for player in document.getElementsByClassName 'video-js'
    videojs player
    video.dispose()
