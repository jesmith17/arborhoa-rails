class CreateCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :calendars do |t|
      t.string :title
      t.string :description
      t.string :url
      t.datetime :start_date
      t.datetime :end_date
      t.string :location
      t.timestamps
    end
  end
end
