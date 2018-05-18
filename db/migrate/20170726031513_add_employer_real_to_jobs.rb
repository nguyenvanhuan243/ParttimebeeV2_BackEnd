class AddEmployerRealToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :employer_real, :boolean, :null => false, :default => false
  end
end
