class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :content
      t.datetime :display_until

      t.timestamps
    end
  end
end
