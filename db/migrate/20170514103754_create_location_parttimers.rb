class CreateLocationParttimers < ActiveRecord::Migration[5.0]
  def change
    create_table :location_parttimers do |t|


 	  t.integer :parttimer_id
 	  # Working location 1
 	  t.string :state1
 	  t.string :city1
 	  #Working location 2
 	  t.string :state2
 	  t.string :city2
 	  #Working location 3
 	  t.string :state3
 	  t.string :city3
      t.timestamps
    end
  end
end
