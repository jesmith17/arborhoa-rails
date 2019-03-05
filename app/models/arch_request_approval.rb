class ArchRequestApproval < ApplicationRecord
  belongs_to :user
  belongs_to :arch_request
end
