$(document).ready(function(){
  function DropDown(el) {
    this.dd = el;
    this.placeholder = this.dd.children('span');
    this.opts = this.dd.find('ul.dropdown_u > li');
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
    var dd = new DropDown( $('#dd') );
    $(document).click(function() {
      // all dropdowns
      $('.wrapper-dropdown-3').removeClass('active');
    });
  });
});

// $(function(){
// 	jQuery(".msg_bgdf").niceScroll({cursorcolor:"#c0bfbf"});
// });

$(document).ready(function(){

  $('.but').click(function(){
    $(this).removeClass('active');
  })
  $('.but').click(function(){
    $('.but').removeClass('active');
    $(this).addClass('active');
  })
});

$(document).ready(function(){
  var span = document.getElementsByClassName('dg-avatar');
  var uploader = document.getElementsByClassName('upload_avatar');
  for( item in uploader ) {
    uploader[item].onchange = function() {
      span[0].innerHTML = this.files[0].name;
    }
  }
});

$(document).ready(function(){
  $('.chosen-select').chosen();
  $('#skill_').tagsInput();
});

$(document).ready(function(){
  var themes = $('#themes654').data('themes');
  var codes = $('#codes3636').data('codes');
  var graphics = $('#graphics986').data('graphics');
  var t3ds = $('#t3reed875').data('t3ds');
  var videofxes = $('#videofxe334').data('videofxes');
  var fonts = $('#font7352').data('fonts');
  var courses = $('#course7543').data('courses');



  jQuery.each(themes, function(key, theme){
    $("#theme" + theme.id).click(function(){
      $.ajax({
        type: "GET",
        url: "/account/show/" + theme.slug + "/theme",
        success: function(){
        }
      });
    });
    function delTheme(){
      $.ajax({
        type: "GET",
        url: "/themes/" + theme.slug + "/delete_theme",
        success: function(){
        }
      });
    }; 
    $('#dele_pst_th' + theme.id).click(function(){
      $('#theme-confirm1').attr('title', 'Delete Confirmation').text('Are you sure you want to delete this item?').dialog({
        resizable: false,
        width: 340,
        height: 180,
        zIndex: 10000,
        modal: true,
        buttons: {
          'Delete': function() {
            $(this).dialog('close');
            delTheme();
          },
          'Cancel': function() {
            $(this).dialog('close');
          }
        }
      });
    });	
  });
  jQuery.each(codes, function(key, code){
    $("#code" + code.id).click(function(){
      $.ajax({
        type: "GET",
        url: "/account/show/" + code.slug + "/code",
        success: function(){
        }
      });
    });
    function delCode(){
      $.ajax({
        type: "GET",
        url: "/codes/" + code.slug + "/delete_code",
        success: function(){
        }
      });
    };
    $('#dele_pst_cd' + code.id).click(function(){
      $('#theme-confirm1').attr('title', 'Delete Confirmation').text('Are you sure you want to delete this item?').dialog({
        resizable: false,
        width: 340,
        height: 180,
        zIndex: 10000,
        modal: true,
        buttons: {
          'Delete': function() {
            $(this).dialog('close');
            delCode();
          },
          'Cancel': function() {
            $(this).dialog('close');
          }
        }
      });
    });	
  });
  jQuery.each(graphics, function(key, graphic){
    $("#graphic" + graphic.id).click(function(){
      $.ajax({
        type: "GET",
        url: "/account/show/" + graphic.slug + "/graphic",
        success: function(){
        }
      });
    });
    function delGraphic(){
      $.ajax({
        type: "GET",
        url: "/graphics/" + graphic.slug + "/delete_graphic",
        success: function(){
        }
      });
    };
    $('#del_pst_gh' + graphic.id).click(function(){
      $('#theme-confirm1').attr('title', 'Delete Confirmation').text('Are you sure you want to delete this item?').dialog({
        resizable: false,
        width: 340,
        height: 180,
        zIndex: 10000,
        modal: true,
        buttons: {
          'Delete': function() {
            $(this).dialog('close');
            delGraphic();
          },
          'Cancel': function() {
            $(this).dialog('close');
          }
        }
      });
    });	
  });
  jQuery.each(t3ds, function(i, t3d){
    $("#t3d" + t3d.id).click(function(){
      $.ajax({
        type: "GET",
        url: "/account/show/" + t3d.slug + "/t3d",
        success: function(){
        }
      });
    });
    function delT3d(){
      $.ajax({
        type: "GET",
        url: "/t3ds/" + t3d.slug + "/delete_t3d",
        success: function(){
        }
      });
    };
    $('#del_pst_t3' + t3d.id).click(function(){
      $('#theme-confirm1').attr('title', 'Delete Confirmation').text('Are you sure you want to delete this item?').dialog({
        resizable: false,
        width: 340,
        height: 180,
        zIndex: 10000,
        modal: true,
        buttons: {
          'Delete': function() {
            $(this).dialog('close');
            delT3d();
          },
          'Cancel': function() {
            $(this).dialog('close');
          }
        }
      });
    });	
  });
  jQuery.each(videofxes, function(v, video){
    $("#video" + video.id).click(function(){
      $.ajax({
        type: "GET",
        url: "/account/show/" + video.slug + "/video",
        success: function(){
        }
      });
    });
    function delVideo(){
      $.ajax({
        type: "GET",
        url: "/videofxes/" + video.slug + "/delete_videofx",
        success: function(){
        }
      });
    };
    $('#del_pst_video' + video.id).click(function(){
      $('#theme-confirm1').attr('title', 'Delete Confirmation').text('Are you sure you want to delete this item?').dialog({
        resizable: false,
        width: 340,
        height: 180,
        zIndex: 10000,
        modal: true,
        buttons: {
          'Delete': function() {
            $(this).dialog('close');
            delVideo();
          },
          'Cancel': function() {
            $(this).dialog('close');
          }
        }
      });
    });	
  });
  jQuery.each(fonts, function(f, font){
    $("#font" + font.id).click(function(){
      $.ajax({
        type: "GET",
        url: "/account/show/" + font.slug + "/font",
        success: function(){
        }
      });
    });
    function delFont(){
      $.ajax({
        type: "GET",
        url: "/fonts/" + font.slug + "/delete_font",
        success: function(){
        }
      });
    };
    $('#del_pst_ft' + font.id).click(function(){
      $('#theme-confirm1').attr('title', 'Delete Confirmation').text('Are you sure you want to delete this item?').dialog({
        resizable: false,
        width: 340,
        height: 180,
        zIndex: 10000,
        modal: true,
        buttons: {
          'Delete': function() {
            $(this).dialog('close');
            delFont();
          },
          'Cancel': function() {
            $(this).dialog('close');
          }
        }
      });
    });
  });
  jQuery.each(courses, function(c, course){
    $("#course" + course.id).click(function(){
      $.ajax({
        type: "GET",
        url: "/account/show/" + course.slug + "/course",
        success: function(){
        }
      });
    });
    function delCourse(){
      $.ajax({
        type: "GET",
        url: "/courses/" + course.slug + "/delete_course",
        success: function(){
        }
      });
    };
    $('#del_pst_cour' + course.id).click(function(){
      $('#theme-confirm1').attr('title', 'Delete Confirmation').text('Are you sure you want to delete this item?').dialog({
        resizable: false,
        width: 340,
        height: 180,
        zIndex: 10000,
        modal: true,
        buttons: {
          'Delete': function() {
            $(this).dialog('close');
            delCourse();
          },
          'Cancel': function() {
            $(this).dialog('close');
          }
        }
      });
    });
  });
});
function contact(user){
  $.ajax({
    type: "GET",
    url: "/users/" + user + "/contacts/new",
    success: function(){

    }
  });
};
function drp(vacancy) {
  $("#vacancy_"+vacancy).toggleClass("this_active");
};
$(document).ready(function(){
  var line = $("#rating_purchased087").data("line");
  $('.star-rating').raty({
    path: "/assets/",
    readOnly: true,
    half  : true,
    score: function(){
      return $(this).attr("data-score");
    }
  });
});
$(document).ready(function(){
  $('.this-rating').raty({
    path: "/assets/",
    readOnly: true,
    half: true,
    score: function(){
      return $(this).attr("data-score");
    }
  });
});
// $(document).on("turbolinks:load", function(){
// 	// $("#new_messagereviewer").on("keypress", function(e){
// 	// 	if(e && e.keyCode == 13){
// 	// 		e.preventDefault();
// 	// 		$(this).submit();
// 	// 	}
// 	// });
// });
// $(document).ready(function(){
// 	$("#new_messagereviewer").submit(function(e){
// 		console.log("submit");
// 		e.preventDefault();
// 	});
// });

// $(document).ready(function(){
// 	$('.chosen-select').chosen();
// 	$('#user_skill_list').tagsInput();
// });

$(function(){
  $('#subcategory_btn_collapse').on('click', function(){
    $(this).toggleClass('up');
    $('#subcategory_collapse').slideToggle('slow');
  });
   $('#category_btn_collapse').on('click', function(){
    $(this).toggleClass('up');
    $('#category_collapse').slideToggle('slow');
  });
   $('#browser_btn_collapse').on('click', function(){
    $(this).toggleClass('up');
    $('#browser_collapse').slideToggle('slow');
  });
  $('#dependency_btn_collapse').on('click', function(){
    $(this).toggleClass('up');
    $('#dependency_collapse').slideToggle('slow');
  });
  $('#compatible_btn_collapse').on('click', function(){
    $(this).toggleClass('up');
    $('#compatible_collapse').slideToggle('slow');
  });
  $('#include_btn_collapse').on('click', function(){
    $(this).toggleClass('up');
    $('#include_collapse').slideToggle('slow');
  });
  $('#vidsub_btn_collapse').on('click', function(){
    $(this).toggleClass('up');
    $('#vidsub_collapse').slideToggle('slow');
  });
  $('#softopen_btn_collapse').on('click', function(){
    $(this).toggleClass('up');
    $('#softopen_collapse').slideToggle('slow');
  });
  $('#industry_btn_collapse').on('click', function(){
    $(this).toggleClass('up');
    $('#industry_collapse').slideToggle('slow');
  });
  $('#modelsub_btn_collapse').on('click', function(){
    $(this).toggleClass('up');
    $('#modelsub_collapse').slideToggle('slow');
  });
  $('#genre_btn_collapse').on('click', function(){
    $(this).toggleClass('up');
    $('#genre_collapse').slideToggle('slow');
  });
  $('#encode_btn_collapse').on('click', function(){
    $(this).toggleClass('up');
    $('#encode_collapse').slideToggle('slow');
  });
  $('#latar_btn_collapse').on('click', function(){
    $(this).toggleClass('up');
    $('#latar_collapse').slideToggle('slow');
  });
  $('#framerate_btn_collapse').on('click', function(){
    $(this).toggleClass('up');
    $('#framerate_collapse').slideToggle('slow');
  });
  $('#aeplugin_btn_collapse').on('click', function(){
    $(this).toggleClass('up');
    $('#aeplugin_collapse').slideToggle('slow');
  });
  $('#language_btn_collapse').on('click', function(){
    $(this).toggleClass('up');
    $('#language_collapse').slideToggle('slow');
  });
});


function dellCategory(category_slug){
  $.ajax({
    type: "GET",
    url: "/account/categories/" + category_slug + "/destroy",
    success: function(){
      $('#daddy_'+category_slug).fadeOut("fast");
    }
  });
};

function dellSubcategory(subcategory_id){
  $.ajax({
    type: "GET",
    url: "/account/subcategories/" + subcategory_id + "/destroy",
    success: function(){
      $('#daddyo_'+subcategory_id).fadeOut("fast");
    }
  });
};

function dellBrowser(browser_id){
  $.ajax({
    type: "GET",
    url: "/account/browsers/" + browser_id + "/destroy",
    success: function(){
      $('#daddyoi_'+browser_id).fadeOut("fast");
    }
  });
};

function dellDepen(depen_id){
  $.ajax({
    type: "GET",
    url: "/account/dependencies/" + depen_id + "/destroy",
    success: function(){
      $('#daddyyoio_'+depen_id).fadeOut("fast");
    }
  });
};

function dellCompatible(compa_id){
  $.ajax({
    type: "GET",
    url: "/account/compatibles/" + compa_id + "/destroy",
    success: function(){
      $('#daddyyoio5_'+compa_id).fadeOut("fast");
    }
  });
};

function dellInclude(include_id){
  $.ajax({
    type: "GET",
    url: "/account/includes/" + include_id + "/destroy",
    success: function(){
      $('#daddyyoio51_'+include_id).fadeOut("fast");
    }
  });
};

function dellCodesub(codesub_id){
  $.ajax({
    type: "GET",
    url: "/account/codesubs/" + codesub_id + "/destroy",
    success: function(){
      $('#daddyyoio51_'+codesub_id).fadeOut("fast");
    }
  });
};

function dellSoftopen(softopen_id){
  $.ajax({
    type: "GET",
    url: "/account/softopens/" + softopen_id + "/destroy",
    success: function(){
      $('#daddyyoio51_'+softopen_id).fadeOut("fast");
    }
  });
};

function dellIndustry(industry_id){
  $.ajax({
    type: "GET",
    url: "/account/industries/" + industry_id + "/destroy",
    success: function(){
      $('#daddyyoio51_'+industry_id).fadeOut("fast");
    }
  });
};

function dellSoftopen3d(softopen3d_id){
  $.ajax({
    type: "GET",
    url: "/account/softopen3ds/" + softopen3d_id + "/destroy",
    success: function(){
      $('#daddyyoio51_'+softopen3d_id).fadeOut("fast");
    }
  });
};

function dellModelsub(modelsub_id){
  $.ajax({
    type: "GET",
    url: "/account/modelsubs/" + modelsub_id + "/destroy",
    success: function(){
      $('#daddyyoio51_'+modelsub_id).fadeOut("fast");
    }
  });
};

function dellGenre(genre_id){
  $.ajax({
    type: "GET",
    url: "/account/genres/" + genre_id + "/destroy",
    success: function(){
      $('#daddyyoio51_'+genre_id).fadeOut("fast");
    }
  });
};

function dellEncode(encode_id){
  $.ajax({
    type: "GET",
    url: "/account/encodes/" + encode_id + "/destroy",
    success: function(){
      $('#daddyyoio51_'+encode_id).fadeOut("fast");
    }
  });
};

function dellLatar(latar_id){
  $.ajax({
    type: "GET",
    url: "/account/latars/" + latar_id + "/destroy",
    success: function(){
      $('#daddyyoio51_'+latar_id).fadeOut("fast");
    }
  });
};

function dellVidsub(vidsub_id){
  $.ajax({
    type: "GET",
    url: "/account/vidsubs/" + vidsub_id + "/destroy",
    success: function(){
      $('#daddyyoio51_'+vidsub_id).fadeOut("fast");
    }
  });
};

function dellFramerate(framerate_id){
  $.ajax({
    type: "GET",
    url: "/account/framerates/" + framerate_id + "/destroy",
    success: function(){
      $('#daddyyoio51_'+framerate_id).fadeOut("fast");
    }
  });
};

function dellAeplugin(aeplugin_id){
  $.ajax({
    type: "GET",
    url: "/account/aeplugins/" + aeplugin_id + "/destroy",
    success: function(){
      $('#daddyyoio51_'+aeplugin_id).fadeOut("fast");
    }
  });
};

function dellLanguage(language_id){
  $.ajax({
    type: "GET",
    url: "/account/languages/" + language_id + "/destroy",
    success: function(){
      $('#daddyyoio51_'+language_id).fadeOut("fast");
    }
  });
};

function dellTeam(team_id){
  $.ajax({
    type: "GET",
    url: "/account/teams/" + team_id + "/destroy",
    success: function(){
      $('#daddyyoio51_'+team_id).fadeOut("fast");
    }
  });
};

function updateWitdr(withr_id){
  $('#_chk_'+withr_id).change(function(){
    if($(this).is(":checked")){
      $.ajax({
        type: "GET",
        url: "/withdrawals/update/"+ withr_id,
        success: function(){
          $('#status_'+withr_id).html("Completed");
          $('#foo_'+withr_id).fadeOut("slow");
        }
      })
    }
  });
};

function dellWitdr(withr_id){
  $.ajax({
    type: "GET",
    url:  "/withdrawals/delete/"+ withr_id,
    success: function(){
      $('#foo_'+withr_id).fadeOut("slow");
    }
  });
};


$(document).ready(function(){
  $('#alerm_').fadeIn("slow").delay(10000).fadeOut("slow");
  $("#close_alarem").on("click", function(){
    $("#alerm_").fadeOut("slow");
  });
});
function dellThemeAdmin(theme_id){
  $.ajax({
    type: "GET",
    url: "/account/products/delete/"+theme_id,
    success: function(){
      $('#theme_del_'+theme_id).fadeOut("slow", function(){
        $(this).remove();
      });
    }
  });
};

function dellCodeAdmin(code_id){
  $.ajax({
    type: "GET",
    url: "/account/products/delete_code/"+code_id,
    success: function(){
      $('#code_del'+code_id).fadeOut("slow", function(){
        $(this).remove();
      });
    }
  });
};

function dellGraphicAdmin(graphic_id){
  $.ajax({
    type: "GET",
    url: "/account/products/delete_graphic/"+graphic_id,
    success: function(){
      $('#graphic_del'+graphic_id).fadeOut("slow", function(){
        $(this).remove();
      });
    }
  });
};

function dellT3dAdmin(t3d_id){
  $.ajax({
    type: "GET",
    url: "/account/products/delete_t3d/"+t3d_id,
    success: function(){
      $('#t3d_del'+t3d_id).fadeOut("slow", function(){
        $(this).remove();
      });
    }
  });
};

function dellVideoAdmin(videofx_id){
  $.ajax({
    type: "GET",
    url: "/account/products/delete_videofx/"+videofx_id,
    success: function(){
      $('#videofx_del'+videofx_id).fadeOut("slow", function(){
        $(this).remove();
      });
    }
  });
};

function dellFontAdmin(font_id){
  $.ajax({
    type: "GET",
    url: "/account/products/delete_font/"+font_id,
    success: function(){
      $('#font_del'+font_id).fadeOut("slow", function(){
        $(this).remove();
      });
    }
  });
};
function dellCourseAdmin(course_id){
  $.ajax({
    type: "GET",
    url: "/account/products/delete_course/"+course_id,
    success: function(){
      $('#course_del'+course_id).fadeOut("slow", function(){
        $(this).remove();
      });
    }
  });
};
function dellNote(note_id){
  $.ajax({
    type: "GET",
    url: "/account/destroy/"+note_id,
    success: function(){
      $('#note_del'+note_id).fadeOut("slow", function(){
        $(this).remove();
      });
    }
  });
};
function dellMemo(note_id, memo_id){
  $('#note_'+memo_id).change(function(){
    if($(this).is(":checked")){
      $.ajax({
        type: "GET",
        url: "/account/b_destroy/"+ note_id +"/"+ memo_id,
        success: function(){
          $('#memo123_'+memo_id).fadeOut('slow', function(){
            $(this).remove();
          })
        }
      })
    }
  });
};
function themeFree(theme_id){
  $.ajax({
    type: "GET",
    url: "/themes/freeitem/"+theme_id,
    success: function(){
      $('#color_'+theme_id).addClass('color_22');
    }
  });
};

function codeFree(code_id){
  $.ajax({
    type: "GET",
    url: "/codes/freeitem/"+code_id,
    success: function(){
      $('#color_'+code_id).addClass('color_22');
    }
  });
};
function graphicFree(graphic_id){
  $.ajax({
    type: "GET",
    url: "/graphics/freeitem/"+graphic_id,
    success: function(){
      $('#color_'+graphic_id).addClass('color_22');
    }
  });
};
function t3dFree(t3d_id){
  $.ajax({
    type: "GET",
    url: "/t3ds/freeitem/"+t3d_id,
    success: function(){
      $('#color_'+t3d_id).addClass('color_22');
    }
  });
};
function videofxFree(videofx_id){
  $.ajax({
    type: "GET",
    url: "/videofxes/freeitem/"+videofx_id,
    success: function(){
      $('#color_'+videofx_id).addClass('color_22');
    }
  });
};
function fontFree(font_id){
  $.ajax({
    type: "GET",
    url: "/fonts/freeitem/"+font_id,
    success: function(){
      $('#color_'+font_id).addClass('color_22');
    }
  });
};
function courseFree(course_id){
  $.ajax({
    type: "GET",
    url: "/courses/freeitem/"+course_id,
    success: function(){
      $('#color_'+course_id).addClass('color_22');
    }
  });
};
function delFree(free_id) {
  $.ajax({
    type: "GET",
    url: "/account/items/"+free_id,
    success: function(){
      $('#free_'+free_id).fadeOut("fast", function(){
        $(this).remove();
      });
    }
  });
};
function shared(share_id){
  $.ajax({
    type: "GET",
    url: "/account/shared/"+share_id,
    success: function(){
      $('#fad_'+share_id).css({"background-color": "#8bc34a !important"});
    }
  })
};
function dellU(u_id){
  $.ajax({
    type: "GET", 
    url: "/user/delete/"+u_id,
    success: function(){
      $('#isad_'+u_id).fadeOut("fast", function(){
        $(this).remove();
      })
    }
  })
};
