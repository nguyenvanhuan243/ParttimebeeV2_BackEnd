class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.boolean :clickall, :default => false
      t.integer :user_id
      t.timestamps
    end
  end
end
