class AddConfirmationCodeToArchRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :arch_requests, :confirmation_code, :string
  end
end
