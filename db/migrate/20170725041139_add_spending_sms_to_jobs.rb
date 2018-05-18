class AddSpendingSmsToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :spending_sms, :boolean, :null => false, :default => false
  end
end
