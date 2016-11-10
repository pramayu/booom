
jQuery(function(e){
  $('#sch_box').keypress(function(e){
    if(e.which == 13) {
      alert("You press Enter");
    }
  });
  $('#carousel').carousel({
    interval: 1000 * 1000
  });
  $('#thiscarousel').carousel({
    interval: 1000 * 1000
  });
  $('#src_srr').carousel({
    interval: 1000 * 1000
  });
});

$(document).ready(function(){
  $('.chosen-select').chosen();
  $('#tags').tagsInput();
});


$(document).ready(function(){
  $('.ac-content').hide();
  $('.acor').click(function(e){
    e.preventDefault();
    $('.active_ac').removeClass('active_ac');
    $(this).addClass('active_ac');
    $('.ac-content').hide();
    $(this).next('.ac-content').show("fold", 500);
  });
  $('.ho_ve_r').hover(function(){
    $('.aiuyd').toggleClass('aiu');
  });
});

$(document).ready(function(){
  $('._hov_er').hover(function(){
    $('._act_ion').toggleClass('_act_active');
  });
  $('._act_ion').hover(function(){
    $('._hov_er').toggleClass('_act_active');
  });
});



$(document).ready(function(){
  $('#theme_thumbnail').fileupload({dataType: 'script'});
  $('#theme_screenshots_attributes_0_screenshot').fileupload({dataType: 'script'});
  $('#theme_resources_resources').fileupload({dataType: 'script'});
});




// codes

function data_theme(screen_id) {
  var theme = $('#theme987').data('theme');
  $.ajax({
    type: "GET",
    url: "/themes/" + theme.slug + "/screenshot/" + screen_id + "/delete",
    success: function(){
      $('#item_' + screen_id).fadeOut("slow", function(){
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

function data_thbroke(broke_id){
  var theme = $('#theme987').data('theme');
  $.ajax({
    type: "GET",
    url: "/themes/" + theme.slug + "/broke/" + broke_id + "/delete",
    success: function(){

    }
  });
};

$(document).ready(function(){
  function DropDown(el) {
    this.dd = el;
    this.placeholder = this.dd.children('span');
    this.opts = this.dd.find('ul.dropdown_ux > li');
    this.val = '';
    this.index = -1;
    this.initEvents();
  }
  DropDown.prototype = {
    initEvents : function() {
      var obj = this;

      obj.dd.on('click', function(event){
        $(this).toggleClass('active');
        return false;
      });

      obj.opts.on('click',function(){
        var opt = $(this);
        obj.val = opt.text();
        obj.index = opt.index();
        obj.placeholder.text(obj.val);
      });
    },
    getValue : function() {
      return this.val;
    },
    getIndex : function() {
      return this.index;
    }
  }
  $(function() {
    var dd = new DropDown( $('#ddos') );
    $(document).click(function() {
      // all dropdowns
      $('.wrapper-dropdown-3').removeClass('active');
    });
  });
});

// function _search(){
// 	var url = window.location.pathname
// }


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

$(function() {
  $('#search_filter #fixed, #search_filter #liquid, #search_filter #responsive').on("change", function(){
    $.get($('#search_filter').attr('action'), $('#search_filter').serialize(), null, "script");
    history.replaceState(null, "", $('#search_filter').attr('action') + "?" + $('#search_filter').serialize());
    return false;
  });
});

$(function(){
  var carts = $("#sjhdg4570").data("carts");
  jQuery.each(carts, function(key, item){
    $("#line_"+item.id).on("click", function(e){
      $.ajax({
        type: "GET",
        url: "/delete/carts/" + item.id,
        success: function(){
          $("#idgste4_"+item.id).hide("fast", function(){
            $("#idgste4_"+item.id).remove();
          });
        }
      });
      e.preventDefault();
    });
  });
});
function bagCart(theme_id){
  $.ajax({
    type: "POST",
    url: "/line_items?theme_id=" + theme_id,
    success: function(){
      $("#bag_"+theme_id).css({"color": "##6ac7f6"});
    }
  });
};
$(function(){
  $('#theme_search').autocomplete({
    source: "/theme_autocompletes",
    select: function(event, ui){
      $(event.target).val(ui.item.value);
      $('#search-box').submit();
      return false;
    },
    minLength: 1
  });
});
