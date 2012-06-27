class Author

	attr_accessor :about_me, :id, :login, :nickname, :fb_user_id, :display_name

	def initialize(attributes = {})
		@about_me = attributes["about_me"]
		@id = attributes["id"]
		@login = attributes["login"]
		@nickname = attributes["nickname"]
		@fb_user_id = attributes["fb_user_id"]
		@display_name = attributes["display_name"]
	end


end