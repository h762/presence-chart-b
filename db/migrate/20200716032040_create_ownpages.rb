class CreateOwnpages < ActiveRecord::Migration[6.0]
  def change
    create_table :ownpages do |t|

      t.string :image
      t.text :content
      t.timestamps
    end
  end
end
