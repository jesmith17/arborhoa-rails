class ArchRequestMailer < ApplicationMailer
  default from: 'jesmith17@gmail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.arch_request_mailer.confirm_request.subject
  #
  def confirm_request
    @email = params[:email]
    @confirmation_code = params[:confirmation_code]
    mail to: @email
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.arch_request_mailer.approve.subject
  #
  def approve
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
