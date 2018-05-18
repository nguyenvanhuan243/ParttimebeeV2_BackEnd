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

# 10.times do |i|
#   Job.create!(user_id: 1,title: '1111 Pagination', 
#   	description: 'Huan Dep Trai', type_job: 'published', working_date_from: '23/03/1995',
#     working_date_to: '23/03/1998', status: 'notcancel', working_address: 'Binh Duong');
# end

# 10.times do |i|
#   Job.create!(user_id: 1,title: '2222 Pagination', 
#   	description: 'Huan Dep Trai', type_job: 'published', working_date_from: '23/03/1995',
#     working_date_to: '23/03/1998', status: 'notcancel', working_address: 'Binh Duong');
# end
# 10.times do |i|
#   Job.create!(user_id: 1,title: '3333 Pagination', 
#   	description: 'Huan Dep Trai', type_job: 'published', working_date_from: '23/03/1995',
#     working_date_to: '23/03/1998', status: 'notcancel', working_address: 'Binh Duong');
# end
# 5.times do |i|
#   Job.create!(user_id: 1,title: '4444 Pagination', 
#   	description: 'Huan Dep Trai', type_job: 'published', working_date_from: '23/03/1995',
#     working_date_to: '23/03/1998', status: 'notcancel', working_address: 'Binh Duong');
# end

Admin.create!(email: 'parttimebee.my@gmail.com', 
							password: 'parttimebee.my', 
							token_admin: SecureRandom.urlsafe_base64)
User.create!(email: 'parttimebee.my@gmail.com', type_user: 'admin', password: 'parttimebee.my')
# 20.times do |i|
#   User.create!(user_name: 'nguyenvanhuan243', full_name: 'Nguyen Van Huan');
# end


# Disposableemail.create!( name: 'Azwebmall', description: 'Website Service Corporation', email: '0-mail.com');
# Disposableemail.create!( name: 'Azwebmall', description: 'Website Service Corporation', email: '0815.ru');
# Disposableemail.create!( name: 'Azwebmall', description: 'Website Service Corporation', email: '0clickemail.com');



Category.create!(category_job: 'Select a Categories');
Category.create!(category_job: 'All')
Category.create!(category_job: 'Event');
Category.create!(category_job: 'Educational');
Category.create!(category_job: 'Retail & Sales');
Category.create!(category_job: 'Food & Beverages');
Category.create!(category_job: 'Administrative');
Category.create!(category_job: 'Others');


Recommended.create!(name: 'Recommended')
Recommended.create!(name: 'Highest pay')
Recommended.create!(name: 'Lastest job')



for i in 18...66
  Age.create!(age: i)
end
Workinghour.create!(working_hour: '08' + ':' + '00' + ' AM') 
Workinghour.create!(working_hour: '08' + ':' + '30' + ' AM')
for i in 0...24
	    if i<10
		    if i< 10
		     	if i ==0 
		     		Workinghour.create!(working_hour: '12' + ':' + '00' + ' AM')
		      		Workinghour.create!(working_hour: '12' + ':' + '30' + ' AM') 
		     	else
		     		Workinghour.create!(working_hour: '0'+i.to_s + ':' + '00' + ' AM')
		      		Workinghour.create!(working_hour: '0'+i.to_s + ':' + '30' + ' AM')
		        end
		    end
	    else
		    if i <13
		     	Workinghour.create!(working_hour: i.to_s + ':' + '00' + ' AM')
		      	Workinghour.create!(working_hour: i.to_s + ':' + '30' + ' AM')	
		    else
		      	Workinghour.create!(working_hour: i.to_s + ':' + '00' + ' PM')
		      	Workinghour.create!(working_hour: i.to_s + ':' + '30' + ' PM')
		    end
		end
end


State.create!(state: 'Select State')
State.create!(state: 'Malaysia')
State.create!(state: 'Johor')
State.create!(state: 'Kedah')
State.create!(state: 'Kelantan')
State.create!(state: 'Kuala Lumpur')
State.create!(state: 'Labuan')
State.create!(state: 'Melaka')
State.create!(state: 'Negeri Sembilan')
State.create!(state: 'Pahang')
State.create!(state: 'Perak')
State.create!(state: 'Perlis')
State.create!(state: 'Pulau Pinang')
State.create!(state: 'Putrajaya')
State.create!(state: 'Sabah')
State.create!(state: 'Sarawak')
State.create!(state: 'Selangor')
State.create!(state: 'Terengganu')


# State Johor
# City.create!(name: 'Batu Pahat', state_id: 2)
# City.create!(name: 'Johor Bahru', state_id: 2)
# City.create!(name: 'Kluang', state_id: 2)
# City.create!(name: 'Kota Tinggi', state_id: 2)
# City.create!(name: 'Kulai', state_id: 2)
# City.create!(name: 'Mersing', state_id: 2)
# City.create!(name: 'Muar', state_id: 2)
# City.create!(name: 'Pontian', state_id: 2)
# City.create!(name: 'Segamat', state_id: 2)
# City.create!(name: 'Tangkak', state_id: 2)


#State Kedar
# City.create!(name: 'Baling', state_id: 3)
# City.create!(name: 'Bandar Baharu', state_id: 3)
# City.create!(name: 'Kota Setar', state_id: 3)
# City.create!(name: 'Kuala Muda', state_id: 3)
# City.create!(name: 'Kubang Pasu', state_id: 3)
# City.create!(name: 'Kulim', state_id: 3)
# City.create!(name: 'Langkawi', state_id: 3)
# City.create!(name: 'Padang Terap', state_id: 3)
# City.create!(name: 'Pendang', state_id: 3)
# City.create!(name: 'Pokok Sen', state_id: 3)
# City.create!(name: 'Sik', state_id: 3)
# City.create!(name: 'Yan', state_id: 3)


# State Kelantan
# City.create!(name: 'Bachok', state_id: 4)
# City.create!(name: 'Gua Musang', state_id: 4)
# City.create!(name: 'Jeli', state_id: 4)
# City.create!(name: 'Kota Bharu', state_id: 4)
# City.create!(name: 'Kuala Krai', state_id: 4)
# City.create!(name: 'Machang', state_id: 4)
# City.create!(name: 'Pasir Mas', state_id: 4)
# City.create!(name: 'Pasir Puteh', state_id: 4)
# City.create!(name: 'Tanah Merah', state_id: 4)
# City.create!(name: 'Tumpat', state_id: 4)

# # State Kuala Lumpur
# City.create!(name: 'Bandar Tun Razak', state_id: 5)
# City.create!(name: 'Batu', state_id: 5)
# City.create!(name: 'Bukit Bintang', state_id: 5)
# City.create!(name: 'Cheras', state_id: 5)
# City.create!(name: 'Kepong', state_id: 5)
# City.create!(name: 'Lembah Pantai', state_id: 5)
# City.create!(name: 'Segambut', state_id: 5)
# City.create!(name: 'Seputeh', state_id: 5)
# City.create!(name: 'Setiawangsa', state_id: 5)
# City.create!(name: 'Titiwangsa', state_id: 5)
# City.create!(name: 'Wangsa Maju', state_id: 5)

# # State Labuan
# City.create!(name: 'Batu Arang', state_id: 6)
# City.create!(name: 'Batu Manikar', state_id: 6)
# City.create!(name: 'Bebuloh', state_id: 6)
# City.create!(name: 'Belukut', state_id: 6)
# City.create!(name: 'Bukit Kalam', state_id: 6)
# City.create!(name: 'Bukit Kuda', state_id: 6)
# City.create!(name: 'Durian Tunjung', state_id: 6)
# City.create!(name: 'Ganggarak / Merinding', state_id: 6)
# City.create!(name: 'Gersik / Saguking / Jawa / Parit', state_id: 6)
# City.create!(name: 'Kilan / Kilan Pulau Akar', state_id: 6)
# City.create!(name: 'Lajau', state_id: 6)
# City.create!(name: 'Layang-Layangan', state_id: 6)
# City.create!(name: 'Lubok Temiang', state_id: 6)
# City.create!(name: 'Nagalang / Kerupang', state_id: 6)
# City.create!(name: 'Pantai', state_id: 6)
# City.create!(name: 'Patau-Patau 1', state_id: 6)
# City.create!(name: 'Patau-Patau 2', state_id: 6)
# City.create!(name: 'Pohon Batu', state_id: 6)
# City.create!(name: 'Rancha-Rancha', state_id: 6)
# City.create!(name: 'Sungai Bangat', state_id: 6)
# City.create!(name: 'Sungai Bedaun / Sungai Sembilang', state_id: 6)
# City.create!(name: 'Sungai Buton', state_id: 6)
# City.create!(name: 'Sungai Keling', state_id: 6)
# City.create!(name: 'Sungai Labu', state_id: 6)
# City.create!(name: 'Sungai Lada', state_id: 6)
# City.create!(name: 'Sungai Miri / Pagar', state_id: 6)
# City.create!(name: 'Tanjung Aru', state_id: 6)

# # State Melaka
# City.create!(name: 'Alor Gajah', state_id: 7)
# City.create!(name: 'Central Malacca', state_id: 7)
# City.create!(name: 'Jasin', state_id: 7)

# #State Negeri Sembilan
# City.create!(name: 'Jelebu', state_id: 8)
# City.create!(name: 'Jempol', state_id: 8)
# City.create!(name: 'Kuala Pilah', state_id: 8)
# City.create!(name: 'Port Dickson', state_id: 8)
# City.create!(name: 'Rembau', state_id: 8)
# City.create!(name: 'Seremban', state_id: 8)
# City.create!(name: 'Tampin', state_id: 8)

# #Pahang
# City.create!(name: 'Bentong', state_id: 9)
# City.create!(name: 'Bera', state_id: 9)
# City.create!(name: 'Cameron Highlands', state_id: 9)
# City.create!(name: 'Jerantut', state_id: 9)
# City.create!(name: 'Kuantan', state_id: 9)
# City.create!(name: 'Lipis', state_id: 9)
# City.create!(name: 'Maran', state_id: 9)
# City.create!(name: 'Pekan', state_id: 9)
# City.create!(name: 'Raub', state_id: 9)
# City.create!(name: 'Rompin', state_id: 9)
# City.create!(name: 'Temerloh', state_id: 9)

# #Perak
# City.create!(name: 'Bagan Datuk', state_id: 10)
# City.create!(name: 'Batang Padang', state_id: 10)
# City.create!(name: 'Hilir Perak', state_id: 10)
# City.create!(name: 'Hulu Perak', state_id: 10)
# City.create!(name: 'Kampar', state_id: 10)
# City.create!(name: 'Kerian', state_id: 10)
# City.create!(name: 'Kinta', state_id: 10)
# City.create!(name: 'Kuala Kangsar', state_id: 10)
# City.create!(name: 'Larut, Matang and Selama', state_id: 10)
# City.create!(name: 'Manjung', state_id: 10)
# City.create!(name: 'Muallim', state_id: 10)
# City.create!(name: 'Perak Tengah', state_id: 10)

# # Pulau Pinang
# City.create!(name: 'Central Seberang Perai', state_id: 11)
# City.create!(name: 'North Seberang Perai', state_id: 11)
# City.create!(name: 'Northeast Penang Island', state_id: 11)
# City.create!(name: 'South Seberang Perai', state_id: 11)
# City.create!(name: 'Southwest Penang Island', state_id: 11)

# #Sabah
# City.create!(name: 'Beaufort', state_id: 12)
# City.create!(name: 'Beluran', state_id: 12)
# City.create!(name: 'Keningau', state_id: 12)
# City.create!(name: 'Kinabatangan', state_id: 12)
# City.create!(name: 'Kota Belud', state_id: 12)
# City.create!(name: 'Kota Kinabalu', state_id: 12)
# City.create!(name: 'Kota Marudu', state_id: 12)
# City.create!(name: 'Kuala Penyu', state_id: 12)
# City.create!(name: 'Kudat', state_id: 12)
# City.create!(name: 'Kunak', state_id: 12)
# City.create!(name: 'Lahad Datu', state_id: 12)
# City.create!(name: 'Municipality of Sandakan', state_id: 12)
# City.create!(name: 'Municipality of Tawau', state_id: 12)
# City.create!(name: 'Nabawan', state_id: 12)
# City.create!(name: 'Papar', state_id: 12)
# City.create!(name: 'Penampang', state_id: 12)
# City.create!(name: 'Pitas', state_id: 12)
# City.create!(name: 'Putatan', state_id: 12)
# City.create!(name: 'Ranau', state_id: 12)
# City.create!(name: 'Semporna', state_id: 12)
# City.create!(name: 'Sipitang', state_id: 12)
# City.create!(name: 'Tambunan', state_id: 12)
# City.create!(name: 'Tenom', state_id: 12)
# City.create!(name: 'Tongod', state_id: 12)
# City.create!(name: 'Tuaran', state_id: 12)

# # State Sarawak
# City.create!(name: 'Asajaya', state_id: 13)
# City.create!(name: 'Bau', state_id: 13)
# City.create!(name: 'Belaga', state_id: 13)
# City.create!(name: 'Beluru', state_id: 13)
# City.create!(name: 'Betong', state_id: 13)
# City.create!(name: 'Bintulu', state_id: 13)
# City.create!(name: 'Bukit Mabong', state_id: 13)
# City.create!(name: 'Dalat', state_id: 13)
# City.create!(name: 'Daro', state_id: 13)
# City.create!(name: 'Julau', state_id: 13)
# City.create!(name: 'Kabong', state_id: 13)
# City.create!(name: 'Kapit', state_id: 13)
# City.create!(name: 'Kanowit', state_id: 13)
# City.create!(name: 'Kuching', state_id: 13)
# City.create!(name: 'Lawas', state_id: 13)
# City.create!(name: 'Limbang', state_id: 13)
# City.create!(name: 'Lubok Antu', state_id: 13)
# City.create!(name: 'Lundu', state_id: 13)
# City.create!(name: 'Marudi', state_id: 13)
# City.create!(name: 'Matu', state_id: 13)
# City.create!(name: 'Meradong', state_id: 13)
# City.create!(name: 'Miri', state_id: 13)
# City.create!(name: 'Mukah', state_id: 13)
# City.create!(name: 'Pakan', state_id: 13)
# City.create!(name: 'Pusa', state_id: 13)
# City.create!(name: 'Samarahan', state_id: 13)
# City.create!(name: 'Saratok', state_id: 13)
# City.create!(name: 'Sarikei', state_id: 13)
# City.create!(name: 'Sebauh', state_id: 13)
# City.create!(name: 'Selangau', state_id: 13)
# City.create!(name: 'Serian', state_id: 13)
# City.create!(name: 'Sibu', state_id: 13)
# City.create!(name: 'Simunjan', state_id: 13)
# City.create!(name: 'Song', state_id: 13)
# City.create!(name: 'Sri Aman', state_id: 13)
# City.create!(name: 'Subis', state_id: 13)
# City.create!(name: 'Tanjung Manis', state_id: 13)
# City.create!(name: 'Tatau', state_id: 13)
# City.create!(name: 'Tebedu', state_id: 13)
# City.create!(name: 'Telang Usan', state_id: 13)

# # Selangor
# City.create!(name: 'Gombak', state_id: 14)
# City.create!(name: 'Hulu Langat', state_id: 14)
# City.create!(name: 'Hulu Selangor', state_id: 14)
# City.create!(name: 'Klang', state_id: 14)
# City.create!(name: 'Kuala Langat', state_id: 14)
# City.create!(name: 'Kuala Selangor', state_id: 14)
# City.create!(name: 'Petaling', state_id: 14)
# City.create!(name: 'Sabak Bernam', state_id: 14)
# City.create!(name: 'Sepang', state_id: 14)

# # Terengganu
# City.create!(name: 'Besut', state_id: 15)
# City.create!(name: 'Dungun', state_id: 15)
# City.create!(name: 'Hulu Terengganu', state_id: 15)
# City.create!(name: 'Kemaman', state_id: 15)
# City.create!(name: 'Kuala Nerus', state_id: 15)
# City.create!(name: 'Kuala Terengganu', state_id: 15)
# City.create!(name: 'Marang', state_id: 15)
# City.create!(name: 'Setiu', state_id: 15)


Quotajob.create!(quota: 0)



City.create!(name: 'Alor Gajah')
City.create!(name: 'Asajaya')
City.create!(name: 'Bachok')
City.create!(name: 'Bagan Datuk')
City.create!(name: 'Baling')
City.create!(name: 'Bandar Baharu')
City.create!(name: 'Bandar Tun Razak')
City.create!(name: 'Batang Padang')
City.create!(name: 'Batu')
City.create!(name: 'Batu Arang')
City.create!(name: 'Batu Manikar')
City.create!(name: 'Batu Pahat')
City.create!(name: 'Bau')
City.create!(name: 'Beaufort')
City.create!(name: 'Bebuloh')
City.create!(name: 'Belaga')
City.create!(name: 'Belukut')
City.create!(name: 'Beluran')
City.create!(name: 'Beluru')
City.create!(name: 'Bentong')
City.create!(name: 'Bera')
City.create!(name: 'Besut')
City.create!(name: 'Betong')
City.create!(name: 'Bintulu')
City.create!(name: 'Bukit Bintang')
City.create!(name: 'Bukit Kalam')
City.create!(name: 'Bukit Kuda')
City.create!(name: 'Bukit Mabong')
City.create!(name: 'Cameron Highlands')
City.create!(name: 'Central Malacca')
City.create!(name: 'Central Seberang Perai')
City.create!(name: 'Cheras')
City.create!(name: 'Dalat')
City.create!(name: 'Daro')
City.create!(name: 'Dungun')
City.create!(name: 'Durian Tunjung')
City.create!(name: 'Ganggarak / Merinding')
City.create!(name: 'Gersik / Saguking / Jawa / Pari')
City.create!(name: 'Gombak')
City.create!(name: 'Gua Musang')
City.create!(name: 'Hilir Perak')
City.create!(name: 'Hulu Langat')
City.create!(name: 'Hulu Perak')
City.create!(name: 'Hulu Selangor')
City.create!(name: 'Hulu Terengganu')
City.create!(name: 'Jasin')
City.create!(name: 'Jelebu')
City.create!(name: 'Jeli')
City.create!(name: 'Jempol')
City.create!(name: 'Jerantut')
City.create!(name: 'Johor Bahru')
City.create!(name: 'Julau')
City.create!(name: 'Kabong')
City.create!(name: 'Kampar')
City.create!(name: 'Kanowit')
City.create!(name: 'Kapit')
City.create!(name: 'Kemaman')
City.create!(name: 'Keningau')
City.create!(name: 'Kepong')
City.create!(name: 'Kerian')
City.create!(name: 'Kilan / Kilan Pulau Akar')
City.create!(name: 'Kinabatangan')
City.create!(name: 'Kinta')
City.create!(name: 'Klang')
City.create!(name: 'Kluang')
City.create!(name: 'Kota Belud')
City.create!(name: 'Kota Bharu')
City.create!(name: 'Kota Kinabalu')
City.create!(name: 'Kota Marudu')
City.create!(name: 'Kota Setar')
City.create!(name: 'Kota Tinggi')
City.create!(name: 'Kuala Kangsar')
City.create!(name: 'Kuala Krai')
City.create!(name: 'Kuala Langat')
City.create!(name: 'Kuala Muda')
City.create!(name: 'Kuala Nerus')
City.create!(name: 'Kuala Penyu')
City.create!(name: 'Kuala Pilah')
City.create!(name: 'Kuala Selangor')
City.create!(name: 'Kuala Terengganu')
City.create!(name: 'Kuantan')
City.create!(name: 'Kubang Pasu')
City.create!(name: 'Kuching')
City.create!(name: 'Kudat')
City.create!(name: 'Kulai')
City.create!(name: 'Kulim')
City.create!(name: 'Kunak')
City.create!(name: 'Lahad Datu')
City.create!(name: 'Lajau')
City.create!(name: 'Langkawi')
City.create!(name: 'Larut, Matang and Selama')
City.create!(name: 'Lawas')
City.create!(name: 'Layang-Layangan')
City.create!(name: 'Lembah Pantai')
City.create!(name: 'Limbang')
City.create!(name: 'Lipis')
City.create!(name: 'Lubok Antu')
City.create!(name: 'Lubok Temiang')
City.create!(name: 'Lundu')
City.create!(name: 'Machang')
City.create!(name: 'Manjung')
City.create!(name: 'Maran')
City.create!(name: 'Marang')
City.create!(name: 'Marudi')
City.create!(name: 'Matu')
City.create!(name: 'Meradong')
City.create!(name: 'Mersing')
City.create!(name: 'Miri')
City.create!(name: 'Muallim')
City.create!(name: 'Muar')
City.create!(name: 'Mukah')
City.create!(name: 'Municipality of Sandakan')
City.create!(name: 'Municipality of Tawau')
City.create!(name: 'Nabawan')
City.create!(name: 'Nagalang / Kerupang')
City.create!(name: 'North Seberang Perai')
City.create!(name: 'Northeast Penang Island')
City.create!(name: 'Padang Terap')
City.create!(name: 'Pakan')
City.create!(name: 'Pantai')
City.create!(name: 'Papar')
City.create!(name: 'Pasir Mas')
City.create!(name: 'Pasir Puteh')
City.create!(name: 'Patau-Patau 1')
City.create!(name: 'Patau-Patau 2')
City.create!(name: 'Pekan')
City.create!(name: 'Penampang')
City.create!(name: 'Pendang')
City.create!(name: 'Perak Tengah')
City.create!(name: 'Petaling')
City.create!(name: 'Pitas')
City.create!(name: 'Pohon Batu')
City.create!(name: 'Pokok Sen')
City.create!(name: 'Pontian')
City.create!(name: 'Port Dickson')
City.create!(name: 'Pusa')
City.create!(name: 'Putatan')
City.create!(name: 'Ranau')
City.create!(name: 'Rancha-Rancha')
City.create!(name: 'Raub')
City.create!(name: 'Rembau')
City.create!(name: 'Rompin')
City.create!(name: 'Sabak Bernam')
City.create!(name: 'Samarahan')
City.create!(name: 'Saratok')
City.create!(name: 'Sarikei')
City.create!(name: 'Sebauh')
City.create!(name: 'Segamat')
City.create!(name: 'Segambut')
City.create!(name: 'Selangau')
City.create!(name: 'Semporna')
City.create!(name: 'Sepang')
City.create!(name: 'Seputeh')
City.create!(name: 'Seremban')
City.create!(name: 'Serian')
City.create!(name: 'Setiawangsa')
City.create!(name: 'Setiu')
City.create!(name: 'Sibu')
City.create!(name: 'Sik')
City.create!(name: 'Simunjan')
City.create!(name: 'Sipitang')
City.create!(name: 'Song')
City.create!(name: 'South Seberang Perai')
City.create!(name: 'Southwest Penang Island')
City.create!(name: 'Sri Aman')
City.create!(name: 'Subis')
City.create!(name: 'Sungai Bangat')
City.create!(name: 'Sungai Bedaun / Sungai Sembilang')
City.create!(name: 'Sungai Buton')
City.create!(name: 'Sungai Keling')
City.create!(name: 'Sungai Labu')
City.create!(name: 'Sungai Lada')
City.create!(name: 'Sungai Miri / Pagar')
City.create!(name: 'Tambunan')
City.create!(name: 'Tampin')
City.create!(name: 'Tanah Merah')
City.create!(name: 'Tangkak')
City.create!(name: 'Tanjung Aru')
City.create!(name: 'Tanjung Manis')
City.create!(name: 'Tatau')
City.create!(name: 'Tebedu')
City.create!(name: 'Telang Usan')
City.create!(name: 'Temerloh')
City.create!(name: 'Tenom')
City.create!(name: 'Titiwangsa')
City.create!(name: 'Tongod')
City.create!(name: 'Tuaran')
City.create!(name: 'Tumpat')
City.create!(name: 'Wangsa Maju')
City.create!(name: 'Yan')