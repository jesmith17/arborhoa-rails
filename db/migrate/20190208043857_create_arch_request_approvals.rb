class CreateArchRequestApprovals < ActiveRecord::Migration[5.2]
  def change
    create_table :arch_request_approvals do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :arch_request, foreign_key: true

      t.timestamps
    end
  end
end
