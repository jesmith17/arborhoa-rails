# Preview all emails at http://localhost:3000/rails/mailers/arch_request_mailer
class ArchRequestMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/arch_request_mailer/confirm_request
  def confirm_request
    ArchRequestMailer.confirm_request
  end

  # Preview this email at http://localhost:3000/rails/mailers/arch_request_mailer/approve
  def approve
    ArchRequestMailer.approve
  end

end
