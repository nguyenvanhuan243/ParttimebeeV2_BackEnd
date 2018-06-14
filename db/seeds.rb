# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do |i|
# 	Job.create!(
# 		user_id: 2,
# 		title: Faker::Address.city,
# 		job_type: 'going',
# 	);
# end

# 10.times do |i|
# 	Job.create!(
# 		user_id: 2,
# 		title: Faker::Address.city,
# 		job_type: 'pending',
# 	);
# end

# 10.times do |i|
# 	Job.create!(
# 		user_id: 2,
# 		title: Faker::Address.city,
# 		job_type: 'expired',
# 	);
# end

Admin.create!(
	email: 'parttimebee.my@gmail.com',
	password: Digest::MD5.hexdigest('parttimebee.my'),
	token_admin: SecureRandom.urlsafe_base64
);