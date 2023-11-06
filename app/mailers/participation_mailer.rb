class ParticipationMailer < ApplicationMailer

    default from: 'amachermathieu@gmail.com'

    def participation_email(participation)
        @participation = participation
        @user = @participation.user
        @url = 'http://monsite.fr/login'

        mail(to: @user.email, subject: 'Vous participer à quelque chose !')
    end


end
