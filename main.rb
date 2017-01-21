require_relative "parser"
require "pry"
require "mplayer-ruby"

tags = Parser.new(ARGV[0]).parse

notes = tags.uniq.each_with_index.map{|tag, index| {tag => "./sounds/#{index + 1}.wav"}}.reduce({}, :merge)

tags.each do |tag|
	MPlayer::Slave.new(notes[tag])
	sleep 0.1
end



