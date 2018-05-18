 jQuery(document).scroll(function() {    

  var scroll = jQuery(this).scrollTop();

  if (scroll >= 20) {

   jQuery(".header").addClass("fixed-header");

  }else{

   jQuery(".header").removeClass("fixed-header");

  } 
 });

jQuery(document).ready(function(){

    jQuery('.search .icon-search').click(function(){    
        jQuery(".header-search").addClass("site-nav--search-is-visible");
        jQuery(".header").addClass("overflow-hidden");
         return false;    

    });
    jQuery('.header-search span.hide-search').click(function(){    

         jQuery(".header-search").removeClass("site-nav--search-is-visible");
         jQuery(".header").removeClass("overflow-hidden");
         return false;    

    });
     jQuery('.avatar-item').click(function(){
      jQuery('.drop-right-menu').slideToggle( "slow", function() {});
      return false;
  });
  jQuery('.notifi-item').click(function(){
     jQuery('.dropdown-notification').slideToggle( "slow", function() {});
      return false;
  });


});
jQuery('.staff-list').parallax();
jQuery(document).ready(function() {
    jQuery("#otp_phone_number").unbind('keyup change input paste').bind('keyup change input paste').keypress(function (e) {
       //if the letter is not digit then display error and don't type anything
       if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
          //display error message
          jQuery("#errmsg").html("Sorry, only numbers allowed!").show(); 
      } else{
         jQuery("#errmsg").html("");  
      }
        var el = jQuery(this);
        var val = el.val();
        var valLength = val.length;
        var maxCount = el.attr('maxlength');
        if(valLength>maxCount){
            el.val(el.val().substring(0,maxCount));
        } else if(valLength == 11 || valLength == 12){ 
           jQuery('.requestotp-btn').addClass('nextstep');  
        }
    });
     jQuery("#otp_code").unbind('keyup change input paste').bind('keyup change input paste').keypress(function (e) {
       //if the letter is not digit then display error and don't type anything
       if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
          //display error message
          jQuery("#errmsg_otp").html("Sorry, only numbers allowed!").show(); 
          jQuery(this).addClass('error');
      } else{
          jQuery(this).removeClass('error');
         jQuery("#errmsg_otp").html("");  
      }
        var el = jQuery(this);
        var val = el.val();
        var valLength = val.length;
        var maxCount = el.attr('maxlength');
        if(valLength>maxCount){
            el.val(el.val().substring(0,maxCount));
        } else if( valLength == 6){ 
           jQuery('.submit_otp').addClass('next_success');  
        }
    });
     setTimeout(function () {
            jQuery.fancybox("#hidden");
          }, 10000);
    //jQuery.fancybox("#hidden");
    jQuery('.fancybox').fancybox();
    jQuery('.btnNext').click(function(){
      jQuery('.nav-tabs > .active').next('li').find('a').trigger('click');
    });
    
    jQuery('.btnPrevious').click(function(){
      jQuery('.nav-tabs > .active').prev('li').find('a').trigger('click');
    });

    jQuery('.btnNext1').click(function(){
          var input = jQuery("#otp_phone_number");
          var inputVal = input.val();
          var maxCount = input.attr('maxlength');
          //  if (inputVal.which != 8 && inputVal.which != 0 && (inputVal.which < 48 || inputVal.which > 57)) {
          //     //display error message
          //     jQuery("#errmsg").html("Sorry, only numbers allowed!").show(); 
          // } else{
          //    jQuery(this).addClass('fdfd');  
          // }
          if(Math.floor(inputVal) == inputVal && $.isNumeric(inputVal))
           { 
            jQuery('.J_countdown1').countdown({
              tmpl : '<span class="minute">%{s}</span>',
              end : '',
              afterEnd : function(){
                jQuery('.expire_otp').empty().html('Not received OTP code? <a href="#">Click Here</a> to resend.');
                jQuery('.otp_tlte').empty().html('Failed!');
              }
            });
            jQuery('.nav-tabs > .active').next('li').find('a').trigger('click');
           } else {
            jQuery(this).removeClass('nextstep');  
           
           }
    }); 
    jQuery('.submit_otp').click(function(){
          var input = jQuery("#otp_code");
          var inputVal = input.val();
          var maxCount = input.attr('maxlength'); 
          if(Math.floor(inputVal) == inputVal && $.isNumeric(inputVal))
           {  
            jQuery('.nav-tabs > .active').next('li').find('a').trigger('click');

           } else {
            jQuery(this).removeClass('next_success');  
           
           }
           return false;
    }); 
});
  
jQuery(document).ready(function() {
  jQuery('select.race').niceSelect();      
 // FastClick.attach(document.body);
});
var config = {
  '.chosen-select'           : {}, 
}
for (var selector in config) {
  $(selector).chosen(config[selector]);
}
;
