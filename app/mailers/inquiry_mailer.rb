class InquiryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inquiry_mailer.recevied_email.subject
  #
  def recevied_email(user)
    @user = user
    mail to: @user.email,
      subject: "【#{@user.name}様の社会の窓についてお知らせがあります】"
  end
end
