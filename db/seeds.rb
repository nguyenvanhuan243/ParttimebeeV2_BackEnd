Admin.create!(
	email: 'parttimebee.my@gmail.com',
	password: Digest::MD5.hexdigest('parttimebee.my'),
	token_admin: SecureRandom.urlsafe_base64
);