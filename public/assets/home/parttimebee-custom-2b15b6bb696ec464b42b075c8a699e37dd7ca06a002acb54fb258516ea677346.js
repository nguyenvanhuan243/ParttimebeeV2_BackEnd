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
         jQuery('.header-search').toggle(300); 
         return false;    
    });
});
