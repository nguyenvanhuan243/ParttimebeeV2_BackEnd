class CreateQuotajobs < ActiveRecord::Migration[5.0]
  def change
    create_table :quotajobs do |t|
      t.integer :quota
      t.timestamps
    end
  end
end
