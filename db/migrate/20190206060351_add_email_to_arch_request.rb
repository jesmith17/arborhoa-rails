class AddEmailToArchRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :arch_requests, :email, :string
  end
end
