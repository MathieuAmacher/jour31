class UserMailer < ApplicationMailer

    default from: 'amachermathieu@gmail.com'

    def welcome_email(user)
        @user = user
        @url = 'http://monsite.fr/login'

        mail(to: @user.email, subject: 'Bienvenue chez nous !')
    end


end
