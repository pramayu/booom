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
  $('#code_screenshots_attributes_0_screenshot').fileupload({dataType: 'script'});
  $('#code_thumbnail').fileupload({dataType: 'script'});
  $('#code_resources_resources').fileupload({dataType: 'script'});
});


function data_code(screen_id){
  var code = $('#code987').data('code');
  $.ajax({
    type: "GET",
    url: "/codes/" + code.slug + "/screenshot/" + screen_id + "/delete",
    success: function(){
      $('#cditem_' + screen_id).fadeOut("slow", function(){
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
function cdbroke(broke) {
  var code = $('#code987').data('code');
  $.ajax({
    type: "GET",
    url: "/codes/" + code.slug + "/broke/" + broke + "/delete",
    success: function(){

    }
  });
};

function data_find() {
  $('#search_filter #search').keypress(function(e){
    if (e.which == 13){
      $.get($('#search_filter').attr('action'), $('#search_filter').serialize(), null, "script");
      history.replaceState(null, "", $('#search_filter').attr('action') + "?" + $('#search_filter').serialize());
      return false;
    }
  });
};

function data_find_min() {
  $('#search_filter #min').keypress(function(e){
    if (e.which == 13){
      $.get($('#search_filter').attr('action'), $('#search_filter').serialize(), null, "script");
      history.replaceState(null, "", $('#search_filter').attr('action') + "?" + $('#search_filter').serialize());
      return false;
    }
  });
};

function data_find_max() {
  $('#search_filter #max').keypress(function(e){
    if (e.which == 13){
      $.get($('#search_filter').attr('action'), $('#search_filter').serialize(), null, "script");
      history.replaceState(null, "", $('#search_filter').attr('action') + "?" + $('#search_filter').serialize());
      return false;
    }
  });
};

function bagcdCart(code_id){
  $.ajax({
    type: "POST",
    url: "/line_items?code_id=" + code_id,
    success: function(){
      $("#bag_"+code_id).css({"color": "#6ac7f6"});
    }
  });
};
$(function(){
  $('#code_search').autocomplete({
    source: "/code_autocompletes",
    select: function(event, ui){
      $(event.target).val(ui.item.value);
      $('#search-box').submit();
      return false;
    },
    minLength: 1
  });
});
