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
