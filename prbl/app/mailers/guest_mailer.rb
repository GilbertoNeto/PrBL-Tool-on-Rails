class GuestMailer < ApplicationMailer

  layout 'mailer'

    def contact(email_guest)
      email = email_guest
      mail to: email, subject: "Olá! O grupo de Pesquisa sobre PrBL agradece o seu interesse!"
    end

end
