class UserMailer < ActionMailer::Base
  default from: "joshandangela@JanBnB.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(user)
    @user = user
    mail to: user.email, subject: "Thanks for joining JanBnB!"
    if @user.owner == true
      @greeting = "We are happy to be welcoming another property owner to our team"
    else
      @greeting = "Thanks for joining! We have lots of cool properties for you to check out!"
    end
  end

  # def send_confirmation(user)
  #   signup_confirmation(user).deliver
  # end
end
