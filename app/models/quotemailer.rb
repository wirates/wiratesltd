class Quotemailer < ActionMailer::Base
  def quote_email(quote)
        setup_email(quote)
        @subject    += ""

      end

      protected
        def setup_email(quote)
          @recipients  = "chaukadeamol@gmail.com"
          @from        = "#{quote.email}"
          @subject     = "Wirates - Request quote: "
          @sent_on     = Time.now
          @content_type = "text/html"
          @body[:quote] = quote

       end
end
