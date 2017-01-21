class Parser

	def initialize(file)
		@file = File.read(file)
	end

	def parse
		tags = Array.new

		unfiltered_tags = @file.scan(/\<(.*?)\>/).flatten

		unfiltered_tags.compact.each do |tag| 
			tags << tag.split(" ").first.gsub("/", "")
		end
		binding.pry
	end
end