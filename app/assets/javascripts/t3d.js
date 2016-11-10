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
//= require coffee.js.coffee

$(document).ready(function(){
  $('#t3d_screenshots_attributes_0_screenshot').fileupload({dataType: 'script'});
  $('#t3d_thumbnail').fileupload({dataType: 'script'});
  $('#t3d_resources_resources').fileupload({dataType: 'script'});
});

$(document).ready(function(){
  var tre = $('#t3ds987').data('t3d');
  var screenshots = $('#t3screenshots453').data('t3screenshots');
  var brokes = $('#brokes88379').data('brokes');
  // screenshots.map(function(screenshot){
  // 	bacon = parseInt(screenshot.id);
  // 	min_id = Math.max(bacon);
  // 	$('#del_t3_45' + screenshot.id).on("click", function(){
  // 		$.ajax({
  // 			type: "GET",
  // 			url: "/t3ds/" + tre.slug + "/screenshot/" + screenshot.id + "/delete",
  // 			success: function(){
  // 				$('#t3item_' + screenshot.id).fadeOut("slow", function(){
  // 					$(this).remove();
  // 				});
  // 				$('#t3item_' + min_id).addClass('active');
  // 			}
  // 		});
  // 	});
  // });
  jQuery.each(brokes, function(broke){
    $('#del_brok').on("click", function(){
      $.ajax({
        type: "GET",
        url: "/t3ds/" + tre.slug + "/broke/" + broke.id + "/delete",
        success: function(){
          $('#hdg98').hide("slow");
        }
      });
    });
  });
});

function tre_data(screen_id){
  var tre = $('#t3ds987').data('t3d');
  $.ajax({
    type: "GET",
    url: "/t3ds/" + tre.slug + "/screenshot/" + screen_id + "/delete",
    success: function(){
      $('#t3item_' + screen_id).fadeOut("slow", function(){
        $(this).remove();
      });
      var active = $('.active').removeClass('active');
      if (active.next() && active.next().length){
        active .next().addClass('active');
      }else {
        active.siblings(":first").addClass('active');
      }
    }
  });
};

function trebroke(broke){
  var tre = $('#t3ds987').data('t3d');
  $.ajax({
    type: "GET",
    url: "/t3ds/" + tre.slug + "/broke/" + broke + "/delete",
    success: function(){
    }
  });
};

function data_find() {
  $('#search_t3d_filter #search').keypress(function(e){
    if (e.which == 13){
      $.get($('#search_t3d_filter').attr('action'), $('#search_t3d_filter').serialize(), null, "script");
      history.replaceState(null, "", $('#search_t3d_filter').attr('action') + "?" + $('#search_t3d_filter').serialize());
      return false;
    }
  });
};

function data_find_min() {
  $('#search_t3d_filter #min').keypress(function(e){
    if (e.which == 13){
      $.get($('#search_t3d_filter').attr('action'), $('#search_t3d_filter').serialize(), null, "script");
      history.replaceState(null, "", $('#search_t3d_filter').attr('action') + "?" + $('#search_t3d_filter').serialize());
      return false;
    }
  });
};

function data_find_max() {
  $('#search_t3d_filter #max').keypress(function(e){
    if (e.which == 13){
      $.get($('#search_t3d_filter').attr('action'), $('#search_t3d_filter').serialize(), null, "script");
      history.replaceState(null, "", $('#search_t3d_filter').attr('action') + "?" + $('#search_t3d_filter').serialize());
      return false;
    }
  });
};

function bagtdCart(t3d_id){
  $.ajax({
    type: "POST",
    url: "/line_items?t3d_id=" + t3d_id,
    success: function(){
      $("#bag_"+t3d_id).css({"color": "##6ac7f6"});
    }
  });
};
$(function(){
  $('#t3d_search').autocomplete({
    source: "/t3d_autocompletes",
    select: function(event, ui){
      $(event.target).val(ui.item.value);
      $('#search-box').submit();
      return false;
    },
    minLength: 1
  });
});
