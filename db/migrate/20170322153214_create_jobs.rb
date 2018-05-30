class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|

      t.integer :user_id
      t.string :title
      t.string :category_job
      t.text :description
      t.string :type_job
      t.integer :vacancies 
      t.string :availablefor 
      t.string :agefrom 
      t.string :ageto
      t.integer :number_of_location, :null => false, :default => 1
      t.text  :requirements
      t.string :language_Bahasa_Malaysia, :null => false, :default => "0"
      t.string :language_Chinese, :null => false, :default => "0"
      t.string :language_English, :null => false, :default => "0"
      t.string :language_Tamin, :null => false, :default => "0"
      t.string :language_Cantonese, :null => false, :default => "0"
      t.string :language_Hokkien, :null => false, :default => "0"
      t.string :per_day
      t.integer :salary
      t.string :payment
      t.string :on_the_spot
      t.string :commission
      t.text   :benefits
      t.datetime :working_date_from
      t.datetime :working_date_to
      t.string :working_hour_from
      t.string :working_hour_to
      # Location 1 
      t.string :working_address
      t.string :working_address2
      t.string :state
      t.string :status
      t.string :city
      t.string :post_code

      #Location 2
      t.string :working_address3
      t.string :working_address4
      t.string :state2
      t.string :city2
      t.string :post_code2
      
      t.string :contact_person
      t.string :way_of_contact
      t.string :email
      t.string :current_tab_active
      t.timestamps
    end
  end
end
