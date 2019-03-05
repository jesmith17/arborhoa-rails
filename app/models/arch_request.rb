class ArchRequest < ApplicationRecord
  after_save :send_email
  before_save :create_confirmation_code, :set_status


  has_many :arch_request_approvals



  private
    def set_status
      self.status = isApproved ? "Approved" : "Pending"
    end

    def isApproved
      return false if self.arch_request_approvals.empty?
      true if self.arch_request_approvals.size  >= 2
    end
    def send_email
      unless self.confirmed
        ArchRequestMailer.with(email: 'jesmith17@gmail.com', confirmation_code: self.confirmation_code).confirm_request.deliver_now
      end
    end


    def create_confirmation_code
      if self.confirmation_code == nil
        self.confirmation_code = SecureRandom.uuid;
      end
    end


end

