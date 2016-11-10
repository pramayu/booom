//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery.turbolinks
//= require bootstrap-sprockets
//= require jquery.nicescroll.min.js
//= require tooltipster.bundle.min.js
//= require home_main.js
//= require ckeditor/init
//= require chosen.jquery.js
//= require tagsinput.js
//= require jquery-fileupload/basic


$(document).ready(function(){
  $('#graphic_screenshots_attributes_0_screenshot').fileupload({
    dataType: 'script'
  });
  $('#graphic_thumbnail').fileupload({ 
    dataType: 'script'
      // add: function(e, data){
      // 	var graphic = $('#graphic997').data('graphic');
      // 	data.submit();
      // 	console.log(graphic.name);
      // 	$('#jreg' + graphic.slug).append("");
      // }
  });
  $('#graphic_resources_resources').fileupload({
    dataType: 'script'
      // add: function(e, data) {
      // 	data.submit();
      // 	var render_close = '<a class="del_brok" id="del_brok" onclick="data_broke(<%= broke.id %>)"></a>' +
      // 						'<label for="graphic_resources_resources" class="fhft">' +
      // 						'<i class="fa fa-file-text" aria-hidden="true"></i>' +
      // 						'<p class="jijil">DELETE OLD FILE</p>' +
      // 						'</label>';
      // 	$('#hftu88').append(render_close);
      // 	$('#fhg656').hide("fast");
      // }
  });
});

function data_broke(broke){
  var graphic = $('#graphic997').data('graphic');
  $.ajax({
    type: "GET",
    url: "/graphics/" + graphic.slug + "/broke/" + broke + "/delete",
    success: function(){
      // var render_add = '<label for="graphic_resources_resources" class="fhft l1_">' +
      // 				 '<i class="fa fa-cloud-upload" aria-hidden="true"></i>' +
      // 				 '<p class="jijil">DRAG &amp; DROP</p>' +
      // 				 '</label>';
      // $('#rhrh75').append(render_add);
      // $('#hdg98').hide("fast");
    }
  });
};	


// $(document).ready(function(){
// var graphic = $('#graphic997').data('graphic');
// var screenshots = $('#ghscreenshots453').data('ghscreenshots');
// screenshots.map(function(screenshot){
// bacon = parseInt(screenshot.id);
// min_id = Math.max(bacon);
function data_graph(screen_id){
  // $('#del_gh_45' + screen_id).on("click", function(){
  var graphic = $('#graphic997').data('graphic');
  $.ajax({
    type: "GET",
    url: "/graphics/" + graphic.slug + "/screenshot/" + screen_id + "/delete",
    success: function(){
      $('#ghitem_' + screen_id).fadeOut("slow", function(){
        $(this).remove();
      });
      // $('#ghitem_' + min_id).addClass('active');
      var active = $('.active').removeClass('active');
      if (active.next() && active.next().length){
        active .next().addClass('active');
      }else {
        active.siblings(":first").addClass('active');
      }
    }
  });
  // });
};
// });
// });
function data_find() {
  $('#search_graphic_filter #search').keypress(function(e){
    if (e.which == 13){
      $.get($('#search_graphic_filter').attr('action'), $('#search_graphic_filter').serialize(), null, "script");
      history.replaceState(null, "", $('#search_graphic_filter').attr('action') + "?" + $('#search_graphic_filter').serialize());
      return false;
    }
  });
};

function data_find_min() {
  $('#search_graphic_filter #min').keypress(function(e){
    if (e.which == 13){
      $.get($('#search_graphic_filter').attr('action'), $('#search_graphic_filter').serialize(), null, "script");
      history.replaceState(null, "", $('#search_graphic_filter').attr('action') + "?" + $('#search_graphic_filter').serialize());
      return false;
    }
  });
};

function data_find_max() {
  $('#search_graphic_filter #max').keypress(function(e){
    if (e.which == 13){
      $.get($('#search_graphic_filter').attr('action'), $('#search_graphic_filter').serialize(), null, "script");
      history.replaceState(null, "", $('#search_graphic_filter').attr('action') + "?" + $('#search_graphic_filter').serialize());
      return false;
    }
  });
};

function baggCart(graphic_id){
  $.ajax({
    type: "POST",
    url: "/line_items?graphic_id=" + graphic_id,
    success: function(){
      $("#bag_"+graphic_id).css({"color": "##6ac7f6"});
    }
  });
};
$(function(){
  $('#graphic_search').autocomplete({
    source: "/graphic_autocompletes",
    select: function(event, ui){
      $(event.target).val(ui.item.value);
      $('#search-box').submit();
      return false;
    },
    minLength: 1
  });
});
