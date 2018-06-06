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
      t.integer :vacancies 
      t.string :availablefor 
      t.string :agefrom 
      t.string :ageto
      t.integer :number_of_location, :null => false, :default => 1
      t.text  :requirements
      t.string :payment
      t.string :on_the_spot
      t.string :commission
      t.text   :benefits
      t.datetime :working_date_from
      t.datetime :working_date_to
      t.string :working_hour_from
      t.string :working_hour_to
      t.string :state
      t.string :status
      t.string :post_code      
      t.string :contact_person
      t.string :way_of_contact
      t.string :email
      t.string :current_tab_active
      t.timestamps
    end
  end
end
