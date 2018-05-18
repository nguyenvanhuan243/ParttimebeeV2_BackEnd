class AddVacanciesStartToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :vacancies_start, :integer, :default =>0
  end
end
