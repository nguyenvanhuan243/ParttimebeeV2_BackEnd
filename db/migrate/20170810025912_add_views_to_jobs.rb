class AddViewsToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :views, :integer, :null => false, :default => 0
  end
end
