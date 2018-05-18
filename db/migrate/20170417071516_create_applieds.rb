class CreateApplieds < ActiveRecord::Migration[5.0]
  def change
    create_table :applieds do |t|

      t.integer :parttimer_id
      t.integer :employer_id
      t.integer :job_id
      t.string :status_job

      t.timestamps
    end
  end
end
