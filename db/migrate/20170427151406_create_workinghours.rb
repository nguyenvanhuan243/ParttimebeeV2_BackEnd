class CreateWorkinghours < ActiveRecord::Migration[5.0]
  def change
    create_table :workinghours do |t|
      t.string :working_hour
      t.timestamps
    end
  end
end
