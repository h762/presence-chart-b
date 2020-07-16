class CreateScheduleOwnpages < ActiveRecord::Migration[6.0]
  def change
    create_table :schedule_ownpages do |t|

      t.references :ownpage, foreign_key: true, null: false
      t.references :schedule, foreign_key: true, null: false
      t.timestamps
    end
  end
end
