class CreateUserSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :user_schedules do |t|

      t.references :user, foreign_key: true, null: false
      t.references :schedule, foreign_key: true, null: false
      t.timestamps
    end
  end
end
