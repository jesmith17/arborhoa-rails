class AddReminderDateToCalendars < ActiveRecord::Migration[5.2]
  def change
    add_column :calendars, :reminder_date, :datetime
  end
end
