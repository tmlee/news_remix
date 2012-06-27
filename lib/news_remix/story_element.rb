class StoryElement

	attr_accessor :author_id, :cover, :description, :image_height, :image_source_url, :image_width, :order, :source_image_height, :source_image_width, :source_type, :source_url, :thumbnail_url, :title, :author

	def initialize(attributes = {})
		@author_id				= attributes["author_id"]
		@cover					= attributes["cover"]
		@description			= attributes["description"]
		@image_height 			= attributes["image_height"]
		@image_source_url		= attributes["image_source_url"]
		@image_width 			= attributes["image_width"]
		@order					= attributes["order"]
		@source_image_height	= attributes["source_image_height"]
		@source_image_width		= attributes["source_image_width"]
		@source_type			= attributes["source_type"]
		@source_url 			= attributes["source_url"]
		@thumbnail_url			= attributes["thumbnail_url"]
		@title					= attributes["title"]
		@author					= Author.new(attributes["author"])
	end

end