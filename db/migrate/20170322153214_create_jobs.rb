class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.string :title
      t.string :category
      t.text :description
      t.integer :salary
      t.string :salary_type
      t.string :salary_state
      t.string :city
      t.string :job_type
      t.string :views
      t.text  :requirements
      t.timestamps
    end
  end
end
