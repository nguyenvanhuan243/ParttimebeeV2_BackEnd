class AddAwardedJobToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :awarded_job, :integer, :null => false, :default => 0
  end
end
