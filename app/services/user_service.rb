class UserService
	def get_default_avatar
		"DefaultAvatar#{rand(1...50)}"
	end
end