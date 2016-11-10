//= require jquery
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

function btnReload(){
  location.reload();
};

$(function(){
  jQuery("#lecture").niceScroll({cursorcolor:"#c0bfbf"});
});

$(document).ready(function(){
  $('#video_iii_html5_api').currentTime=8;
  // $('#ajjayyy').currentTime=8;
  $('#course_cacacas_cacacas').fileupload({
    dataType: 'script',
    maxFileSize: 50000000 // 40 MB
  });
  $('#course_thumbnail').fileupload({dataType: 'script'});
  $('#course_cokes_cokes').fileupload({dataType: 'script'});
});

function course_data(trailer_id){
  var course = $('#course997').data('course');
  $.ajax({
    type: "GET",
    url: "/courses/" + course.slug + "/freepi/" + trailer_id + "/delete",
    success: function(){
      $('#chitem_' + trailer_id).fadeOut("slow", function(){
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

function data_cofile(cofile){
  var course = $('#course997').data('course');
  $.ajax({
    type: "GET",
    url: "/courses/" + course.slug + "/cofile/" + cofile + "/delete",
    success: function(){
    }
  });
};

$(document).ready(function(){
  // var headsec = $('#headsec_ajayy').data('headsec');
  var course = $('#course_iii').data('course');
  $('.head_edit').each(function(){
    var value = $(this).val();
    var size = value.length;
    size = size*2;
    $(this).css('width', size*4);
  });
});

function keyPrs(headsec_id){
  var course = $('#course_iii').data('course');
  $('#hdsec' + headsec_id).keypress(function(e){
    if(e.which == 13){
      $.ajax({
        type: "PUT",
        url: "/courses/" + course.slug + "/headsecs/" + headsec_id,
        dataType: 'script',
        success: function(){

        }
      });
    };
  });
};

function add_clas(headsec_id) {
  $('#hdsec' + headsec_id).prop('readonly', false).addClass('head_edit_style');
};


function data_find() {
  $('#search_course_filter #sch_course').keypress(function(e){
    if (e.which == 13){
      $.get($('#search_course_filter').attr('action'), $('#search_course_filter').serialize(), null, "script");
      history.replaceState(null, "", $('#search_course_filter').attr('action') + "?" + $('#search_course_filter').serialize());
      return false;
    }
  });
};

function data_find_min() {
  $('#search_course_filter #min_course').keypress(function(e){
    if (e.which == 13){
      $.get($('#search_course_filter').attr('action'), $('#search_course_filter').serialize(), null, "script");
      history.replaceState(null, "", $('#search_course_filter').attr('action') + "?" + $('#search_course_filter').serialize());
      return false;
    }
  });
};

function data_find_max() {
  $('#search_course_filter #max_course').keypress(function(e){
    if (e.which == 13){
      $.get($('#search_course_filter').attr('action'), $('#search_course_filter').serialize(), null, "script");
      history.replaceState(null, "", $('#search_course_filter').attr('action') + "?" + $('#search_course_filter').serialize());
      return false;
    }
  });
};

$(function() {
  $('#search_course_filter #beginner, #search_course_filter #intermediate, #search_course_filter #expert').on("change", function(){
    $.get($('#search_course_filter').attr('action'), $('#search_course_filter').serialize(), null, "script");
    history.replaceState(null, "", $('#search_course_filter').attr('action') + "?" + $('#search_course_filter').serialize());
    return false;
  });
});
function bagcoCart(course_id){
  $.ajax({
    type: "POST",
    url: "/line_items?course_id=" + course_id,
    success: function(){
      $("#bag_"+course_id).css({"color": "##6ac7f6"});
    }
  });
};
$(function(){
  $('#course_search').autocomplete({
    source: "/course_autocompletes",
    select: function(event, ui){
      $(event.target).val(ui.item.value);
      $('#search-box').submit();
      return false;
    },
    minLength: 1
  });
});

