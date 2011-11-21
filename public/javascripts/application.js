// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery(document).ready(function() {
  jQuery("#contactform").validate({
	
	rules: {
		"contact[name]":{
	                  required: true,
					  minlength: 2
                        		
			 },
		
		     "contact[address]":{
						required: true,
						email:true
			 },
	
		     "contact[subject]":{
						required:true
		     },
		
		    "contact[message]":{
						required: true,
						
			}
		},
	messages: {
		"contact[name]":{
						required: "Please enter name",
                        minlength: "Your first name must consist of at least 2 characters"
			},
		
		"contact[address]":{
						required: "Please enter email address",
			            email: "Please enter valid email address"
						
		},
		"contact[subject]":{
						            required: "Please enter subject"
						
		},
		"contact[message]":{
						            required: "Please provide a password"
						
		}
		}
	});
});
