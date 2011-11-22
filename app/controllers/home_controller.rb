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
      if request.post? and params[:requestquote]
            if quote = Requestquote.new(params[:requestquote])

              quote.name = "#{params[:requestquote][:name]}"
              quote.phone = "#{params[:requestquote][:phone]}"
              quote.email = "#{params[:requestquote][:email]}"
              quote.current_website = "#{params[:requestquote][:current_website]}"
              quote.numpage = "#{params[:requestquote][:numpage]}"
              quote.target_market = "#{params[:requestquote][:target_market]}"
              quote.project_desc = "#{params[:requestquote][:project_desc]}"
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
