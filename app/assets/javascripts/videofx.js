//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require bootstrap-sprockets
//= require jquery.nicescroll.min.js
//= require tooltipster.bundle.min.js
//= require home_main.js
//= require ckeditor/init
//= require chosen.jquery.js
//= require tagsinput.js
//= require jquery-fileupload/basic
//= require coffee.js.coffee
//= require video

$(document).ready(function(){
  $('#videofx_trailer_trailer').fileupload({
    dataType: 'script',
    maxFileSize: 50000000 // 40 MB
  });
  $('#videofx_thumbnail').fileupload({
    dataType: 'script'
  });
  $('#videofx_resources_resources').fileupload({
    dataType: 'script'
  });
});

function video_data(trailer_id){
  var video = $('#videofx997').data('video');
  $.ajax({
    type: "GET",
    url: "/videofxes/" + video.slug + "/videm/" + trailer_id + "/delete",
    success: function(){
      $('#vitem_' + trailer_id).fadeOut("slow", function(){
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

function data_broke(broke){
  var video = $('#videofx997').data('video');
  $.ajax({
    type: "GET",
    url: "/videofxes/" + video.slug + "/broke/" + broke + "/delete",
    success: function(){
    }
  });
};
function data_find() {
  $('#search_videofx_filter #sch_course').keypress(function(e){
    if (e.which == 13){
      $.get($('#search_videofx_filter').attr('action'), $('#search_videofx_filter').serialize(), null, "script");
      history.replaceState(null, "", $('#search_videofx_filter').attr('action') + "?" + $('#search_videofx_filter').serialize());
      return false;
    }
  });
};

function data_find_min() {
  $('#search_videofx_filter #min_course').keypress(function(e){
    if (e.which == 13){
      $.get($('#search_videofx_filter').attr('action'), $('#search_videofx_filter').serialize(), null, "script");
      history.replaceState(null, "", $('#search_videofx_filter').attr('action') + "?" + $('#search_videofx_filter').serialize());
      return false;
    }
  });
};

function data_find_max() {
  $('#search_videofx_filter #max_course').keypress(function(e){
    if (e.which == 13){
      $.get($('#search_videofx_filter').attr('action'), $('#search_videofx_filter').serialize(), null, "script");
      history.replaceState(null, "", $('#search_videofx_filter').attr('action') + "?" + $('#search_videofx_filter').serialize());
      return false;
    }
  });
};

function bagvdCart(videofx_id){
  $.ajax({
    type: "POST",
    url: "/line_items?videofx_id=" + videofx_id,
    success: function(){
      $("#bag_"+videofx_id).css({"color": "##6ac7f6"});
    }
  });
};
$(function(){
  $('#videofx_search').autocomplete({
    source: "/videofx_autocompletes",
    select: function(event, ui){
      $(event.target).val(ui.item.value);
      $('#search-box').submit();
      return false;
    },
    minLength: 1
  });
});
