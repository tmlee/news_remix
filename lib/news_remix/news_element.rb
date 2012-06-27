class NewsElement

	attr_accessor :background_image, :category_id, :cover_image, :created_at, :featured, :id, :overall_view_count, :published, :shares_count, :showcased, :slug, :sources_count, :title, :updated_at, :author, :story_discussions, :story_elements

	def initialize(attributes = {})

		@background_image		= attributes["background_image"]
		@category_id			= attributes["category_id"]
		@cover_image			= attributes["cover_image"]
		@created_at				= attributes["created_at"]
		@featured				= attributes["featured"]
		@id						= attributes["id"]
		@overall_view_count		= attributes["overall_view_count"]
		@published				= attributes["published"]
		@shares_count			= attributes["shares_count"]
		@showcased				= attributes["showcased"]
		@slug					= attributes["slug"]
		@sources_count			= attributes["sources_count"]
		@title					= attributes["title"]
		@updated_at				= attributes["updated_at"]
		@author					= Author.new(attributes["author"])
		@story_discussions		= attributes["story_discussions"]
		@story_elements			= []
		attributes["story_elements"].each { |story| @story_elements.push StoryElement.new(story) }
	end



end