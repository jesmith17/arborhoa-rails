class AddStatusToArchRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :arch_requests, :status, :string
  end
end
