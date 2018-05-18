jQuery(document).ready(function($) { 
	jQuery("#login_form, #sign_up, #setting_account_form, #setting_edit_form").validate({
		   rules: { 
			    user_email: {
				    	required: true, 
				    },
				user_name: {
						required: true, 
					},    
				user_password: {
						required: true, 
					},   	
	 			user_confirm_password:{
	 					required: true, 
	 				},
	 			user_current_password:{
	 					required: true, 
	 				},
	 			full_name: {
	 					required: true, 
	 				},	
		    },
		     messages: {
			    user_name: "Please specify your name",
			    user_email: {
			      required: "We need your email address to contact you",
			      email: "Your email address must be in the format of name@domain.com"
			    },
			    user_current_password:{
			    	//required:"Enter your current password to save these changers"
			    }
		  	}

	});
	jQuery('.close-alert').click(function(){
		jQuery(this).closest('.alert').hide();
		return false;
	});

    

  

});
