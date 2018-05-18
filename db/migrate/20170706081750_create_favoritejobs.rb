class CreateFavoritejobs < ActiveRecord::Migration[5.0]
  def change
    create_table :favoritejobs do |t|

      t.integer :parttimer_id
      t.integer :employer_id
      t.integer :job_id
      
      t.timestamps
    end
  end
end
