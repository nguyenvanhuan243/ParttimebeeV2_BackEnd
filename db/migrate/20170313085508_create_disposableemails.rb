class CreateDisposableemails < ActiveRecord::Migration[5.0]
  def change
    create_table :disposableemails do |t|

      t.string :name
      t.string :email
      t.string :description
      t.string :active
      t.timestamps
    end
  end
end
