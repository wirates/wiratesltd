class HomeController < ApplicationController

	def contact
		if request.post? and params[:contact]
    	      if contact = Contact.new(params[:contact])

    	        contact.name = "#{params[:contact][:name]}"
    	        contact.address = "#{params[:contact][:address]}"
    	        contact.subject = "#{params[:contact][:subject]}"
    	        contact.message = "#{params[:contact][:message]}"
    	        if contact.save


    	        	Emailer.deliver_contact_email(contact)

              		flash[:notice] = "Thank you for sending a mail."
    	        	redirect_to("/")
  	        	else
  	          		render :contact
	          	end

    	      end

    	else
    	     @title = "contacts"
  	    end
  	
	end

	def portfolio
	end
	
end
