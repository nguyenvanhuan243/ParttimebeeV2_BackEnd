# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 15.times do |i|
#   User.create!(user_name: 'Huan Nguyen', full_name: 'Nguyen Van Huan', password: '6263e4d438572ce11a', email: 'nguyenthanhlong243@gmail.com',
# 	address: 'Binh Duong', phone_number: '01664152723', activated: 0, blocked: 0, verified_phone: 0, day_of_birth: '24/03/1995');
# end

100.times do |i|
	Job.create!(
		user_id: 2,
		title: Faker::Address.city,
		company_name: Faker::Address.community,
		type_job: 'going',
	);
end

100.times do |i|
	Job.create!(
		user_id: 2,
		title: Faker::Address.city,
		company_name: Faker::Address.community,
		type_job: 'pending',
	);
end

100.times do |i|
	Job.create!(
		user_id: 2,
		title: Faker::Address.city,
		company_name: Faker::Address.community,
		type_job: 'expired',
	);
end

Admin.create!(email: 'parttimebee.my@gmail.com', 
							password: Digest::MD5.hexdigest('parttimebee.my'), 
							token_admin: SecureRandom.urlsafe_base64)
User.create!(email: 'parttimebee.my@gmail.com', type_user: 'admin', password: 'parttimebee.my')