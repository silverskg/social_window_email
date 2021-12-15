class InquiryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inquiry_mailer.recevied_email.subject
  #
  def recevied_email(user)
    @user = user
    mail to: ENV['LOGIN_NAME'],
      subject: "【#{@user.name}からアンケートの回答があります】"
  end
end
