class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|

      #Basic information
      t.integer :user_id
      t.string :company_name
      t.string :headline
      t.string :short_description
      t.string :company_size
      t.string :company_address
      t.string :company_address1
      t.string :company_address2
      t.text :company_bio

      #Contact Information
      t.string :name_of_person_in_charge
      t.string :contact_mobile
      t.string :company_contact
      t.string :fixed_line_no
      t.string :company_email

      t.timestamps
    end
  end
end
