class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.string :content
      t.string :status
      t.integer :user_id
      t.string :admin
      t.timestamps
    end
  end
end
