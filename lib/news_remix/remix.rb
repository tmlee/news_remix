module NewsRemix
  	class Remix

		ROOT_URL = "http://says.com/my/news"
		CONTENT_TYPE = "application/json"
	
		def get_featured_by_timestamp(args={})
			api_url = ROOT_URL + "?filter=featured&from=#{args[:from]}&category_slug=#{args[:category_slug]}"
			news_elements = []
			call_curl(api_url).each {|payload| news_elements << NewsElement.new(payload) }
			news_elements	
	
		end
	
		def get_individual_news(args={})
			api_url = ROOT_URL + "/#{args[:id]}"
			NewsElement.new( call_curl(api_url) )
	
			
		end
	
		private
	
		def call_curl(api_url)
			wer = Curl::Easy.perform(api_url) do |curl|
				curl.headers["Accept"] = "application/json"
				curl.headers["Content-type"] = "application/json"
			end
	
			JSON.parse(wer.body_str)
		end
	end
end
