class CreateArchRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :arch_requests do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :description
      t.datetime :start_date

      t.timestamps
    end
  end
end
