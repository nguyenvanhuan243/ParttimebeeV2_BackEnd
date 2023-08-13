class Job < ApplicationRecord
  belongs_to :user

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Job.create! row.to_hash if Job.where(id: row[0]).count.zero?
    end
  end
end
