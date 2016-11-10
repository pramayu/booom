// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require jquery.turbolinks
//= require raty.js
//= require bootstrap-sprockets
//= require ckeditor/init
//= require tooltipster.bundle.min.js
//= require cable.js
//= require teams.coffee
//= require_tree .

$(document).ready(function(){
  $('.search-box .submit-sch').on('click', function(e){
    $('.search-frm').toggleClass('sch_open_inp');
    $('.submit-sch').toggleClass('submit-sch-open');
    e.preventDefault();
  });
});

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
  $('#beeee').carousel({
    interval: 1000 * 50
  });
});

$(document).ready(function(){
  $('.chosen-select').chosen();
  $('#tags').tagsInput();
  $('#vacancy_').tagsInput();
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
  $('.star-rating').raty({
    path: "/assets/",
    readOnly: true,
    score: function(){
      return $(this).attr("data-score");
    }
  });
  $('#star-rating').raty({
    path: "/assets/",
    scoreName: 'review[rating]'
  });
});

function onKeyPres(e){
  var code = (e.KeyCode ? e.KeyCode : e.which);
  if (code == 13){
    $('#new_review').submit();
  };
};

function btnReload(){
  location.reload();
};



$(document).ready(function(){
  $('.extras, .hgsd54657, .xion_xi').tooltipster({
    functionInit: function(instance, helper){
      var content = $(helper.origin).find('#dat_tooltip').detach();
      instance.content(content);
    }
                  // trigger: 'click'
  });
});

$(function(){
  $('.ho_ve_r').hover(function(){
    $('.aiuyd').toggleClass('aiu'); 
  });
  $('.jewqp').hover(function(){
    $('.aiuyd').toggleClass('aiu'); 
  });
});


