class UserService
	def get_default_avatar
		"DefaultAvatar#{rand(1...10)}"
	end
end