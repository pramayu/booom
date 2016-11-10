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
  $('#font_screenshots_attributes_0_screenshot').fileupload({dataType: 'script'});
  $('#font_thumbnail').fileupload({dataType: 'script'});
  $('#font_resources_resources').fileupload({dataType: 'script'});
});

function data_font(screen_id){
  var font = $('#font987').data('font');
  $.ajax({
    type: "GET",
    url: "/fonts/" + font.slug + "/screenshot/" + screen_id + "/delete",
    success: function(){
      $('#ftitem_' + screen_id).fadeOut("slow", function(){
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

function ftbroke(broke) {
  var font = $('#font987').data('font');
  $.ajax({
    type: "GET",
    url: "/fonts/" + font.slug + "/broke/" + broke + "/delete",
    success: function(){

    }
  });
};

function data_find() {
  $('#search_font_filter #search').keypress(function(e){
    if (e.which == 13){
      $.get($('#search_font_filter').attr('action'), $('#search_font_filter').serialize(), null, "script");
      history.replaceState(null, "", $('#search_font_filter').attr('action') + "?" + $('#search_font_filter').serialize());
      return false;
    }
  });
};

function data_find_min() {
  $('#search_font_filter #min').keypress(function(e){
    if (e.which == 13){
      $.get($('#search_font_filter').attr('action'), $('#search_font_filter').serialize(), null, "script");
      history.replaceState(null, "", $('#search_font_filter').attr('action') + "?" + $('#search_font_filter').serialize());
      return false;
    }
  });
};

function data_find_max() {
  $('#search_font_filter #max').keypress(function(e){
    if (e.which == 13){
      $.get($('#search_font_filter').attr('action'), $('#search_font_filter').serialize(), null, "script");
      history.replaceState(null, "", $('#search_font_filter').attr('action') + "?" + $('#search_font_filter').serialize());
      return false;
    }
  });
};
function bagftCart(font_id){
  $.ajax({
    type: "POST",
    url: "/line_items?font_id=" + font_id,
    success: function(){
      $("#bag_"+font_id).css({"color": "##6ac7f6"});
    }
  });
};
$(function(){
  $('#font_search').autocomplete({
    source: "/font_autocompletes",
    select: function(event, ui){
      $(event.target).val(ui.item.value);
      $('#search-box').submit();
      return false;
    },
    minLength: 1
  });
});
