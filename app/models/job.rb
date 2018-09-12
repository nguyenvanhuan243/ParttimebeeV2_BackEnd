class Job < ApplicationRecord
  belongs_to :users

	def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      if Job.where(id: row[0]).count.zero?
        Job.create! row.to_hash
      end
    end 
  end
end
