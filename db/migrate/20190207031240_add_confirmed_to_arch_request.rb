class AddConfirmedToArchRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :arch_requests, :confirmed, :boolean
  end
end
