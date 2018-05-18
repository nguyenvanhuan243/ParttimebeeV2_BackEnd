
function outputUpdate(vol) {

	document.querySelector('#slot').value = vol;

}

jQuery(document).ready(function(){
    jQuery('#datetimepicker4').datetimepicker({ 
                format: 'MM/DD/YYYY'
            });
    jQuery('#datetimepicker5').datetimepicker({ 
              format: 'MM/DD/YYYY'
            });

    jQuery('.btn-click').click(function(){    

         jQuery('.hideshow').toggle(500); 

         return false;    

    });

     jQuery(".share-click").click(function(){

            

        jQuery(".icon-share").stop().slideUp(300); 

        jQuery(this).next(".icon-share").stop().slideToggle(300);     

        return false;

    });

    jQuery("body").click (function(){

      // Close all open windows

      jQuery(".icon-share").stop().slideUp(300); 

    });

    jQuery(".l-search-jobs").click(function(){        

        jQuery('.search-jobs-selection').show(300);  

        return false;

    });

    jQuery(".click-hide").click(function(){        

        jQuery('.search-jobs-selection').hide(300);  

        return false;

    });
    jQuery("#ex1").slider();
        jQuery("#ex1").on("slide", function(slideEvt) {
	jQuery("#ex6SliderVal").text(slideEvt.value);
    });
    jQuery(document).ready(function() {
      jQuery('select:not(.ignore)').niceSelect();      
      FastClick.attach(document.body);
    }); 
});
