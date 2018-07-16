class Job < ApplicationRecord
  belongs_to :users

  # Import data to database from csv.
	def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
        if Job.where(id: row[0]).count.zero?
          Job.create! row.to_hash
        end
      end 
  end
end
