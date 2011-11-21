class Emailer < ActionMailer::Base
  def contact_email(contact)
        setup_email(contact)
        @subject    += "#{contact.subject}"

      end

      protected
        def setup_email(contact)
          @recipients  = "chaukadeamol@gmail.com"
          @from        = "#{contact.address}"
          @subject     = "Wirates - Contact Us: "
          @sent_on     = Time.now
          @content_type = "text/html"
          @body[:contact] = contact

       end
end
