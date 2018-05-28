class Job < ApplicationRecord

  has_many :favoritejobs
  belongs_to :user
  has_many :viewjobs, dependent: :destroy
  has_many :favoritejobs

  # Function import data to database.
	def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
        if Job.where(id: row[0]).count.zero?
          Job.create! row.to_hash
        end
      end 
  end
end
