class CreateOwnpages < ActiveRecord::Migration[6.0]
  def change
    create_table :ownpages do |t|

      t.string :image
      t.text :content
      t.integer :user_id
      t.integer :schedule_id
      t.timestamps
    end
  end
end
