class Parser

	def initialize(website)
		@file = %x{curl "#{website}" }
	end

	def parse
		tags = Array.new

		unfiltered_tags = @file.scan(/\<(.*?)\>/).flatten

		unfiltered_tags.compact.each do |tag| 
			tags << tag.split(" ").first.gsub("/", "")
		end
		
		return tags
	end
end