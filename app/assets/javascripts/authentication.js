//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require bootstrap-sprockets
$(function(){
  $('#btn_reset').hide();
  $('#insert_reset').keypress(function(e){
    if(e.which == 13){
      $('form').submit();
    }
  })
});
