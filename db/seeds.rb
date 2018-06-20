# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

40.times do |i|
	Job.create!(
		user_id: 1,
		title: Faker::Address.city + ' Laravel',
		job_type: 'going',
		category: 'Home',
		description: '<div data-contents="true"><ul class="public-DraftStyleDefault-ul" data-offset-key="b39pj-0-0"><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-reset public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="b39pj-0-0"><div data-offset-key="b39pj-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="b39pj-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="57l51-0-0"><div data-offset-key="57l51-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="57l51-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="9pk95-0-0"><div data-offset-key="9pk95-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="9pk95-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="4qjlo-0-0"><div data-offset-key="4qjlo-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="4qjlo-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="9u2fs-0-0"><div data-offset-key="9u2fs-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="9u2fs-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="q65b-0-0"><div data-offset-key="q65b-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="q65b-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span><span data-offset-key="q65b-0-1"><span data-text="true">',
		salary: 100,
		salary_state: 'Johor',
		salary_type: 'Per month',
		company_name: 'Vinasoftdev',
		city: 'Binh Duong',
		created_at: '2018-06-21 23:51:54'
	);
end

40.times do |i|
	Job.create!(
		user_id: 1,
		title: Faker::Address.city + ' Ruby on rails',
		job_type: 'going',
		description: '<div data-contents="true"><ul class="public-DraftStyleDefault-ul" data-offset-key="b39pj-0-0"><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-reset public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="b39pj-0-0"><div data-offset-key="b39pj-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="b39pj-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="57l51-0-0"><div data-offset-key="57l51-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="57l51-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="9pk95-0-0"><div data-offset-key="9pk95-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="9pk95-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="4qjlo-0-0"><div data-offset-key="4qjlo-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="4qjlo-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="9u2fs-0-0"><div data-offset-key="9u2fs-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="9u2fs-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="q65b-0-0"><div data-offset-key="q65b-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="q65b-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span><span data-offset-key="q65b-0-1"><span data-text="true">',
		category: 'Education',
		salary: 300,
		salary_state: 'Melaka',
		salary_type: 'Per day',
		company_name: 'Fiopay',
		city: 'Binh Duong',
		created_at: '2018-06-21 23:51:54'
	);
end

40.times do |i|
	Job.create!(
		user_id: 1,
		title: Faker::Address.city + ' ReactJS',
		description: '<div data-contents="true"><ul class="public-DraftStyleDefault-ul" data-offset-key="b39pj-0-0"><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-reset public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="b39pj-0-0"><div data-offset-key="b39pj-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="b39pj-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="57l51-0-0"><div data-offset-key="57l51-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="57l51-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="9pk95-0-0"><div data-offset-key="9pk95-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="9pk95-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="4qjlo-0-0"><div data-offset-key="4qjlo-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="4qjlo-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="9u2fs-0-0"><div data-offset-key="9u2fs-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="9u2fs-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="q65b-0-0"><div data-offset-key="q65b-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="q65b-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span><span data-offset-key="q65b-0-1"><span data-text="true">',
		job_type: 'going',
		category: 'Others',
		salary: 300,
		salary_state: 'Melaka',
		salary_type: 'Per day',
		company_name: 'Fiopay',
		city: 'Binh Duong',
		created_at: '2018-06-20 23:51:54'
	);
end

40.times do |i|
	Job.create!(
		user_id: 1,
		title: Faker::Address.city + ' ReactJS',
		description: '<div data-contents="true"><ul class="public-DraftStyleDefault-ul" data-offset-key="b39pj-0-0"><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-reset public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="b39pj-0-0"><div data-offset-key="b39pj-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="b39pj-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="57l51-0-0"><div data-offset-key="57l51-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="57l51-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="9pk95-0-0"><div data-offset-key="9pk95-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="9pk95-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="4qjlo-0-0"><div data-offset-key="4qjlo-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="4qjlo-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="9u2fs-0-0"><div data-offset-key="9u2fs-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="9u2fs-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="q65b-0-0"><div data-offset-key="q65b-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="q65b-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span><span data-offset-key="q65b-0-1"><span data-text="true">',
		job_type: 'going',
		category: 'Others',
		salary: 300,
		salary_state: 'Melaka',
		salary_type: 'Per day',
		company_name: 'Fiopay',
		city: 'Binh Duong',
		created_at: '2018-06-19 23:51:54'
	);
end

40.times do |i|
	Job.create!(
		user_id: 1,
		title: Faker::Address.city + ' ReactJS',
		description: '<div data-contents="true"><ul class="public-DraftStyleDefault-ul" data-offset-key="b39pj-0-0"><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-reset public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="b39pj-0-0"><div data-offset-key="b39pj-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="b39pj-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="57l51-0-0"><div data-offset-key="57l51-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="57l51-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="9pk95-0-0"><div data-offset-key="9pk95-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="9pk95-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="4qjlo-0-0"><div data-offset-key="4qjlo-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="4qjlo-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="9u2fs-0-0"><div data-offset-key="9u2fs-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="9u2fs-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="q65b-0-0"><div data-offset-key="q65b-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="q65b-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span><span data-offset-key="q65b-0-1"><span data-text="true">',
		job_type: 'going',
		category: 'Event & Exhibition',
		salary: 300,
		salary_state: 'Melaka',
		salary_type: 'Per day',
		company_name: 'Fiopay',
		city: 'Binh Duong',
		created_at: '2018-06-18 23:51:54'
	);
end

40.times do |i|
	Job.create!(
		user_id: 1,
		title: Faker::Address.city + ' ReactJS',
		description: '<div data-contents="true"><ul class="public-DraftStyleDefault-ul" data-offset-key="b39pj-0-0"><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-reset public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="b39pj-0-0"><div data-offset-key="b39pj-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="b39pj-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="57l51-0-0"><div data-offset-key="57l51-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="57l51-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="9pk95-0-0"><div data-offset-key="9pk95-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="9pk95-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="4qjlo-0-0"><div data-offset-key="4qjlo-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="4qjlo-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="9u2fs-0-0"><div data-offset-key="9u2fs-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="9u2fs-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="q65b-0-0"><div data-offset-key="q65b-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="q65b-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span><span data-offset-key="q65b-0-1"><span data-text="true">',
		job_type: 'going',
		category: 'Food & Beverages',
		salary: 300,
		salary_state: 'Melaka',
		salary_type: 'Per day',
		company_name: 'Fiopay',
		city: 'Binh Duong',
		created_at: '2018-06-17 23:51:54'
	);
end

40.times do |i|
	Job.create!(
		user_id: 1,
		title: Faker::Address.city + 'ReactJS',
		description: '<div data-contents="true"><ul class="public-DraftStyleDefault-ul" data-offset-key="b39pj-0-0"><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-reset public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="b39pj-0-0"><div data-offset-key="b39pj-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="b39pj-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="57l51-0-0"><div data-offset-key="57l51-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="57l51-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="9pk95-0-0"><div data-offset-key="9pk95-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="9pk95-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="4qjlo-0-0"><div data-offset-key="4qjlo-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="4qjlo-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="9u2fs-0-0"><div data-offset-key="9u2fs-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="9u2fs-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="q65b-0-0"><div data-offset-key="q65b-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="q65b-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span><span data-offset-key="q65b-0-1"><span data-text="true">',
		job_type: 'going',
		category: 'Retails & Sales',
		salary: 300,
		salary_state: 'Melaka',
		salary_type: 'Per day',
		company_name: 'Fiopay',
		city: 'Binh Duong',
		created_at: '2018-06-16 23:51:54'
	);
end

40.times do |i|
	Job.create!(
		user_id: 1,
		title: Faker::Address.city + 'ReactJS',
		description: '<div data-contents="true"><ul class="public-DraftStyleDefault-ul" data-offset-key="b39pj-0-0"><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-reset public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="b39pj-0-0"><div data-offset-key="b39pj-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="b39pj-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="57l51-0-0"><div data-offset-key="57l51-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="57l51-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="9pk95-0-0"><div data-offset-key="9pk95-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="9pk95-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="4qjlo-0-0"><div data-offset-key="4qjlo-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="4qjlo-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="9u2fs-0-0"><div data-offset-key="9u2fs-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="9u2fs-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span></div></li><li class="public-DraftStyleDefault-unorderedListItem public-DraftStyleDefault-depth0 public-DraftStyleDefault-listLTR" data-block="true" data-editor="6ae3v" data-offset-key="q65b-0-0"><div data-offset-key="q65b-0-0" class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"><span data-offset-key="q65b-0-0"><span data-text="true">Write clean, modular, robust code to implement the desired requirements with little or no supervision.</span></span><span data-offset-key="q65b-0-1"><span data-text="true">',
		job_type: 'going',
		category: 'Retails & Sales',
		salary: 300,
		salary_state: 'Melaka',
		salary_type: 'Per day',
		company_name: 'Fiopay',
		city: 'Binh Duong',
		created_at: '2018-06-15 23:51:54'
	);
end

Admin.create!(
	email: 'parttimebee.my@gmail.com',
	password: Digest::MD5.hexdigest('parttimebee.my'),
	token_admin: SecureRandom.urlsafe_base64
);