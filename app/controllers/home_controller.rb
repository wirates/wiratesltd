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

  def quote
      if request.post? and params[:quote]
            if quote = Requestquote.new(params[:quote])

              quote.name = "#{params[:quote][:name]}"
              quote.phone = "#{params[:quote][:phone]}"
              quote.email = "#{params[:quote][:email]}"
              quote.current_website = "#{params[:quote][:current_website]}"
              quote.numpage = "#{params[:quote][:numpage]}"
              quote.target_market = "#{params[:quote][:target_market]}"
              quote.project_desc = "#{params[:quote][:project_desc]}"
              if quote.save


                Quotemailer.deliver_quote_email(quote)

                  flash[:notice] = "Thank you for sending a mail."
                redirect_to("/")
              else
                  render :quote
              end

            end

        else
           @title = "quote"
        end
  end

	def portfolio
	end
	
end
